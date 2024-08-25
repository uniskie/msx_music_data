;**************************************
;*  GRADIUS II-19  [ GAME OVER ]      *
;**************************************
FM1 =t,fm0,a0,a1,a0,a2
FM2 =t,fm1,a0,a1,a0,a2
FM3 =t,fm2,b0,b1,b0,b2
FM4 =t,fm3,b0,b1,b0,b2
FM5 =t,fm4,c0,c1,c0,c2
FM6 =t,fm5,c0,c1,c0,c2
FMR =
FM7 =t,fm6,d0,d1,d0,d2
FM8 =t,fm7,e0,e1,e0,e2
FM9 =t,fm8,e0,e1,e0,e2
PSG1=t,ps0,a0,a1,a0,a2
PSG2=t,ps1,a0,a1,a0,a2
PSG3=t,ps2,e0,e1,e0,e2
SCC1=t,sc0,e0,e1,e0,e2
SCC2=t,sc1,d0,d1,d0,d2
SCC3=t,sc2,c3,c4,c3,c5
SCC4=t,sc3,a0,a1,a0,a2
SCC5=t,sc4,b0,b1,b0,b2

t=t146


;*** part 1 ***

fm0=o5@78v11s1 z16r8
fm1=o5@78v13s1
ps0=o4@4 v8
ps1=o4@11v6 z4r8
sc3=o4@17v10

a0=m4l12(a4i50)a6ib>c6(g4i50)gi
a1=g4<aaba6(g4i50)gi
a2=(g4i50)gifd(e4i50)e4ir1
    r1 r1

;*** part 2 ***

fm2=o6@16v14 
fm3=o6@16v12 r8z16
sc4=o5@21v8

b0=m4l4(ci50c)i<gc
b1=gd<gc>>
b2=l12<da>d<a>dal32efgal8b4.r1


;*** part 3 ***

fm4=o7@10
fm5=o7@10z10r16
sc2=o6@22q6

c0=l12v13cv11cv9c<v13cv11cv9c<v13gv11gv9gv13cv11cv9c>>
c1=<v13gv11gv9gv13dv11dv9d<v13gv11gv9gv13cv11cv9c>>
c2=<v13gv11gv9gv13dv11dv9dc2r2

c3=l12v8cv6cv4c<v8cv6cv4c<v8gv6gv4v8cv6cv4c>>
c4=<v8gv6gv4gv8dv6dv4d<v8gv6gv4gv8cv6cv4c>>
c5=<v8gv6gv4gv8dv6dv4dc2r2

;*** part 4 ***

fm6=o4v13@78s1
sc1=o3@17v9q6

d0=l4frer
d1=drer
d2=drcr


;*** part 5 ***

fm7=ov10@14
fm8=ov12@33z1
ps2=o3v6@4q6r32z2
sc0=o3@15v8q6

e0=l12fa>cfc<aeg>cec<g
e1=dfa>d<afceg>c<ge
e2=dfa>d<afc2r2


