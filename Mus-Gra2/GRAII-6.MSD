;**************************************
;*GRADIUS II-6 St.2  [A Shooting Star]*
;**************************************
FM1 =t,fm0,a3,a4,a5/2,a6
FM2 =t,fm1,a3,a4,a5/2,a6e
FM3 =t,fm2,a3,a4,a5/2,a6e
FM4 =t,fm3,b1/4,b2/4,b3,b4/2,b5
FM5 =t,fm4,b1/4,b2/4,b3,b4/2,b5
FM6 =t,fm5,a3,a4,a5/2,@96,c1
FMR =
FM7 =t,fm6,a3,a4,a5/2,a6
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

t=t134
r=r1.

;**** PART 1 ****
fm0=O5@14v10q4s1
fm1=O4@14v10q4s1
fm2=O5@6 V9 z10r8
fm6=O6@16v11q4s1z10
ps0=O4@11q6v11
sc3=O4@15q6v13
sc4=O4@10q6v12z3r8.

a3=m4l16gf+d(c8.i50)c8.id<bg ab>cdc<b(a8i50)aiab>c
a4=(d8i50)d8id<b-f(g8.i50)g8.i r8gab-ab->cde-f gf+d(c8.i50)c8.id<bg ab>cdc<bab>cd<b>g<
a5=a>cg<a>cg<b>dgbgd cegceg<a>dgf+da
a6=r16bagfagdgedc (d8i50)d8iga>(d8i50)dil32d-<a-fd-<a-f
a6e=r16bagfagdgedc (d8i50)d8iga>(d8i50)di

;**** part 2 ****
fm3=o3@33q6s1v13
fm4=o3@6q4s1v15z3
ps1=o2@17q6v13
sc0=o2@11q6v15

b1=l16crcc<g>c
b2=e-re-e-<b->e-
b3=crcc<g>ceree<b>e frffcfgrggdg
b4=araaeabrbbgb>crcc<g>cdrdd<a>d<
b5=m4(g4i50)g2i(g4i50)g8i(g8i50)giggg
b5e=m4(g4i50)g2i(g4i50)g8i(g8i50)gigg

;**** part 3 ****
fm5=v12@24O6
@96=v14z24@9m5i6
sc1=v13@8q6o5
sc2=v12@8q6z3r16.o5

c1=o4g>c<g>d<g>g<g>c<g>d<g>g g>d<g>d<g>gdc<gdc<g
c2=o4g>c<g>d<g>g<g>c<g>d<g>g g>d<g>d<g>gdc<gd

;**** part 4(drum) ****
fm7=v15o1z40
fm8=v15o1
ps2=v12o2

d1=l16@91a8a>@90c<@91a8
d2=@91a8a>@90c32c32cc<@91a8>a@90ccc<
d3=@91a8a>@90c<@91aa
d4=@91a8a>@90ccc<

e1=l16@01a8a>@00c8<@01a
e2=@01a8a>@00c32c32cc8<@01aa>@00ccc<
e3=@01a8a>@00c8<@01a
e4=@01a8a>@00ccc<

