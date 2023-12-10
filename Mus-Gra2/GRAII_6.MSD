;**************************************
;*GRADIUS II_6 St.2  [A Shooting Star]*
;**************************************
FM1 =t,fm0,a0/3,a1,a0/3,a2,a3
FM2 =t,fm1,a0/3,a1,a0/3,a2
FM3 =t,fm2,a0/3,a1,a0/3,a2,a3
FM4 =t,fm3,b0
FM5 =t,fm4,b0
FM6 =t,fm5,c0
FMR =
FM7 =t,fm6,c0
FM8 =t,fm7,d0
FM9 =t,fm8,d0
PSG1=t,ps0,a0/3,a1,a0/3,a2,a3
PSG2=t,ps1,b0
PSG3=t,ps2,e0
SCC1=t,sc0,b0
SCC2=t,sc1,c0
SCC3=t,sc2,c0
SCC4=t,sc3,a0/3,a1,a0/3,a2,a3
SCC5=t,sc4,a0/3,a1,a0/3,a2

t=t120
r=r1.

;**** PART 1 ****
fm0=o5@14v10
fm1=o5@6v11r8z10
fm2=o6@16v12z10
ps0=o3@11q6v7
sc3=o@15q6v7
sc4=o@15q6v5z3r8

a0=l16dgdad>d
a1=c<babgd
a2=c<baa->
a3=d-f

;**** part 2 ****
fm3=o3@33q6s1v13
fm4=o3@6q6s1v14z10
ps1=o2q6@17v11
sc0=o2@11v12q6 z2 

b0=m4l16(g4i50g8)g4.i (f4i50)f4iffff (e4i50)e2i (e-4i50)e-8i(f8i50)figgg

;**** part 3 ****
fm5=o6v12@24
fm6=o6v10@24 z10 r16
sc1=o4v9@8
sc2=o4v7@8 z3 r16

c0=l16m4 (g4i50g)g4igggi(f4i50f)f4ifffi(e4i50e)e4ieeei(e-8.i50)e-8.i(f8.i50)f8

;**** part 4(drum) ****
fm7=v15o2Z40
fm8=v15o2
ps2=v11o2q6

d0=l16
   <@91a8.a8.a8>@87e32e32<@91a>@87e@86e <@91a8.a8.a8>@90c32c32ccc <@91a8.a8.a8>@87e32e32<@91a>@87e@86e <@91a8.a8.a8.>
   @90c32c32cc

e0=l16@01a8.a8.a8>@07e32e32<@01a>@07e@06e< @01a8.a8.a8>@00c32c32ccc< @01a8.a8.a8>@07e32e32<@01a>@07e@06e< @01a8.a8.a8.>@00c32c32cc<

