## ご注意

OpenMSXで作成・演奏・調整しています。  
音量は実機に合わせていませんので、実機での演奏については保証外です。  

## 音量設定

① FS-A1+FMPAC / HB-F1XDJ / FS-A1WX
set "PSG_Volume"=100
set "MSX Music_volume"=100
※実機でもOK

② FS-A1GT / FS-A1ST
set "PSG_Volume"=72
set "MSX Music_volume"=100
※ 実機は非推奨

## ドラゴンセイバー STAGE1 水没都市

 ※ 水没都市のご注意

内蔵機種やエミュレータの標準的な音量バランスではまともに演奏できません。

> SONY HB-F1XDmk2 + FMPAC(音量大) + SCCカートリッジで作成していたそのままです。  
> SCCの音量範囲がこの組み合わせでなければ使用できない為、調整が難しい状況です。  
> 手は考えていますが、なかなか思ったように行かず、先送りになっています。

## 音色ファイル
MSDファイルと同じファイル名が無い物はNAMCO.VCDを使用します。

## BGMファイル
"'"（クオーテーション）がついているものがある場合はイントロなのでメインループ選択前に（ENTERで選択)
"-"（ハイフン）がメインループ（SPACEで決定演奏）になります。

## 各楽曲
データは作業中のものも含みます。

HEAR40.BAS：プレイヤー(WIDTH40)
HEAR80.BAS：プレイヤー(WIDTH80)
BGM.BIN：プレイヤー用マシン語ファイル
BGMファイル：演奏データ

おまけ
MSDファイル：MuSICA MML
VCDファイル：MuSICA 音色

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


### MDPlayer (MGSDRV/MuSICA)(Windows)

https://github.com/kuma4649/MDPlayer/releases

Windowsの場合MDPlayerで聞く方法があります。

MGSDRV、MuSICA互換(勤労5号)に対応していますし、  
MixerでSCC/PSG/OPLLの音量バランスも変更可能です。

ただしOPLLリズム音や音量変更時の聞こえ方は実機やエミュレータに比べて癖があるようです。
（OPLLリズム音が大きめな傾向あり）

