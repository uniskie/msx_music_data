; YS II
;  ¢ PALACE OF SALMON £
; voice2.vcd
FM1 =t,fm0,a0/4,a1/4,a2/4,a1/2,a3/2,a0/4,a1/4,a2/2,a1/2,a0/4
           a0/4,a1/4,a2/4,a1/2,a3/2,a0/4,a1/4,a2/2,a1/2,a0/4
           a4,a5,a4,a6,a4,a5,a4,a3/8
FM2 =t,fm1,a0/4,a1/4,a2/4,a1/2,a3/2,a0/4,a1/4,a2/2,a1/2,a0/4
           a0/4,a1/4,a2/4,a1/2,a3/2,a0/4,a1/4,a2/2,a1/2,a0/4
           a4,a5,a4,a6,a4,a5,a4,a3/8
FM3 =t,fm2,@f0,b0,b1,@f0,b0,b2,@f2,b3,b4,@f4,b5,@f2,b3,b6,@f4,b7 ,@f2,b3,b4',@f4,b5,@f2,b3,b8
FM4 =t,fm3,@f0,b0,c1,@f0,b0,c2,@f2,b3,b4,@f4,b5,@f2,b3,c6,@f4,b7',@f2,b3,b4',@f4,b5,@f2,b3,c8
FM5 =t,fm4,@f1,b0,b1,@f1,b0,b2,@f3,b3,b4,@f5,c5,@f3,b3,b6,@f5,c7 ,@f3,b3,b4',@f5,c5,@f3,b3,b8
FM6 =t,fm5,@f1,b0,c1,@f1,b0,c2,@f3,b3,b4,@f5,c5,@f3,b3,c6,@f5,c7',@f3,b3,b4',@f5,c5,@f3,b3,c8
FMR =
FM7 =t,fmu,u0/7,u1,u0/7,u2,u0/7,u1,u0/7,u3,u4/3,u5/2,u4/3,u5/2,u4/3,u5/2,u4/2,u6
FM8 =
FM9 =
PSG1=t,ps0,d0/2,d1,d2,d3,d1,d4,d3,d1,d5,d3,d1,d6,d7
PSG2=t,ps1,d0/2,d1,d2,d3,d1,d4,d3,d1,d5,d3,d1,d6
PSG3=t,psr,s0/7,s1,s0/7,s2,s0/7,s1,s0/7,s3,s4/3,s5/2,s4/3,s5/2,s4/3,s5/2,s4/2,s6
SCC1=
SCC2=
SCC3=
SCC4=
SCC5=

t=y14,32 
  t255r64
  t155

;** base
fm0=@33q1s1 v13 o2 l16 z10
fm1=@14q1s0 v13 o2 l16 z

a0=a8aa
a1=g8gg
a2=f8ff
a3=e8ee
a4=ffff>f<ff>f<r2 gggg>g<gg>g<r2
a5=>cccc>c<cc>c<<r2 aaaa>a<aa>a<gggg>g<gg>g<
a6=aaaa>a<aa>a<r2 aaaa>a<aa>a<gggg>g<gg>g<

;** merody
fm2=@77 q6s1 v13 o4 m5 z
fm4=@9  q6s1 v12 o4 m5 z1
fm3=@77 q6s1 v11 o4 m5 r8z2
fm5=@9  q6s1 v10 o4 m5 r8z3
@f0=@77 q7s1 o4
@f1=@9  q7s1 o4
@f2=@78 q6s1 o4
@f3=@5  q7s1 o4
@f4=@79 q6s1 o4
@f5=@79 q6s1 o4
b0=l8(e.i60)e.ia16b16>c.d.e (d.i60)d.ic16d16<(b4i60)b4i
    >(c.i60)c.i<b16a16(e4i60)e4i >(d.i60)d.iil16cdedc<bab>cd
   l8(e.i60)e.ia16b16>c.d.e (d.i60)d.i<b16>c16
b1=(d4i60)d4i      (c.i60)c.i<b16a16b.a.g (a2i60)a2i<
c1=(d4i60)d8i v13 <(a.i60)a.ig16f16g.f.d (e2i60)e2i<
   v11r8
b2=d.c.<b    (a.i60)a.ib16>c16d.g.b (a2i60)a2i<<
c2=d.c.< v13 (f.i60)f.ig16g16g.a.b (e2i60)e2i<
   v11r8
;c2=d.c.<b    (f.i60)f.ig16g16g.a.b (e2i60)e2<i

b3=>l16(f4i60)f4ir<a>cfafcf<
b4=>l8(g4i60)g4id.e.f (e.i60)e.id16e16(c4i60)c4i<
b4'=>l8(g4i60)g4id.e.d (e.i60)e.id16e16(c4i60)c4i<
;c4=>l8(g4i60)g4id.e.f (e.i60)e.id16e16(c4i60)c8i< v13
b5=>(a.i60)a.ia16b16>(c4i60)c4i<<
c5=>(e.i60)e.ie16g+16((a4i60)a4i< ;v11r8
b6=>l8(g4i60)g4ib4>d4      c.<b.(a.ai60a16)a4i<
c6=>l8(g4i60)g4ib4>d8 v13 <a.g.(e.ei60e16)e4i< v11 r8
;c6=>l8(g4i60)g4ib4>d4     <a.g.(e.ei60e16)e4i< 
b7=>a.g.e.d.c8<a8><
c7=>e.d.c.<b.a8e8>< ;v11 r8
b7'=>a.g.e.d.c8<r8><
c7'=>e.d.c.<b.a8r8><
b8=>l(gi60)gi
       b>d (e2i40e2 i60e2)e2i<
c8=>l(gi60)g8i
   v13 gb  (b2i40b2 i60b2)b2i<

;** sub
ps0=@23 v10 o4 z
ps1=@23 v9 o4 r8z9
d0=m5il8
   r4e4a.b.>c <b4g4d.g.b (a4i60)a4i(c.i60)c.if16a16 (g4i60)g4i(g+4i60)g+4i
   a4e4a.b.>c <(b.i60)b.ig16a16b.>c.d <(f.i60)f.ig16a16g.a.b l16afab>c<b>cdedegaec<a
d1=f<a>cfacfara8.g8f8 (g4i60)g4i8r<b>dgbagb
d2=>(c2<<mp2)d2>m5i
d4= (a2<<mp2)a2>m5i>
d5=>(c2<<mp2)c2>m5i
d3=<a>ceacea>c<ea>ce<a>cea<
d6= (g2<<mp2)g+2>m5i g+b>eg+<b>eg+beg+b>e<g+b
d7=>eg+

;** rhythm
fmr=v13vb15vm15vh8
    y22,219 y38,3
    y23,155 y39,1
    y24,175 y40,2
r0=bh16h16h16h16ms16h16h16h16
r1=bh16h16h16h16bh16ms16ms16ms16
r2=ms16ms16h16ms16y23,135y24,155ms8y23,115y24,135ms8y23,155y24,175
r3=ms16ms16ms16ms16y23,135y24,155ms16ms16y23,115y24,135ms16ms16y23,155y24,175
r4=hb16h16bh16h16ms16h16h16ms16h4h4
r5=hb16h16bh16h16ms16h16h16ms16
r6=hb16h16h16h16bh4bh4bh4 
   y23,175y24,195ms16y23,135y24,155ms16y23,115y24,135ms16y23,175y24,195ms16y23,135y24,155ms16y23,115y24,135ms16y23,175y24,195ms16y23,135y24,155ms16
   y23,175y24,195ms16ms16ms16ms16ms16y23,135y24,155ms16y23,115y24,135ms8

fmu=@23v14 o3 l64 q1s1 z0 ;bass drum
u0=v13(d<<p24)c32.p>>r16(d<<p24)c32.p>>(d<<p24)c32.p>>>v13(d<<p24)c16..p>><v13(d<<p24)c32.p>>r16
u1=v13(d<<p24)c32.p>>r16(d<<p24)c32.p>>r16(d<<p24)c32.p>>>v13(d<<p24)c32.p>>(d<<p24)c32.p>>(d<<p24)c32.p>><
u2=v13>(d<<p24)c32.p>>(d<<p24)c32.p>>r16(d<<p24)c32.p>><
   v15>
   (g<<p24)g32.p>>(e<<p24)e32.p>>(c<<p24)c32.p>><(a<<p24)a32.p>>>
   v14<
u3=v14>
   q2(g<<p24)gp>>(g<<p24)gp>>q1(g<<p24)g32.p>>(g<<p24)g32.p>>(g<<p24)g32.p>>
   (e<<p24)e32.p>>(e<<p24)e32.p>>(c<<p24)c32.p>>(c<<p24)c32.p>>
   v14<
u4=v13(d<<p24)c32.p>>r16(d<<p24)c32.p>>r16>v13(e<<p24)c32.p>>r16r16v12(e<<p24)c32.p>><r2
u5=v12(d<<p24)c32.p>>r16(d<<p24)c32.p>>r16>v12(e<<p24)c32.p>>r16r16v12(e<<p24)c32.p>><
u6=r1 v14>
   (g<<p24)g32.p>>(e<<p24)e32.p>>(c<<p12)c32.p>>
   (g<<p24)g32.p>>(e<<p24)e32.p>>(c<<p124)c32.p>>
   (g<<p24)g32.p>>(e<<p24)e32.p>>
   q2(g<<p24)gp>>(g<<p24)gp>>q1(g<<p24)g32.p>>(g<<p24)g32.p>>(g<<p24)g32.p>>
   (e<<p24)e32.p>>(e<<p24)e32.p>>(c<<p24)c32.p>>(c<<p24)c32.p>>
   < v14

psr=v9 l16m1 q4 o2
s0=v9@5ccccv9(@21d64@6)d32.pv9@5ccc
s1=v9@5cccccv9(@21d64@6)d32.(@21d64@6)d32.(@21d64@6)d32.
s2=v10@6(@21d64@6)d32.(@21d64@6)d32.v9@5cv10(@21d64@6)d32.v9@5ccv9(@21d64@6)d32.(@21d64@6)d32.
   ;l64v7@20o2(d<p13)d16..p>(c<p13)c16..p>l16v9 o2
;s3=r2
s3=l64v3o2@20
   (g<p12)gp>(g<p12)gp>(g<p12)g32.p>(g<p12)g32.p>(g<p12)g32.p>
   (e<p12)e32.p>(e<p12)e32.p>(c<p12)c32.p>(c<p12)c32.p>
   l16 o2
s4=v9@5ccccv10(@21d64@6)e32.v9@5ccv9(@21d64@6)e32. v9@5cr8.cr8.
s5=v9@5ccccv9(@21d64@6)e32.v9@5ccv9(@21d64@6)e32.
s6=r1
   l64v2o2@20
   (g<p12)g32.p>(e<p12)e32.p>(c<p12)c32.p>
   (g<p12)g32.p>(e<p12)e32.p>(c<p12)c32.p>
   (g<p12)g32.p>(e<p12)e32.p>
   (g<p12)gp>(g<p12)gp>(g<p12)g32.p>(g<p12)g32.p>(g<p12)g32.p>
   (e<p12)e32.p>(e<p12)e32.p>(c<p12)c32.p>(c<p12)c32.p>
   <l16 o2

