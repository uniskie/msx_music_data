;*************************************;
;      SORCERIAN   scenario 1-2       ;
;         ¢ LOST TARISSMAN £          ;
;      UNDERGROUND DUMGEON's BGM      ;
;*************************************;
;voice2.vcd -> so-12-2.vcd
FM1 =t,fm0,;a0,a1,a0,a2,
           a0,a3,a0,a4,a5/2,a6,a7,a6,a8
FM2 =t,fm1,;a0,a1,a0,a2,
           a0,a3,a0,a4,a5/2,a6,a7,a6,a8
FM3 =t,fm2,;@9,   b0,@33,b00,b01,
           @33,   b1,@10,b2,b2,b3,@0,b4,b3,@0,b5,@33,b6,b7
FM4 =t,fm3,;@9,z0,b0,@12,b00,b02,
           @33,z0,b1,@10,b2,b2,b3,@0,b4,b3,@0,b5,@33,b6,b7'
FM5 =t,fm4,;f0,
           f1
FM6 =t,fm5,;c0/15,c1,
           c0/15,c2,c3/7,c4,c3/7,c5,c3/7,c5
FMR =
FM7 =t,fm6,;@16,   b0,@14,b00,b01,
           @14,  b1,@16,b2,b2,b3',@16,b4,b3',@16,b5,@14,b6,b7'
FM8 =
FM9 =
PSG1=t,ps0,;d0,
           d1,
PSG2=t,ps0,;e0,
           e1,d1
PSG3=t,ps2,;g0/15,g1,
           g0/15,g2,g3/7,g4,g3/7,g5,g3/7,g5
SCC1=
SCC2=
SCC3=
SCC4=
SCC5=

t=t132

fm0=@14  v10q2o3
fm1=@33  v13q2s1o3
a0=l16<b-8b-b-b-8>f8.<b-8b->d-8e-8
   <b-8b-b-b-8>f8.<b-8b->d-8e-8
a1=g-8g-g-g-8>d-8.<g-8g-b-8>c8<
   g-8g-g-g-8>d-8.<g-8g-b-8>c8<
a2=f8ffb-8>c8.<f8fe-8e8
   f8ffb-8>c8.<fe-c<b->ce-f
a3=<a-8a-a-a-8>e-8.<a-8a-b-8>c8
   f8ffb-8>c8.<f8fe-8e8
a4=g-8g-g-g-8>d-8.<g-8g-b-8>c8<
   <a-8>a-<a-a->ce-8<a-8>a-a-<a8>aa
a5=<b-b->b-<b-b->b-<b->b-<a-a->a-<a-a->a-<a->a-
   <gg>g<gg>g<g>g<g-g->g-g-<g-g->g-g-
a6=<g-8g->ff<g-efg-8g->>ff<g-a-b-
   <g-8g->ff<g-efa-8a-a-a->a-<a>a
a7=<b-8>g-<b-b->d-<b->d-<b->g-<b->g-ca-d-b-
   <b-8>g-<b-b->d-<b->d-<b-8>g-<b-b->d-e-f
a8=<b-8>g-<b-b-b->g-<b-b->g-d>d<e->e-<e>e<
   f8>f<fffb->c<f8>f<fffe-e

fm2=q6s1o5 v12
fm3=q6s1o5 v10 z10
fm6=q6s1o6 v12 z5
@0=@0
@9=@9
@12=@12
@33=@33
@10=@10
@14=@14
@16=@16
b0=l16m5
   (f2i80)f2i (e-4..i80)e-4..i<b-8 >(d-8.i80)d-8.i(c4ci80c)c4i
   (d-8.i80)d-8.i(e-4e-i80e-)e-4i 
   (f2i80)f2i (e-4..i80)e-4..id-32c<b-32 >(c2i80)c2i
b00=f4e-4a-4
b01=g-4
b02=g-6
z0=r12
b1=l16ffe-(f)f4f8.g-8.a-8 ffe-(f)f4<b-8.>c8.d-8
   e-e-d-(e-)e-4e-8.f8.e-8 c8.<b-8.>l32(ccccl16ccc(c)c4
   ffe-(f)f4f8.g-8.a-8 ffe-(f)f4f8.e-8.f8
   d-8.<b-8.>(d-8.i80)d-8.i<b->cd-8 e-8.c8.(e-4e-i80e-)e-4i<<
b2=b->cd-e-f4f8.e-8.d-8 e-<b-gfe-fgb->d-<b->d-g-fe-d-c
b3=@0d-c<b->d-8<b-8.>@24d-c<b->d-8<b-8.>
   @0e-d-ce-8c8.@24e-d-ce-8c8.
b3'=<d-c<b->d-8<b-8.>m3i50<@14d-c<b->d-8<b-8.@16im5>>
    e-d-ce-8c8.<m3i50@14e-d-ce-8c8.@16im5>>
b4=fe-cd-fe-a-g-fg-e-fd-e-cd-
   fe-cd-fe-a-f(b-4i80)b-4i
b5=(b-2i80)b-2i
b6=f4e-4a-4
b7=g-4
b7'=g-6

fm5=v14m1l64
c0=@91o2(c<p29)c32.p>@92(c<p29)c32.p>(c<p29)c32.p>@91(c<p29)c32.p>@92(g<p29)c32.p>(g<p29)g32.>p@90(g<p29)g32.p>@92(g<p29)g32.p>
c1=@90(g<p29)g32.p>@91(c<p29)c32.p>@90(e<p29)e32.p>(g<p29)g32.p>@91(c<p29)c32.p>@90(e<p29)e32.p>@91(c<p29)c32.p>(c<p29)c32.p>
c2=@92(c<p29)c32.p>(c<p29)c32.p>(g<p29)g32.p>(g<p29)g32.p>@90(b<p29)b32.p>(g<p29)g32.p>@91(c<p29)c32.p>@90(e<p29)e32.p>
c3=@90(e<p29)e32.p>@92(c<p29)c32.p>(c<p29)c32.p>(c<p29)c32.p>@91(c<p29)c32.p>(c<p29)c32.p>(c<p29)c32.p>(c<p29)c32.p>
c4=@92(c<p29)c32.p>@90(g<p29)g32.p>(g<p29)g32.p>(g<p29)g32.p>@91(c<p29)c32.p>(c<p29)c32.p>@90(e<p29)e32.p>(e<p29)e32.p>
c5=@90(g<p29)g32.p>(e<p29)e32.p>(e<p29)e32.p>(g<p29)g32.p>(e<p29)e32.p>(e<p29)e32.p>(g<p29)g32.p>(e<p29)e32.p>

ps2=v7@3l16o8
g0=ggv8av7ggggv8gv7
g1=@4a@3gg@4a@3g@4a@3v8ggv7
g2=@4aa@3g@4a@3gv8gv7@4g@3g
g3=ggv8av7gggav8gv7
g4=g@4a@3gg@4aa@3gg
g5=v8av7g@4g@3v8av7g@4g@3g@4g@3

ps0=v8@10 q6 m4 o5
d0=li8
   c1 c1 <b-.(b-2)b-8
   b-.(b-2)b-8>
   c1 c1 <b-1>
   @11c<b->e-d-
e0=li8z24
   c1 c1 <b-.(b-2)b-8
   b-.(b-2)b-8>
   c1 c1 zl16@11v6<fb->c<bv7f-b->c<b-v8fb->c<b-v9fb->c<b->v8
   lz24c<b->e-d-
e1=z24
d1=@11l16cc<b->c4cc8.d-8.e-8 cc<b->c4c<f8.b-8.b-8>
   cc<a->c4cc8.d-8.c8 <b-4f4a4>c4
   cc<b->c4cc8.d-8.e-8 cc<b->c4cc8.<b-8.>c8
   <b-8.g-8.b-4.g-g-b-8 >c8.<a-8.>c8crv9crc4v8
   l2ff e-.c4 ff e-.c4
   <g-g-8.f8.g-8 a->e- cl8<b-b->cd- c2fr16f.f
   g-2g-.f.g- a-2>c2 <f1 lc<b->e-d-

fm4=@16q6 o5 v12 m4
f0=li8
    b-1 b-1 g-.(g-2)g-8
    g-.(g-2)g-8
    b-1 b-1 l16v9fb->c<b-v10fb->c<b-v11fb->c<b-v12fb->c<b-v11
    lb-rb-b-
f1=l16b-b-rb-4b-b-8.b-8.b-8 b-b-rb-4b-b-8.f8.f8
   a-a-e-a-4a-a-8.a-8.a-8 f4<b-4>f4f4
   b-b-rb-4b-b-8.b-8.b-8 b-b-rb-4b-b-8.f8.f8
   g-8.d-8.g-4.d-d-g-8 a-8.e-8.a-8a-rv13a-ra4v12
   l2>d-c <b-.a4 >d-c <b-.a4
   d-d-8.d-8.d-8 e->c <b-l8ffff b-2>d-r16d-.d-
   d-2d-.d-.d- e-2a-2 d1 l<b-rb-b-
   

