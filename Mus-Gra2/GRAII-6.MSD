;**************************************
;*GRADIUS II-6 St.2  [A Shooting Star]*
;**************************************
FM1 =t,fm0,a3,a4,a5/2,a6
FM2 =t,fm1,a3,a4,a5/2,a6e
FM3 =t,fm2,a3,a4,a5/2,a6e
FM4 =t,fm3,b1/4,b2/4,b3,b4/2,b5
FM5 =t,fm4,b1/4,b2/4,b3,b4/2,b5
FM6 =t,fm5,a3,a4,a5/2,fm5a,c1
FMR =
FM7 =t,fm6,a3,a4,a5/2,a6'
FM8 =t,fm7,d1/6,d2,d1/4,d3/3,d4,d3/3,d4,r
FM9 =t,fm8,d1/6,d2,d1/4,d3/3,d4,d3/3,d4,r
PSG1=t,ps0,a3,a4,a5/2,a6
PSG2=t,ps1,b1/4,b2/4,b3,b4/2,b5
PSG3=t,ps2,e1/6,e2,e1/4,e3/3,e4,e3/3,e4,r
SCC1=t,sc0,b1/4,b2/4,b3,b4/2,b5
SCC2=t,sc1,a3,a4,a5/2,c1
SCC3=t,sc2,a3,a4,a5/2,c2
SCC4=t,sc3,a3,a4,a5/2,a6
SCC5=t,sc4,a3,a4,a5/2,a6e

t=t120
r=r1.

;**** PART 1 ****
fm0=o6@6v12
fm1=o6@6v11 z10r8
fm2=o7@14v10 z10r8
fm6=o7@14v11 
ps0=o5@11q6v5 z2
sc3=o4@2q6v8 z1
sc4=o4@2q6v6 z4r8

a3=m5l16gf+d(c8.i50)c8.id<bg ab>cdc<b(a8i50)aiab>c
a4=(d8i50)d8i<b-f(g8.i50)g4i r8gab-ab->cde-f gf+d(c8.i50)c8.id<bg ab>cdc<bab>cd<b>g<
a5=a>cg<a>cg<b>dgbgd cegceg<a>dgf+da 
a6'=r16bagfagdgedc (d8i50)d8iga>(d8i50)dil32d-<a-fd-<a-f
a6=r16bagfagdgedc (d8i50)d8iga>(d8.i50)d8.i
a6e=r16bagfagdgedc (d8i50)d8iga>(d8i50)d8i

;**** part 2 ****
fm3=o3@33q6s1v13
fm4=o3@24q6s1v15z3
ps1=o2@17q6v11
sc0=o2@11q6v14 z1

b1=l16crcc<g>c
b2=e-re-e-<b->e-
b3=crcc<g>ceree<b>e frffcfgrggdg
b4=araaeabrbbgb>crcc<g>cdrdd<a>d<
b5=m4(g4i50)g2i(g4i50)g8i(g8i50)giggg
b5e=m4(g4i50)g2i(g4i50)g8i(g8i50)gigg

;**** part 3 ****
fm5=v12@0o7
fm5a=v12@16 z2 <<
sc1=v4@10q6o5 z2
sc2=v5@8q6 z3 r8 <

c1=<g>c<g>d<g>g<g>c<g>d<g>g g>d<g>d<g>gdc<gdc<g
c2=<g>c<g>d<g>g<g>c<g>d<g>g g>d<g>d<g>gdc<

;**** part 4(drum) ****
fm7=v15o1z20
fm8=v15o1
ps2=v11o2

d1=l16@91a8a>@90c<@91a8
d2=@91a8a>@90c32c32cc<@91a8>a@90ccc<
d3=@91a8a>@90c<@91aa
d4=@91a8a>@90ccc<

e1=l16@01a8a>@00c8<@01a
e2=@01a8a>@00c32c32cc8<@01aa>@00ccc<
e3=@01a8a>@00c8<@01a
e4=@01a8a>@00ccc<

