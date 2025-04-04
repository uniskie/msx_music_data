MSXマガジン標準ミュージックドライバー[MuSICA]  
(C) Ascii corporation / 1990  

# MuSICA ドライバー部 プログラム 仕様書

> このドキュメントは特集記事のサンプルプログラムと  
> 自分で解析した情報を元に実際に使えるように修正した非公式版です。  

> #### 注意事項：  
>   MSXディスク通信創刊号(1990年10月)付属のMuSICA仕様書は、  
>   実際に配布されている```BGM.BIN```とは仕様が異なっているため、  
>   仕様書の情報では演奏制御が出来ません。  
>  
>   実際にリリースされた```BGM.BIN```はBASICからの呼び出し向けに実装されており、  
>   一部エントリが呼び出し型の変更や廃止があり、ワークエリアも大きく移動しています。  
>  
>   - MSXマガジン1990年10月号のMuSICA特集記事に掲載されている  
>     BASIC用サンプルプログラムが正しい使い方です。  


## （１）ミュージックドライバーのエントリー

[ ]内はそのアドレスです。  

### BGMINI [CE00H]

ミュージックドライバーを初期化します。  

このルーチンを実行するまでは、以後のすべてのミュージックドライバーのエントリールーチンを呼び出してはいけません。  

|エントリー | BGMINI [CE00H] |
|:----------|:---------------|  
|入力       | なし           |
|出力       | なし           |
|レジスタ   | すべて         |

> #### [補足] オリジナル版マニュアルと実装の異なる部分：  
>  
> このルーチン実行後にページ1のスロットを変更しても問題ありません。  
> ただし、演奏中に変更してはいけません。  
> （演奏終了していれば問題ありません。）  

### BGMON [CE03H]

演奏を開始します。  

> #### [補足] オリジナル版マニュアルと実装の異なる部分：  
> 1. 呼び出し方法が異なります。  
> 2. タイマー割り込み周りが異なります。  

- ==**演奏中にディスクアクセスをすると暴走しますので、ディスク操作前にBGMOFFを呼び出してください。**==  

- 演奏開始時にタイマー割り込みフックを書き換えます。  
  （BGMOFFでタイマー割り込みフックを元に戻します。）  
  - その際、内部で割り込み禁止した後に、割り込み許可状態に変更して戻ります。  
    ※ 割り込み禁止が必要な状態での呼び出しは避けてください。  

- 【制限事項】  
  演奏中にページ1のスロットを変更してはいけません。  


  MuSICAはタイマー割り込み中に強制的にMAIN ROMへ切り替えて戻ります。  
  （変更前のスロット選択状態に戻すわけではありません。）  

  暴走を避けたい場合、スロット変更中は割り込みを禁止してください。  

  ※ ディスクアクセスはスロット切り替えと割り込みを使用するので暴走します。  

#### BASICから扱う場合 :

DEFUSR=&HCE03:U=USR(VARPTR(P(0)))  
（※変数は整数型であること）  

|エントリー | BGMON [CE03H]                                 |
|:----------|:----------------------------------------------|
|入力       |  P(1)=音楽データヘッダー部の先頭アドレス      |
|           |  P(0)=繰り返し回数 0～255 (0のとき無限ループ) |
|出力       | なし                                          |

利用例 :

- ```BGM.BGM``` は  
  MuSICA の ```Disk menu``` → ```5.save BGM``` → ```Start address=A600```  
  で保存したもの  

- 配列変数を使用する場合  
  ```  
  100 CLEAR 200,&HA000:DEFINT A-Z  '変数は整数とする  
  110 BLOAD"BGM.BIN"               'ドライバロード  
  120 DEFUSR=&HCE00:U=USR(0)       'BGMINI:ドライバ初期化  
  130 BLOAD"BGM.BGM"               'BGMデータロード  
  140 P(0)=0                       'P(0) = ループ回数 0=無限  
  150 P(1)=&HA600                  'P(1) = BGMアドレス=&HA600  
  190 DEFUSR1=&HCE03:U=USR1(VARPTR(P(0))) 'BGMON:演奏開始  
  200 I$=INPUT$(1)  
  210 DEFUSR2=&HCE06:U=USR2(0)     'BGMOFF:演奏終了  
  ```  

- 配列変数を使用しない場合  
  ```  
  100 CLEAR 200,&HA000:DEFINT A-Z  '変数は整数とする  
  110 BLOAD"BGM.BIN"               'ドライバロード  
  120 DEFUSR=&HCE00:U=USR(0)       'BGMINI:ドライバ初期化  
  130 BLOAD"BGM.BGM"               'BGMデータロード  
  140 BA=&HA600                    'BA = BGMアドレス=&HA600  
  150 PA=&HA000                    'PA = パラメータワークアドレス  
  160 POKE PA,0                    'ループ回数 0=無限ループ  
  170 POKE PA+2,PEEK(VARPTR(BA)+0) 'BGMアドレス(下位8ビット)  
  180 POKE PA+3,PEEK(VARPTR(BA)+1) 'BGMアドレス(上位8ビット)  
  190 DEFUSR1=&HCE03:U=USR1(PA)    'BGMON:演奏開始  
  200 I$=INPUT$(1)  
  210 DEFUSR2=&HCE06:U=USR2(0)     'BGMOFF:演奏終了  
  ```  


#### 機械語から扱う場合 : 

|エントリー | BGMON [CE03H]                                       |
|:----------|:----------------------------------------------------|
|入力       | HL=F7F6H(ワークエリア:DAC)                          |
|           | [F7F6H+2,2]=F7FAH (パラメータワークにF6F7H+4を利用) |
|           | [F6FAH+2,2]=音楽データヘッダー部の先頭アドレス      |
|           | [F7FAH+0,1]=繰り返し回数 0～255 (0のとき無限ループ) |
|出力       | なし                                                |
|レジスタ   | すべて                                              |

ワークバッファを用意して、ワークバッファのアドレスを指定する形になります。  
基本的にDACをワークバッファとして使用してしまうのが楽だと思います。  

※ BASICと併用する場合は他のアドレスを使用してください。  


#### 補足 : 機械語からの呼び出し簡略化

|エントリー | BGMON_2 [CE15H]                            |
|:----------|:-------------------------------------------|
|入力       | HL=音楽データヘッダー部の先頭アドレス      |
|           |  A=繰り返し回数 0～255 (0のとき無限ループ) |
|出力       | なし                                       |
|レジスタ   | すべて                                     |

[CE15H]を呼び出すとUSR関数向けの処理を飛ばしてHLAレジスタで直接指定できます。  
今後のバージョンアップは無いと思うので、機械語から使用する場合はこちらの方が楽です。  

> #### 解説 : エントリ呼び出し～USR引数処理  
>  
> 1. BASIC USR関数で呼び出した場合、HLにはDACアドレスF7F6Hが入っている。  
> 2. 整数型の場合、DAC+2に引数の値が入っている。  
>  
> 「USR引数を受け取る処理」は以下の通り。  
> ```  
> ce03:  jp $ce12  
> ...  
> ce12:  call $ce1e     ; USR引数からパラメータを受け取る処理  
> ce15:  jp $ce34       ; BGMON処理の本体  
> ...  
> ce1e:  ; USR引数からパラメータを受け取る処理  
>         push hl  
>         pop  ix  
>         ld   l,(ix+2)  
>         ld   h,(ix+3) ; hl=USR引数  
>         push hl  
>         pop  ix  
>         ld   a,(ix+0) ;  a=peek(USR引数+0)  
>         ld   l,(ix+2) ; hl=peek(USR引数+2)+peek(USR引数+3)*256  
>         ld   h,(ix+3)  
> ```  

### BGMOFF [CE06H]

演奏を終了します。  

|エントリー | BGMOFF [CE06H] |
|:----------|:---------------|
|入力       | なし           |
|出力       | なし           |
|レジスタ   | すべて         |

#### [補足] オリジナル版マニュアルに書かれていない注意点：

- BGMONで書き換えたタイマー割り込みフックを元の状態に戻します。  
  その際、内部で割り込み禁止した後に、割り込み許可状態に変更して戻ります。  

- 演奏中でなければBGMOFFを呼び出しても何もしません。（問題も起きません。）  

- 演奏中にディスクアクセス等をすると暴走しますので、ディスク操作前にBGMOFFを呼び出してください。  

### ~~BGMDRV [CE09H]~~ → 廃止

廃止されています。  

> 実体はCE62Hにありますが、  
> BGMONを呼び出した時に自動的にタイマーフックから呼び出すように設定されますので、自分で呼び出す必要はありません。  

### ~~BGMTST [CE0CH]~~ → 廃止

廃止されています。  

> ワークエリア **DRV.ON [CE9BH,1]** を調べれば演奏中かどうか判定は可能です。  

### BGMVOL [CE09H] ← ~~[CE0FH]~~

マスターボリュームの書き込み、読み出し、演奏の一時中断、演奏の再開を制御します。  

マスターボリュームは0から15の16段階で指定でき、0のとき最大となります。  
特に必要のない場合は常に0で演奏するように心がけてください。  
割り込み制御はしていません。  

> #### 注意事項  
> 演奏中にマスターボリュームを変更すると発音に問題が発生します。  
> 急に大きな音が鳴るなどの現象が発生するので、フェードアウト・フェードインには使用できません。  
> マスターボリュームの操作は演奏開始前に使用してください。  

> #### [補足] オリジナル版マニュアルと実装の異なる部分：  
> 1. エントリアドレスが異なります。  
> 2. 呼び出し方が異なります。  

#### BASICから扱う場合 :

DEFUSR=&HCE09:U=USR(VARPTR(A))  
（※変数は整数型であること）  

|エントリー | BGMVOL [CE09H]                     |
|:----------|:-----------------------------------|
|入力       | A=0～15 マスターボリューム書き込み |
|           | A=16    マスターボリューム読み出し |
|           | A=17    演奏の一時中断             |
|           | A=18    演奏の再開                 |
|出力       | 読みだした場合、Aレジスタにマスターボリューム値0～15が入るのでBASICからは取得できません。|
|           | （どうしても必要であればワークエリア **MSTVOL [CE9AH,1]** を直接読みだしてください。)    |

利用例 :  
```  
DEFINT A-Z '整数変数とする  
（中略）  
V=15 ' マスターボリューム=最低音量  
DEFUSR=&HCE09:U=USR(VARPTR(V))  
```  

#### 機械語から扱う場合 : 

ワークバッファを用意して、ワークバッファのアドレスを指定する形になります。  
基本的にDACをワークバッファとして使用してしまうのが楽だと思います。  

※ BASICと併用する場合は他のアドレスを使用してください。  

|エントリー | BGMVOL [CE09H]                                     |
|:----------|:---------------------------------------------------|
|入力       | HL=F7F6H(ワークエリア:DAC)                         |
|           | [F7F6H+2,2]=F7F6H (パラメータワークにF6F7Hを利用)  |
|           | [F7F6H,1]=0～15 マスターボリューム書き込み         |
|           | [F7F6H,1]=16    マスターボリューム読み出し         |
|           | [F7F6H,1]=17    演奏の一時中断                     |
|           | [F7F6H,1]=18    演奏の再開                         |
|出力       | 読みだした場合、Aにマスターボリューム値0～15が入る |
|レジスタ   | すべて                                             |

#### 補足 : 機械語からの呼び出し簡略化

[CE1BH]を呼び出すとUSR関数向けの処理を飛ばしてAレジスタで直接指定できます。  
今後のバージョンアップは無いと思うので、機械語から使用する場合はこちらの方が楽です。  

|エントリー | BGMVOL_2 [CE1BH]                                   |
|:----------|:---------------------------------------------------|
|入力       | A=0～15 マスターボリューム書き込み                 |
|           | A=16    マスターボリューム読み出し                 |
|           | A=17    演奏の一時中断                             |
|           | A=18    演奏の再開                                 |
|出力       | 読みだした場合、Aにマスターボリューム値0～15が入る |
|レジスタ   | すべて                                             |

### BGMSW [CE0CH] ← ~~[CE12H]~~

PSGの音楽データを実際にレジスタに書き込むかどうかをチャンネルごとに設定します。  
（チャンネルマスク）  

ある特定のPSGチャンネルを効果音で使用するとき、 効果音の発生が終了するまで音楽演奏データをそのチャンネルのPSGレジスタに書き込まれては困る場合に使用します。  

割り込み制御はしていません。  

> #### [補足] オリジナル版マニュアルと実装の異なる部分：  
> 1. エントリアドレスが異なります。  
> 2. 呼び出し方が異なります。  

#### 補足：

1. 曲がループするとチャンネルマスクが勝手にクリアされます。  
   毎フレーム呼せば良さそうですが、次項（補足2）の問題がありますので、注意が必要です。  

2. BGMSWでは瞬間的にPSGミキサーを全ミュート→再設定を行うので  
   連続して呼び出していると発音に僅かに影響が出ます。  

   そのため、SEを再生する場合、BGMSWを実行したあとに毎回ミキサーの設定から行う必要があるかもしれません。（未検証）  

#### 効果音対策：

1. ループを検出したら、再度BGMSWを実行し、効果音を途中再生（ミキサーも再設定）。  
2. または、少々処理は増えますが、毎フレームミキサー設定→音量や音程書き込み。  

などの対応が考えられます。  

（Dante2や吉田STGシリーズで効果音がおかしくなる事があるのはコレのせい？）  

#### BASICから扱う場合 :

DEFUSR=&HCE0C:U=USR(VARPTR(A))  
（※変数は整数型であること）  

|エントリー | BGMSW [CE0CH]                                        |
|:----------|:-----------------------------------------------------|
|入力       | A=&B00000PPP                                         |
|           | bit0=1 : PSG チャンネルAを発声しない。               |
|           | bit1=1 : PSG チャンネルBを発声しない。               |
|           | bit2=1 : PSG チャンネルCを発声しない。               |
|           | 対応するビットが0のときオン、1のときオフとなります。 |
|           | 上位5ビットは必ず0を設定してください。               |
|出力       | なし                                                 |
|レジスタ   | すべて                                               |

利用例 :  
```  
M=&B111 ' PSG全チャンネルOFF  
DEFUSR=&HCE0C:U=USR(VARPTR(M))  
```  

#### 機械語から扱う場合 : 

ワークバッファを用意して、ワークバッファのアドレスを指定する形になります。  
基本的にDACをワークバッファとして使用してしまうのが楽だと思います。  

※ BASICと併用する場合は他のアドレスを使用してください。  

|エントリー | BGMSW [CE0CH]                                       |
|:----------|:----------------------------------------------------|
|入力       | HL=F7F6H(ワークエリア:DAC)                          |
|           | [F7F6H+2,2]=F7F6H (パラメータワークにF6F7Hを利用)   |
|           | [F7F6H,1]=00000PPP                                  |
|           | bit0=1 : PSG チャンネルAを発声しない。              |
|           | bit1=1 : PSG チャンネルBを発声しない。              |
|           | bit2=1 : PSG チャンネルCを発声しない。              |
|           | 対応するビットが0のときオン、1のときオフとなります。|
|           | 上位5ビットは必ず0を設定してください。              |
|出力       | なし                                                |
|レジスタ   | すべて                                              |

#### 補足 : 機械語からの呼び出し簡略化

[CE0FH]を呼び出すとUSR関数向けの処理を飛ばしてAレジスタで直接指定できます。  
今後のバージョンアップは無いと思うので、機械語から使用する場合はこちらの方が楽です。  

|エントリー | BGMSW_2 [CE0FH]                                     |
|:----------|:----------------------------------------------------|
|入力       | A=00000PPP                                          |
|           | bit0=1 : PSG チャンネルAを発声しない。              |
|           | bit1=1 : PSG チャンネルBを発声しない。              |
|           | bit2=1 : PSG チャンネルCを発声しない。              |
|           | 対応するビットが0のときオン、1のときオフとなります。|
|           | 上位5ビットは必ず0を設定してください。              |
|出力       | なし                                                |
|レジスタ   | すべて                                              |

## （２）ミュージックドライバーのワークエリア

[ ]内はそのアドレスとバイト数です。  

ワークエリアの読み出しは可能ですが、書き込んだ場合の動作の保証はありません。  

またミュージックドライバーの状態を知る必要はある場合は、直接ワークエリアを見ず、上記のエントリールーチンを使用することをおすすめします。  

### FMSLOT [CE97H,1] ← ~~[CE15H,1]~~

  BGMINIを呼び出した時のMSX-MUSICのスロット番号が入ります。  
  MSX-MUSICがない場合0となります。  

### SCSLOT [CE98H,1] ← ~~[CE16H,1]~~

  BGMINIを呼び出した時のSCCカートリッジのスロット番号が入ります。  
  SCCカートリッジがない場合0となります。  

### P1SLOT [CE99H,1] ← ~~[CE17H,1]~~

  BGMINIを呼び出した時のページ1のメインRAMのスロット番号が入ります。  

### MSTVOL [CE9AH,1] ← ~~[CE18H,1]~~

  マスターボリュームの値を示します。  

### DRV.ON [CE9BH,1] ← ~~[CE19H,1]~~

  0なら演奏していない、1なら演奏中を示します。  

### DATADD [CE9CH,2] ← ~~[CE1AH,2]~~

  現在演奏している音楽データのヘッダーデータ部の先頭番地を示します。  

  ※ 演奏開始後にこのアドレスを書き換えると、  
     イントロ→メインループのようなことが出来ます。  

### PRTFLG [CE9EH,1] ← ~~[CE1CH,1]~~

  残りの演奏回数を示します。  

## （３）ミュージックドライバー使用上の注意事項

  > #### [補足] オリジナル版マニュアルと実装の異なる部分：  
  > 割り込み周りの制御が異なり、必要な場面でドライバーが割り込みを制御します。  

  - 演奏中にページ1のスロットを切り替えないでください。  

      ディスクアクセスなどはページ1のスロット切替と割り込みを使用するので、演奏中は暴走します。  

  - 内部でフック書き換え状態を管理しているので、BGMONやNGMOFFを多重に呼び出しても安全です。  

  - タイマー割り込みフック（H.TIMI）の操作はBGMONとNGMOFF内部で行っています。  
    演奏中にタイマー割り込みフックを読み書きしないようにしてください。  

  - BGMONやBGMOFFは割り込み許可状態に変更して帰ります。  
    割り込み禁止が必要な状態からは呼び出さないようにしてください。  


## 非公式ワークエリア

### [CE67H,1]

  演奏のためにH.TIMIを書き換えていれば1、書き換えていなければ0  

### [dcd1,1]

  bit2 - PSG ch.Aのマスク  

### [dceb,1]

  bit2 - PSG ch.Bのマスク  

### [dd05,1]

  bit2 - PSG ch.Aのマスク  

### [dd99,1]

  bit0 - PSG ch.Aのトーンを演奏に使用している  
  bit3 - PSG ch.Aのノイズを演奏に使用している  

### [dda2,1]

  bit0 - PSG ch.Bのトーンを演奏に使用している  
  bit3 - PSG ch.Bのノイズを演奏に使用している  

### [ddab,1]

  bit0 - PSG ch.Cのトーンを演奏に使用している  
  bit3 - PSG ch.Cのノイズを演奏に使用している  

ループ検出（演奏済みループ回数など）の方法・ワークエリアは残念ながら見つかっていません。  


## おまけ情報：

- SCCスロットを強制指定したい場合  

  プログラムを書き換えてSCC走査結果を上書き固定するパッチ  

  ```  
  A=SCCカートリッジのSLOT番号  
  POKE&HD053,&H3E:POKE&HD054,A:POKE&HD055,&H32:POKE&HD056,&H98:POKE&HD057,&HCE:POKE&HD058,0  
  ```  
