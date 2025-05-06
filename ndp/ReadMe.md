## NDPとは

なるとさんが開発中の高機能PSG音源ドライバ＆エディタ環境です。
現在クローズドβで開発進行中

- 現在PSGで出来る事を突き詰め中
- 快適なエディタと即時再生を助ける様々な機能
- リズムパートを独立して記述し、疑似的な4chを実現
  実際にリズム発声を割り込ませるチャンネルも動的に指定可能
- 面倒な処理を簡略化できる様々なコマンド
  例） ハードウェアエンベロープの音程制御、アルペジオ展開、セルフエコー


> NDP (PSG Driver for MSX) (C) naruto2413  
> NDP.BINは許諾を得て同梱しているものです。


## 視聴方法

NDP.BINとNDPファイルをロードしてBASICから再生する方法もありますが
KSSファイルを出力するので[M3disp](https://m3.ym2413.com/)でも再生可能です

1. Windows等で聞く

   ブラウザで https://m3.ym2413.com/ を開き、
   M3dispにkssをドロップして再生を実行。

   m3dispはMGSファイルなども直接再生可能です。

2. MSXで聞く
   
   MSXで演奏する際に使用するファイル

   - play.bas
   - NDP.BIN
   - USRGETA.BIN
   - *.NDP

   PLAY.BASは簡易プレイヤーになっています。
   - "L"キー：1曲演奏/2ループオートプレイの切り替え
   - その他のキーやジョイボタン：次の曲へ
   
   ![ndp-play](img/ndp-play.png)

   ディスクイメージ [../DSK_image/ndp.dsk](../DSK_image/ndp.dsk) もあります。
   
   ![ndp.dsk](img/ndp_dsk.png)

   > Windowsからディスクイメージの内容を操作したい場合は、DiskExplorerが便利です。
   >
   > https://www.vector.co.jp/soft/win95/util/se107750.html  
   >
   > - 2DD/FAT12はそのまま使えます
   > - HDDイメージは  
   >   (Manual HD)→  
   >   フォーマット「AT形式」→  
   >   パーティション「基本領域(FAT)」  
   >   を選択すると操作できます。

## m3disp 直再生リンク

- おまけ：  

  [RISEOUT.BAS](RISEOUT.BAS)

- ndpデータ全曲まとめパック  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/DSK_image/ndp-m3disp.zip


- "RISEOUT (Arrange)"  
  [ndp-riseout-a.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-riseout-a.kss

- "RISEOUT (Original)"  
  [ndp-riseout.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-riseout.kss

- "スペースマンボウ STAGE1「Battle Ship」"  
  [ndp-space_manbow_stage1_battle_ship.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-space_manbow_stage1_battle_ship.kss

- "スペースマンボウ STAGE1「Battle Ship」(H.ENV三角波ベース)"  
  [ndp-space_manbow_stage1_battle_ship_henv.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-space_manbow_stage1_battle_ship_henv.kss

- "CASIO MSXソフト 「賢者の石」メドレー"  
  [ndp-kenja_no_ishi_split_se.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-kenja_no_ishi_split_se.kss

- "CASIO MSXソフト 「賢者の石」メドレー (SE挿入版)"  
  [ndp-kenja_no_ishi.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-kenja_no_ishi.kss

- "DANGEROUS SEED(MD) 1st TUBE (STAGE 1&8)"  
  [ndp-dangrous_seed_1.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-dangrous_seed_1.kss

- "DANGEROUS SEED(MD) Triple-Eye (Stage 1&9 BOSS)"  
  [ndp-dangrous_seed_1_boss.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-dangrous_seed_1_boss.kss

- "DANGEROUS SEED(MD) 2nd TUBE (STAGE 2&5)"  
  [ndp-dangrous_seed_2.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-dangrous_seed_2.kss

- "DANGEROUS SEED(MD) Jupiter (Stage 6&10)"  
  [ndp-dangrous_seed_5.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-dangrous_seed_5.kss

- "女神転生Ⅱ (H.ENV) Labyrinth 午前２時の迷宮"  
  [ndp-dds2-Labyrinth.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-dds2-Labyrinth.kss

- "女神転生Ⅱ (H.ENV) - OMEGA 聖戦 -"  
  [ndp-dds2-omega.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-dds2-omega.kss

- "女神転生Ⅱ (STANDARD) Labyrinth 午前２時の迷宮"  
  [ndp-dds2-Labyrinth-n.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-dds2-Labyrinth-n.kss

- "女神転生Ⅱ (STANDARD) - OMEGA 聖戦 -"  
  [ndp-dds2-omega-n.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-dds2-omega-n.kss

- "Dragon Spirit [AREA 1] -The Paleozoic Era- (like FC ver.)"  
  [ndp-dragon-spirit-area1-The_Paleozoic_Era.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-dragon-spirit-area1-The_Paleozoic_Era.kss

- "Dragon Spirit -OMAKE-  (like a FC ver.)"  
  [ndp-dragon-spirit-omake.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-dragon-spirit-omake.kss

- "Dragon Spirit -Sea- (like FC ver.)"  
  [ndp-dragon-spirit-sea.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-dragon-spirit-sea.kss

- "Dragon Spirit -Zawel- (like FC ver.)"  
  [ndp-dragon-spirit-zawel.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-dragon-spirit-zawel.kss

- "F1SPIRIT (H.ENV) [F-1 Shuffle] (TITLE)"  
  [ndp-f1spirit-henv-1-F1_Shuffle.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-f1spirit-henv-1-F1_Shuffle.kss

- "F1SPIRIT (H.ENV) [Starting Grid] (START)"  
  [ndp-f1spirit-henv-2-starting_grid.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-f1spirit-henv-2-starting_grid.kss

- "F1SPIRIT (H.ENV) [D/G] (MACHINE SELECT)"  
  [ndp-f1spirit-henv-3-D_G.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-f1spirit-henv-3-D_G.kss

- "F1SPIRIT (H.ENV) [Hot Summer Riding] (STOCK CAR RACE)"  
  [ndp-f1spirit-henv-4-hot_summer_riding.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-f1spirit-henv-4-hot_summer_riding.kss

- "F1SPIRIT (H.ENV) [Random Approach] (RALLY RACE)"  
  [ndp-f1spirit-henv-5-random-approach.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-f1spirit-henv-5-random-approach.kss

- "F1SPIRIT (H.ENV) [Next] (Retire)"  
  [ndp-f1spirit-henv-6-next.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-f1spirit-henv-6-next.kss

- "F1SPIRIT (H.ENV) [Vanishing Heat] (ENDURANCE RACE)"  
  [ndp-f1spirit-henv-8-Vanishing_Heat.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-f1spirit-henv-8-Vanishing_Heat.kss

- "F1SPIRIT (H.ENV) [Winning Run] (RANKING GOAL)"  
  [ndp-f1spirit-henv-9-Winning_Run.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-f1spirit-henv-9-Winning_Run.kss

- "F1SPIRIT (STANDARD) [F-1 Shuffle] (TITLE)"  
  [ndp-f1spirit-std-F1_Shuffle.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-f1spirit-std-F1_Shuffle.kss

- "F1SPIRIT (STANDARD) [Starting Grid] (START)"  
  [ndp-f1spirit-std-starting_grid.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-f1spirit-std-starting_grid.kss

- "F1SPIRIT (STANDARD) [D/G] (MACHINE SELECT)"  
  [ndp-f1spirit-std-D_G.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-f1spirit-std-D_G.kss

- "F1SPIRIT (STANDARD) [Hot Summer Riding] (STOCK CAR RACE)"  
  [ndp-f1spirit-std-hot_summer_riding.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-f1spirit-std-hot_summer_riding.kss

- "F1SPIRIT (STANDARD) [Random Approach] (RALLY RACE)"  
  [ndp-f1spirit-std-random-approach.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-f1spirit-std-random-approach.kss

- "F1SPIRIT (STANDARD) [Next] (Retire)"  
  [ndp-f1spirit-std-next.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-f1spirit-std-next.kss

- "F1SPIRIT (STANDARD) [Vanishing Heat] (ENDURANCE RACE)"  
  [ndp-f1spirit-std-Vanishing_Heat.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-f1spirit-std-Vanishing_Heat.kss

- "F1SPIRIT (STANDARD) [Winning Run] (RANKING GOAL)"  
  [ndp-f1spirit-std-Winning_Run.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-f1spirit-std-Winning_Run.kss

- "MAZE of GALIOUS [START] ~ [CASTLE] (H.ENV)"  
  [ndp-galious-castle.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-galious-castle.kss

- "MAZE of GALIOUS [START] ~ [CASTLE] (STANDARD)"  
  [ndp-galious-castle-nr.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-galious-castle-nr.kss

- "GRADIUS II AC - Synthetic Life - [NDP Arrange]"  
  [ndp-graii-7.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-graii-7.kss

- "GRADIUS II AC - Shoot & Shoot - [NDP Arrange]"  
  [ndp-graii-16.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-graii-16.kss

- "PARODIUS 中ボス - クライシス第４楽章"  
  [ndp-paro-crisis.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-paro-crisis.kss

- "SALAMANDER [ POWER OF ANGER ] (H.ENV)"  
  [ndp-saramander-1-power_of_anger.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-saramander-1-power_of_anger.kss

- "SALAMANDER [ POWER OF ANGER ] (STANDRD)"  
  [ndp-saramander-1-power_of_anger-nh.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-saramander-1-power_of_anger-nh.kss

- "SALAMANDER [ POWER OF ANGER ] (鼻歌 with H.ENV)"  
  [ndp-saramander-1-power_of_anger-another.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-saramander-1-power_of_anger-another.kss

- "SALAMANDER [ FLY HIGH ] (H.ENV)"  
  [ndp-saramander-2-fly_high.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-saramander-2-fly_high.kss

- "SALAMANDER [ FLY HIGH ] (STANDARD)"  
  [ndp-saramander-2-fly_high-nr.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-saramander-2-fly_high-nr.kss

- "SORCERIAN MD - 灰色のダンジョン(THE DARKEST OF THE DARK) - DUNGEON (H.ENV)"  
  [ndp-sorcerian_md-gray_dungeon-dungeon.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-sorcerian_md-gray_dungeon-dungeon.kss

- "SORCERIAN MD - 灰色のダンジョン(THE DARKEST OF THE DARK) - DUNGEON (STANDARD)"  
  [ndp-sorcerian_md-gray_dungeon-dungeon-std.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-sorcerian_md-gray_dungeon-dungeon-std.kss

- "ヴァ〇ニラの求人 NDP祭り"  
  [ndp-vanilla.kss]  
  https://m3.ym2413.com/?open=https://github.com/uniskie/msx_music_data/blob/master/ndp/ndp-vanilla.kss


## H.ENV が、タイトルについているデータ

チャンネルミュートの時にハードウェアエンベロープの波形がそのまま出力されることを利用して、
矩形波以外の波形（三角波・鋸波）を発声させているデータです。

ハードウェアエンベロープは振幅（音量）が一定ですが、
ミュートを解除して音程レジスタに分周比0を指定すると出力が半減することを利用して2段階の音量をつけています。

ごく一部、互換性のない機種があります。

### 互換性のない機種

- CASIO MX-101 ... ミュート時波形出力、TONE0での減衰ともに未対応
- MSX0Stack ... ミュート時波形出力、TONE0での減衰が不完全
