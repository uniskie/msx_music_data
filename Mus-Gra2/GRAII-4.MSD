;**************************************
;* GRADIUS II-4  St1. -Burning Heat-  *
;**************************************
FM1 =t,fm0,a0,fm0a,a1,fm0b,a2,a3,a2,a4,a5
FM2 =t,fm0,a0,fm0a,a1,fm0b,b2,b3,b2,b4,b5
FM3 =t,fm2,a0,fm2a,a1,fm2b,a2,a3,a2,a4
FM4 =t,fm3,g0/3,g1,g2/3,g3,g4/3,g5,g4/3,g6
FM5 =t,fm4,c0,c1,c2,c1,c3
FM6 =t,fm5,d0,d1,d2,d1,d3
FMR =
FM7 =t,fm6,e0,e1,e2,e1,e3
FM8 =t,fm7,f0,f1,f2,f1,f3
FM9 =t,fm8,g0/3,g1,g2/3,g3,g4/3,g5,g4/3,g6
PSG1=t,ps0,a0,a1,a2,a3,a2,a4,a5
PSG2=t,ps1,a0,a1,b2,b3,b2,b4,b5
PSG3=t,ps2,h0/3,h1,h2/3,h3,h4/3,h5,h4/3,h6
SCC1=t,sc0,e0,e1,e2,e1,e3
SCC2=t,sc1,f0,f1,f2,f1,f3
SCC3=t,sc2,a0,sc3a,a1,sc2b,a2,a3,a2,a4
SCC4=t,sc3,a0,sc3a,a1,sc3b,a2,a3,a2,a4,a5
SCC5=t,sc4,a0,sc3a,a1,sc3b,b2,b3,b2,b4,b5

t=t114

;**** part 1
fm0=@9v12o6q6
fm2=@9v11o6q6z13r8
ps0=@11v07o4q6z5
ps1=@11v07o4q6z6
sc3=@10v07o4q6z1
sc4=@10v07o4q6z2
sc2=@10v04o4q6z4r8

a0=m4l16fedec<(g8i50)g8i0g>c<ga->c<a->(e-8i50)e-i0<b->d<b->(f8i50)fi0fef(g8i50)g4i0g>c<ga-e-a->(c8i50)ci0<b-fb->(d8i50)di0<

fm0a=@6v13
fm2a=@6v12
sc3a=@15>

a1=<(e8i50)e8i0 efg8 f8e8 f8c8 f8(a8.i50)a8.i0
   l16a-ga-(b-8i50)b-8i0r32g32a-32b-32>e-<b-gb-ab->(c8.i50)c8.i0<a>cf

fm0b=@9v14
fm2b=@9v12
sc3b=@2v7<
sc2b=@2v4<

a2=(d8i50)di0rde-(f8i50)f4i0(f8i50)fi0rfb->e-8d8<b-8
a3=>(d-8i50)d-8i0<b-g->(d-8i50)d-i0<g-b->d-l8fc<b-afcl16
a4=(b-8i50)b-i0rb->d(g8i50)g4i0rd-d-(d-8i50)d-re-e-
a5=l32e-c<a-e-c<a-

b2=<(b-8i50)b-i0rb->c(d8i50)d4i0(d8i50)di0rdf>c8<b-8f8
b3=(b-8i50)b-8i0g-d-(b-8i50)b-i0d-g-b-l8>c<affc<al16
b4=(g8i50)gi0rgb->(d8i50)d4i0rb-b-(b-8i50)b-i0>rcc
b5=l32c<a-e-c<a-e-

;**** part 2
fm4=o5@16v12q4s1
fm5=o5@16v12q4s1

c0=l16c8ccccc8cccc<a-8a-a-a-a-b-8b-b-b-b->c8ccccc8cccc<a-8a-a-a-a-b-8b-b-b-b-
 >cecgc>c<cecgc>c<cfcac>c<cfcac>c<e-ge-b-e->e-<e-ge-b-e->e-faf>c<f>f<faf>c<f>f<
c1=b-8b-b-b-b-b-8b-b-b-b-a-8a-a-a-a-a-8a-a-a-a-
c2=g-8g-g-g-g-g-8g-g-g-g-a8>c8f8>l32fc<a>c<afafcfc<al16
c3=g8ggggg8ggggrg-g-g-8.ra-a-a-8.

d0=l16g8ggggg8gggge-8e-e-e-e-f8ffffg8ggggg8gggge-8e-e-e-e-f8ffff
 z2
 >cecgc>c<cecgc>c<cfcac>c<cfcac>c<e-ge-b-e->e-<e-ge-b-e->e-faf>c<f>f<faf>c<f>f<
 z0
d1=f8fffff8ffffe-8e-e-e-e-e-8e-e-e-e-
d2=d-8d-d-d-d-d-8d-d-d-d-f8a8>c8>l32c<afafcfc<a>c<afl16
d3=d8ddddd8ddddrd-d-d-8.re-e-e-8.

;**** part 3
fm6=o5@3v12q6s1 z1
sc0=o4@2v6q6

e0=m4l16(c8i50)c4.i0rccc<(a-8i50)a-4i0(b-8i50)b-4i0>(c8i50)c4.i0rccc<(a-8i50)a-4i0(b-8i50)b-4i0>
   (e8i50)e4i0l8eg>c<(f8i50)f4i0>(c8i50)c4i0<(b-8i50)b-4i0(e-8i50)e-4i0>(c8i50)c4i0<(f8i50)f4i0<
e1=l16b-8b-r8.b-8b-rb-b-a-8a-r8.a-8a-ra-a-
e2=g-8g-r8.g-8g-rg-g-l8ffffff
e3=g8gr8.g8grggrg-8(g-8i50)g-i0ra-a-(a-8i50)a-i0

;**** part 4
fm7=@33q3s1v14o3
;ps1=@17q6v12o2 z4
sc1=@06q6v13o3

f0=l16c8ccccc8ccccc8ccccccc<ab-b>c8ccccc8ccccc8ccccccc<ab-bb-8b-b-fb-b-8b-b-fb-a8aafaa8afa>ce-8e-e-<b->e-e-8e-e-<b->e-f8ffcff8ffc<f
f1=b->b-<b->f<b->b-<b->b-<b->f<b->b-<a->a-<a->e-<a->a-<a->a-<a->e-<a->a-<
f2=g->g-<g->d-<g->g-<g->g-<g->d-<g->g-<f>f<f>c<f>f<f>f<ffga
f3=g>g<g>d<g>g<g>g<g>d<g>g<a->e-a-<a-8.b->fb-<b-8.

;**** part 5 (drum)
fm3=v15o2z20
fm8=v15o2
ps2=v11o2q6

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