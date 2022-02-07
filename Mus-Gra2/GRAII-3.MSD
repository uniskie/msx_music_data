;**************************************
;*  GRADIUS II -3  [ TABIDACHI ]      *
;**************************************
FM1 =t,fm0,a0,fm0a,a1,fm0b,a2,a3,a4
FM2 =t,fm1,b0,fm0a,b1,fm0b,b2,b3,b4
FM3 =t,fm2,a0,fm0a,a1,fm0b,a2,a3
FM4 =t,fm3,b0,fm0a,b1,fm0b,b2,b3
FM5 =t,fm4,c0/4,c0/4,c1/2,c2,a3,a4
FM6 =t,fm5,d0,d1,d2,d3
FMR =
FM7 =t,fm6,e0,e1,e2/8,e3/8,e4/8,e5/2,e6
FM8 =t,fm7,f0/3,f1,f2/5,f3,f4
FM9 =t,fm8,f0/3,f1,f2/5,f3,f4
PSG1=t,ps0,a0,a1,a2,a3,a4
PSG2=t,ps1,e0,e1,e2/8,e3/8,e4/8,e5/2,e6
PSG3=t,ps2,g0/3,g1,g2/5,g3,g4
SCC1=t,sc0,c0/4,c0/4,c1/2,c2,a3,a4
SCC2=t,sc1,e0,e1,e2/8,e3/8,e4/8,e5/2,e6
SCC3=t,sc2,d0,d1,d2,d3
SCC4=t,sc3,a0,a1,a2,a3,a4
SCC5=t,sc4,b0,b1,b2,b3,b4

T=t184

;ƒƒƒ part 1 ƒƒƒ
fm0=@6v13o6
fm1=@6v13o4
fm2=@6v11o5r8z10
fm3=@6v11o4r8z10
ps0=o4@11q6v11
sc3=o4@10v13q6
sc4=o3@10v13q6z3

fm0a=@14q6s1
fm0b=@6q6s1

a0=m4l8c4r(<b-2i60b-)b-2iagfar(g2.i60g)g2il32(g+aa+b>cc+dd+eff+gg+aa+)b
b0=m4l8g4r(f2i60f)f2ifedfr(e2.i60g)e2il32(d+eff+gg+aa+b>cc+dd+ef)f+

a1=m4>l8c4r<(b-2i50b-)b-2iagfar(g2..i50)g1i
b1=m4l8g4r(f2i50f)f2ifedfr(e2..i50)e1i

a2=m4efg(c2i50c)c2i0efgcefgc4>c(c4.i50)c4.i0<efgce-fgc4>(c2i50)c4.i0e-fgc
b2=m4e.fg(c2i50c)c2i0efgcefgc4>c(c4.i50)c4.i0<efgce-fgc4>(c2i50)c4.i0e-fgc16

a3=r>cc<rbbrb-b-ra(a4i50)a4.i0rb-b-raara-a-rg(g4i50)gil32(g-fi50ee-
a4=dd-c<)b
b3=rg-g-rffreere-(e-4i50)e-4.i0reere-e-rddrd-(d-4i50)d-il32(c<bi50b-a
b4=a-gg-)f

;ƒƒƒ part 2 ƒƒƒ
fm4=@0o4v12
sc0=@14o3v13q6

c0=l16cg>c<cg>c<cg>c<cg>c<cg>c<c>
c1=v13r2l8<efgc>r(c4m4i50c)c2i
c2=r2<e-fgcr>(c4m4i50c)c2i

;ƒƒƒ part 3 ƒƒƒ
fm5=o6@4v13
sc2=o5@8v12

d0=m4l8c4r<(b-2i50b-)b-2iagfar(g4i50)gi(c4i50)c4i(g4i50)gi>(c4.i50)c4i
d1=c4r<(b-2i50b-)b-2iagfar(g4i50)gi(c4i50)c4i<(g4i50)gi>(c4.i50)c4i
d2=(b-2.i50)b-2.i>(f4i50)f4i(e2i50)e2i<(g2i50)g2i(a-4.i50)a-2>c16d16
d3=(e-4i50)e-4d4c4<g>d-d-<g>d-d-<g>d-d-<g>d-d-l16(fee-dd-c<b)b-l8<g>d-d-<g>d-d-<g>d-g>d-d-<g>d-d-<g>d-

;ƒƒƒ part 4 ƒƒƒ
fm6=@12q6v13o3
ps1=v12@17q6o2
sc1=v15@11q6o2

e0=l8c1...f16g16>c2<b-2a4.d16e16f.d.g
e1=c1...f16g16>c2<b-2a4.d16e16f.d.g16d16
e2=o2b->b-16b-16
e3=o2a>a16a16
e4=o2a->a-16a-16
e5=o2g>gg<g>gg<g>d-
e6=o2g>gg<g>d-d-<g>gg<g>g<g>e-<g>d-<g

;ƒƒƒ part 5 (drams) ƒƒƒ
fm7=v15o1z10
fm8=v15o1
ps2=v12o2q6

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