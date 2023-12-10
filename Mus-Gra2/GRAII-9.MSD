;******* GRADIUS II-09   Stage 4 ******
;*    [A Way Out of the Difficulty]   *
;**************************************
FM1 =t,fm0,a0,a1
FM2 =t,fm1,a0,a2
FM3 =t,fm2,b0,b1
FM4 =t,fm3,b0
FM5 =t,fm4,c0
FM6 =t,fm5,c0
FMR =
FM7 =t,fm6,d0/4,d1/2,d0/2,d2/2,d3/2,d4
FM8 =t,fm7,r0/3,r1,r2/11,r3
FM9 =t,fm8,r0/3,r1,r2/11,r3
PSG1=t,ps0,a0,a1
PSG2=t,ps1,c0
PSG3=t,ps2,s0/3,s1,s2/11,s3
SCC1=t,sc0,b0,b1
SCC2=t,sc1,c0
SCC3=t,sc2,d0/4,d1/2,d0/2,d2/2,d3/2,d4
SCC4=t,sc3,a0,a1
SCC5=t,sc4,a0,a2

t=t96

;**** part 1

fm0=o4@6v14
fm1=o4@6v13z10r16
ps0=o3@11v8
sc3=o4@15q6v8
sc4=o4@15q6v6z3r8

a0=m4l16g>cd(g8.i40)g8i0 <a>df+(a8.i40)a8i0 <b->e-f(b-8.i40)b-8i0 cfg>(c8.i40)c8i0
 <gf+ed8ef+c 8ded8<a8>d gf+ed8ef+c 8de>c8dec
 fec<(g8i40)g8.i0 fec<(g8i40)g8.i0>fec<g8>cd(g )g8.g32>c32f.e.c
 cde-(c8i40)c8.i0 cde-f8
a1=d8<b- >c8.<b8.>c8.(d8i40d8m5)d8
a2=d <g8.g8.a8.(b8i40b8m5)b8

;**** part 2

fm2=o4@6v12
fm3=o4@6v11 z10r16
sc0=o4@15q6v7

b0=l16g>cdgg>cdg <<a>df+aa>df+a <<b->e-fb-b->e-fb- <cfg>ccfg>c
 <<da>d<da>d<da> d<da>d<da>d<d cg>c<cg>c<cg >c<cg>c<cg>c<c
 <b->fb->dfec<g <b->fb-<b->fec<g a>da<a>da<a>d a<a>da<a>da<a
 a->ce-a-ce-a->c <<b->dfb-dfb->d
 <<l32gab>c<b>cdedefgefga fgabgab>c<ab>cd<b>c
b1=de

;**** part 3

fm4=o5@2v14z10
fm5=o5@9v13
ps1=o4@20v8z1
sc1=o5@8q6v7z3

c0=m4l4(ci40)ci(di40)di(e-i40)e-i(fi40)f
 l16q5dd4d8. d8.(d)d4 cc4c8. c8.(c)c4
 <b-b-4b-8. b-8.(b-)b-4 >cc4c8. c8.(c)c4
 q8l4<(a-i50)a-i(b-i40)b-i(gi50)gi>(gi50)gi

;**** part 4

fm6=o3@33q6v14
sc2=o2@11q6v14 z1

d0=l16 c8.c8c8c
d1=d8.d8d8d
d2=<b-8.b-8b-8b-
d3=a8.a8aaa
d4=a-8.a-8a-8a- b-8.b-8b-8b- g8.g8g8g gggggggg

;**** drum

fm7=v15o1z40
fm8=v15o1
ps2=v11o2

r0=l16 @91aa>@87e8e8e<@91a
r1=aa>@87e8@90c32c32<@91a>@90c32c32<@91a
r2=@91a>@87e@90c<@91a>@87e<@91a>@90c8<
r3=@91a>@87e@90c<@91aa>@90ccc

s0=l16q6 @01aa>@07e8e8e<@01a
s1=aa>@07e8@00c32c32<@01a>@00c32c32<@01a
s2=@01a>@07e@00c<@01a>@07e<@01a>@00c8<
s3=@01a>@07e@00c<@01aa>@00ccc

