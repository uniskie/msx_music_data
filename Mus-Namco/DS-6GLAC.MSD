;********************************
;     DRAGON SPIRIT (C) namco
;      AREA 6 ¢GLACIER YARD£
;********************************
FM1 =t,dzz,az,az1
       ix,i0,i1,i0,i2x,i3/2,i4x,i4,i5x/2,i7,i8,i5x/2,i7,i9,ia
FM2 =t,dzz,bz,bz1
       iy,i0,i1,i0,i2y,i3/2,i4y,i4,i5x/2,i7,i8,i5x/2,i7,i9
FM3 =t,dzz,cz,cz1
       d,f0/2,f1/4,f2/3,f3,
       f4/3,f3,f4/3,f3,f2/2,f5,f3,f2/4,
       f4/3,f3,f4/3,f3,f2/2,f5,f3,f2/3,f6
FM4 =t,ezz,az
       j,j0/2,j1/2,j2/7,j3,j2/3,j3,j4/8,j2/3,j3,j2/3,j3,j4/7,j5
FM5 =t,ezz,bz
       g,h0/4,h1/4,g,h2/3,h3,gx,g0/31
FM6 =t,ezz,cz
       h,h0/4,h1/4,h2/3,h3,
       h2/3,h3,h2/3,h3,h2/3,h3,h2/3,h3,
       h2/3,h3,h2/3,h3,h2/3,h3,h2/3,h4
FMR =t,fmr,r0,r1,
       fmr,r0,r1,r0,r1,r0,r1,r0,r2,r3/3,r4,r3/7,r4,r3/3,r5,r6,r7/2,r8,
       r6,r7,r6,r8,r6,r7,r6,r8,r6,r7,r6,r8,r6,r7,r6,r8,
       r6,r7,r6,r8,r6,r7,r6,r8,r6,r7,r6,r8,r6,r7,r6,r9
FM7 =
FM8 =
FM9 =
PSG1=t,fz
       c,c0/2,c1/2,c2/3,c3,
       c4/3,c3,c4/3,c3,c2/2,c5,c3,c2/4,
       c4/3,c3,c4/3,c3,c2/2,c5,c3,c2/3,c6
PSG2=t,fz1
       c,d0/2,d1/2,d2/3,d3,
       d4/3,d3,d4/3,d3,d2/2,d5,d3,d2/4,
       d4/3,d3,d4/3,d3,d2/2,d5,d3,d2/3,d6
PSG3=;t,psr,s0,s1,
     ;  psr,s0,s1,s0,s1,s0,s1,s0,s2,s3/3,s4,s3/7,s4,s3/3,s5,s6,s7/2,s8,
     ;  s6,s7,s6,s8,s6,s7,s6,s8,s6,s7,s6,s8,s6,s7,s6,s8,
     ;  s6,s7,s6,s8,s6,s7,s6,s8,s6,s7,s6,s8,s6,s7,s6,s9
SCC1=
SCC2=
SCC3=
SCC4=
SCC5=


t=t150

;****** INTRO *******
;***** PSG AREA *****
; -- f --
fz=@23v10 o5q6
  l rere rere rere re<a>e
fz1=@23v9 o5q6z4
  r16. l rere rere rere re<a>e8r32

;***** FM AREA *****
; -- a --
dzz=o5@57q4v12
ezz=o5@57q4v10 z1 r8r32

az=l8eer4eer4 ddr4ddr4 eer4eer4 ffr4ffir16.
az1=r8r32
bz=l8ccr4ccr4 <bbr4bbr4 >ccr4ccr4 ccr4ccir16.
bz1=r8r32
cz=<l8aar4aar4 ggr4ggr4 ggr4ggr4 aar4aair16.
cz1=r8r32

; -- rythum --
fmr=v15vm15vs13
    y22,198 y38,3
    y23,155 y39,4
    y24,111 y40,2
psr=v11o1q6

;****** LOOP ********

; -- rhythm --
r0=b4sm4b8m8sm4 b4sm4b8b8sm4 b4sm4b16b8.sm4
s0=l @22f>@07e<@22f8@01a8>@07e< @22f>@07e<@22f8f8>@07e< @22f>@07e<@22f16f8.>@07e<
r1=b4sm16b8.b8.b16sm16sm8.
s1=l @22f>@07e16<@22f8.f8.f16>@07e16e8.<
r2=b8sm8sm8b8sm16m16b8sm16mb16b8
s2=l8 @22f>@07ee<@22f>@07e16<@01a16@22f>@07e16<@01a16@22f
r3=b4sm4b16b8.sm4
s3=l @22f>@07e<@22f16f8.>@07e<
r4=b4sm4b16b8.sm16sm16sm8
s4=l16 @22f4>@07e4<@22ff8.>@07eee8<
r5=b4sm4sm16sm16b8sm16sm16b8
s5=l16 @22f4>@07e4ee<@22f8>@07ee<@22f8
r6=b16b8.sm4b16b16b8sm4
s6=l16 @22ff8.>@07e4<@22fff8>@07e4<
r7=b16b8.sm4b16b16b8sm8sm8
s7=l8 @22f16f.>@07e4<@22f16f16f>@07ee<
r8=b16b8.sm4sm16sm16sm8mb16mb16mb8
s8=l16 @22ff8.>@07e4ccc8<@01aaa8
r9=sm16sm16sm16sm16sm4sm16sm16b8mb16mb16b16r16
s9=l16 >@07eeeee4ee<@22f8@01aa@22fr

;***** PSG *****
;-- c --
c=v10 m2 z
@21=@21
@23=@23

c0=l8 o3 q6@21 i9 (a4.i80)a4.i9ra (b4.i80)b4.i9rg (g4.i80)g4.i9r>c< laraa l2(ai80)ai9 (gi80)gi9 (gi80)gi9 ar >>
d0=l8 o4 @21 i9 (c4.i80)c4.i9rc (d4.i80)d4.i9rd (c4.i80)c4.i9rc lcrdd l2(ci80)ci9<(bi80)b>i9(ci80)ci9 cd>
c1=m5@23l8 v13
     rq4a4d4q6a(g4 g4gi80)g2i9>(c c2i80)c2i9 r1<
     rq4a4d4q6a(g4 g4gi80)g2i9> c q4d<b-agb-afq6(d d4i80)d4i9>(d4i80)d4i9<
   m2@21q6 v10
d1=m5@23l8 v11 r8. z3
     rq4a4d4q6a(g4 g4gi80)g2i9>(c c2i80)c2i9 r1<
     rq4a4d4q6a(g4 g4gi80)g2i9> c q4d<b-agb-afq6(d d4i80)d4i9>(d4i80)d16i9<
   m2@21q6 v10 z
c2=l ar8gr.
d2=l fr8er.
c3=l agfg
d3=l fede
c4=l ar8gr.
d4=l fr8er.
c5=l ar8g8gr
d5=l fr8e8er
c6=o5 v11 q4l16ddddd4eeeee4
d6=o5 v11 q4l16b-b-b-b-b-4>ccccc4


;***** FM *****
; -- f --
d=@57 v13q6s0 m4
f0=l8 o5 (e4.i80)e4.ire (g4.i80)g4.irb (e4.i80)e4.ire (fi80)fir4(gi80)gi(fi80)fi l2(ei80)ei (di80)di (ei80)ei l8(f4i80)f4i(gi80)gi(fi90)fi
f1=v12l64@56q7s0 z6
   (d1 i60)d1i (c1 i60)c1i 
   @57v13zq6s0

f2=l ar8gr.
f3=l agfg
f4=l ar8gr.
f5=l ar8g8g8r.
f6=o6 v14 q4l16ddddd4eeeee4

; -- i --
ix=o6@57v15
iy=o6@57v13 z30 r8r16

i0=s1 m5l8 (a4i70a4)ai(ei70)eia ga(g.i70)g.i(ei70)eid ed(e4.i70)e4.i
     q4fed(ci70)ci<bgeq (a4.i70)a4i(ei70)eia ga(g.i70)g.i(ei70)eid (e2i70)e2i
i1=q4i9fed(ci70)ci9<b>ceqi>
i2x=q4i9fe>c<b v11>c<b>v09c<bqv12i
i2y=q4i9fe>c<b v10>c<b>v08c<bqv11i
i3=>@16rs1v0
    q4a4d4q6a(g4 )g2..>(c )c1 r1<
   rq4a4d4q6a(g4 )g2..> c  q4d<b-agb-afq6(d )d2>d2
   <<qs0<
i4x=v14
i4y=v12
i4=@57(d1 i8d1 i80d2d2 )d2.r4iq6
i5x=l16v15>defdar8.> v15defdar8. v12defdar8. v10defdar8. v15defdagfei(f4i70)f4i
    v15l8q4(di70)di(ei70)ei(fi70)fi(gi70)gi<<v15q
i5y=l16v13>defdar8.> v13defdar8. v10defdar8. v08defdar8. v13defdagfei(f4i70)f4i
    v13l8q4(di70)di(ei70)ei(fi70)fi(gi70)gi<<v13q
i7=<<(d64m1p2>>d2..... d1 d1 m5i90)d2.r4i >>dfd(aa4i70)a4i >c<a16g16(a2.
i8=a2i70a2 )a1i<<
i9=ai70)a2..i (b-i70)b-r4i>(ci70)cr16i
ia=r8r16

; -- j --
j=@16 v11q1s1 o6 m4i10
j0=lrere rere rere re<a>e
    rere rere rere rel8r<a>eal
j1=rdrd rdr<d16>c16d8 rdrd rdl8rdrdl rdrd rdr<d16>c16d8 rdrd rdl8rdrdl
j2=rdr2
j3=r<dr2>
j4=rdrc
j5=<<l16b-b-b-b-b-4b-b-b-b-b-4i

; -- g --
g=@33q1s1 v0 o2 z24
gx=;m1i100 
   ;z250
g0=o6r2.@14v14 l64 q1s1
  d+c+c<v13ba+v12av11g+v10gv9f+v8f16..>>


; -- h --
h=@33v13q6 o2 ;m5i20
h0=l16 araaaraaaraaaraa brbbbrbbbrbbbrbb >crcccrcccrcccrcc drdddrdddrdddrdd<
h1=b-b-r8b-rb-b-b-b-r8b-4 b-b-r8b-rb-b-b-b-r8b-4 aar8araaaar8a4 aar8araaa>a<aaa>a<aa>
h2=ddr8>d4<dddr8.c8
h3=ddr8>d4<dd<aa>ccdd
h4=<b-b-b-b-b-4>ccccc4

; -- end --
