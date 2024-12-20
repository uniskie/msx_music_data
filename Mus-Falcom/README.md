## ファルコム音楽フリー宣言
https://www.falcom.co.jp/music-use

BEAT OF TERROR/Ys1/Copyright(C) Nihon Falcom Corporation  
FINAL BATTLE/Ys1/Copyright(C) Nihon Falcom Corporation  
FIRST STEP TOWARD/Ys1/Copyright(C) Nihon Falcom Corporation  
PALACE OF DESTRUCTION/Ys1/Copyright(C) Nihon Falcom Corporation  
TOWER OF THE SHADOW OF DEATH/Ys1/Copyright(C) Nihon Falcom Corporation  
COMPANILE OF LANE/Ys2/Copyright(C) Nihon Falcom Corporation  
PALACE OF SALMON/Ys2/Copyright(C) Nihon Falcom Corporation
TO MAKE THE END OF BATTLE/Ys2/Copyright(C) Nihon Falcom Corporation  
Ending1/Sorserian/Copyright(C) Nihon Falcom Corporation  

---------------------------------------
## ※ご注意

BlueMSXで作成・演奏・調整していたものが含まれます。
音量は実機に合わせていませんので、実機での演奏については保証外です。
該当データについては
Bluemsx.iniをテキストエディタで開いて各種音量設定を反映してから聞いてみてください。
（※その際、書き換え前のbluemsx.iniのバックアップをしておくと良いと思います。）

元々音量バランスの崩壊したデータをBlueMSX上で聴けるように弄ったもので、
SCCとPSGのバランスも、FM音源のバランスも実機とは異なると思います。

- [falcom曲](#falcom曲のmusicaデータ)
- [omake2曲](#omake)

---------------------------------------
## MSX用ディスクイメージ

 https://github.com/uniskie/msx_music_data/blob/master/DSK_image/musica%20-%20falcom.dsk

簡易プレイヤー
```
 HEAR80.BAS
 HEAR40.BAS
```
ファイル名に'がついている物はイントロです。  
RETURNでイントロを選択。
メインループをスペースで選択すると再生が始まります。  

---------------------------------------

## MSXでの演奏方法

### 勤労5号 (MuSICA)(MSX)

http://sakuramail.net/fswold/music.html

本家MuSICA自体はライセンスフリーではないので、互換ドライバを使用して演奏可能です。  
勤労シリーズはMuSICAの上位互換ドライバとなっています。

（勤労4号はMMLコンパイラです。）

### MuSICA (MuSICA)(MSX)

本家アスキー製MuSICAドライバ・コンパイラセット

入手方法
1. 1990年10月発売のMSXディスク通信創刊号 (ver.1.0)
2. RPGコンストラクションツール Dante2 (ver.1.02)
3. MSXマガジン永久保存版 (ver.1.02)

## MSX以外での演奏方法

### M3disp (KSS/MGSDRV/MuSICA/OPLLDriver/MPK/MoonBlaster)(Web Browser)

https://m3.ym2413.com/

ChromeやFirefoxで動作します。スマホでもどこでも扱えます。  
ピアノロール表示などもあり、データチェックにも使用できます。  
(スマホの場合、横画面にするとピアノロールが選べます）

多様なフォーマットに対応しているのも特徴です。  
MuSICAはMDPlayerと同じく勤労5号で演奏されます。

[ndpドライバデータ](/ndp)もKSSファイルであれば演奏できます。

例

- [M3disp: SO-END1.BGM](https://m3.ym2413.com/?open=https://raw.githubusercontent.com/uniskie/msx_music_data/master/Mus-Falcom/SO-END1.BGM)  
- [M3disp: SO-END1P.BGM](https://m3.ym2413.com/?open=https://raw.githubusercontent.com/uniskie/msx_music_data/master/Mus-Falcom/SO-END1P.BGM)  



### MDPlayer (MGSDRV/MuSICA)(Windows)

https://github.com/kuma4649/MDPlayer/releases

Windowsの場合MDPlayerで聞く方法があります。

MGSDRV、MuSICA互換(勤労5号)に対応していますし、  
MixerでSCC/PSG/OPLLの音量バランスも変更可能です。

ただしOPLLリズム音や音量変更時の聞こえ方は実機やエミュレータに比べて癖があるようです。
（OPLLリズム音が大きめな傾向あり）

---------------------------------------


### Falcom曲のMuSICAデータ

YS*.* やvoice*.vcdファイル  
  MSD（MMLテキスト）
  VCD（音色バイナリ）
  BGM（演奏データ）ファイルのセット。

- YS1BEAT'.BGM
- YS1BEAT0.BGM
- YS1BEAT0.MSD
- YS1BEATO.BGM
- YS1BEATO.MSD
- YS1FINA2.BGM
- YS1FINAL.BGM
- YS1FINAL.MSD
- YS1FIRST.BGM
- YS1FIRST.MSD
- YS1FIRST.VCD
- YS1PODE'.BGM
- YS1POFDE.BGM
- YS1POFDE.MSD
- YS1TOWER.BGM
- YS2LANE'.BGM
- YS2LANE.BGM
- YS2LANE.MSD
- YS2LANE0.BGM
- YS2LANE0.MSD
- YS2SAL.BGM
- YS2SALM2.BGM
- YS2SALMO.BGM
- YS2SALMO.MSD
- YS2TOMA1.BGM
- YS2TOMA1.MSD
- YS2TOMAB.BGM
- YS2TOMAB.MSD
- YS2TOMAF.MSD
- YS2TOMAK.ASC
- YS2TOMAK.BGM
- YS2TOMAK.MSD
- YS2TOMAK.VCD
- SO-12-2'.BGM
- SO-12-2.BGM
- SO-12-2.MSD
- SO-12-2.VCD
 BlueMSXでの音量は
 ```
 sound.mixerChannel.MIXER_CHANNEL_PSG.enable=yes
 sound.mixerChannel.MIXER_CHANNEL_PSG.pan=50
 sound.mixerChannel.MIXER_CHANNEL_PSG.volume=100
 sound.mixerChannel.MIXER_CHANNEL_SCC.enable=yes
 sound.mixerChannel.MIXER_CHANNEL_SCC.pan=50
 sound.mixerChannel.MIXER_CHANNEL_SCC.volume=85
 sound.mixerChannel.MIXER_CHANNEL_MSXMUSIC.enable=yes
 sound.mixerChannel.MIXER_CHANNEL_MSXMUSIC.pan=50
 sound.mixerChannel.MIXER_CHANNEL_MSXMUSIC.volume=77
 ```
 です。

> 一部、OpenMSXのデフォルトに合わせたデータも混じっているかもしれません。

### OMAKE

- 『Relics Openning Theme(SCC ver)』

  relicsop.bgm

  > 音量はファルコム曲と同じ

- 『高収入求人情報バニラ(VANILLA)の広告宣伝カーの曲』

  vanila.bgm : OPLL+PSG  
  vanilap.bgm : PSG  
  vanila.bas : MSX スクリーンモード2で画像＋PSG版BGM再生  

  > 音量はファルコム曲と同じ  

### それ以外

ここに記載した物以外はOpenMSXのデフォルト設定を使用しています。
