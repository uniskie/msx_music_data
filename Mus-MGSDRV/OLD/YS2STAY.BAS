10 CLEAR 5000
20 _MGSDRV(1,1,
30 _ESET(0,",,ef,[f]
31 _ESET(1,",,df,d=40,d,c=239,[b,c:3]
70 _VSETC(15,18,1,10, 3, 6, 1,0, 3, 1,0, 0,0,0,                                                   10, 4, 5, 4,0, 2, 1,0, 1,0,0)
71 _VSETC(15,8,4, 15,3,3,3, 0,  1, 0,0, 1, 0,0,                                                   14,5,3,4, 0,  6, 1,0, 1, 0,0
1000 '****** Tranpet ******
1030 AZ$="@15 o6 h21,1,2,3":O9$="v14":OA$="\1v12 r8
1040 A0$="L8 b2.g+4 b2a%19b6a%19 g+2e2 g4f+4g4a4 b4g+4b4e4 g+4f+4e4f+4[0":A1$="[e<g+ab>d+eg+b ac+4e^2 ac+4e4f+ef+ :g+4f+4a4g+4] e1"
1050 A2$="[f-ed+e&e2 ^4c+4e4f+4 :ag+f+g+&g+2 ^4<g+ab>c+d+e] g+2f+2 a2d+2":A3$="[e2^f+ef+ :g4a4g4a4 [b4c+d^2]] g4a4b4>c4 <b2f+%19a6g%19 e2^<g+ab>"
1060 A4$="c+2d4e4 g4f+2d4 <b4>e2<b4 >d1 [e2f+4g4 :a4g4f+4a4 b2g+%19a6b%19 e1] a2g4"
1070 A5$="f+4 (e,>e)2.&e1^4< V-2Q4 [5ef-g+ef+g+e16f+16g+]ef+bef+be16f+16b Q8V+2]":A6$="f+8 (e,>e)2.&e1^4<< Q4 [5g+a>e<g+a>e<g+16a16>e<] g+a>d+<g+a>d+<g+16a16>d+r8 Q8]"
2000 '****** Fulute  ******
2030 BZ$="@03 o6 h35,0,5,2"
2031 OB$="v12":OC$="\1 v12"
2050 B0$="L8 [5[g+a>e<]g+16a16>e<] [f+b>d+<]f+16b16>d+< V+1":C0$="L8 [5[ef+g+]e16f+16g+] [d+f+b]d+16f+16b v-1r8 \1"
2060 B1$="[0 [e1 r2ac+4e^4.g+^:ed+e e4d+4f+4d+4]ag+a g+2^g+ab"
2070 B2$="[bag+a&a2 ^4a4a4b4 :f+ed+e&e2 ^4ef+g+ab>c+<] b2a2 >c+2<b2"
2080 B3$="<g1 e1 g1b1 g1 e1 f+2a2"
2090 B4$="g+1 V-1 a4e>c+^<ef+g b4abbdaa ggf+g^dgg bbgbg+d+<b>d+ >e4ce^ceg+ f+4d+f+^d+f+a g+g+eg+^eg+g+ g+b>e<b>g+g+b4< V+1"
2100 C4$="g+2^4. \0V+1 c+4ec+^c+d+e g4f+ggdf+f+ ddf+d^ddd ggdgd+<bf+b> >c4<a>c^<a>ce d4<a>d^<a>df+ ee<b>e^<b>ee eg+bg+>eeg+4< V-1\1r8"
2110 B5$="g2c4e4 f+2d4"
2120 B6$="a4 (g,>g)2.&g1^4< [6r1]]"
2130 C6$="a8 (g,>g)2.&g1^4< [6r1]r8]"
3000 '****** Bass    ******
3030 DZ$="s1o2 h14,1,3,-2":OD$="@14 v11\3":OE$="@13v13 q6
3050 D0$="L8 e1 d1 c+1 c1 <b>|b2b4. |b1"
3060 D1$="[0 > [ee4eee4e <aa4aaa4a> :dd4ddd4d ee4e<bb4b>] <bb4bbb4b >ee4eee4e"
3070 D2$="[<aa4a>a<a4a>] [ee4e>e<e4e] <aa4a>a<a4a> f+f+4f+>f+<f+4f+ [<bb4b>b<b4b>]"
3080 D3$="[c>c4c<c>c4c< :c>c4c<c>c4c< [<g>g4g<g>g4g]] <a>a4a<a>a4a d>d4d<d+>d+4d+< e>e4e<e>e4e<"
3090 D4$="<aa4aa4aa >dd4dd4dd gg4gg4gg gg4gg+g+4g+ aa4aa4aa dd4dd4dd ee4ee4ee ee4e>e4<ee cc4ccc4c dd4ddd4d ee4eee4e ee4ef+g+4b  "
3100 D5$="ee4eee4e dd4ddd4d c+c+4c+c+c+4c+ cc4ccc4c <bb4bbb4b bb4bb>b4f+]"
4000 '****** Rythum  ******
8000 T$="t120 @t13440
8010 _TRK(9,T$,T$,T$,T$,T$,T$,T$)
8020 _TRK(9,AZ$,AZ$,BZ$,BZ$,DZ$,DZ$,FZ$)
8030 _TRK(9,O9$,OA$,OB$,OC$,OD$,OE$,OF$)
8040 _TRK(9,A0$,A0$,B0$,C0$,D0$,D0$,F0$)
8045 '_TRK(9,"@16","@16"
8050 _TRK(9,A1$,A1$,B1$,B1$,D1$,D1$,F1$)
8060 _TRK(9,A2$,A2$,B2$,B2$,D2$,D2$,F2$)
8070 _TRK(9,A3$,A3$,B3$,B3$,D3$,D3$,F3$)
8080 _TRK(9,A4$,A4$,B4$,C4$,D4$,D4$,F4$)
8090 _TRK(9,A5$,A6$,B5$,B5$,D5$,D5$,F5$)
8100 _TRK(9,   ,   ,B6$,C6$            )
9999 _P
