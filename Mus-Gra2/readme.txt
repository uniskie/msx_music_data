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
