;**************************************
;* GRADIUS II-4  St1. -Burning Heat-  *
;**************************************
FM1 =t,fm0,a0,a1,a2,a1,a3,a4
FM2 =t,fm1,b0,b1,b2,b1,b3,b4
FM3 =t,fm2,a0,a1,a2,a1,a3
FM4 =t,fm3,g0/3,g1,g2/3,g3,g4/3,g5,g4/3,g6
FM5 =t,fm4,c0,c1,c2,c1,c3
FM6 =t,fm5,d0,d1,d2,d1,d3
FMR =
FM7 =t,fm6,e0,e1,e2,e1,e3
FM8 =t,fm7,f0,f1,f2,f1,f3
FM9 =t,fm8,g0/3,g1,g2/3,g3,g4/3,g5,g4/3,g6
PSG1=t,ps0,a0,a1,a2,a1,a3,a4
PSG2=t,ps1,f0,f1,f2,f1,f3
PSG3=t,ps2,h0/3,h1,h2/3,h3,h4/3,h5,h4/3,h6
SCC1=t,sc0,e0,e1,e2,e1,e3
SCC2=t,sc1,a0,a1,a2,a1,a3,a4
SCC3=t,sc2,b0,b1,b2,b1,b3,b4
SCC4=t,sc3,a0,a1,a2,a1,a3
SCC5=t,sc4,b0,b1,b2,b1,b3

t=t114

;**** part 1
fm0=@6v12o5
fm1=@6v12o5
fm2=@6v10o5z10r8.
ps0=@11v10o4
sc1=@15v12o4q6
sc2=@15v12o4q6
sc3=@15v10o4q6z6r8.
sc4=@15v10o4q6z6r8.


a0=m4l16fedec<(g8i50)g8i0g>c<ga->c<a->(e-8i50)e-i0<b->d<b->(f8i50)fi0fef(g8i50)g4i0g>c<ga-e-a->(c8i50)ci0<b-fb->(d8i50)di0
 <(e8i50)ei0refl8gfefcf(a8i50)a4i0l16a-gfge-<(b-8i50)b-8i0b->e-gb-ab->(c8i50)c4..i0
a1=(d8i50)di0rde(f8i50)f4i0(f8i50)fi0rfa>e-8d8<b-8
a2=>(d-8i50)d-8i0<b-g->(d-8i50)d-i0<g-b->d-l8fc<b-afcl16
a3=(b8i50)bi0rb>d(g8i50)g4i0rd-d-(d-8i50)d-re-e-
a4=l32e-c<ae-c<a

b0=z2m4l16fedec<(g8i50)g8i0g>c<ga->c<a->(e-8i50)e-i0<b->d<b->(f8i50)fi0fef(g8i50)g4i0g>c<ga-e-a->(c8i50)ci0<b-fb->(d8i50)di0
 <(e8i50)ei0refl8gfefcf(a8i50)a4i0l16a-gfge-<(b-8i50)b-8i0b->e-gb-ab->(c8i50)c4..i0z0
b1=<(b-8i50)b-i0rb->c(d8i50)d4i0(d8i50)di0rdf>c8<b-8f8
b2=(b-8i50)b-8i0g-d-(b-8i50)b-i0d-g-b-l8>c<affc<al16
b3=(g8i50)gi0rgb>(d8i50)d4i0rb-b-(b-8i50)b-i0>rcc
b4=l32c<a-e-c<a-e-

;**** part 2
fm4=@16v12q4s1
fm5=@16v12q4s1

c0=l16o5c8ccccc8cccc<a-8a-a-a-a-b-8b-b-b-b->c8ccccc8cccc<a-8a-a-a-a-b-8b-b-b-b-
 >cecgc>c<cecgc>c<cfcac>d<cfcac>d<e-ge-b-e->e-<e-ge-b-e->e-faf>c<f>f<faf>c<f>f<
c1=b-8b-b-b-b-b-8b-b-b-b-a-8a-a-a-a-a-8a-a-a-a-
c2=g-8g-g-g-g-g-8g-g-g-g-a8>c8f8>l32fc<a>c<afafcfc<al16
c3=g8ggggg8ggggrg-g-g-8.ra-a-a-8.

d0=l16o5g8ggggg8gggge-8e-e-e-e-f8ffffg8ggggg8gggge-8e-e-e-e-f8ffff
 z2
 >cecgc>c<cecgc>c<cfcac>d<cfcac>d<e-ge-b-e->e-<e-ge-b-e->e-faf>c<f>f<faf>c<f>f<
 z0
d1=f8fffff8ffffe-8e-e-e-e-e-8e-e-e-e-
d2=d-8d-d-d-d-d-8d-d-d-d-f8a8>c8>l32c<afafcfc<a>c<afl16
d3=d8ddddd8ddddrd-d-d-8.re-e-e-8.

;**** part 3
fm6=o5@2v14
sc0=o4@8v13q6

e0=m4l16(c8i50)c4.i0rccc<(a8i50)a4i0(b-8i50)b-4i0>(c8i50)c4.i0rccc<(a-8i50)a-4i0(b-8i50)b-4i0 >(e8i50)e4i0l8eg>c<(f8i50)f4i0>(c8i50)c4i0<(b-8i50)b-4i0(e-8i50)e-4i0>(c8i50)c4i0<(f8i50)f4i0<
e1=l16b-8b-r8.b-8b-rb-b-a-8a-r8.a-8a-ra-a-
e2=g-8g-r8.g-8g-rg-g-l8ffffff
e3=g8gr8.g8grggrg-8(g-8i50)g-i0ra-a-(a-8i50)a-i0

;**** part 4
fm7=@33q6s1v14o3
ps1=@17q6v13o2

f0=l16c8ccccc8ccccc8ccccccc<ab-b>c8ccccc8ccccc8ccccccc<ab-bb-8b-b-fb-b-8b-b-fb-a8aafaa8afa>ce-8e-e-<b->e-e-8e-e-<b->e-f8ffcff8ffc<f
f1=b->b-<b->f<b->b-<b->b-<b->f<b->b-<a->a-<a->e-<a->a-<a->a-<a->c<a->a-<
f2=g->g-<g->d-<g->g-<g->g-<g->d-<g->g-<f>f<f>c<f>f<f>f<ffga
f3=g>g<g>d<g>g<g>g<g>d<g>g<a->e-a-<a-8.b->fb-<b-8.

;**** part 5 (drum)
fm3=v15O2z10
fm8=v15O2
ps2=v12o2q6

g0=l16<@91a>@87e<@91a>@90c<@91a>@87e<@91a>@87e<@91a>@90c<@91a>@86e
g1=<@91a>@87e<@91a>@90c<@91a>@87e<@91a>@90ccccc
g2=<@91a>@87e<@91a>@90c@92a8<@91a>@87e<@91a>@90c@92g8
g3=l32<@91aaa>@90cccl16ccc<@91a>@92bbl32aaagggl16
g4=<@91a>@87e<@91a>@90c<@91a>@87e<@91a>@87e<@91a>@90c<@91a>@86e
g5=@90c<@91a>@90c<@91a>@90c<@91a>@90c<@91a>@90c<@91a>@90cc
g6=<@91a>@90ccc<@91a>@87e<@91a>@87e<@91a>l32@90ccc@92bag

h0=l16@01a>@07e<@01a>@00c<@01a>@07e<@01a>@07e<@01a>@00c<@01a>@06e<
h1=@01a>@07e<@01a>@00c<@01a>@07e<@01a>@00ccccc<
h2=@01a>@07e<@01a>@00c@01a8<@01a>@07e<@01a>@00c@01a8<
h3=l32@01aaa>@00cccl16ccc<@01a>@21bbl32@23aaa@25ggg<l16
h4=@01a>@07e<@01a>@00c<@01a>@07e<@01a>@07e<@01a>@00c<@01a>@06e<
h5=>@00c<@01a>@00c<@01a>@00c<@01a>@00c<@01a>@00c<@01a>@00cc<
h6=@01a>@00ccc<@01a>@07e<@01a>@07e<@01a>l32@00ccc@21b@23a@25g

