# 説明

MuSICAで作成した OPLL+PSG+SCC 未完成音楽データ集

SONY HB-F1XDmk2 + FMPAC(音量大) + SCCカートリッジで作成していたものです。

グラディウスⅡの曲に関してはOpenMSX用に調整しなおしました。  
水没都市は音量での調整が困難なため対応は未定です。  
（SCCの音量特性が原因で、視聴可能なレベルに調整できなかった為）

## DSKイメージ

https://github.com/uniskie/msx_music_data/blob/master/DSK_image/mus-gra2.dsk


# ★MuSICA とは

  MuSICAはアスキーMSXマガジンがDante（MSX2用RPGツクールの前身）向けにBGM作成ツールです。
Danteで原型が作られ、Dante2の時にMuSICAとして独立して頒布されました。

  高機能なマクロなどはありませんが、繰り返し回数指定付きシーケンスブロックを使用した省メモリ設計。
エディタ環境からワンボタンで手軽に再生・早送りなどが出来ます。
当時は唯一SCCを鳴らすことが出来る音楽制作ソフトでした。

# 曲解説

## グラディウスⅡ AC GOFERの野望

OpenMSX用に音量バランスを調整しました。
一応聞けるレベルにはなっていると思います。

01～08までは採譜のし直しと作り直しを行っています。
それ以降のものも作業予定です。

ただし、どれもまだまだ調整段階にあります。

未作成またはパート不足：

- 10: The Old Stone Age -1- (未作成)
- 12: Maximum Speed (リズムパート不足)
- 14: Into The Hostile Ship (未作成)
- 15: Shoot and Shooy (未作成)

## ドラゴンセイバー STAGE1 水没都市

 ※ 水没都市のご注意

内蔵機種やエミュレータの標準的な音量バランスではまともに演奏できません。

> SONY HB-F1XDmk2 + FMPAC(音量大) + SCCカートリッジで作成していたそのままです。  
> SCCの音量範囲がこの組み合わせでなければ使用できない為、調整が難しい状況です。  
> 手は考えていますが、なかなか思ったように行かず、先送りになっています。

### 再生環境


BlueMSXで作成・演奏・調整しています。  
音量は実機に合わせていませんので、実機での演奏については保証外です。  
Bluemsx.iniをテキストエディタで開いて各種音量設定を反映してから聞いてみてください。  
（※その際、書き換え前のbluemsx.iniのバックアップをしておくと良いと思います。）  

元々、機種以降にともなう修正途中で音量バランスが崩壊してしまったデータで  
それをBlueMSX上で聴けるように音量側を弄ることで鳴らしたものなので、  
SCCとPSGのバランスも、FM音源のバランスも実機とは大きく異なると思います。  

BlueMSXでの音量は
```
sound.mixerChannel.MIXER_CHANNEL_PSG.enable=yes
sound.mixerChannel.MIXER_CHANNEL_PSG.pan=50
sound.mixerChannel.MIXER_CHANNEL_PSG.volume=66
sound.mixerChannel.MIXER_CHANNEL_SCC.enable=yes
sound.mixerChannel.MIXER_CHANNEL_SCC.pan=50
sound.mixerChannel.MIXER_CHANNEL_SCC.volume=66
sound.mixerChannel.MIXER_CHANNEL_MSXMUSIC.enable=yes
sound.mixerChannel.MIXER_CHANNEL_MSXMUSIC.pan=50
sound.mixerChannel.MIXER_CHANNEL_MSXMUSIC.volume=85
```
です。

## そのほか

- GRADIUS-2 STAGE 3
- GRADIUS STAGE 4

とりあえず作ってみただけのごみデータ  
作りが雑なので消すか、最初から作り直しの予定（そのうち）

