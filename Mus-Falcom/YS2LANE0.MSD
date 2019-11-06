; YS II  ¢ COMPANILE OF LANE £
; voice2.vcd
FM1 =t,;a0
      fm0,a1/3,a2,a1/3,a2,a3,a4,a3,a5,a1/3,a2,a1/3,a2,a0/2,a7/4,a8/3,a9,a8/3,aa
FM2 =t,;a0
      fm1,a1/3,a2,a1/3,a2,ae,a4,ae,a5,a1/3,a2,a1/3,a2,a0/2,a7/4,a8/3,a9,a8/3,aa
FM3 =t,;a0
      fm2,@0a,e1/2,@1a,e2/3,e2a,e2/3,e2b,@0a,e1/2,@2v,e3,@2a,e4,@3f,e5,@3a,e6,@4a,e7,e8,@6,e9/2,ea/2,e9/2,ea,eb
FM4 =t,;a0
      fm2,@0b,e1/2,@1b,e2/3,e2a,e2/3,e2b,@0c,e1/2,@2s,e3,@2a,e4,@3g,e5,@3b,f6,@4b,e7,f8,@6,f9/2,fa/2,f9/2,fa,fb
FM5 =t,;a0
      fm2,@0d,e1/2,@1a,e2/3,e2a,e2/3,e2b,@0d,e1/2,@2v,f3,@2c,e4,@3f,e5,@3a,g6,@4c,e7,e8,@6,f9/2,ga/2,f9/2,ga,gb
FM6 =t,;a0
      fm2,@0e,e1/2,@1b,e2/3,e2a,e2/3,e2b,@0f,e1/2,@2s,f3,@2d,e4,@3g,e5,@3b,e6,@4d,e7,e8,@6,e9/2,ea/2,e9/2,ea,eb
FMR =
FM7 =t,;fmw,w0
      fmw,w1/3,w2,w1/3,w2,w3/3,w4,w1/3,w2,w1/3,w2,w5,w6/7,w7,w6/7,w7,w6/7,w7,w6/7,w8,w9/7,wa
FM8 =t,;fmx,x0
      fmx,x1/3,x2,x1/3,x2,x3/3,x4,x1/3,x2,x1/3,x2,x5,x6/7,x7,x6/7,x7,x6/7,x7,x6/7,x8,x9/7,xa
FM9 =t,;fmy,y0
      fmy,y1/3,y2,y1/3,y2,y3/3,y4,y1/3,y2,y1/3,y2,y5,y6/7,y7,y6/7,y7,y6/7,y7,y6/7,y8,y9/7,ya
PSG1=t,;a0
      ps0,z4,b1/2,b2/2,b1/2,b3,b4,b5,b6,b7,b8/3,b9,ba/7,bb
PSG2=t,;a0
      ps0,z4,c1/2,c2/2,c1/2,c3,c4,c5,c6,c7,c8/3,c9,ca/7,cb
PSG3=t,;a0
      ps0,   b1/2,d2  ,b1/2,d3,b4,b5,b6,d7,d8/3,d9,ba/7,bb
SCC1=
SCC2=
SCC3=
SCC4=
SCC5=

t=y14,32t250r64
  t153
a0=r2

;==BASE

fm0=@33v13o2L16q1s1
fm1=@14v12o2L16q2

a1=g8g8>g8<ggr>d<g8g>g<g8
a2=g8g8>g8<ggr>f<g8gb->e-b-<
a3=g8g8r8gg g8g8r8gg
   g>g<b8r8gg>gfef ecd
ae=g8g8>>b8<<gg g8g8>>b8<<gg
   g>g<g8>>b8<<gg>gfef ecd
a4=<b-
a5=g<
;a6=r1
a7=g8gg>g8<ggrb-g8 >(d-32)d16.<(a32)b-16.
   g8gg>g8<ggrb-g8 >(d-32)d16.<(a32)b-16.
   g8gg>g8<ggrb-g8 >(d-32)d16.<(a32)b-16.
   g8g8>g8<ggrb-g8 >dc<b-a
a8=g8>g8<gg>f8<gg>e-<g8g>e-d<
a9=g8>g8<gg>f8<gg>e-fdc<b-a
aa=g8>g8<gg>f8<gg>e-(gg4 g1 )g1

;==CORD

ps0=@15q6v9m5o3
z4=z4

b1=L8>
   i2(d4.i60)d4.ri2d
   i2(e-4.i60)e-4.ri2e-
   i2(c4.i60)c4.ri2c
   i2(e-2i60)e-2i2<
c1=L8
   i2(g4.i60)g4.ri2g
   i2(a-4.i60)a-4.ri2a-
   i2(f4.i60)f4.ri2f
   i2(g2i60)g2i2
b2=v8ddrd16d16ddrd16d16 ddrd16d16r2v9
c2=v8z0ddrd16d16ddrd16d16 ddrd16d16r2z4v9
d2=v8<ggrg16g16ggrg16g16 ggrg16g16ggrg16g16
   ggrg16g16ggrg16g16>
   L64o3v8
   @16(c<p13)c32.p>@20>(c<p13)c32.p@19(g<p13)c32.p>@18(e<p13)e32.p>
   @20>(c<p13)cp>(c<p13)cp>(c<p13)c32.p@19(g<p13)c32.p>@18(e<p13)e32.p>
   @16(c<p13)c32.p>(c<p13)c32.p>v6@3o8r16v8@16o3(c<p13)c32.p>
   @17(e<p13)e32.p>@16(c<p13)c32.p>L16v9@6rr
   v9@15o3m5
b3=@12iL16>   v8gb->e<a- v7>cf<a>d- v6f+<b->dg v5<b>e-a-b< < L8v8
c3=@12iL16>>> v7gb->e<a- v6>cf<a>d- v5f+<b->dg v4<b>e-a-b< <<<L8v8
d3=@12iL16> r v7gb->e<a- v6>cf<a>d- v5f+<b->dg v4<b>e-a-< < L8v8
b4=@14L16 v7 (b-2)b-32>(b-2)b-32(a2)a8 (f+af+a f+2i60)f+2i<
c4=@14L16 v7<(b-2)b-32>(b-2)b-32(a2)a8 (f+af+a f+2i60)f+2i
b5=L16 >>>>  v8b-agdv6<b-agd<b-agdv5<b-agd<
c5=L16 >>>>r v6b-agdv4<b-agd<b-agdv3<b-ag <
b6=@15b->v8L4 r(di60)dd r(di60)did r(di60)did
   d8.d8.d8 d8.d8.d8 L16 <
c6=@15>d v8L4 r(gi60)gig r(gi60)gig r(gi60)gig
   b-8.b-8.b-8 b-8.b-8.b-8 < L16
b7=@22q1v9L2r8
c7=@22q1v9L2r16
d7=@22q1v9L2
b8=>(ai60)ai (b-i60)b-i<
b9=>(ai60)ai (b-i60)b-4.iL16<
c8=>(gi60)gi (gi60)gi<
c9=>(gi60)gi (gi60)g4..iL16<
d8=>(di60)di (di60)di<
d9=>(di60)di (d4i60)d4iL16<
   v9L64o3m1
   >@20(c<p13)c32.p>(c<p13)c32.p>(c<p13)c32.p>(c<p13)c32.p>
   <@18(g<p13)c32.p>(g<p13)c32.p>(g<p13)c32.p>(g<p13)c32.p>
   v10L16o3m5
ba=@15q6 b-4a4a-8.(g )g8<g8>
ca=@15q6 f4e4e-8.(d )d8<d8>
bb=b-4a4a-8.(g g4 g2i60g2 )g2.r4i
cb=f4e4e-8.(d d4 d2i60d2 )d2.r4i

;==MELO

fm2=v13m5o4q6s1
@0a=v13o4@81
@0b=v12o4@81z1r8
@0c=v12o4@81
@0d=v12o5@48z2
@0e=v11o5@48z3r8
@0f=v11o5@48
@1a=v12o3@80
@1b=v10o3@80
@2v=v13o4@74
@2s=v11o4@74
@2a=v13o6@2
@2b=v11o6@2
@2c=v11o5@3
@2d=v9 o5@3
@3f=v11o4@6q
@3g=v10o4@5q
@3a=v12o4@76
@3b=v11o4@76
@4a=v13@9;@5
@4b=v11@9r8;@5
@4c=v13@80;@73
@4d=v11@80r8;@73
@6=@74

e1=L8<
   i2(g4i60g4.i60>g8.i90)g8.<
   i2(a-4i60a-4.i60>a-8.i90)a-8.<
   i2(f4i60f4.i60>f8.i90)f8.<
   i2(b-4i60>e-4b-4>)e-4<i
e2=iL16g8g8r8gg
e2a=>gfefecd<b-
e2b=>gfefecdg<
e3=L8i(b-i60)b-i>(e-i60)e-i(b-i60)b-i>(e-i60)e-i<<
f3=>L8i(fi60)fi(b-i60)b->i(fi60)fi(b-i60)b-i<<
e4=<Li(f64mp20f+64g4i60)g4i>(f64mp20f+64g4m5i60)g4i
   mp20(f+4f+16m5i60f+16)f+4mp20L16e-f+e-f+(e- e-4..m5i60)e-2
e5=i2<a
   b->cd4gab->(d4<<mp1)d4>r16pm5
e6=Lr8>m5i(ai60)aigr (f+i60)f+igr (ai60)aig L8>c.<b-.a b-.>c.<a< r4
f6=L  >m5i(di60)didr (di60)didr (di60)did L8d.d.d d.d.d< r4
g6=Lr8 m5i(gi60)gigr (gi60)gigr (gi60)gig L8b-.b-.b- b-.b-.b- r4
e7=>>>L16i(d4i60)d4id<b-ag(d4 i60)d4i<<gab->cde-fe-
   (e-32f32)e-(d2d8.i60d8. )d2r2
   L8ridab-4L16ab->c<b-ag< (g>da>)a8.(g4mp20)(d8m5i60)d4<<
   r8im5
e8=b-agd8. b-agd b-agd gab->dgab->dgab->cdgab-<<<
f8=b-agd8. b-agd b-agd gab->dgab->dgab->cdg<<<
e9=Lb-aa-8.(g8.<)g8>
f9=Lfee-8.(d8.<)d8>
ea=L>dd-c8.<(b-8.)d8
fa=Laa-g8.(f8.<)a8>
ga=Lfee-8.(d8.<)f8>
eb=>dd-c8.<(b-16b- b-2.i60b- )b-2.;r4
fb= aa-g8. (f16f f2.i60f )f2.;r4
gb= fee-8. (d16d d2.i60d )d2.;r4

;==RHYTHM

;fmr=l16v13vb15vm13y22, 92y38,3y23, 92y39,1y24, 92y40,2
fmw=L64q2s1z1o3@12v14
fmx=L64q6s1z1o2@12v13
fmy=L64q6s1z1o2@12v0

;r0=bsssssss
w0=(g<p40)c32.r4..>p
x0=r16q3v13@12(b<p40)d32.p>(b<p40)d32.p>(b<p40)d32.p>
   (b<p40)d32.p>(b<p40)d32.p>(b<p40)d32.p>(b<p40)d32.p>L16
y0=v0@5(c<p40)c32.p>@12v13(o4eo2p40)e32.p(o4eo2p40)e32.p(o4eo2p40)e32.p
   (o4eo2p40)e32.p(o4eo2p40)e32.p(o4eo2p40)e32.p(o4eo2p40)e32.p

;r1=bhhh s8bh bhhh shbh
w1=(g<p40)c32.r8.p> r8(g<p40)c32.r16p>
   (g<p40)c32.r8.p> r8(g<p40)c32.r16p>
x1=v0@2>>r16g16g16g16<< @12v13(b<p40)e32.r16p>v0@2>>r16g16<<
   v0@2>>r16g16g16g16<< @12v13(b<p40)e32.p>v0@2>>g16r16g16<<
y1=v0@5(c<p40)c32.r8.p> @12v13(o4eo2p40)e32.r16pv0@5(c<p40)c32.r16p>
   v0@5(c<p40)c32.r8.p> @12v13(o4eo2p40)e32.r16pv0@5(c<p40)c32.r16p>

;r2=bhhh s8bh bhhh shss
w2=(g<p40)c32.p>r8. r8(g<p40)c32.r16p>
   (g<p40)c32.p>r8. r4
x2=v0@2>>r16g16g16g16<< @12v13(b<p40)e32.r16p>v0@2>>g16g16<<
   v0@2>>r16g16g16g16<< @12v13(b<p40)e32.p>v0@2>>g16<<@12v13(b<p40)e32.p>(b<p40)e32.p>
y2=v0@5(c<p40)c32.p>r8. @12v13(o4eo2p40)e32.r16pv0@5(c<p40)c32.r16p>
   v0@5(c<p40)c32.p>r8. @12v13(o4eo2p40)e32.r16p(o4eo2p40)e32.p(o4eo2p40)e32.p

;r3=bhhh s8.b bhbh s8hh
w3=(g<p40)c32.r8.p> r8.(g<p40)c32.p>
   (g<p40)c32.r16p>(g<p40)c32.r16p> r4
x3=v0@2>>r16g16g16g16<< @2v13(b<p40)e32.r16p>r8
   v0@2>>r16g16r16g16<< @2v13(b<p40)e32.r16p>v0@2>>g16g16<<
y3=v0@5(c<p40)c32.r8.p> @12v13(o4eo2p40)e32.r8pv0@5(c<p40)c32.p>
   v0@5(c<p40)c32.r16p>(c<p40)c32.r16p> @12v13(o4eo2p40)e32.r8.p

;r4=c>c<ge >c32c32c<ge cc hc ec ss
w4=q2(g<p40)c32.p>>(g<p40)c32.p>(c<p40)g32.p(a+<p40)e32.p>
   q4>(g<p40)cp>(g<p40)cp>q2(g<p40)c32.p>(c<p40)g32.p(a+<p40)e32.p>
   (g<p40)c32.p>(g<p40)c32.pr16>(g<p40)c32.p>
   (a+<p40)e32.p>(g<p40)c32.p>r8q2
x4=v0@2>>r16g16g16g16<< @12v13(b<p40)e32.r16p>r8
   r8v0@2>>g16<<r16 r8@12v13(b<p40)e32.p>(b<p40)e32.p>
y4=v0@5(c<p40)c32.p>>(c<p40)c32.p(g<p40)g32.>p(e<p40)e32.p>
   >(c<p40)cp>(c<p40)cp>(c<p40)c32.p(g<p40)g32.>p(e<p40)e32.p>
   (c<p40)c32.p>(c<p40)c32.r16p>(c<p40)c32.p>
   (e<p40)e32.p>(c<p40)c32.p>@12v13(o4eo2p40)e32.(o4eo2p40)e32.p

;r5=bhhh bhhh bhhh ssss
w5=(g<p40)c32.p>r8. (g<p40)c32.p>r8.
   (g<p40)c32.p>r8. r4
x5=v0@2>>r16g16g16g16 r16g16g16g16
   r16g16g16g16<< @12v13(b<p40)e32.p>(b<p40)e32.p>(b<p40)e32.p>(b<p40)e32.p>
y5=v0@5(c<p40)c32.r8.p> (c<p40)c32.r8.p>
   (c<p40)c32.r8.p> @12v13(o4eo2p40)e32.p(o4eo2p40)e32.p(o4eo2p40)e32.p(o4eo2p40)e32.p

;r6=bhbh s8bh
w6=(g<p40)g32.r16p>(g<p40)g32.r16p> r8(g<p40)g32.r16p>
x6=v0@2>>r16g16r16g16<< @12v13(b<p40)e32.r16p>v0@2>>g16g16<<
y6=v0@5(c<p40)c32.r16p>(c<p40)c32.r16p> @12v13(o4eo2p40)e32.r16pv0@5(c<p40)c32.r16p>

;r7=bhbh shss
w7=(g<p40)c32.r16p>(g<p40)c32.r16p> r4
x7=v0@2>>r16g16g16g16<< @12v13(b<p40)e32.r16p>@12v13(b<p40)e32.p>@12v13(b<p40)e32.p>
y7=v0@5(c<p40)c32.r16p>(c<p40)c32.r16p> @12v13(o4eo2p40)e32.r16p(o4eo2p40)e32.p(o4eo2p40)e32.p

;r8=>cccc<gggg
w8=q2>(g<p40)c32.p>(g<p40)c32.p>(g<p40)c32.p>(g<p40)c32.p>
  (c<p40)g32.p>(c<p40)g32.p>(c<p40)g32.p>(c<p40)g32.pq2
x8=r4 r4
y8=v0@5>(c<p40)c32.p>(c<p40)c32.p>(c<p40)c32.p>(c<p40)c32.p
   (g<p40)g32.p>(g<p40)g32.p>(g<p40)g32.p>(g<p40)g32.p>

;r9=bhs8 bhs8 cc>ec8<g8e
w9=(g<p40)c32.r8.p> (g<p40)c32.r8.p>
   q2(g<p40)c32.p>(g<p40)c32.p>>(a+<p40)e32.p>
   (g<p40)c32.r16p>(c<p40)g32.r16p(a+<p40)e32.p>q2
x9=v0@2>>r16g16<<@12v13(b<p40)e32.r16p> v0@2>>r16g16<<@12v13(b<p40)e32.r16p> r2
y9=v0@5(c<p40)c32.r16p>@12v13(o4eo2p40)e32.r16p
   v0@5(c<p40)c32.r16p>@12v13(o4eo2p40)e32.r16p
   v0@5(c<p40)c32.p>(c<p40)c32.p>>(e<p40)e32.p>
   v0@5(c<p40)c32.r16p(g<p40)g32.r16p>(e<p40)e32.p>

;ra=bhs8 bhs8 cc>e (cy)&4
;   br8. r8br br8. r8ss
;   br8. r8br br8. rsss
wa=(g<p40)c32.r8.p> (g<p40)c32.r8.p>
   q2(g<p40)c32.p>(g<p40)c32.p>>(a+<p40)e32.pq2
   r16r4
   (g<p40)c32.r8.p> r8(g<p40)c32.r16p> (g<p40)c32.r8.p> r4
   (g<p40)c32.r8.p> r8(g<p40)c32.r16p> (g<p40)c32.r8.p> r4
xa=v0@2>>r16g16<<@12v13(b<p40)e32.r16p> v0@2>>r16g16<<@12v13(b<p40)e32.r16p>
   r8.v13q1(bp40<)d32. r4p>v13q3
   r2. r8(b<p40)e32.p>(b<p40)e32.p>
   r2. r16(b<p40)e32.p>(b<p40)e32.p>(b<p40)e32.p>
ya=v0@5(c<p40)c32.r16p>@12v13(o4eo2p40)e32.r16p
   v0@5(c<p40)c32.r16p>@12v13(o4eo2p40)e32.r16p
   v0@5(c<p40)c32.p>(c<p40)c32.p>(e<p40)e32.p>
   @12v13o4q1g16r4o2q6
   v0@5(c<p40)c32.r8.p> r8(c<p40)c32.r16p>
   (c<p40)c32.r8.p> r8@12v13(o4eo2p40)e32.p(o4eo2p40)e32.p
   v0@5(c<p40)c32.r8.p> r8(c<p40)c32.r16p>
   (c<p40)c32.r8.p> r16@12v13(o4eo2p40)e32.p(o4eo2p40)e32.p(o4eo2p40)e32.p
