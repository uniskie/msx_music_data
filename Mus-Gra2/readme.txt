---------------------------------------
※ご注意
---------------------------------------

BlueMSXで作成・演奏・調整しています。
音量は実機に合わせていませんので、実機での演奏については保証外です。
Bluemsx.iniをテキストエディタで開いて各種音量設定を反映してから聞いてみてください。
（※その際、書き換え前のbluemsx.iniのバックアップをしておくと良いと思います。）

元々、機種以降にともなう修正途中で音量バランスが崩壊してしまったデータで
それをBlueMSX上で聴けるように音量側を弄ることで鳴らしたものなので、
SCCとPSGのバランスも、FM音源のバランスも実機とは大きく異なると思います。

BlueMSXでの音量は
sound.mixerChannel.MIXER_CHANNEL_PSG.enable=yes
sound.mixerChannel.MIXER_CHANNEL_PSG.pan=50
sound.mixerChannel.MIXER_CHANNEL_PSG.volume=66
sound.mixerChannel.MIXER_CHANNEL_SCC.enable=yes
sound.mixerChannel.MIXER_CHANNEL_SCC.pan=50
sound.mixerChannel.MIXER_CHANNEL_SCC.volume=66
sound.mixerChannel.MIXER_CHANNEL_MSXMUSIC.enable=yes
sound.mixerChannel.MIXER_CHANNEL_MSXMUSIC.pan=50
sound.mixerChannel.MIXER_CHANNEL_MSXMUSIC.volume=85
です。

※ 自分のファルコム系データとは異なります。

dskイメージ：
https://github.com/uniskie/msx_music_data/blob/master/DSK_image/mus-gra2.dsk



★MuSICA とは
  MuSICAはアスキーMSXマガジンがDante（MSX2用RPGツクールの前身）向けにBGM作成ツールです。
Danteで原型が作られ、Dante2の時にMuSICAとして独立して頒布されました。

  高機能なマクロなどはありませんが、繰り返し回数指定付きシーケンスブロックを使用した省メモリ設計。
エディタ環境からワンボタンで手軽に再生・早送りなどが出来ます。
当時は唯一SCCを鳴らすことが出来る音楽制作ソフトでした。
