# MML整形 for MGSDRV

## File

- sakura editor用 javascriptマクロ  
  [reformat_mml_for_mgsdrv.js](SakuraEditor/reformat_mml_for_mgsdrv.js)

- emEditor用 javascriptマクロ  
  [reformat_mml_for_mgsdrv.jsee](emEditor/reformat_mml_for_mgsdrv.jsee)

## 機能

- 選択した範囲のMMLを整形します。
- 選択していない場合はカーソル行を選択して整形します。
- 4分音符毎に空白を挿入します
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


自分用なので繰り返しなどは認識しません。


# MMLオクターブ検査

## File

- emEditor用 javascriptマクロ  
  [octave_test.jsee](emEditor/octave_test.jsee)

## 機能

選択範囲のオクターブ移動記号<>の数を数え、
最終的にプラスかマイナスであればその差分を表示します。

暫定で作ったため、ループコマンドを認識しません。

sakuraEditor用のはそのうち気が向いたら…
