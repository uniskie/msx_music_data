ファルコム音楽フリー宣言
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

disk image: https://github.com/uniskie/msx_music_data/blob/master/DSK_image/musica%20-%20falcom.dsk

---------------------------------------
※ご注意
---------------------------------------

BlueMSXで作成・演奏・調整していたものが含まれます。
音量は実機に合わせていませんので、実機での演奏については保証外です。
該当データについては
Bluemsx.iniをテキストエディタで開いて各種音量設定を反映してから聞いてみてください。
（※その際、書き換え前のbluemsx.iniのバックアップをしておくと良いと思います。）

元々音量バランスの崩壊したデータをBlueMSX上で聴けるように弄ったもので、
SCCとPSGのバランスも、FM音源のバランスも実機とは異なると思います。

---------------------------------------
Falcom曲のMuSICAデータ
---------------------------------------
YS*.* やvoice*.vcdファイル。

MSD（MMLテキスト）
VCD（音色バイナリ）
BGM（演奏データ）ファイルのセット。

YS1BEAT'.BGM
YS1BEAT0.BGM
YS1BEAT0.MSD
YS1BEATO.BGM
YS1BEATO.MSD
YS1FINA2.BGM
YS1FINAL.BGM
YS1FINAL.MSD
YS1FIRST.BGM
YS1FIRST.MSD
YS1FIRST.VCD
YS1PODE'.BGM
YS1POFDE.BGM
YS1POFDE.MSD
YS1TOWER.BGM
YS2LANE'.BGM
YS2LANE.BGM
YS2LANE.MSD
YS2LANE0.BGM
YS2LANE0.MSD
YS2SAL.BGM
YS2SALM2.BGM
YS2SALMO.BGM
YS2SALMO.MSD
YS2TOMA1.BGM
YS2TOMA1.MSD
YS2TOMAB.BGM
YS2TOMAB.MSD
YS2TOMAF.MSD
YS2TOMAK.ASC
YS2TOMAK.BGM
YS2TOMAK.MSD
YS2TOMAK.VCD
SO-12-2'.BGM
SO-12-2.BGM
SO-12-2.MSD
SO-12-2.VCD

BlueMSXでの音量は
sound.mixerChannel.MIXER_CHANNEL_PSG.enable=yes
sound.mixerChannel.MIXER_CHANNEL_PSG.pan=50
sound.mixerChannel.MIXER_CHANNEL_PSG.volume=100
sound.mixerChannel.MIXER_CHANNEL_SCC.enable=yes
sound.mixerChannel.MIXER_CHANNEL_SCC.pan=50
sound.mixerChannel.MIXER_CHANNEL_SCC.volume=85
sound.mixerChannel.MIXER_CHANNEL_MSXMUSIC.enable=yes
sound.mixerChannel.MIXER_CHANNEL_MSXMUSIC.pan=50
sound.mixerChannel.MIXER_CHANNEL_MSXMUSIC.volume=77
です。

一部、OpenMSXのデフォルトに合わせたデータも混じっているかもしれません。

---------------------------------------
OMAKE
『Relics Openning Theme(SCC ver)』
---------------------------------------
relicsop.bgm

音量はファルコム曲と同じ

---------------------------------------
OMAKE
『高収入求人情報バニラ(VANILLA)の広告宣伝カーの曲』
---------------------------------------
vanila.bgm : OPLL+PSG
vanilap.bgm : PSG
vanila.bas : MSX スクリーンモード2で画像＋PSG版BGM再生

音量はファルコム曲と同じ

---------------------------------------
OMAKE
DragonSaber Stage1 『水没都市』
---------------------------------------

SUIBOTU1、SUIBOTUはファルコム系と音量バランスが異なります。
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

この曲は特に問題児で、
音量バランスが異なる場合は良い感じに演奏できません。

SCCの波形側で音量を下げる必要があるらしいですね……

ここに記載した物以外はOpenMSXのデフォルト設定を使用しています。
