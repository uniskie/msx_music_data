10 CLEAR 5000:DEFSTRA-Z
20 _MGSDRV(1,1,&B000)
30 _ESET(0,",,efffeed
31 _ESET(1,",,fed
32 _ESET(2,",,df9=30
33 _ESET(3,"3,08,e90=40
34 _ESET(4,"3,16,*3,df*1eeddc,0=80
40 _ESET(10,"1,,fd8=28,0=170
41 _ESET(11,"1,,f8=23,0=200
42 _ESET(13,"2,,f0=3
43 _ESET(13,"1,,f9=30
50 _WSET(0,"@0
51 _WSET(1,"@15
52 _WSET(2,"@4
53 _WSET(3,"@10
60 _VSET(22,"1302 1704 c2e6 4442
100 'title("0123456789012345678901234567890123456789012345678901234567
110 _TITLE("namco   DRAGON SPIRIT  AREA7 �DEEP SEA�         By Uniskie
120 _USER("Uniskie
1000 '****** Bell ****** (psg)
1010 AZ="@10 o6 h4,,3,1":O1="v07":O2$="v05 r16.
1030 O8="@0@e11 o6 v03
1050 A0="L16 [0 [4r8c8g4c4g4] <r4e-8dcr8<b-4>c8 d8<g8^4>V+1fedc<babgV-1"
1060 A1=">>r8e8g4g4g4 r8c8g4":B1=">>r16c8c4c4c8d8 g8c8g4r16"
1070 A2="V+1fedc<babgV-1 r4e8dcr8<b-4>c8 d8<g8^4> V+1fedc<babg >>[r8c8g4:c4g4]g2 ^2 r4r|g8.g2 [g4g&g8.g2] g4|gg8. fedc<b-gfe> V-1]"
2000 '****** Groken ******
2020 O6="@2@e10 h13,2,0,2 o5 v03 k4q5"
2030 OA="@22 h13,2,0,2 o5 v11"
2050 C0="L16 [0 v+1[[<g>c8.<g>c:e8<gb-8.gb->d8]e-8<a>c8.<b>df8]v-1"
2060 C1="[3[<g>ce-8<g>c:ec<gb->d8<gb->d<b->]e-<b-a>cf8<b>dfd]"
2070 C2="<g>ce-8<g>ce-c<gb->d8<gb->d<b-gb->e-8<gb->e-<b-r2 r4v+1fc<a-f>>v-1 r4g|g8.g2 [g4f&g8.g2] g4|gg8.>agfed+c<b-e]"
3000 '****** Key. ******
3020 O5="@1@e10 o5 h12,1,1,2 v02
3030 DZ="@9@e2 o6 h12,1,1,2":OB$="v12":OC$="v12\1":OD$="v12 o5"
3050 D0="L2 [0 [5ed e-:f4f4]f e-d e-f ^ V+1L16 [4g4g4f8fer8d8]L2V-1]"
3060 E0="L2 [0 [5c<[b-]>:c4d4]c c<[b-]>c ^ L16 [4d4d4d8ddr8d8]L2]"
3070 F0="L2 [0 [5gg g:a-4b-4]a- gg ga- ^ L16> [4c4c4c8ccr8c8]L2<]"
4000 '******( Merody? )******
4020 O7="@e11 v05 o5 h12,2,0,2"
4030 O9="@22 v13 o6 h12,2,0,2"
4040 G0="L8 [0 [4r1] [red16c.:<b-4>cd <g2a-2>]g4>cd g2<a-2 [red16c.<b-4>cd:<g2a-2>]g2c2 ^2 L16 r4r|d8.d2 [d4d&d8.d2] d4|dd8.agfed+c<b-g>L8]"
5000 '******( base )******
5010 O4="@3@e13 v07 o2 h12,2,,1"
5020 OE="@14@e1 v14 o3 h12,2,,1"
5030 H0="[0 l [c2<b-b-> e-2f<g>] l16 [ [cc8.]<[b-b-8.] >[e-e-8.]ff8.gg8. ]
5040 H1="[ [cc8.]<[b-b-8.] >[e-e-8.]:f2]f2^ 2
5050 H2="c4c4c8cdrec8 [<b-4b-4b->b-<a->a-<g>g<b->b- :c4c4ccd8.ec8] ]
6000 '******( Rythum )******
6020 OF$="vb15 vm14 vs14 vh09 xb,3xb170 xs,4xm,2"
6030 _MCR(0,"XS190xm200"):_MCR(1,"Xs170xm180
6040 _MCR(2,"xs155xm165"):_MCR(3,"xs120xm130
6050 I0="l16 [0 *2[[r4.ms8] b;b;r4ms8r8ms8rb;*1ms;ms;]
6060 I1="[[b;b;*2ms8r8ms8b;b;ms8rb;ms;:b;]ms;] b;b;ms8r8ms8b8ms8rb;ms;b; b8ms8r8ms8b8ms8b;[3ms;] b8ms8r8ms;b;b8ms8r8ms;b; b8ms8r8ms;b;[4b8] [b8]*1ms;ms;*2ms;*3ms;
6070 I2="[4 *2ms32*3ms32b8.b;:*2ms8.*0ms8ms;*1ms;rms;*2ms8]ms;r8*0ms;ms;*1ms;ms;*2ms;ms;*1ms32*2ms32*3ms32b32 ]
7000 '******( Synthe Drum )******
7010 _MCR(4,"<@3p12":_MCR(5,">@4p9
7020 O3="v11 o3 k6
7030 J0="[0 [l8<*5[r4.e] *4[b16]r4*5ereL16r*4b*5ff]
7040 J1="[[*4bb*5e8r8e8*4bb*5e8r*4b*5e:*4b>]e] *4bb*5e8r8e8*4b8*5e8r*4b*5e*4b b8*5e8r8e8*4b8*5e8*4b*5eee *4b8*5e8r8e*4bb8*5e8r8e*4b b8*5e8r8e*4b[4b8] [b8]*5ffec
7050 J2="[4e32c32*4b8.b*5:e8.g8gfrfe8]er8ggffeef32e32c32*4b32 $]
9000 T$="T90"
9010 _TRKM(T ,T ,T ,T ,T ,T ,T ,T ,T ,T ,T ,T ,T ,T ,T
9020 _TRKM(AZ,AZ,  ,  ,  ,  ,  ,  ,  ,  ,DZ,DZ,DZ
9030 _TRKM(O1,O2,O3,O4,O5,O6,O7,O8,O9,OA,OB,OC,OD,OE,OF
9040 _TRKM(A0,A0,J0,H0,D0,C0,G0,A0,G0,C0,D0,E0,F0,H0,I0
9050 _TRKM(A1,B1,J1,H1,  ,C1,  ,A1,  ,C1,  ,  ,  ,H1,I1
9060 _TRKM(A2,A2,J2,H2,  ,C2,  ,A2,  ,C2,  ,  ,  ,H2,I2
9999 _P
