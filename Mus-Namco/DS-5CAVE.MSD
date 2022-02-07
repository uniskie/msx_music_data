;********************************
;    DRAGON SPIRIT  (C) namco
;     ROUND5  ¢CAVE ROAD£
;********************************
FM1 =t,dz
     t,fm1,d0,d1,d2,d1,dx,d5,d6
FM2 =t,dz
     t,fm2,d0,d1,d2,d1,dy,d5,d7
FM3 =t,e,ez
     t,e,e0/2,f,e1,e2/2
FM4 =t,e,fz
     t,e,f0/2,f,f1,f2/2
FM5 =t,e,gz
     t,e,g0/2,f,g1,g2/2
FM6 =t,fm6,hz
     t,fm6,h0/2,h1
FMR =t,fmr,rz
     t,fmr,r0/4,r1
FM7 =
FM8 =
FM9 =
PSG1=t,dz
     t,p0,d0,d1,d2,d1 ,d,ds,a3/4
PSG2=t,dz
     t,p1,d0,d1,d2,d10,d,dt,a3/4
PSG3=t,psr,sz
     t,psr,s0/4,s1
SCC1=
SCC2=
SCC3=
SCC4=
SCC5=

t=t112

;**** PSG AREA ****
;  -- a --
a0=l8 @09v12 m5 a>
a1=c16<(b16i60)b4i>(ci60)ci(ei60)ei <(ai60)a2i>c16<a16(ei60)ei (bi60)b4.i(ei60)e4.i (ai60)a4.i(c)c4.i
a2=<a>>
a=@06q6v07 m5i40 >l16
a3=a>cefec<a>cefec<a>efa <gb>ded<bgb>ded<bgb>dei0

;  -- b --
b=@12q5 v08 o5l16 m3i10
b0=e8ee<ee8e>e8ee<ee8e> e8ee<ee8ee8eef4> e8ee<ee8e>e8ee<ee8e> e8ee<ee8ee8eerf8.>
b1=m6i30q6<l4 (ai70)ai30>(ei70)ei30 <(bi70)bi30>(gi70)gi30 (ei70)ei30ê_ (di70)di30<g.a16b16 >(c2i70c2 )c2i30<b6>c6d6 (e1i70 )e1i0

;  -- c --
c=v12 @11 o2 m3i20
c0=l8qa16q3a.r4aa>ar< qa16q3a.r4aa>fr< qa16q3a.r4aa>ar< qa16q3a.r4aar16>f.
c1=q2l8 <fr2.. gr2.. ffr4r4rf ggr4r2 ff>f4r2< ggr4r2 ffr4r2 ggr4r2i0

;**** FM AREA ****
; -- d --
fm1=@62q6s1v11o5m5
fm2=@62q6s1v10o5m5 r8.z30
p0=@21v9q4o5m5
p1=@21v7q4o5m5 r8.z30

dz=r1
d0=la8>
d1=c16<(b16)b>ce <(a.i60)ai>c16<a16e (b8i60)b.i(e8i60)e.i (a8i60)a.i(c8i60)c.i
d10=c16<(b16)b>ce <(a.i60)ai>c16<a16e (b8i60)b.i(e8i60)e.i (a8i60)a.i(c8i60)c8.i
d2=<a8>>

d=o6@23 l16
ds=v7
dt=v9<
d3=i30a>ee<a>ee<a>f <g>dd<g>dd<g>di
d4=i30r16>cfccfcea <b>e<bb>e<bb>e16i

dx=@01q6s1v11
dy=@01q6s1v9
d5=m6i10 l4 (ai60)ai10>(ei60)ei10 <(bi60)bi10>(gi60)gi10 (ei60)ei10ce (di60)di10<g.a16b16 >(c2.i60c )c2i10<b6>c6d6 (e1i60
d6=)e1i0
d7=)e2.i0

;  -- e --
e=@24v10q4s1m5i50
ez=l2o6(ei80)e
fz=l2o6(ci80)c
gz=l2o5(bi80)b
e0=o7l16e8ee<ee8e>e8ee<ee8e> e8ee<ee8ee8eef4> e8ee<ee8e>e8ee<ee8e> e8ee<ee8ee8eerf8.>
f0=o7l16c8cc<cc8c>c8cc<cc8c> c8cc<cc8cc8ccd4> c8cc<cc8c>c8cc<cc8c> c8cc<cc8cc8ccrc8.>
g0=o6l16b8bb<bb8b>b8bb<bb8b> b8bb<bb8bb8bb>c4 b8bb<bb8b>b8bb<bb8b> r1
f=<@6l1m6q7 v8
e1=i(e i60)e i(e i60)e
e2=ie8(e4..i60)e4.. ie8(e4..i60)e4..i
f1=i(c i60)c i(d i60)d
f2=ic8(c4..i60)c4.. id8(d4..i60)d4..i
g1=i(a i60)a i(b i60)b
g2=ia8(a4..i60)a4.. ib8(b4..i60)b4..i

;  -- h --
fm6=@33v14q4s1o2m6i30
hz=a4a4a8l16aaaaa8
h0=l8a16a.r4aa>a4< a16a.r4aa>f4< a16a.r4aa>a4< a16a.r4aar16>f.
h1=<(f2i70)f2i30 (g2i70)g2i30 ffr4r4rf ggr4r2 ff>(f4.i70)f4.i30< ggr4r2 ffr4r2 ggr4r2i0

; -- rythum --
fmr=v15vs12vh10vc12
    y38,3y22,155
    y39,2y23,155
    y40,2y24,165
psr=l4o8q6
rz=bh4bh4bh8b16b16hms16hms16bh8
sz=l16@6v10r2.ddr8
s0=@7r2.v10d r2.d16v9d16r8
s1=v9r1 r1 r1 r1 r@6v7d16v9d8.r@29d16@6d16@7d8 r2@28d64d12.r64.@29d64d12.r64.@6d64d12.r32 r1 r2.d16@7d16r8
r0=hb16h16h16r8h16h16h16hb8hb16b16ms16h16h16h16 bh16bh16h16r8h16h16h16h16h16hb16b16ms16vm13msh16vm15h16h16
r1=vm15vs11b1 b1 b8b8r2r8b8 b8b8r2. b8b8y23,166y24,165vm13ms16vm15ms8.r4y23,214y24,214ms16y23,166y24,165ms16y23,116y24,116ms8 b8b8r4y23,243y24,243ms64ms12.r64.y23,214y24,214ms64ms12.r64.y23,166y24,165ms64ms12.r32 b8b8r2. b8b8r2ms16y23,116y24,116ms16b8

; -- end --
