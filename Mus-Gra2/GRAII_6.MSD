;**************************************
;*GRADIUS II_6 St.2  [A Shooting Star]*
;**************************************
FM1 =t,fm0,a0/3,a1,a0/3,a2,a3
FM2 =t,fm1,a0/3,a1,a0/3,a2
FM3 =t,fm2,d0
FM4 =t,fm3,c0
FM5 =t,fm4,c0
FM6 =t,fm5,b0
FMR =
FM7 =t,fm6,b0
FM8 =t,fm7,r0
FM9 =t,fm8,r0
PSG1=t,ps0,a0/3,a1,a0/3,a2,a3
PSG2=t,ps1,b0
PSG3=t,ps2,s0
SCC1=t,sc0,b0
SCC2=t,sc1,c0
SCC3=t,sc2,d0
SCC4=t,sc3,a0/3,a1,a0/3,a2,a3
SCC5=t,sc4,a0/3,a1,a0/3,a2

t=t120
r=r1.

;**** PART 1 ****
fm0=o5@16v12
fm1=o5@16v10r8z2
ps0=o4@11q6v7
sc3=o@15q6v9
sc4=o@15q6v6z3r8

a0=l16dgdad>d
a1=c<babgd
a2=c<baa->
a3=d-f

;**** part 2 ****
fm5=o3@33q6s1v13
fm6=o3@6q6s1v14z10
ps1=o2q6@17v11
sc0=o2@11v12q6 z2 

b0=m4l16(g4i50g8)g4.i (f4i50)f4iffff (e4i50)e2i (e-4i50)e-8i(f8i50)figgg

;**** part 3 ****
fm2=o6v12@24q6s1
fm3=o6v12@24q6s1
fm4=o6v11@6q6s1 z16 r8
sc1=o5v10@10q6
sc2=o5v10@10q6

c0=l16m4 (g8i50)g8ir4rgggi(f8i50)f8r4rifffi(e8i50)e8r4rieeei(e-8i50)e-8r8i(f8i50)f8
d0=l16m4 (d8i50)d8ir4rdddi(c8i50)c8r4riccci<(b8i50)b8r4ribbbi(b-8i50)b-8r8i(b8i50)b8


;**** part 4(drum) ****
fm7=v15o2 z20
fm8=v15o2
ps2=v11o2q6

r0=l16
   <@91a8.a8.a8>@87e32e32<@91a>@87e@86e <@91a8.a8.a8>@90c32c32ccc <@91a8.a8.a8>@87e32e32<@91a>@87e@86e <@91a8.a8.a8.>
   @90c32c32cc

s0=l16@01a8.a8.a8>@07e32e32<@01a>@07e@06e< @01a8.a8.a8>@00c32c32ccc< @01a8.a8.a8>@07e32e32<@01a>@07e@06e< @01a8.a8.a8.>@00c32c32cc<

