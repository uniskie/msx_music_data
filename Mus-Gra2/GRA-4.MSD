;**************************************
;    GRADIUS    Stage 4 BGM
;     (C) KONAMI     by UNISKIE
;**************************************
; voice2.vcd
FM1 =t,fm0,a0,x0,a2,x1, a4,a5
FM2 =t,fm1,a0,x0,a2,x1, a4
FM3 =t,fm2,b0,x0,b2,x1, b4,b5
FM4 =t,fm3,c0,x0,c2,x2, b4
FM5 =t,fm4,d0,          d1/4,d2/4,d3/2,d4,d5/2,d6/2,d7/2,d8
FM6 =t,fm5,d0,x4,       d1/4,d2/4,d3/2,d4,d5/2,d6/2,d7/2,d8
FMR =;t,fmr,r0,           r1/6,r2/2,r3/2,r4
FM7 =
FM8 =
FM9 =
PSG1=t,ps0,a0,a1,a2,a3, a4,a5
PSG2=t,ps1,b0,b1,b2,b3, b4,b5
       ;psd,s0,          s1/6,s2/2,s3/2,s4
PSG3=t,ps2,c0,c1,c2,c3, d1/4,d2/4,d3/2,d4,d5/2,d6/2,d7/2,d8
SCC1=t,sc0,a0,x0,a2,x1, a4,a5
SCC2=t,sc1,b0,x0,b2,x3, b4,b5
SCC3=t,sc2,c0,x0,c2,x2, a4
SCC4=t,sc3,d0,          d1/4,d2/4,d3/2,d4,d5/2,d6/2,d7/2,d8
SCC5=t,sc4,d0,x4,       d1/4,d2/4,d3/2,d4,d5/2,d6/2,d7/2,d8

t=t136

fm0=v13@98o5
fm1=v11@98o5z20r8.
fm2=v13@16o4
fm3=v11@16o4
fm4=v14@33q6o3
fm5=v12@12q6o2 z6
ps0=v9@4o5m4i30
ps1=v9@4o4m4i30
ps2=v9@4o4
sc0=v12@15q4o5
sc1=v12@15q4o4
sc2=v12@15q4o4
sc3=v12@6 q6o2
sc4=v13@6 q6o1

a0=l8c.cc16cdd
a1=<<<gg>>>
a2=e-.e-.ff
a3=<<<gg16gg16>>>
b0=l8a.aa16abb
b1=<<<gg>>>
b2=>c.c.dd
b3=<<<<gg16gg16>>>>
c0=l8f.ff16fgg
c1=<<<gg>>>
c2=a-.a-.b-b-
c3=<<<gg16gg16> z22
x0=r4
x1=rr4
x2=rr4 >z22 r8.
x3=rr4 v12
d0=l8r2.gg r2rgg16gg16
x4=>z20

a4=(g8m4i40g4m5)g8i0 l16 fec<(gm4i40)g4i0 fec<(gm4i40)g4i0>l8e.g.>c
   (g8m4i40g4m5)g8i0 l16 fec<(gm4i40)g4i0 fec<(gm4i40)g4i0>l8g.>c.e
   (g8m4i40g4m5)g8i0 l16 fec<f8.de l6fefgfg
   l16 a-b->cde-dc<b-a-b-a-gfgfe- l8d.f.b-.>e-.a-4
   (g8m4i40g4m5)g8i0 l16 fec<g8g>c8 de-8(e-m4i40))e-4i0e-f8(fm4i40)f4i0
   fg8g8f(g8m4i40g4m5g8
a5=)g4
b4=(e8m4i40g4m5)e8i0 l16rfec<(gm3i40)g4i0 fec<  m3i40 g4i0>l8d.e.g>
   (e8m4i40g4m5)e8i0 l16rfec<(gm3i40)g4i0 fec<  m3i40 g4i0>l8c.e.g>
   (e8m4i40g4m5)e8i0 l16rfec<f8.d  (c8m3i40)c4.i0(c8m3i40)c4.i0
   l16ra-b->cde-dc<b-a-b-a-gfgf   l8c.c.f.b-.>e-4
   (e8m4i40g4m5)e8i0 l16rfec<g8g>c< fg8(gm3i40)g4i0ga8(am3i40)a4i0>
   de8e8d(e8m4i40e4m5e8
b5=)e4
d1=c>c<c>c<
d2=<b->b-<b->b-
d3=<a>a<a>a
d4=<d>d<d>d<e>e<e>e
d5=<f>f<f>f
d6=<g>g<g>g
d7=<c>c<c>c
d8=<e->e-<e->e-16e-16<f>f<f>f16f16
   c16ccc16(ci20)c2

;***** drum

fmr=v15vs13vm13vc13vh13
    y39,3y23,040
    y38,3y22,220
    y40,1y24,120

r0=bh8h8r8h8hb8bc8h8c8 bc8hsm8h8h8bms16csm8bsm8sm8sm16 
r1=bh8h8smb8h8h16b8h16sm8c8
r2=b16h8h16sm8h8hb16h16bh8smh4
r3=b8c4hb8bsm8sm4bc8
r4=bh8smh16h16sm8sm16sm16b16sm16sm16sm4

psd=v10@0q6o2
s0=r1 r8c8r4c16c8c8c8c16
s1=rcrc
s2=rcrc
s3=rrc8cr8
s4=r8l16ccr8cccccc4
