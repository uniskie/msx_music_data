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
