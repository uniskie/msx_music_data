;**************************************
;       DRAGON SPIRIT (C)namco
;            ¢ O M A K E £
;**************************************
; voice.vcd
FM1 =t,fm0,a0,a1,a0,a1,a2,a1,tt,a3
FM2 =t,fm1,a0,a1,a0,a1,a2,a1,tt,a3
FM3 =t,fm2,b0,b1,b0,b1,b2/2,b3,b1,tt,b4
FM4 =t,fm3,c0,c1,c0,c1,c2,c1,tt,c3
FM5 =t,fm4,d0,d1,d0,d1,d2,d1,tt,d3
FM6 =t,fm5,e0,e1,e0,e1,e2,e1,tt,e3
FMR =
FM7 =t,fm6,b0,b1,b0,b1,b2/2,b3,b1,tt,b4
FM8 =t,fm7,f0,f1,f0,f1,f2,f1,tt,f3
FM9 =t,fm8,g0,g1,g0,g1,g2,g1,tt,g3
PSG1=t,ps0,a0,a1,a0,a1,h2,a1,tt,a3
PSG2=;t,ps1,a0,a1,a0,a1,h2,a1,tt,a3
     t,ps3,b0,b1,b0,b1,b2/2,b3,b1,tt,b4
PSG3=t,ps2,s0/8,s1/5,s2,s1/2,tt,s3
SCC1=t,sc0,a0,a1,a0,a1,a2,a1,tt,a3
SCC2=t,sc2,b0,b1,b0,b1,b2/2,b3,b1,tt,b4
SCC3=t,sc3,c0,c1,c0,c1,c2,c1,tt,c3
SCC4=t,sc4,d0,d1,d0,d1,d2,d1,tt,d3
SCC5=t,sc5,e0,e1,e0,e1,e2,e1,tt,e3

t=t112
tt=t80

;****** merody1
fm0=o4@97@16v13
fm1=o4@97@16v11z12r8
ps0=o4@04q6v10 m5 i10
ps1=o4@04q6v08r8z4 m5 i10
sc0=o4@17q6v12
sc1=o4@17q6v10r8z4

a0=l4m5 (ei50)ei10ga el8ed(c4i50)c4i10
a1=l8e4dc<b>c16<b16ab >(c2i50)c2i10
a2=l2 <<ag fg ag fg aa g(g .i50)g.i10>>
a3=l8e4dc<b>c16<b16ab r1
h2=l4eeee eeee edcd8e8 dc<b>e8d8 (ei50)ei10dg>c<b(a2 .i50)a2.i10

;***** bass
fm2=o4@33v13z3
fm6=o3@33S1v13z30
ps3=o3@11v9q4m4i10
sc2=o3@21v13q6

b0=l4c.c8<b.b8 a.g8f2>
b1=<f.f8g.g8>c<gc2>
b2=<a.a8g.g8 f.f8g.g8>
b3=<a.a8g.g8f.f8(g2 )g1>
b4=<f.f8g.g8 >b-1r4

;***** sub1
fm3=o4@97@16s1v13z3
sc3=o4@17v10q6 m5 i10

c0=l8cg4g<b>b<b>b <a>a4<gf2>
c1=l2<fg >c4<g4c>
c2=l4>l4eeee eeee e1 d2e2 e2de >c<b(a2 )a1<
c3=l2<gf >a-1r4

fm4=o5@00s1v13
fm5=o5@00s1v13
sc4=o4@17v12q6 m5 i10
sc5=o4@17v12q6 m5 i10

d0=l4rega ee8d8c2
d1=l4el8dc<b>c16<b16ab >c1
e0=l4rcdd cc8<b8a2>
e1=l4c<l8baga16g16fg g1>
d2=l4eeee eeee ebcd8e8 dc<b>e8d8 e2 <b>e ag(f2 )f1
e2=l4cc<bb aabb >cd<ab8>c8 <aag<c8d8 c2<gb >fe(d2 )d1
d3=l4el8dc<b>c16<b16ab >r16g2...r4
e3=l4c<l8baga16g16fg >r32c2....r4

;***** sub2
fm7=v13@00s1o5
fm8=v13@00s1o4

f0=l2cd c4.<b8a>
f1=l2<ab >e1

g0=l2gb a4.g8f
g1=l2fg>c1<

f2=l4eeee eeee e1 d2e2 e2dg >c<b(a2 )a1
g2=l4>cc<bb aabb >c1 <a2b2 >c2<bb >ag(f2 )f1<

f3=l2<ab >r32g2....r4
g3=l2fg r16a-2...r4

;***** DRUMS
ps2=v10o6q6@28

s0=l4rere
s1=@7e@28e@7e@28e
;s2=@7e@28e@7er r2r8.@7e16@28e
s2=@7e@28e@7er r2.@28e
s3=@7e@28e@7e@28e r1r4.

r2
