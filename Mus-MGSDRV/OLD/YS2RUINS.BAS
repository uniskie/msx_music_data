10 CLEAR5000
20 _MGSDRV(1,1,0
30 _ESET(0,",,def,d=10,e,d,[c:3,d]
31 _ESET(1,",,dfee,c=9,a,[9:3,a]
32 _ESET(2,",,fa=15
33 _ESET(3,"2,,*1,f,*2n10,d,n11,b,n12,b,n13n,n14,9=5,n13,0=20
34 _ESET(4,"1,,fd=3,0=20
35 _ESET(5,"2,,fb=3,6=40,0=30
36 _ESET(16,",,ef,b=14,7=24,0=40
37 _ESET(7,",,f8=4,0=13
38 _ESET(8,",,f8=9
40 _WSET(16,"@1
41 _WSET(1,"@9
43 _WSET(3,"@10
50 _VSETC(16, 5, 5,10, 4, 4, 1,  0,  1, 1,1, 1, 0,0,                                               10, 3, 3, 2,  0,  2, 1,0, 1, 0,0
51 _VSETC(17,14, 4, 12, 3, 5, 4,  0,  3, 1,0, 0, 0,1,                                               12, 4, 5, 3,  0,  2, 1,1, 1, 0,1
900 '       0123456789012345678901234567890123456789012345678901234567
910 _TITLE("Falcom  ��� II �RUINS OF MOONDORIA�             By Uniskie
920 _USER("Uniskie
1000 '****** Key. ******
1030 O1$="\-1@16k1 o5 h6,1,2,-1 v08"
1031 AY$="k1 @16@e6 o4 h10,2,0,-1":O4$="v03 \1":O5$="v01 r8"
1032 AZ$="@16@e0 o5 h10,2,1,-2":O9$="v14 \1":OA$="v12 r8"
1040 A0$="[0 l8 [r1]@16 g2^fe-16f. g.b-.g^2 f2^e-d<b- >c.d.e-d.e-.f16g16 &g2^fe-16f. g.b-.g^2 f4e-4d4<b-4 >c2."
1050 A1$="g4":A2$="f.g.a-b-.>c.d f.e-16r2de- f4r4g4f4 e-4r2.":B1$="g":B2$="v+1d.e-.fg.a-.b- >d.c16r2<b>c d4r4v+1d4d4 c4r2.r8v-2"
1060 V7$="@17":A3$="l8f.g.a-ba-g16f. e-.f.gc.d.e- f4r4g4a-4 b-4r8.b16^a-g":A4$="e-<]"
2000 '****** Key. 2 ******
2030 O2$="q6\1k2 @8 o5 h1,3,1,2 v07
2031 CY$="q6k2 @1@8 o5 h10,3,0,2 ":O6$="v02":O7$="v02 \1"
2032 CZ$="q6s1 @03@e1 o6 h10,3,1,2":OB$="v13 \1":OC$="v13 "
2040 _MCR(0,"b-a-ga-gfgfe-fe-de-fga-")
2050 _MCR(1,"ga-gfe-fe-de-de-fga-b-g")
2060 _MCR(2,"gfe-fe-de-dcdc<b->cde-f")
2070 _MCR(3,"e-fe-dcdc<b->c<b->cde-fge-")
2080 _MCR(4,"ffe-e-dd"
2090 C0$="[0l16[*0][*0]*1[3*0]*1*0":C1$="r1 r4.*4cc<b-b-> a-a-gg*4c<b->cde-f ggv+1[*4]ccv-1"
2100 D0$="[0l16[*2][*2]*3[3*2]*3*2r8v-2":C3$="e-]":D3$="v+2]"
3000 '****** Bass ******
3010 O8$="o2 h3,1,0,1 @3@e7 v11
3011 EZ$="o3":OD$="\2@06@e2 v14":OE$="@13@e2 v14"
3020 _MCR(5,"ccccce-8c8cccc<b-8>c&")
3030 E0$="l16 [0 [*5] [[*5] c<a-a-a-a-a-a-a-a-a->dde-e-ff :e-c<a->ce-f8e-8cccc<b-8>c&] e-c<a->c8<b-8>cccccc<b-8. [16b-] [16a-] [16g] >[5c]e-8c8cgc<b->cde- [12f]ga-8c& [12c]e-g8f& [8f][8d] [9g]a-gfe-fe-d]"
4000 '****** Rythum ******
4020 OF$="[0v15 vs13 vh10 xb,3xb140 xs,4xs162"
4030 _MCR(50,"xm60msh32 vm-1m32":_MCR(6,"*50vm-2mh32 vm-2m32 vm+5"
4040 _MCR(7,"*50vm-2bmh32 vm-2m32 vm+5":_MCR(8,"*50vm+1"
4050 _MCR(51,"bh;h;*6bh;bh;":_MCR(9,"*51*7h;bh;*7bh;
4060 _MCR(10,"*51*6bh;bh;*7bh;h;
4070 F0$="l16 [*9h;*6] [[3*9h;*6]:*9*8*8*8]*9*8xm30hm;xm10hm;
4080 F1$="[3*10*6] *10*8*8 [[bh;h;*7h;*8:vm-4hmb;vm-2hmb;vm+6]xm30hmb;xm10hmb;] *10*6 bh;h;*6h;h;*8*8xm30hbm;[3hm;]xm10[4hm;] ]
5000 '****** Snare ******
5010 O3$="v12o3l16 k6"
5020 G0$="[0 @3r8[6d4]@5v-1n2d8 v-2n18d8n11v+2d8v+1@3 [r8[14d4]d8:rddd]rdp9@4afp@3 r8[15d4]dd [r8d8.d4rd8.dp9@4afp@3] r8[5d4]dd@4p9aaaaffff $]
9000 T$="t120@t15360"
9010 _TRKM( T$, T$, T$, T$, T$, T$, T$, T$, T$, T$, T$, T$, T$, T$, T$
9020 _TRKM(   ,   ,   ,   ,AY$,AY$,CY$,CY$,AZ$,AZ$,CZ$,CZ$,EZ$,EZ$
9030 _TRKM(O1$,O2$,O3$,O8$,O4$,O5$,O6$,O7$,O9$,OA$,OB$,OC$,OD$,OE$,OF$
9040 _TRKM(A0$,C0$,G0$,E0$,A0$,A0$,C0$,D0$,A0$,A0$,C0$,D0$,E0$,E0$,F0$
9050 _TRKM(A1$,C1$,   ,   ,A1$,B1$,C1$,C1$,A1$,B1$,C1$,C1$,   ,   ,F1$
9055 _TRK(9,V7$,V7$
9060 _TRKM(A2$,   ,   ,   ,A2$,B2$,   ,   ,A2$,B2$
9070 _TRKM(A3$,A3$,   ,   ,A3$,A3$,A3$,A3$,A3$,A3$,A3$,A3$
9080 _TRKM(A4$,C3$,   ,   ,A4$,A4$,C3$,D3$,A4$,A4$,C3$,D3$
9999 _P
