10 CLEAR5000:DEFINTA-Z
20 _MGSDRV(1,1:_ALLOC(15,&H800
30 _ESET(0,"1,,deeffd=12[c:3/d:3]
31 _ESET(1,"1,,fd=20[c:3/d:3]
32 _ESET(2,"1,,cdef
33 _ESET(3,"1,,f7=12/60=9
34 _ESET(4,"2,,*1,f*2,9=3,6=20,0=30
35 _ESET(5,"2,,*1f*2n8,dcn11,bn14,an17,9=4,n20,8=9,n23,7=9,n27,0=90
36 _ESET(6,"2,,f9=10/80=60
41 _WSET(0,"@2
42 _WSET(1,"@7
43 _WSET(6,"@9
44 _WSET(13,"@3
50 _VSET(15,"@9
51 _VSETC(16,11,5, 15,3,3,2, 3, 2, 1,1, 1, 0,0,                                                    12,1,4,2, 0, 2, 0,1, 1, 0,1
1010 '***** Cord *****
1020 O1$="o3\1v08@0k6h9,1,1,1"
1021 O4$="o@0h9,1,1,1 v6"
1022 O9$="o@15@e1s1h9,1,1,2":OA$="v9\2"+O9$:O9$="v11"+O9$
1030 A0$="l16 [r1] [4b>f+dadf+ab@v-1] [r1] @v+1 [4@v+1>dc+bagf+ed] v-1 r8[4d<b>egegeb@v-1] @v+5
1040 A1$="l8<<[b4>d4<bbb abbb>dc+4<b 4:b4>d4<bba bbbb>c+d4<b a]br>dr<bba bbbb>c+d4<b ab2>c+4. ^8d2rc+<b a
1050 A2$="[3bb>d4c+<ba bb>e4d4c+4< :b] b4>d2. ^8c+4c+4c+4c+ c+
1070 A3$="[f+4<b4bb>d <bbb>d<bb>d<b b>f+4<a4aa>c+ <aaa>c+<aa>c+<a >c+d4<g4ggb ggbggggg br4>:f+4edc+ df+c+2b>d e<]>f+4edc+ df+c+2.
1080 A4$="rlc+c+c+c+8 ^8<bbbb8 ^8>eeee8 ^8<bbbb8 ^4<a+2. ^8>c+2.l8r ar>c+ge<g>ag <a>ba<a>>c+<b<a>>c e1 ^1 ]
1100 '***** Merody *****
1110 O2$="ov09@1h9,1,1,1\1"
1111 O5$="o5v07@1h9,1,1,1":O6$="ov05@1h9,1,1,1 \3"
1112 OB$="o5v13@16@e0h9,2,1,2":OC$="o5v12@16h9,2,1,2 \2"
1120 B0$="l1 [r] e d f+ ^ g f+2g2 a e b a <<b4>d2. ^ v+2<b4>d2. ^2.r8<a8 b4>d2. ^ <b4>d2. ^2.r8<a8 ^ ^ l2b>c+ df+ f+e dc+ <b>c+ de d1 c+1
1130 B1$="l8[>[rf+2.<e> eg4f+4e4d] :d<b2.r r>agf+f+ef+g >d4.c+2r <a+4.f+2r] [b1 :r>d4.c+4<ba+] a+2.rf+ >c+2.r<a r>f+edc+<b>cd <a4.f+4.>dc+ r4r<b4.l16f+a+br l>g.f+.e r8d.c+<b >[c+1] ]
1140 '***** Bass *****
1150 O7$="v12 o2":O8$="v11 o2s1 \2
1151 OD$="v15 o2":OE$="v14 o2 \1
1160 C0$="@6@e2 ql1 b ^ &b ^ >d ^ &d ^ e ^ &e ^ <b ^ &b ^ b ^ b ^ b2a2 b l8"
1165 C1$="@13@e6q6"
1170 _MCR(0,"[16b] [16a] [16g] [12f+]"
1180 C2$="*0[4f+] [*0f+gaa] [[8g] [8a]:[8f+] [8g] [8f+] ][8a] ]"
1190 '***** Drums *****
1200 OF$="vb15 vs13 vm15 vh09 vc12 xb,3 xs,4xs193 xc21
1205 _MCR(1,"vm-1m32
1206 _MCR(2,"ms32*1*1*1vm+3
1210 _MCR(3,"[l16bh;b;bh;b;ms32*1vm-1bm32*1vm+3bh;b;]
1220 _MCR(4,"bms32*1*1*1vm+3
1221 _MCR(5,"xb180
1222 _MCR(6,"xb170
1223 _MCR(7,"xb160
1228 _MCR(8,"xb140
1230 D0$="*6[3*3[6l8h8h8*2h8]] *7bc4bc2r4 r4c4c4r4 b4b2r4 r2.c8b8
1240 D1$="[*7bc4bh8h8*8*4bh8*7bh8h8 *8*4bh8*7bh8*8bh8*4c8*7bc8:*8b8]b8 [b4*8bc8b8*7] [b8.l16b;]b;b;c8*8bh8*7bh8
1250 D2$="[3*8*4h8*7bh8h8*8*4bh8*7bh8h8 *8*4bh8*7bh8*8bh8*4h8*7bh8*8bh8] *8*4h8*7bh8h8*8*4bh8*7b8c8 *8b8*7b8*5b4*8bc8*7[bh8]*5*4
1260 _MCR(9,"*8bh8h8*7bh8*2*8bh8bh8*7bh8*2
1270 _MCR(10,"*8[bh8]*7bh8*8*4bh8
1280 D3$="[*9 *10h8*7bh8*8*4 *9 *8bh8*7bh8*5bh8*2*8bc8*7[bh8]*5*4 *9 *10c8:*7bc8*8b8 *7bh8b8h8*5*4h8*7bh8h8*8*4 bh8b8*7b8*8b8*5bc8bh8*7bh8*5*4]
1290 D4$="*7bc8*8bh8 *7bh8*4h8*5bc8h8*7*4h8*8bc8 b8b8*7bc8*8bh8*5bh8*4*7bh8*5bh8 *8bh8*2*7bh8h8*8bh8*4*7bh8h8 *8bh8*4*7bh8*8[bh8]*7*4*8bh8*7bh8 bh8*2*5bh8h8*7bh8*2*8[bh8]
1300 D5$="[*8bh8*7*4:*8bc8*5[bh8]*7*4*5bh8*8bh8 h8*7*4h8*8[bh8]*7*4h8*8bh8]*8bh8bc8r8*7b8*8b8*7bc8 [r8*8[b8]*7:bc8]b8 *5b8*7b8bc8b8*5b8*8b8*7b8r8 $]
1310 '***** Percassion & Snare *****
1320 O3$="o3 v10 l8 k10
1330 E0$="@4 [3[n13d4rn2ddn5dd4 dn2d4n5dddn2:d4]dd16n5d16]
1340 E1$="v13@5 [4r1] [r2[3dr4.]] [r1] [14dr4.] [r2[12r4.d]r2 :[r4.d]]
1350 E2$="[rdr4] r2[12rdr4]r2 [r1] ]
5000 T$="t120":_TRKM("@t19200"+T$,T$,T$,T$,T$,T$,T$,T$,T$,T$,T$,T$,T$,T$,T$)
5010 S$="[0
5020 _TRKM(S$,S$,S$,S$,S$,"r16"+S$,S$,"r16"+S$,S$,"r16"+S$,S$,"r16."+S$,S$,"r32"+S$,S$
5030 _TRKM(O1$,O2$,O3$,O4$,O5$,O6$,O7$,O8$,O9$,OA$,OB$,OC$,OD$,OE$,OF$
5040 _TRKM(A0$,B0$,E0$,A0$,B0$,B0$,C0$,C0$,A0$,A0$,B0$,B0$,C0$,C0$,D0$
5050 _TRKM(A1$,B1$,E1$,A1$,B1$,B1$,C1$,C1$,A1$,A1$,B1$,B1$,C1$,C1$,D1$
5060 _TRKM(A2$,"" ,E2$,A2$,"" ,"" ,C2$,C2$,A2$,A2$,"" ,"" ,C2$,C2$,D2$
5070 _TRKM(A3$,"" ,"" ,A3$,"" ,"" ,"" ,"" ,A3$,A3$,"" ,"" ,"" ,"" ,D3$
5080 _TRKM(A4$,"" ,"" ,A4$,"" ,"" ,"" ,"" ,A4$,A4$,"" ,"" ,"" ,"" ,D4$
5090 _TRK(15                                                      ,D5$
5100 A$="TAITO   GUN FRONTER -round1-
5110 B$="By Uniskie."
5120 C$=SPACE$(58)
5130 MID$(C$,1)=A$:MID$(C$,59-LEN(B$))=B$
5140 _TITLE(C$):_USER("Uniskie
9999 _P
