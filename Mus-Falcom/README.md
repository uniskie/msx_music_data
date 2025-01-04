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
## 音量バランスについて

Mus-Falcomフォルダの中の楽曲データは、全体にOpenMSXのデフォルト音量に合わせて再調整しました。

---------------------------------------
## MSX用ディスクイメージ

 https://github.com/uniskie/msx_music_data/blob/master/DSK_image/musica%20-%20falcom.dsk


## ファイル説明

### 簡易プレイヤー
```
 HEAR80.BAS
 HEAR40.BAS
 MUSICED.BIN
```

### BGMファイル

MuSICA楽曲データバイナリです。

> [!CAUTION]
> 独自ルール: ファイル名に'がついている物はイントロです。  
> HEAR80.BAS/HEAR40.BASでイントロ＋ループ部をつなげて聞くことができます。
>
> 操作：
> 1. リターンキーでイントロを選択
> 2. スペースキーでメインループを選択すると再生

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

- [M3disp: SO-END1.BGM] https://m3.ym2413.com/?open=https://raw.githubusercontent.com/uniskie/msx_music_data/master/Mus-Falcom/SO-END1.BGM  
- [M3disp: SO-END1P.BGM] https://m3.ym2413.com/?open=https://raw.githubusercontent.com/uniskie/msx_music_data/master/Mus-Falcom/SO-END1P.BGM  
- [M3disp: YS2LANE.BGM] https://m3.ym2413.com/?open=https://raw.githubusercontent.com/uniskie/msx_music_data/master/Mus-Falcom/YS2LANE.BGM  
- [M3disp: YS2TOMAK.BGM] https://m3.ym2413.com/?open=https://raw.githubusercontent.com/uniskie/msx_music_data/master/Mus-Falcom/YS2TOMAK.BGM  

古いバージョンのものをM3dispで聞く場合  
https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/raw/81609e5f75061f2835e6d9c5ddf9d73ad09e1ec9/Mus-Falcom/YS2LANE.BGM  

### MDPlayer (MGSDRV/MuSICA)(Windows)

https://github.com/kuma4649/MDPlayer/releases

Windowsの場合MDPlayerで聞く方法があります。

MGSDRV、MuSICA互換(勤労5号)に対応していますし、  
MixerでSCC/PSG/OPLLの音量バランスも変更可能です。

ただしOPLLリズム音や音量変更時の聞こえ方は実機やエミュレータに比べて癖があるようです。
（OPLLリズム音が大きめな傾向あり）

---------------------------------------
