; VANILLA NO KYUUJIN
; - vanila.vcd
FM1 =;t,fm1,a0,a0',a0,a0',a1/2,
     ;      a0,a0',a0,a0',m1,a2,a2',a2,a2',
FM2 =;t,fm2,b0,b0',b0,b0',b1/2,
     ;  fm2,b0,b0',b0,b0',m2,b2/2,
FM3 =;t,fm3,b0,b0',b0,b0',b1/2,
     ;  fm3,b0,b0',b0,m3,c2/2,
FM4 =;t,fm4,a0,a0',a0,a0',a1/2,
     ;      a0,a0',a0,a0',m4,a2,a2',a2,
FM5 =;t,fm5,f0/4,f1/8,
     ;      f0/4,f2/2,
FM6 =;t,fm6,g0/4,g1/8,
     ;      g0/4,g2/2,
FMR =;t,fmr,r0,r1/16,
     ;      r0,r2/16,
FM7 =
FM8 =
FM9 =
PSG1=t,ps1,a0,a0',a0,a0',p1,a1/2,
       ps1,a0,a0',a0,a0',p1,a2,a2',a2,a2',
PSG2=t,ps3,b0,b0',b0,b0',ps2,g1/8,
       ps3,b0,b0',b0,b0',ps2,g2/2,
PSG3=t,psr,s0,s1/16,
           s0,s2/16,
SCC1=
SCC2=
SCC3=
SCC4=
SCC5=

t=t255 r64
  t150

; melo
fm1=v12@48o5q4 l8m z2
fm4=v7@48o5q4 l8m z10r
m1=v13@48s1
m4=v9@48s1

fm2=v12@48o5q4 l8m z100
fm3=v7@48o5q4 l8m z110 r
m2=v13@48s1
m3=v10@48s1

ps1=v10@15o4q4 l8m v9;fm
p1=v12@11o4q4 v11;fm
ps3=v8@15o4q4 l8m z1 v7;fm

a0=;
   (b-64p2)a-8...p(b-64p2)a-8...p(b-64p2)a-8...p(b-64p2)a-8...p
   (b-64p2)a-8...p(b-64p4)a-16..p(b-64p2)a8...p(b64p2)b+32.p(b64p2)a32.p(a64p2)g16..p
a0'=;
    r8
b0=z1;
   (b64p3)a8...p(b64p3)a8...p(b64p3)a8...p(b64p3)a8...p
   (b64p3)a8...p(b64p6)g16..p(b64p3)g-8...p>(d64p3)c+32.p<(b+64p2)b-32.p(b-64p2)a-16..p
b0'=;
    r8

a1=;
   (a64p2)b-8...pap3b-rpb-ab-16.r32 (a64p3)b-8...pag(a64p3)b-8...p>cr<
   (a-64p3)b-8...pab-16.r32b-ag16.r32e16.r32 (a64p1)b-16..p>cp2d-pc<p3(b-64p1)g-4....p
   (a64p3)b-8...pap2brpb-a-b-16.r32 (a64p3)b-8...pag(a64p3)b-8...p>cr<
   (a-64p3)b-8...pab-16.r32b-age (a64p3)b-8...p1(b)b+16r16p(a64p1)g-4....p
b1=m;
   (a-64p3)b-8...pa-p2b-rpbab-16.r32 (a-64p3)b-8...pa-g(a-64p3)b+8...>cpr<
   (a64p3)b-8...pa-b-16.r32b-ag-16.r32e-16.r32 (a64p1)b-16..p>cp2dpc<p3(b-64p1)g-4....p
   (a-64p3)b-8...pa-p2b-rpb-a-b-16.r32 (a64p3)b-8...pa-g(a-64p3)b+8...>cpr<
   (a-64p3)b-8...pa-b-16.r32b-ag-e (a-64p3)b-8...p1(b-)b+16r16p(a-64p1)g-4....p

a2=;
   agfdc4mp5d4p da4mp6(g.m4i40)g.r4i
   da4mp6(g.m4i49)g.r4i cg4mp6(f.m4i40)f.r4i
   agfdc4mp5d4p da4mp6(g.m4i40)g.iga
   b-4d4fmp5g4(f f4m4i40)f2r8
a2'=r8i
b2=m;
   r1 r2rpb24.p6a12p(a-48p1g)g12
   r2r16..p(g64p3)a-12p6g-12(a-48p1b)b24.p r4....(b-64p1)bp6a-p4b4
   r1 r1
   r1 r4pb+p8ap4b+4r4
c2=m;
   r1 r2rpb-24.p6a-12p(g48p1g-)g-12
   r2r16..p(g-64p3)g12p6f12(a-48p1b)b24.p r4....(a64p1)bp6gp4b4
   r1 r1
   r1 r4pb+p8ap4>c+r4<

; base
fm6=v13 @33o3 l8m
ps2=v10 @17o2q6 l8m4i20 z v11;fm

g0=r1
g1=c16e16fcfcfcf c16e16fcfcfcf
g2=;
   frfrfrfe drdrdrdc <b-rb-r>crcr frfrfcde
   frfrfrfe drdrdrdc <b-rb-r>crer frfrfrrr

; seq
fm5=@16o6v10 q4 l8
ps5=@12v7o5 q4 l8

f0=bb-aa-gg-fe
f1=aaaa>a<aga aaaa>a<aaa
f2=f>f<f>f<f>f<fe d>d<d>d<d>d<dc
   <b->b-<b->b-c>c<c>c< f>f<f>f<fcde
   f>f<f>f<f>f<fe d>d<d>d<d>d<dc
   <b->b-<b->b-c>c<e>e< f>f<f>f<f>f<f>f<

;drum
fmr=v15vc13vh13vs10
    y38,3 y22,100
    y39,2 y23,120
    y40,3 y24,116
r0=b4b4b4b4 b4b4b4b4 b4b4b4b4 b4b4b4b8c8
r1=b16h16c16h16bs16h16c16h16b16h16c16h16bs16h16c16h16
r2=b16h16c16h16b16h16c16h16b16h16c16h16bs16h16c16h16

psr=v11 o2 q6 l8 m

s0=l64v12o2@1
   (afd)cr8.(afd)cr8.(afd)cr8.(afd)cr8.
   (afd)cr8.(afd)cr8.(afd)cr8.(afd)cr8.
   (afd)cr8.(afd)cr8.(afd)cr8.(afd)cr8.
   (afd)cr8.(afd)cr8.(afd)cr8.(afd)cr16
   v10@6d8 o2
s1=;l8r4@2crr4@2cr
   v12(@1afd)cr16v10@28d16d16v11>(@21f@0c@2c@3)cr16<v10@28d16d16v12(@1afd)cr16v10@28d16d16v11>(@21a@0c@2c@3)cr16<v10@28d16@6d16v11

s2=;r2.@0c4
   v12(@1afd)cr16v10@28d16d16v12(@1afd)cr16v10@28d16d16v12(@1afd)cr16v10@28d16d16v11>(@21f@0c@2c@3)cr16<v10@28d16@6d16v11

