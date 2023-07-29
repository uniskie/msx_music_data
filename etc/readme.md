# スクリプト一覧

1. [SCC波形加工 for MGSDRV](https://github.com/uniskie/msx_music_data/edit/master/etc/readme.md#scc%E6%B3%A2%E5%BD%A2%E5%8A%A0%E5%B7%A5%E3%83%84%E3%83%BC%E3%83%AB-for-mgsdrv)
2. [MML整形 for MGSDRV](https://github.com/uniskie/msx_music_data/edit/master/etc/readme.md#mml%E6%95%B4%E5%BD%A2-for-mgsdrv)
3. [MML転調 for MGSDRV](https://github.com/uniskie/msx_music_data/edit/master/etc/readme.md#mml%E8%BB%A2%E8%AA%BF-for-mgsdrv)
4. [MMLオクターブ検査 for MGSDRV](https://github.com/uniskie/msx_music_data/edit/master/etc/readme.md#mml%E3%82%AA%E3%82%AF%E3%82%BF%E3%83%BC%E3%83%96%E6%A4%9C%E6%9F%BB-for-mgsdrv)

# SCC波形加工 for MGSDRV

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

Use Control + Shift + m to toggle the tab key moving focus. Alternatively, use esc then tab to move to the next interactive element on the page.
選択されていません
Attach files by dragging & dropping, selecting or pasting them.
Editing msx_music_data/etc/readme.md at master · uniskie/msx_music_data
