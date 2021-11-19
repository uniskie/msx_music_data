;*******************************
;   DRAGON SPIRIT  (C)NAMCO
;         NAME 2-5  
;*******************************
FM1 =t,fn0,a0,a0,a1,a2
       fm0,a5
FM2 =t,fn1,b0,b0,b1,b2
       fm1,b5
FM3 =t,fn2,c0,c0,c1
       fm2,c5
FM4 =t,fn3,d0,d0,d1
       fm3,d5
FM5 =t,fn4,a0,a0,a1
       fm6,g5/3,g6
FM6 =t,fn5,b0,b0,b1
       fm6,g5/3,g6
FMR =t,fnr
       fmr,r5/2,r6
FM7 =
FM8 =
FM9 =
PSG1=t,pt0,e0,e0,e1
       ps0,a5
PSG2=t,pt1,f0,f0,f1
       ps1,g5/3,g6
PSG3=t,pt2,e0,e0,e2
       psr,s5/2,s6
SCC1=
SCC2=
SCC3=
SCC4=
SCC5=

t=t98

;******** introduction *********
;***** merody
fn0=o6@58v12
fn1=o5@58v12
fn2=o5@58v12
fn3=o5@58v12
fn4=o6@58v11z20r16
fn5=o5@58v11z20r16
pt0=o6@10v09q6
pt1=o5@10v09q6
pt2=o6@10v09q6z10

a0=m5(ci90)c<i
b0=m5r16(b-4i90)b-8.i<
c0=m5r8(gi90)g8<i
d0=m5r8.(fi90)f16i<
e0=m5l8c<(g4i90)g8i
f0=m5l8r16b-(f4i90)f16i<

a1=c16r8i
a2=r16
b1=r16b-16r16i
b2=r16
c1=r8g16r16i
d1=r8.f16i
e1=i6l16c<b-gfi
f1=i6l16v10z20r>c<b-gi
e2=i6l16c<b-r64v10@6a@8a32.

;***** drum
fnr=v15vs13
    r1r8y39,4y40,2y24,165y23,166bms16y24,116y23,116bms16

;******** loop ********
;**** merody
fm0=o5@61v12
fm1=o5@61v12
fm2=o4@61v12
fm3=o3@61v12
ps0=o4@10v12 z20

a5=m5l2i20(e-. i70)e-.i20 l4(d.i70)d.i20 (f.i70f16..)fi
b5=m5l2i6(c. i70)c.i6 <l4(b-.i70)b-.i6 >(c.i70c16..)ci
c5=m5l2i20(g. i70)g.i20 l4(g.i70)g.i20 (a-.i70e-16..)a-i
d5=m5l2i20(c. i70)c.i20 l4(c.i70)c.i20 (c.i70c16..)ci

;***** bass
fm6=o3 @61q4s1 v11 z40
fm7=o3 @33q4s1 v14
ps1=o3 @13q6   v12

g5=m5i20l8(ci70)c16i20c16cg>(ci70)ci20<
g6=(ci70)c16i20c16cg>c<g16c32.

;**** drum
fmr=v15vs13vh11
    y22,168y38,3
    y23,1664y39,4
    y24,165y40,2
psr=v10r64l16o7

r5=b4b4ms16h16h16h16
s5=v8@8a4a4v10@6av8@4ddd
r6=b4b4y24,165y23,166ms8y24,116y23,116ms8
   b4b4y24,243y23,243ms16y24,165y23,166ms16y24,116y23,116ms16.
s6=v8@8a4a4v10@6a8@8a8
   v8@8a4a4v10@28a@6a@8ar32

