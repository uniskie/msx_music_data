10 CLEAR5000:DEFSTRA-Z
20 _MGSDRV(1,1,&B000)
30 _ESET(0,",,ef,eeddcc,e,f=6
31 _ESET(1,"3,08,e90=40
32 _ESET(2,"3,16,*3,df*1eeddc,0=80
33 _ESET(3,"1,,f9=5,0=60
34 _ESET(4,"1,,f9=20,0=90
40 _WSET(0,"@14
43 _WSET(3,"@10
44 _WSET(4,"@4
60 _VSETC(15,12,4,13, 3, 5, 1,0, 3, 0,0, 0,1,0,                                                   14, 4, 5, 2,1, 2, 0,1, 0,0,0)
100 'title("0123456789012345678901234567890123456789012345678901234567
110 _TITLE("namco   DRAGON SPIRIT  AREA3 �JUNGLE�           By Uniskie
120 _USER("Uniskie
1000 '****** key 1
1010 O1$="@4v01 o5k4 h12,1,0,1\1"
1020 AY$="@4@e3 o5k4 h12,1,0,1":O6$="v02":O7$="v02 \1":O8$="v00 \2 r8"
1030 AZ$="@15@E0 s1 O6 h12,2,0,2":O9$="V08 \0":OA$="V08 \1"
1050 A0$="L8 r[7e@V+1] [0 e2.ed ^1":B0$="L8 r[7c@V+1] [0 c2.c<b ^1>"
1060 A1$="b-2.b-a r>crdr<b4. e2.e<b ^1>":B1$="f2.ff rarbrg4. c2.c<d ^1>"
1070 A2$="f2.aa rarbrb4. ^1":B2$="d2.ff rfrgrg4. ^1"
1080 A3$="[e4.<g^4>ed ^2.de :f4ferc4. e4.f16e16d2] ffrgra4. e4.d16e16d2 c2.ed ^2.ef g1 ag4f^ede f1 [g1] g+1"
1090 B3$="[c4.<e^4>c<b ^2.b>c :c4ccr<a4. >c2<b2>] ccrdrf4. c4.<b16>c16<b2  a2.>c<b ^1 >d1 fe4d^c<b>c [d1] f1 e1"
1100 A4$="[a4.c^4ag ^2.ga :b-4b-arf4. a4.b-16a16g2] b-4b-arb-4. a4.g16a16>c2<"
1110 B4$="[f4.<a^4>fe ^2.ef :f4ffrd4. f2e2] f4ffrd4. f2g2"
1120 A5$="a2d4ag 4^2ab-g 4^2>dr<a ^ag4a4fg arr2ag ^1 >cr2drd ^1 r2r4<cd]"
1130 B5$="f2<a4>fe&":B6$="e1&":B7$="e2^arf ^fe4f4de fr2rfe ^1 gr2ara ^1 r2r4<ab>]"
2000 '****** key 2
2030 OB$="V07 \1":OC$="V07\-1":OD$="V07 O5\-2"
2050 C1$="a-2.a-c rcrdrd4. e2.ed ^1":D1$="d2.d<a rarbrb4. >c2.c<b ^1>":D6$="e2.^e&"
2060 E0$="L8 r[7g@v+1] [0 g2.gg ^1f2.ff rfrgrg4. g2.gg ^1 b-2.>dc rcrdrd4. ^1<"
2070 E1$="[g4.c^4gg ^2.gg :a4agrf4. g2g2] aarbr>c4. <g2g2 f2.gg ^1 b-1 gg4g^ggg [b-1] >[c1]<"
2080 E2$=">[c4.<f^4>cc ^2.cc d4dcr<a4. >c2:c2]e2<"
2090 E3$=">d2<f4>dc 4^2.c 4^2frd ^dc4d2 drr2dc ^1 er2frf ^1 r2r4<<ab>]"
3000 '****** sequence ******
3010 O2$="o5 @3 v07 k4 h3,1,,2
3020 O5$="o5 @3@e1 v04 k4 h6,1,3,1 \-1
3030 I0$="l8 r[7c] [0 @3l16 [32c8>c:c<]c ^1 l8@4<
3040 I1$=">@3l16 [r1 @v+1r2[c>c<cc@v-2] r1 r2@v+3[@v+1cc]:c8r8@v-2][@v-1cc] l8@4<
4000 '****** Bass ******
4020 O4$="@0@E3 v9 o2 h12,2,0,1
4030 OE$="@13@E04S1 V13 O3 H12,2,0,2"
4050 F0$="L8 c@V-7[7c@V+1] [0 [32c:>c<]>c ^1< [32c>c<] L16[fff8<f8>fff8<f8>fff8] eee8<e8>eee8<e8>eee8 a8g4f8^8e8>d8<e8 [b-b-b-8<b-8>b-b-b-8<b-8>b-b-b-8] [>ccc8<c8>ccc8<c8>cc<c8]
4060 F1$="L4 [f.c.f e.c.e g.d.gc.g.c] L8 [16b-] [8a] [4d]>f16f16<d>f16f16<d b-rr2[11b-] r2aaa [4d]>f16f16<dd>f r2.ab]"
5000 '****** Rythum ******
5020 OF$="vb15 vm15 vs14 vh09 xb,3xb170 xs,4xm,2"
5040 _MCR(0,"XS170xm180"):_MCR(1,"Xs150xm160"):_MCR(2,"xs130xm140"
5045 _MCR(3,"b8VB+1")
5050 G0$="L16*1 b8vb-7*3*3*3*3*3*3*3 [0 [b4ms4:b4ms8b8]b8.b;ms8b8 b4ms4b4ms8b8 b;b8b;ms4b4ms;ms;ms8 [b4ms4:b4ms8b8b8b8ms4b4ms8b8]b8.b;ms8b8 b8[ms;]ms4[b;[3ms;]] ms;ms;*2[ms;]ms4r4*1ms4"
5060 G1$="[2b4ms4b4ms8b8 [b8.b;ms4:b;b8b;ms8b8 b4ms4b4ms4][4b;]ms8b8] [b4ms4b8b;b;ms4 :b4ms4[4b;]ms8*2ms8*1] [*2ms32*1ms;.]*2[r8ms32ms;.]*1[b32b;.] [4b4ms4b8b;b;ms4]"
5070 G2$="[8b4.ms8b8b;b;ms4]"
5080 G3$="[6b4ms4b8b8ms4] [4b;]ms32*0ms;.*2ms32*1ms;.b8b8ms4 b4ms4b8b8ms4 b8.b;ms4b8b8ms4 $]"
6000 '****** Synthe Drum ******
6010 O3$="o3 v11 k5
6020 _MCR(4,"<@1p":_MCR(5,">@2p8
6030 H0$="l8 *4v+1av-1[7a] [0 l4 [a*5g*4a*5g8*4a8 :a*5g*4a8.a16*5g8*4a8] a16a8a16*5g*4a*5g16g16g8 *4a*5g*4a*5g8*4a8 a8a8*5g*4a*5g8*4a8 a*5g*4a8.a16*5g8*4a8 l16a8*5ggg4*4a*5ggg*4a*5ggg ggeel4erg *4a*5g*4a*5g8*4a8 a8.a16*5g*4a16a8a16*5g8*4a8
6040 H1$=">[ [*4a*5g] *4a8.a16*5g*4[4a16]*5g8*4a8> *4a*5g:*4a*5g8*4a8 a8.a16*5g*4a16a8a16*5g8*4a8>]*4a8[a16]*5g *4a*5g*4[4g16]*5g8e8 *4a*5g*4a8[a16]*5g [g32g16.][r8e32e16.]*4[a32a16.]> [4*4a*5g*4a8[a16]*5g]
6050 H2$="[8*4a.*5g8*4a8[a16]*5g]
6060 H3$="[6*4a*5g*4[a8]*5g] *4[4a16]*5g32b16.e32g16.*4[a8]*5g *4a*5g*4[a8]*5g *4a8.a16*5g*4[a8]*5g ]"
9000 T$="T150"
9010 _TRKM(T,T,T,T,T,T,T,T,T,T,T,T,T,T,T)
9020 _TRKM(  ,  ,  ,AY,AY,AY,  ,  ,AZ,AZ,AZ,AZ,AZ)
9030 _TRKM(O1,O2,O3,O4,O5,O6,O7,O8,O9,OA,OB,OC,OD,OE,OF)
9040 _TRKM(A0,I0,H0,F0,I0,A0,B0,A0,A0,B0,A0,B0,E0,F0,G0)
9050 _TRKM(A1,A3,H1,F1,A3,A1,B1,A1,A1,B1,C1,D1,E1,F1,G1)
9060 _TRKM(A2,I1,H2,  ,I1,A2,B2,A2,A2,B2,A2,B2,E2,  ,G2)
9070 _TRKM(A3,A5,H3,  ,A5,A3,B3,A3,A3,B3,A3,B3,E3,  ,G3)
9080 _TRKM(A4,  ,  ,  ,  ,A4,B4,A4,A4,B4,A4,B4   )
9090 _TRKM(A5,  ,  ,  ,  ,A5,B5,A5,A5,B5,A5,B5   )
9100 _TRKM(  ,  ,  ,  ,  ,  ,B6,  ,  ,B6,  ,D6   )
9110 _TRKM(  ,  ,  ,  ,  ,  ,B7,  ,  ,B7,  ,B7   )
9999 _P
