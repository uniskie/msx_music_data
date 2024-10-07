# msx_music_data
MuSICAデータとMGSDRVデータです

ファルコム音楽フリー宣言
https://www.falcom.co.jp/music-use

BEAT OF TERROR/Ys1/Copyright© Nihon Falcom Corporation

FINAL BATTLE/Ys1/Copyright© Nihon Falcom Corporation

FIRST STEP TOWARD/Ys1/Copyright© Nihon Falcom Corporation

PALACE OF DESTRUCTION/Ys1/Copyright© Nihon Falcom Corporation

TOWER OF THE SHADOW OF DEATH/Ys1/Copyright© Nihon Falcom Corporation

COMPANILE OF LANE/Ys2/Copyright© Nihon Falcom Corporation

PALACE OF SALMON/Ys2/Copyright© Nihon Falcom Corporation

TO MAKE THE END OF BATTLE/Ys2/Copyright© Nihon Falcom Corporation

Ending1/Sorserian/Copyright(C) Nihon Falcom Corporation

# ファイルの種類

演奏データ系

- .BGM ... MuSICA データバイナリ
- .MGS ... MGSDRV データバイナリ
- .KSS ... KSSファイル。演奏用エミュレーションデータ。

> KSSはdpドライバエディタも出力をサポート

データソース：音色データ

- .VCD ... MuSICA音色データ

データソース：MML

- .MSD ... MuSICA MML
- .mml ... 特に決まっていないが大体MML
- .MUS ... 特に決まっていないが大体MML。時々データバイナリ

# 演奏方法

## M3disp (KSS/MGSDRV/MuSICA/OPLLDriver/MPK/MoonBlaster)(Web Browser)

https://m3.ym2413.com/

ChromeやFirefoxで動作します。スマホでもどこでも扱えます。  
ピアノロール表示などもあり、データチェックにも使用できます。  
(スマホの場合、横画面にするとピアノロールが選べます）

多様なフォーマットに対応しているのも特徴です。  
MuSICAはMDPlayerと同じく勤労5号で演奏されます。

[ndpドライバデータ](/ndp)もKSSファイルであれば演奏できます。


## MDPlayer (MGSDRV/MuSICA)(Windows)

https://github.com/kuma4649/MDPlayer/releases

Windowsの場合MDPlayerで聞く方法があります。

MGSDRV、MuSICA互換(勤労5号)に対応していますし、  
MixerでSCC/PSG/OPLLの音量バランスも変更可能です。

ただしOPLLリズム音や音量変更時の聞こえ方は実機やエミュレータに比べて癖があるようです。
（OPLLリズム音が大きめな傾向あり）

## MSXPlay (MGSDRV)(Windows/Macintosh/Unix)

https://msxplay.com/editor.html

WEBブラウザ上でMGSDRVデータを演奏できます。  
MMLも演奏可能です。

MGSDRVデータのの試聴・作成環境としては最も手軽かと思います。

## MGSP2 (MGSDRV)(MSX)

https://github.com/hra1129/mgsp2/releases

MSX実機向けのMGSDRV用プレイヤー

MSX1にも対応しています。

## MSGEL (MGSDRV)(MSX)

https://gigamix.hatenablog.com/entry/mgsdrv/

本家のMGSDRVプレイヤー

その他の互換プレイヤーも紹介されています。


## 勤労5号 (MuSICA)(MSX)

http://sakuramail.net/fswold/music.html

本家MuSICA自体はライセンスフリーではないので、互換ドライバを使用して演奏可能です。  
勤労シリーズはMuSICAの上位互換ドライバとなっています。

（勤労4号はMMLコンパイラです。）

## MuSICA (MuSICA)(MSX)

本家アスキー製MuSICAドライバ・コンパイラセット

入手方法
1. 1990年10月発売のMSXディスク通信創刊号 (ver.1.0)
2. RPGコンストラクションツール Dante2 (ver.1.02)
3. MSXマガジン永久保存版 (ver.1.02)

# エミュレータ特性

## BlueMSX

1. 低音ブースト
2. 中音域が伸びる
3. 高音域フィルタあり
4. OPLLリズム音色のノイズが異常に小さい

4の問題を無視すれば最もリッチな音が出る。  
逆に言えばBlueMSXで作成したデータは他の環境では全く違う音に聞こえる可能性が高い。

※ 私の作成したデータの幾つかはBlueMSX専用になっています。

## OpenMSX

1. 互換性が高い
2. 高音域フィルタがない

FMPACの高音域フィルタ（コンデンサのC12/C13）を外した状態に近い音が出る。  
高音域フィルタがないので実機よりノイズが多め

## MSXPlay

1. 互換性が高い
2. 高音域フィルタは簡易的に選択可能

PSG/SCCにも影響してしまいますが高音域フィルタ(LPF)が使用できます。
LPFを使用すると実機に近い音色が出せます。

# MuSICA とは
  MuSICAはアスキーMSXマガジンがDante（MSX2用/RPGツクールの前身）から派生したBGM作成ツールです。
Danteで原型が作られ、Dante2の時にMuSICAとして独立して頒布されました。
作成したデータはDante2で使用することが出来ました。（※Dante2ではSCC音源は鳴りません）

  高機能なマクロなどはありませんが、繰り返し回数指定付きシーケンスブロックを使用した省メモリ設計。
エディタ環境からワンボタンで手軽に再生・早送りなどが出来ます。
当時は唯一SCCを鳴らすことが出来る音楽制作ソフトでした。

  現在では、ツクールシリーズで作成したデータは制作者に権利があり、公開も自由ですが、MuSICAにもその条件が適用されるかは不明です。当時の規約ではMSXマガジンへの投稿のみが許可されていました。

## おまけ
音色定義ファイル(vcdファイル)をMGSDRV形式で表示するツール
https://uniskie.github.io/msx_music_data/tool/vcd_conv.html

htmlソースコード [tool/vcd_conv.html](tool/vcd_conv.html)
(ダウンロードしてブラウザで開いて使用できます)


# その他

MuSICA ドキュメント関連： https://github.com/uniskie/MSX_DOCUMENTS
