;**************************************
;*GRADIUS II-6 St.2  [A Shooting Star]*
;**************************************
FM1 =t,fm0,a3,a4,fm0a,a5/2,a6
FM2 =t,fm1,a3,a4,fm1a,a5/2,a6e
FM3 =t,fm2,c1/4,c2/4,c3,c4/2,fm2a,c5/3,c6
FM4 =t,fm3,d0,a5/2,d2,d3
FM5 =t,fm4,d0,a5/2,d2,d4
FM6 =t,fm5,b1/4,b2/4,b3,b4/2,b5
FMR =
FM7 =t,fm6,b1/4,b2/4,b3,b4/2,b5
FM8 =t,fm7,r1/6,r2,r1/4,r3/3,r4,r3/3,r4,r
FM9 =t,fm8,r1/6,r2,r1/4,r3/3,r4,r3/3,r4,r
PSG1=t,ps0,a3,a4,ps0a,a5/2,a6
PSG2=t,ps1,d0,a5/2,d2,d3
PSG3=t,ps2,s1/6,s2,s1/4,s3/3,s4,s3/3,s4,r
SCC1=t,sc0,b1/4,b2/4,b3,b4/2,b5
SCC2=t,sc1,c1/4,c2/4,c3,c4/2,sc1a,c5/3,c6
SCC3=t,sc2,d0,a5/2,d2,d3
SCC4=t,sc3,a3,a4,sc3a,a5/2,a6
SCC5=t,sc4,a3,a4,sc4a,a5/2,a6e

t=t120
r=r1.

;**** PART 1 ****
fm0=o6@16v13q6
fm1=o6@16v12q6 z9r8
ps0=o5@11q6v8 z1
sc3=o5@3q6v11 
sc4=o5@3q6v8 z3 r8

fm0a=v14
fm1a=v12
ps0a=v9
sc3a=v12
sc4a=v8

a3=m4l16gf+d(c8.i50)c8.id<bg ab>cdc<b(a8i50)aiab>c
a4=(d8i50)d8i<b-f(g8.i50)g4i r8gab-ab->cde-f gf+d(c8.i50)c8.id<bg ab>cdc<bab>cd<b>g
a5=<a>cg<a>cg<b>dgbgd cegceg<a>dgf+da
;a6'=r16bagfagdgedc (d8i50)d8iga>(d8i50)dil32d-<a-fd-<a-f
a6=r16bagfagdgedc (d8i50)d8iga>(d8.i50)d8.i
a6e=r16bagfagdgedc (d8i50)d8iga>(d8i50)d8i

;**** part 2 ****
fm5=o3@33q6s1v13
fm6=o3@12q6s1v10z3
sc0=o2@6q6v13 z1

b1=l16crcccc
b2=e-re-e-e-e-
b3=crcccc ereeee frffff grgggg
b4=araaea brbbbb>crcccc drdddd<
b5=m4(g4i50)g2i(g4i50)g8i(g8i50)giggg
b5e=m4(g4i50)g2i(g4i50)g8i(g8i50)gigg

;**** part 3 ****
fm2=v12@24o4
sc1=v11@6o3 z3
fm2a=o6v11
sc1a=@10o5v7

c1=l16 crcc<g>c
c2=e-re-e-<b->e-
c3=crcc<g>c ereece frffcf grggdg
c4=araaea brbbgb crcc<g>c drdd<a>d
c5=<g>c<g>d<g>g
c6=dc<gdc<g

;**** part 4 ****
fm3=v13@2o6q4s1
fm4=v11@2o6q4s1 z9r8
ps1=v7@13o5q4z1
sc2=v5@3o5q4

d0=l16 m4
   c8(c8.i50)c4i c8(c4i50)c4.i c8. 
   e-8(e-8.i50)e-4i e-8(e-4i50)e-4.i e-dc+
   (c8.i50)c8.i (e8.i50)e8.i 
   (f8.i50)f8.i (g8.i50)g8.i 
d1=r1. 
d2=(g4.i50)f4.i 
   (g8.i50)g8.i d8.
d3=c+8. 
d4=c+

;**** part 4(drum) ****
fm7=v15o1z20
fm8=v15o1
ps2=v11o2

r1=l16@91a8a>@90c<@91a8
r2=@91a8a>@90c32c32cc<@91a8>a@90ccc<
r3=@91a8a>@90c<@91aa
r4=@91a8a>@90ccc<

s1=l16@01a8a>@00c8<@01a
s2=@01a8a>@00c32c32cc8<@01aa>@00ccc<
s3=@01a8a>@00c8<@01a
s4=@01a8a>@00ccc<

