# スクリプト一覧

1. [SCC波形加工 for MGSDRV](#scc%E6%B3%A2%E5%BD%A2%E5%8A%A0%E5%B7%A5-for-mgsdrv)
2. [MML整形 for MGSDRV](#mml%E6%95%B4%E5%BD%A2-for-mgsdrv)
3. [MML転調 for MGSDRV](#mml%E8%BB%A2%E8%AA%BF-for-mgsdrv)
4. [MMLオクターブ検査 for MGSDRV](#mml%E3%82%AA%E3%82%AF%E3%82%BF%E3%83%BC%E3%83%96%E6%A4%9C%E6%9F%BB-for-mgsdrv)

# SCC波形加工ツール for MGSDRV

## File

- サクラエディタ用 javascriptマクロ  
  [SCC_WAVE_MODULATE.js](SakuraEditor/SCC_WAVE_MODULATE.js)

- emEditor用 javascriptマクロ  
  [SCC_WAVE_MODULATE.jsee](emEditor/SCC_WAVE_MODULATE.jsee)

## 機能

MGSDRVのMML形式で記述されたSCC波形宣言データ用のを加工し、
n/256倍率をかけた波形データを出力するマクロです。

## 使い方

MGSDRVの波形宣言
```
@s0={ 001931475a6a757d7f7d756a5a47311900 e7cfb9a6968b8380838b96a6b9c7e7 }
```
の後ろに、; 倍率 を書きそのテキストを選択して、マクロを実行します。

```
@s0={ 001931475a6a757d7f7d756a5a47311900 e7cfb9a6968b8380838b96a6b9c7e7 } ; 128
```
倍率は256分の1単位なので128だと半分になります。

実行前
![実行前](image/SCC_WAVE_VOLUME_0.png)

実行後
![実行後](image/SCC_WAVE_VOLUME_1.png)

----------------------------------------------------------------
## マクロの登録方法（サクラエディタ）

1. 設定→共通設定

![設定→共通設定](image/SakuraEditor_macro_set_0.png)

2. 「マクロ」タブ

![「マクロ」タブ](image/SakuraEditor_macro_set_1.png)

	a. マクロのあるフォルダパスを指定
	b. 「名前(N)」を入力
	c. 「File」を選択 （※画像では日本語ファイル名に変えてます）
	d. 「設定(A)」ボタンを押して登録完了

3. 「キー割り当て」タブ

![「キー割り当て」タブ](image/SakuraEditor_macro_set_2.png)

	a. 「種別(K)」で「外部マクロ」を選択
	b. 指定したいマクロを選んでキーを割り当てる

全ての設定が終わったら「OK」ボタンで閉じる

----------------------------------------------------------------
## マクロの実行（サクラエディタ）

1. キー割り当てした場合はそのキーを押す

2. 「ツール(T)」→「登録済みマクロ(b)」から実行する

	![「ツール(T)」→「登録済みマクロ(b)」](image/SakuraEditor_macro_set_2.png)

----------------------------------------------------------------

# MML整形 for MGSDRV

## File

- サクラエディタ用 javascriptマクロ  
  [mml_reformat.js](SakuraEditor/mml_reformat.js)

- emEditor用 javascriptマクロ  
  [mml_reformat.jsee](emEditor/mml_reformat.jsee)

## 機能

- 選択した範囲のMMLを整形します。
- 選択していない場合はカーソル行を選択して整形します。
- 4分音符毎に空白を挿入します。
- 指定した1小節の長さで改行します。

## 指定

- '1小節の長さは？'  
  初期値 4/4  
  楽譜によくある指定方法です。  
  8/4なら4分音符が8個  
  6/8なら8分音符が6個

- '省略時の音長は？'  
  初期値 8  
  MMLのノートコマンド(cdefgab)で音量省略時の長さ。  
  整形対象の文字列中にLコマンドが無いときに有効です。

- 'ヘッダあり？(1=あり）'  
  初期値 1  
  MGSDRVの書式かどうかを指定します。  
  (行の先頭にチャンネルを指定する形式）  
  例) A @0v10ceged

  ※ 実際には行頭からスペースが1つ見つかればそれ以降を本文扱いします。

------------------------------------

# MML転調 for MGSDRV

## File

- サクラエディタ用 javascriptマクロ  
  [mml_transpose.jsee](SakuraEditor/mml_transpose.jsee)

- emEditor用 javascriptマクロ  
  [mml_transpose.jsee](emEditor/mml_transpose.jsee)

## 機能

- 指定した度数だけ転調します。
- -12なら1オクターブ下げます。
- 12なら1オクターブ上げます。

## 指定

- '転調は何度? (±12で1オクターブ変化)'  
  初期値 0  
  - -12なら1オクターブ下げます。
  - 12なら1オクターブ上げます。  

- 'ヘッダあり？(1=あり）'  
  初期値 1  
  MGSDRVの書式かどうかを指定します。  
  (行の先頭にチャンネルを指定する形式）  
  例) A @0v10ceged

  ※ 実際には行頭からスペースが1つ見つかればそれ以降を本文扱いします。

------------------------------------

# MMLオクターブ検査 for MGSDRV

## File

- サクラエディタ用 javascriptマクロ  
  [mml_octave_check.jsee](SakuraEditor/mml_octave_check.jsee)

- emEditor用 javascriptマクロ  
  [mml_octave_check.jsee](emEditor/mml_octave_check.jsee)


## 機能

選択範囲のオクターブ移動記号<>の数を数え、
最終的にプラスかマイナスであればその差分を表示します。

暫定で作ったため、ループコマンドを認識しません。

1行単位選択や、ループ内だけ選択で使用してみてください。

------------------------------------

# 更新履歴

- 2023.07.30 (3)
  - ファイル名修正
  - mml_octave_check
    - サクラエディタ用追加
  - mml_transpose 追加
- 2023.07.30 (2)
  - mml_reformat
    - 最終ループ抜けコマンド"|"の時のインデントを１つ現象
- 2023.07.30
  - mml_reformat
    - ループ処理バグ修正
    - 文字エンコード修正
- 2023.07.29
  - mml_reformat
    - コメント改行バグ修正
    - 無限ループの改行処理追加
    - ループ階層でのインデント処理追加
- 2023.07.28 (2)
  - mml_reformat
    - コメント処理バグ修正
    - 改行処理修正
  -   ループコマンド対応
- 2023.07.28 (1)
  - 最初のアップロード