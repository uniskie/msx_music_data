; YS II  ¢ COMPANILE OF LANE £
; voice2.vcd
FM1 =t,;a0
       fm0,a1/3,a2,a1/3,a2,a3,a4,a3,a5,a1/3,a2,a1/3,a2,a0/2,a7/4,a8/3,a9,a8/3,aa
FM2 =t,;a0
       fm1,a1/3,a2,a1/3,a2,ae,a4,ae,a5,a1/3,a2,a1/3,a2,a0/2,a7/4,a8/3,a9,a8/3,aa
FM3 =t,;a0
       fm2,@0a,e1/2,@1a,e2/3,e2a,e2/3,e2b,@0a,e1/2,@8a,e3,@2a,e4,@3a,e5,@4a,e6,@5a,e7,e8,@6a,e9/2,ea/2,e9/2,ea,eb
FM4 =t,;a0
       fm2,@0b,e1/2,@1b,e2/3,e2a,e2/3,e2b,@0c,e1/2,@8b,e3,@2b,e4,@3b,e5,@4b,f6,@5b,e7,f8,@6b,e9/2,ea/2,e9/2,ea,eb
FM5 =t,;a0
       fm2,@0d,e1/2,@1a,e2/3,e2a,e2/3,e2b,@0d,e1/2,@8a,f3,@2c,e4,@3a,e5,@4a,g6,@5c,e7,e8,@6a,f9/2,fa/2,f9/2,fa,fb
FM6 =t,;a0
       fm2,@0e,e1/2,@1b,e2/3,e2a,e2/3,e2b,@0f,e1/2,@8b,f3,@2d,e4,@3b,e5,@4b,e6,@5d,e7,f8,@6b,f9/2,ga/2,f9/2,ga,gb
FMR =
FM7 =t,;fmw,w0
       fmw,w1/3,w2,w1/3,w2,w3/3,w4,w1/3,w2,w1/3,w2,w5,w6/7,w7,w6/7,w7,w6/7,w7,w6/7,w8,w9/7,wa
FM8 =t,;fmw,x0
       fmw,x1/3,x2,x1/3,x2,x3/3,x4,x1/3,x2,x1/3,x2,x5,x6/7,x7,x6/7,x7,x6/7,x7,x6/7,x8,x9/7,xa
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

t=y14,32
  t250r64
  t146
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

ps0=@15q6v10m5o3
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
b2=v9ddrd16d16ddrd16d16 ddrd16d16r2v10
c2=v9z0ddrd16d16ddrd16d16 ddrd16d16r2z4v10
d2=v9<ggrg16g16ggrg16g16 ggrg16g16ggrg16g16
   ggrg16g16ggrg16g16>
   L64o3v11
   @16(c<p13)c32.p>@20>(c<p13)c32.p@19(g<p13)c32.p>@18(e<p13)e32.p>
   @20>(c<p13)cp>(c<p13)cp>(c<p13)c32.p@19(g<p13)c32.p>@18(e<p13)e32.p>
   @16(c<p13)c32.p>(c<p13)c32.p>v8@3o8r16v9@16o3(c<p13)c32.p>
   @17(e<p13)e32.p>@16(c<p13)c32.p>L16v8@6rr
   v10@15o3m5
b3=@12iL16>   v9gb->e<a- v8>cf<a>d- v7f+<b->dg v6<b>e-a-b< < L8v9
c3=@12iL16>>> v8gb->e<a- v7>cf<a>d- v6f+<b->dg v5<b>e-a-b< <<<L8v9
d3=@12iL16> r v8gb->e<a- v7>cf<a>d- v6f+<b->dg v5<b>e-a-< < L8v9
b4=@14L16 v8 (b-2)b-32>(b-2)b-32(a2)a8 (f+af+a f+2i60)f+2i<
c4=@14L16 v8<(b-2)b-32>(b-2)b-32(a2)a8 (f+af+a f+2i60)f+2i
b5=L16 >>>>  v9b-agdv7<b-agd<b-agdv5<b-agd<
c5=L16 >>>>r v7b-agdv5<b-agd<b-agdv3<b-ag <
b6=@15b->v9L4 r(di60)dd r(di60)did r(di60)did
   d8.d8.d8 d8.d8.d8 L16 <
c6=@15>d v9L4 r(gi60)gig r(gi60)gig r(gi60)gig
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
   v11L64o3m1
   >@20(c<p13)c32.p>(c<p13)c32.p>(c<p13)c32.p>(c<p13)c32.p>
   <@18(g<p13)c32.p>(g<p13)c32.p>(g<p13)c32.p>(g<p13)c32.p>
   v11L16o3m5
ba=@15q6 b-4a4a-8.(g )g8<g8>
ca=@15q6 f4e4e-8.(d )d8<d8>
bb=b-4a4a-8.(g g4 g2i60g2 )g2.r4i
cb=f4e4e-8.(d d4 d2i60d2 )d2.r4i

;==MELO

fm2=v13m5o4q6
@0a=v13o4@81
@0b=v12o4@81z1r8
@0c=v12o4@81
@0d=v12o5@48z2
@0e=v11o5@48z3r8
@0f=v11o5@48
@1a=v12o3@80
@1b=v10o3@80
@8a=v10o5@3
@8b=v9 o5@3
@2a=v13o5@83
@2b=v12o5@83
@2c=v11o5@6
@2d=v10o5@6
@3a=v12o4@84q8
@3b=v11o4@84q8
@4a=v13o4@82q6
@4b=v12o4@82q6; YS2PIANO2
@5a=v13o4@73  
@5b=v12o4@73r8
@5c=v12o4@6   
@5d=v11o4@6 r8
@6a=@74
@6b=@16

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
   mp20(f+4f+16m5i60f+16f+4 mp20L16e-f+e-f+e- e-4..m5i60)e-2
e5=i2<a
   b->cd4gab->(d4<<mp1)d4>r16pm5
e6=Lr8>m5i(ai60)aigr (f+i60)f+igr (ai60)aig L8>c.<b-.a b-.>c.<a< r4
f6=L  >m5i(di60)didr (di60)didr (di60)did L8d.d.d d.d.d< r4
g6=Lr8 m5i(gi60)gigr (gi60)gigr (gi60)gig L8b-.b-.b- b-.b-.b- r4
e7=>>L16i(d4i60)d4id<b-ag(d4 i60)d4i<<gab->cde-fe-
   (e-32f32)e-(d2d8.i60d8. )d2r2
   L8ridab-4L16ab->c<b-ag< (g>da>)a8.(g4mp20)(d8m5i60)d4<
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
fmw=L64q1s1o3
;fmx=L64s1o3
fmy=L64q2s0o2

;r0=bsssssss
w0=(b<p32)g32.r4..>p
x0=r16@5v12q2(c<p16)c32.p>(c<p16)c32.p>(c<p16)c32.p>
   (c<p16)c32.p>(c<p16)c32.p>(c<p16)c32.p>(c<p16)c32.p>
y0=v0@5(r<p16)r32.p>@5v12(c<p10)c32.>p(c<p10)c32.>p(c<p10)c32.>p
   (c<p10)c32.>p(c<p10)c32.>p(c<p10)c32.>p(c<p10)c32.>p

;r1=bhhh s8bh bhhh shbh
w1=(b<p32)g32.r8.p> r8(b<p32)g32.r16p>
   (b<p32)g32.r8.p> r8(b<p32)g32.r16p>
x1=v0@3q8>r16g16g16g16< @5v12q2(c<p16)c32.r16p>v0@3q8>r16g16<
   v0@3q8>r16g16g16g16< @5v12q2(c<p16)c32.p>v0@3q8>g16r16g16<
y1=v0@5(r<p16)r32.r8.p> @5v12(c<p10)c32.>r16pv0@5(r<p16)r32.r16p>
   v0@5(r<p16)r32.r8.p> @5v12(c<p10)c32.>r16pv0@5(r<p16)r32.r16p>

;r2=bhhh s8bh bhhh shss
w2=(b<p32)g32.p>r8. r8(b<p32)g32.r16p>
   (b<p32)g32.p>r8. r4
x2=v0@3q8>r16g16g16g16< @5v12q2(c<p16)c32.r16p>v0@3q8>g16g16<
   v0@3q8>r16g16g16g16< @5v12q2(c<p16)c32.p>v0@3q8>g16<@5v12q2(c<p16)c32.p>(c<p16)c32.p>
y2=v0@5(r<p16)r32.p>r8. @5v12(c<p10)c32.>r16pv0@5(r<p16)r32.r16p>
   v0@5(r<p16)r32.p>r8. @5v12(c<p10)c32.>r16p(c<p10)c32.>p(c<p10)c32.>p

;r3=bhhh s8.b bhbh s8hh
w3=(b<p32)g32.r8.p> r8.(b<p32)g32.p>
   (b<p32)g32.r16p>(b<p32)g32.r16p> r4
x3=v0@3q8>r16g16g16g16< @3v12q1(c<p16)c32.r16p>r8
   v0@3q8>r16g16r16g16< @3v12q1(c<p16)c32.r16p>v0@3q8>g16g16<
y3=v0@5(r<p16)r32.r8.p> @5v12(>f<<p10)c32.r8p>v0@5(r<p16)r32.p>
   v0@5(r<p16)r32.r16p>(r<p16)r32.r16p> @5v12(>f<<p10)c32.>r8.p

;r4=c>c<ge >c32c32c<ge cc hc ec ss
w4=(b<p32)g32.p>>(b<p32)g32.p>(c<p16)g32.p(a+<p16)e32.p>
   q3>(g<p16)cp>(g<p16)cp>q1(g<p16)c32.p>(c<p16)g32.p(a+<p16)e32.p>
   (g<p16)c32.p>(g<p16)c32.pr16>(g<p16)c32.p>
   (a+<p16)e32.p>(g<p16)c32.p>r8
x4=v0@3q8>r16g16g16g16< @5v12q2(c<p16)c32.r16p>r8
   r8v0@3q8>g16<r16 r8@5v12q2(c<p16)c32.p>(c<p16)c32.p>
y4=v0@5(r<p16)r32.p>>(c<p16)c32.p(g<p16)g32.>p(e<p16)e32.p>
   >(c<p16)cp>(c<p16)cp>(c<p16)c32.p(g<p16)g32.>p(e<p16)e32.p>
   (c<p16)c32.p>(c<p16)c32.r16p>(c<p16)c32.p>
   (e<p16)e32.p>(c<p16)c32.p>@5v12(c<p10)c32.>(c<p10)c32.>p

;r5=bhhh bhhh bhhh ssss
w5=(b<p32)g32.p>r8. (b<p32)g32.p>r8.
   (b<p32)g32.p>r8. r4
x5=v0@3q8>r16g16g16g16 r16g16g16g16
   r16g16g16g16< @5v12q2(c<p16)c32.p>(c<p16)c32.p>(c<p16)c32.p>(c<p16)c32.p>
y5=v0@5(r<p16)r32.r8.p> (c<p16)c32.r8.p>
   (c<p16)c32.r8.p> @5v12(c<p10)c32.>p(c<p10)c32.>p(c<p10)c32.>p(c<p10)c32.>p

;r6=bhbh s8bh
w6=(b<p32)g32.r16p>(b<p32)g32.r16p> r8(b<p32)g32.r16p>
x6=v0@3q8>r16g16r16g16< @5v12q2(c<p16)c32.r16p>v0@3q8>g16g16<
y6=v0@5(r<p16)r32.r16p>(c<p16)c32.r16p> @5v12(c<p10)c32.>r16pv0@5(r<p16)r32.r16p>

;r7=bhbh shss
w7=(b<p32)g32.r16p>(b<p32)g32.r16p> r4
x7=v0@3q8>r16g16g16g16< @5v12q2(c<p16)c32.r16p>@5v12q2(c<p16)c32.p>@5v12q2(c<p16)c32.p>
y7=v0@5(r<p16)r32.r16p>(c<p16)c32.r16p> @5v12(c<p10)c32.>r16p(c<p10)c32.>p(c<p10)c32.>p

;r8=>cccc<gggg
w8=>(g<p16)c32.p>(g<p16)c32.p>(g<p16)c32.p>(g<p16)c32.p>
  (c<p16)g32.p>(c<p16)g32.p>(c<p16)g32.p>(c<p16)g32.p
x8=r4 r4
y8=v0@5>(c<p16)c32.p>(c<p16)c32.p>(c<p16)c32.p>(c<p16)c32.p
   (g<p16)g32.p>(g<p16)g32.p>(g<p16)g32.p>(g<p16)g32.p>

;r9=bhs8 bhs8 cc>ec8<g8e
w9=(b<p32)g32.r8.p> (b<p32)g32.r8.p>
   (g<p16)c32.p>(g<p16)c32.p>>(a+<p16)e32.p>
   (g<p16)c32.r16p>(c<p16)g32.r16p(a+<p16)e32.p>
x9=v0@3q8>r16g16<@5v12q2(c<p16)c32.r16p> v0@3q8>r16g16<@5v12q2(c<p16)c32.r16p> r2
y9=v0@5(r<p16)r32.r16p>@5v12(c<p10)c32.>r16p
   v0@5(r<p16)r32.r16p>@5v12(c<p10)c32.>r16p
   v0@5(r<p16)r32.p>(c<p16)c32.p>>(e<p16)e32.p>
   v0@5(r<p16)r32.r16p(g<p16)g32.r16p>(e<p16)e32.p>

;ra=bhs8 bhs8 cc>e (cy)&4
;   br8. r8br br8. r8ss
;   br8. r8br br8. rsss
wa=(b<p32)g32.r8.p> (b<p32)g32.r8.p>
   (g<p16)c32.p>(g<p16)c32.p>>(a+<p16)e32.p
   r16r4
   (b<p32)g32.r8.p> r8(b<p32)g32.r16p> (b<p32)g32.r8.p> r4
   (b<p32)g32.r8.p> r8(b<p32)g32.r16p> (b<p32)g32.r8.p> r4
xa=v0@3q8>r16g16<@5v12q2(c<p16)c32.r16p> v0@3q8>r16g16<@5v12q2(c<p16)c32.r16p>
   r8.v12(c<p16)c32. r4p>v12
   r2. r8(c<p16)c32.p>(c<p16)c32.p>
   r2. r16(c<p16)c32.p>(c<p16)c32.p>(c<p16)c32.p>
ya=v0@5(r<p16)r32.r16p>@5v12(c<p10)c32.>r16p
   v0@5(r<p16)r32.r16p>@5v12(c<p10)c32.>r16p
   v0@5(r<p16)r32.p>(c<p16)c32.p>(e<p16)e32.p>
   @5v11o4g16r4o2
   v0@5(r<p16)r32.r8.p> r8(c<p16)c32.r16p>
   (c<p16)c32.r8.p> r8@5v12(c<p10)c32.>p(c<p10)c32.>p
   v0@5(r<p16)r32.r8.p> r8(c<p16)c32.r16p>
   (c<p16)c32.r8.p> r16@5v12(c<p10)c32.>p(c<p10)c32.>p(c<p10)c32.>p
