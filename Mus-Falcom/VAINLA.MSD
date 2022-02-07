; VANILLA NO KYUUJIN
; - vanila.vcd
FM1 =t,fm1,a0,a0',a0,a0',a1/2,
           a0,a0',a0,a0',a2,a2',a2,a2',
FM2 =t,fm2,b0,b0',b0,b0',b1/2,
       fm2,b0,b0',b0,b0',m2,b2/2,
FM3 =t,fm3,b0,b0',b0,b0',b1/2,
       fm3,b0,b0',b0,m3,c2
FM4 =t,fm4,a0,a0',a0,a0',a1/2,
           a0,a0',a0,a0',a2,a2',a2,
FM5 =t,fm5,f0/4,f1/8,
           f0/4,f2/2,
FM6 =t,fm6,g0/4,g1/8,
           g0/4,g2/2,
FMR =t,fmr,r0,r1/16,
           r0,r2/16,
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
fm1=v12@6o5q4 l8m z2
fm4=v9@6o5q4 l8m z10r

fm2=v11@14o5q4 l8m z100
fm3=v8@14o5q4 l8m z110 r
m2=v13@48s1
m3=v10@48s1

ps1=v11@11o4q4 l8m
p1=v12
ps3=v9@11o4q4 l8m z4

a0=;
   (b-64p2)g8...p(b-64p2)g8...p(b-64p2)g8...p(b-64p2)g-8...p
   (b-64p2)g-8...p(b-64p4)g16..p(b64p2)g8...p(b64p2)b+32.p(b64p2)g-32.p(a64p2)g-16..p
a0'=;
    r8
b0=z1;
   (b64p3)g8...p(b64p3)g8...p(b64p3)g8...p(b64p3)g-8...p
   (b64p3)g-8...p(b64p6)f16..p(b+64p3)g8...p>(d64p3)c+32.p<(b+64p2)g-32.p(b-64p2)g-16..p
b0'=;
    r8

a1=;
   (a64p3)b8...pa-p2b16r.pb-a-b- (a64p3)b-8...pag(a64p3)b-8...p>cr<
   (a-64p3)b-8...pab-16r16b-ag16r16e16r16 (a64p1)b-16..p>cp1dpc<p3(b-64p1)g-4....p
   (a64p3)b-8...pap2b16r.pb-16r16a-b- (a64p3)b-8...pag(a64p3)b-8...p>cr<
   (a-64p3)b-8...pab-16r16b-age (a64p3)b-8...p1b.r16p(a64p1)g-4....p
b1=m;
   (a-64p3)b-8...pa-p2b-16r.pbab- (a64p3)b-8...pa-g(a64p3)b-8...p>cr<
   (a-64p3)b-8...pa-b-16r16b-ag-16r16e-16r16 (a64p1)b-16..p>cp1dpc<p3(b-64p1)g-4....p
   (a-64p3)b-8...pa-p2b-16r.pb-16r16a-b- (a64p3)b-8...pa-g(a-64p3)b-8...p>cr<
   (a-64p3)b-8...pa-b-16r16b-ag-e (a-64p3)b-8...p1b-.r16p(a-64p1)g-4....p

a2=m4i8;
   agfdc4d4 da4(g.m4i40)g.r4i8
   da4g4.r4 cg4(f.m4i40)f.r4i8
   agfdc4d4 da4(g.m4i40)g.i8ga
   b-4d4fg4(f f4m4i40)f2r8
a2'=r8i8
b2=m;
   r1 r2rpb24.p3a12p(a-48p1g)g12
   r2rp(g48p3)a-24.pg-12(a-48p1b)b24.p r2ba-p3b4p
   r1 r1
   r1 r4b-8a8p4>d-2<p
c2=m;
   r1 r2rpa-24.p3g12p(g-48p1f)f12
   r2rp(f48p3)a-24.pf12(a48p1a)b24.p r2ba-p2b-4p
   r1 r1
   r1 r4a8a-8p5>c2<

; base
fm6=v13 @33o3 l8m
ps2=v11 @17o2q6 l8m4i20 z
g0=r1
g1=c16e16fcfcfcf c16e16fcfcfcf
g2=;
   frfrfrfe drdrdrdc <b-rb-r>crcr frfrfcde
   frfrfrfe drdrdrdc <b-rb-r>crer frfrfrfr

; seq
fm5=@16o6v9 q4 l8
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

psr=v11 o2 q1 l8 m

s0=;
   (@5a64p9<@1)a16..rp>(@5a64p9<@1)a16..rp>(@5a64p9<@1)a16..rp>(@5a64p9<@1)a16..rp>
   (@5a64p9<@1)a16..rp>(@5a64p9<@1)a16..rp>(@5a64p9<@1)a16..rp>(@5a64p9<@1)a16..rp>
   (@5a64p9<@1)a16..rp>(@5a64p9<@1)a16..rp>(@5a64p9<@1)a16..rp>(@5a64p9<@1)a16..rp>
   (@5a64p9<@1)a16..rp>(@5a64p9<@1)a16..rp>(@5a64p9<@1)a16..rp>(@5a64p9<@1)a16..p>v10@6c8
s1=;l8r4@2crr4@2cr
   v11(@5a64p9<@1)a16..p>v10@28d16d16v11>(@21a64p9<@2)a16..p><v10@28d16d16v11(@5a64p9<@1)a16..p>v10@28d16d16v11>(@21a64p9<@2)a16..p><v10@28d16@6d16v11

s2=;r2.@0c4
   v11(@5a64p9<@1)a16..p>v9@28d16d16v12(@5a64p9<@1)a16..p>v9@28d16d16v11(@5a64p9<@1)a16..p>v9@28d16d16v11>(@21a64p9<@2)a16..p><v9@28d16@6d16v11

