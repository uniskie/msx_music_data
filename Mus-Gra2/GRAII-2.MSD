;*************************************
;*  GRADIUS II-2  [ Equipment ]      *
;*************************************
FM1 =t,fm0,a0,a1,a2
FM2 =t,fm1,a0,a1,a2
FM3 =t,fm2,b0/15,b1,b2/15,b3
FM4 =t,fm3,c0/3,c1,c2/3,c3
FM5 =t,fm4,d0,d1
FM6 =t,fm5,e0/2
FMR =
FM7 =t,fm6,d0,d1
FM8 =t,fm7,a0,a1,a3
FM9 =t,fm8,e0/2
PSG1=t,ps0,a0,a1,a2
PSG2=t,ps1,d0,d1
PSG3=t,ps2,f0/2
SCC1=t,sc0,d0,d1
SCC2=t,sc1,b0/15,b1,b2/15,b3
SCC3=t,sc2,c0/3,c1,c2/3,c3
SCC4=t,sc3,a0,a1,a2
SCC5=t,sc4,a0,a1,a3

t=t120


;*** part 1 ***
fm0=@5v11o5 
fm1=@6v11o5 z10
fm7=@6v10o6 r8.
ps0=v11o4@11q6
sc3=o4v10@15q6
sc4=o4v8 @10q6z3r8.

a0=m4il16(g4.i50)g2ife(f4i50f8)f2ie-dm3(e-4i50)e-4i<(b-4i50)b-4i>(d4i50)d4i(d-4i50)d-4i
a1=>m4(d-4.i50)d-2i<bb-(b4i50b8)b2i0aa-m3(a4i50)a4i0(e4i50)e4i0(a-4i50)a-4i0
a2=(g4i50)g4i0
a3=(g4i50)gi0


;*** part 2 ***
fm2=@2v14o5q4s1
sc1=@15q6v12o4q4

b0=l16g>cdg<
b1=a->d-e-a-<
b2=d-g-a->d-<
b3=<dga>d
b4=<dga>d32

;*** part 3 ***
fm3=@2v15
sc2=@15q6v12q4

c0=l8o4g>c<g>c16<gg>c<g16>c
c1=o4g>c<g>c16<gg16g16>(d-16)d-12<a-12>d-12
c2=o5d-g-d-g-16d-d-g-d-16g-
c3=o5d-g-d-g-16d-d-(g-16)g16d16g

;*** part 4 ***
fm4=o3v15@6
fm6=o3v13@6z10
ps1=o2v13@17q6
sc0=o2v15@6q6z2

d0=l2m4(ci60)ci<(b-i60)b-i>(e-i60)e-il4(di60)di(d-i60)d-i
d1=l2(g-i69)g-i(ei69)ei(ai69)ail4(a-i69)a-i(gi69)gi


;*** part 5 (DRUM) ***
fm5=v15o2z10
fm8=v15o2
ps2=v13o3

e0=l16<@91aar8>@87e8<@91b32b32b32b32>@90cccc@92bag<@91aar8a>@87e8<@91ar>@90c4@87ee@86e8<@91aar8>@87e8<@91aa>@87e8.<@91a>@90c4<@91ar8>@92b32b32bbag<@91ar8.>@90cc@86e8

f0=l16<@01aa8.>@07e8<@02b32b32b32b32>@00cccc@21b@23a@25g<@01aar8a>@07e8<@01a8>@00c4@07ee@06e8<@01aar8>@07e8<@01aa>@07e8.<@01a>@00c4<@01ar8>@21b32b32bb@23a@25g<@01a4>@00cc@06e8

