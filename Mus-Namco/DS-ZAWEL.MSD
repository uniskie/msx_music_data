;**************************************
;       DRAGON SPIRIT (C)namco
;            ZAWEL   (LOOP)
;**************************************
; DSPIRIT.VCD
FM1 =t,fm0,a0/32,a1
FM2 =t,fm1,a0/31,a2,a1
FM3 =t,fm2,b0,b1,b0,b2,b3
FM4 =t,fm3,c0,c1,c0,c2,b3
FM5 =t,fm4,d0,d1,d0,d2,b3
FM6 =t,fm5,e0,e1,e0,e2
FMR =
FM7 =t,fm6,e0,e1,e0,e2
FM8 =t,fm7,h0,h1,h0,h2,b3
FM9 =t,fm8,f0/3,f1,f0/2,f2,f0/6,f3
           f0/3,f1,f0/2,f2,f0/6,f4
PSG1=t,ps0,a0/32,a1
PSG2=t,ps1,pb0,pb1,pb0,pb2,pb3
PSG3=t,ps2,g0/3,g1,g0/2,g2,g0/6,g3
           g0/3,g1,g0/2,g2,g0/6,g4
SCC1=
SCC2=
SCC3=
SCC4=
SCC5=

t=t122

;***** sequence
fm0=o5 @02 v14 z1 q6s1 z3
fm1=o5 @06 v10 z1 q6s1 z18 r16
ps0=o4 @12 v10 m5i20

a0=l16cgcb-c>c<
a1=m5(c2. i70)c2.i
a2=cgcb-c<

pa0=l16cgcb-c>c<
pa1=(c2. i70)c2.i20
pa2=cgcb-c<

;***** merody
fm2=o6 @06 v12 z1 s1q7
fm3=o6 @06 v12 z1 s1q7
fm4=o5 @06 v12 z1 s1q7
ps1=o5 @14 v10

b0=m6l4(e-.i90)e-.i (d.i90)d.i (f2. i90)f2.i
b1=l16rb-r>l4(cm2p4<c16)cim5 r2. r2. l16>c<b-gb-gfgfe-fe-c
b2=l16>c<c>c<c>c<c>c<c>cccc
b3=l2r. r. r. <<<i6(c. i90)c.i0

pb0=m5l4i20(e-.i80)e-.i20 (d.i80)d.i20 (f2. i80)f2.i20
pb1=l16rb-r>l4(cm2p4<c16)ci20 r2. r2. i8l16>c<b-gb-gfgfe-fe-c
pb2=l16>c<c>c<c>c<c>c<c>cccc
pb3=l2r. r. r. <<(c. m5i90)c.i0

c0=m6l4(c.i90)c.i <(b-.i90)b-.i >(c2. i90)c2.i
c1=l16rfrl4(gm2p4<g16)gim5 r2. r2. l16>>c<b-gb-gfgfe-fe-c
c2=l16g<g>g<g>g<g>g<g>gggg

d0=m6l4(g.i90)g.i (g.i90)g.i (a2. i90)a2.i
d1=l16rb-rl4(b-m2p4<b-16)b-im5 r2. r2. v10l16r>>c<b-gb-gfgfe-fe-v11
d2=l16>c<c>c<c>c<c>c<c>cccc<

;***** bass
fm5=o3 @06 v13 z5  m6i6
fm6=o3 @06 v13 z22

e0=l2c. c. (c. )c.
e1=(c. c. c. )c.
e2=(c. c. c. )c. >(c. )c.

;***** ???
fm7=o5 @02 v14 s1q7

h0=m6l4(e-.i60)e-.i (di60)did16e-8. (f2. i60)f2.i
h1=l16r>dr<l4(gm2p4<g16)gim6 r2. r2. l16>>c<b-gb-gfgfe-fe-c
h2=l16g<g>g<g>g<g>g<g>gggg>

;***** drum
fm8=o1v15z50

f0=l16@91a8a>@90(e64p16<)e16..pr
f1=@91a8a>@90(e64<p16)e32.p@91ar
f2=@91a8a>@90eee eeeeee<
f3=>l32@90fff16f16eel16ee ccce<@91aa
f4=>@90fecfcc c64c.<@91a>@90fee <@91(a64p16)c16..pr4 r4.r4. 
   >@90fec<@91aa>@90c

ps2=o1v12q6

g0=l16@0a8a>@3e8r<
g1=@0a8a>@3e<@0ar
g2=@0a8a>@3eee eeeeee<
g3=l32>@2fff16f16@3eel16ee @5ccc@3e<@0aa
g4=>@2f@3e@5c@2f@5cc c64c.<@0a>@2f@3ee <@0a8r4 r4.r4. 
   >@2f@3e@5c<@0aa>@5c

