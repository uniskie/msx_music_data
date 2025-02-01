;**************************************
;*  GRADIUS II -3  [ TABIDACHI ]      *
;**************************************
FM1 =t,fm0,a0,fm0a,a1,fm0b,a2,fm0c,a3,a4
FM2 =t,fm1,b0,fm0a,b1,fm0b,b2,fm0c,b3,b4
FM3 =t,fm2,a0,fm0a,a1,fm0b,a2,fm0c,a3
FM4 =t,fm3,b0,fm0a,b1,fm0b,b2,fm0c,b3
FM5 =t,fm4,c0/8,c1/2,c2,fm4c,a3,a4
FM6 =t,fm5,d0,fm5a,d1,fm5b,d2
FMR =
FM7 =t,fm6,e0,fm6a,e1/8,e2/8,e3/8,e4/2,e5
FM8 =t,fm7,f0/3,f1,f2/5,f3,f4
FM9 =t,fm8,f0/3,f1,f2/5,f3,f4
PSG1=t,ps0,a0,a1,a2,a3,a4
PSG2=t,ps1,e0,e1/8,e2/8,e3/8,e4/2,e5
PSG3=t,ps2,g0/3,g1,g2/5,g3,g4
SCC1=t,sc0,c0/8,c1/2,c2,a3,a4
SCC2=t,sc1,e0,e1/8,e2/8,e3/8,e4/2,e5
SCC3=t,sc2,d0,d1,d2
SCC4=t,sc3,a0,a1,sc3b,a2,sc3c,a3,a4
SCC5=t,sc4,b0,b1,sc3b,b2,sc3c,b3,b4

T=t184

;ƒƒƒ part 1 ƒƒƒ
fm0=@6v12o6
fm1=@6v12o5
fm2=@6v10o6r8.z13
fm3=@6v10o5r8.z13
ps0=o5@11q6v8 z1
sc3=o4@8v08q6
sc4=o3@8v08q6

fm0a=@24
fm0b=@9
fm0c=@14
sc3b=@10
sc3c=@13

a0=m4l8c4r(<b-2i60b-)b-2iagfar(g2.i60g)g2il32(g+aa+b>cc+dd+eff+gg+aa+)b
b0=m4l8g4r(f2i60f)f2ifedfr(e2.i60g)e2il32(d+eff+gg+aa+b>cc+dd+ef)f+

a1=m4>l8c4r<(b-2i50b-)b-2iagfar(g2..i50)g1i
b1=m4l8g4r(f2i50f)f2ifedfr(e2..i50)e1i

a2= m4efg(c2i50c)c2i0efgcefgc4>c(c4.i50)c4.i0<efgce-fgc4>(c2i50)c4.i0e-fgc
b2=>m4efg(c2i50c)c2i0efgcefgc4>c(c4.i50)c4.i0<efgce-fgc4>(c2i50)c4.i0e-fgc<

a3=rcc<rbbrb-b-ra(a4i50)a4.i0rb-b-raara-a-rg(g4i50)gil32(g-fi50
a4=ee-dd-c<)b
b3=r<g-g-rffreere-(e-4i50)e-4.i0reere-e-rddrd-(d-4i50)d-il32(c<bi50
b4=b-aa-gg-)f

;ƒƒƒ part 2 ƒƒƒ
fm4=@16o5v9
sc0=@15o4v6q6

c0=l16cg>c<cg>c<cg>c<cg>c<cg>c<c
c1=>r2l8efgcr>m1p19(c4m4i50c)c2i<<
c2=>r2e-fgcr>m1p29(c4m4i50c)c2i<<

fm4c=@14

;ƒƒƒ part 3 ƒƒƒ
fm5=o5@12v12 z10
sc2=o4@8v07 z2

d0=m4l8c4r<(b-2i50b-)b-2iagfar(g4i50)gi(c4i50)c4i(g4i50)gi>(c4.i50)c4i
   c4r<(b-2i50b-)b-2iagfar(g4i50)gi(c4i50)c4i<(g4i50)gi>(c4.i50)c4i>
fm5a=@16
d1=(b-2.i50)b-2.i>(f4i50)f4i(e2i50)e2i<(g2i50)g2i(a-4.i50)a-2>c16d16
   (e-4i50)e-4d4c4
fm5b=@2
d2=<g>d-d-<g>d-d-<g>d-d-<g>d-d-
   l16(fee-dd-c<b)b-l8<g>d-d-<g>d-d-<g>d-g>d-d-<g>d-d-<g>d-

;ƒƒƒ part 4 ƒƒƒ
fm6=@6v15q6s1o3
ps1=v11@17q6o2 z2
sc1=v13@11q6o2

e0=l8c1...f16g16>c2<b-2a4.d16e16f.d.g
   c1...f16g16>c2<b-2a4.d16e16f.d.g16d16
fm6a=@12v13q6s1<
e1=b->b-16b-16<
e2=a>a16a16<
e3=a->a-16a-16<
e4=g>gg<g>gg<g>d-<
e5=g>gg<g>d-d-<g>gg<g>g<g>e-<g>d-<g

;ƒƒƒ part 5 (drums) ƒƒƒ
fm7=v15o1z10
fm8=v15o1
ps2=v11o2q6

f0=l8@91a>@87eer<@91aa>@87e@86e<@91a>@87eer<@91aa>@90c@86e<
f1=@91a>@87ee4<@91aa>@87e@86e<@91a>@87ee4@92l16bbbbl8gg<
f2=@91aa>@90c@87e<@91a>@87e@90c@86e<
f3=@91aa>@90c@87e@90c@87e@90c@86e<
f4=@91a>@90cc<@91a>@92bb<@91a>@92aa<@91a>@92gg@87l16eeeel8@86e4<@91a>@90cc<@91a>@92bb<@91a>@92aa<@91a>@92ff@90l16ccccc4

g0=l8@1a@07>ee4@1<aa@07>e@06e@1<a@07>ee4@1<aa@0>c@06e
g1=@1<a@07>ee4@1<aa@07>e@06e@0<b@07>ee4@21l16bbbbl8@24gg
g2=@1<aa@0>c@07e@1<a@07>e@0c@06e
g3=@1<aa@0>c@07e@0c@07e@0c@06e
g4=@1<a@0>cc@1<a@21>bb@1<a@22>aa@1<a@24>gg@07l16eeeel8@06e4@1<a@0>cc@1<a@21>bb@1<a@22>aa@1<a@25>ff@0l16ccccc4

