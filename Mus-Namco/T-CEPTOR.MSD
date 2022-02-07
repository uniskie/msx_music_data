;***********************;
;  [  THNDER CEPTOR  ]  ; 
;       (C) namco       ;
;      MAIN  THEME      ;
;***********************;
;  data    UNISKIE 1994 ;

FM1 =t,fm0,a0/2,a1/2,a2/2,a3/2,u,a4
FM2 =t,fm1,a0/2,a1/2,a2/2,a3/2,u,a4
FM3 =t,fm2,c0,c1,vd,c2/2,c,c3/2,u,vc,c4
FM4 =t,fm3,c0,c6,vb,c2/2,c,c3/2,u,va,c5
FM5 =t,fm2,d0,d1,d2/2,c,vc,d3/2,u,vb,d4
FM6 =t,fm2,e0,e1,e2/2,c,vc,e3/2,u,vb,e4
FMR =t,fmr,r0,r1/3,r2,r1/3,r3,r4/3,r9,r4/3,,r5,r6,r7,r6,r8,u,ba
FM7 =
FM8 =
FM9 =
PSG1=t,ps0,b0/4,b1/2,va,b2/2,vc,b3/2,u,b4
PSG2=t,ps1,b0/4,b6/2,v9,b2/2,vb,b3/2,u,b5
PSG3=t,psr,s0,s1/3,s2,s1/3,s3,s4/3,s9,s4/3,s5,s6,s7,s6,s8,u,sa
SCC1=
SCC2=
SCC3=
SCC4=
SCC5=

t=t150
u=t155

;**** voice & volme etc.
;
;** part 1 (base)
;
fm0=@14 v10 o3 q2s1 ;z12
fm1=@33 v13 o3 q6 
;
;** part 2 (electoric piano)
;
ps0=@21 v11 o4 q6 m4i10
ps1=@21 v10 o4 q6 m4i10 z4r32
;
;** part 3 (merody)
;
fm2=@59 v13 m5
fm3=@59 v11 m5 r8.z5
;
vd=v13
vc=v12
vb=v11
va=v10
v9=v9
v8=v8
v7=v7
;

;*** part 1 (base)
a0=l16
   c8.c>cc8.cc8.<a12a+12b12
a1=c8.c>cc8.cc8.<a12a+12b12
   c8.c>cc8.cc8.<a12a+12b12
   e-8.e->e-8.e-e-8.e-c12c+12d12<
   e-8.e->e-8.e-e-8.e-c12c+12d12<
a2=q3f8.ff8.ff12b-12c12<f4
   g8.gg8.gg12>c12d12<g4
   >d8.dd12d12d12<d8.dd12d12d12
   e8.e>e12<e12>e12<e8.e>e12<e12>e12
a3=d12d12d12r4<d12d12d12r4
   d8.dr8dd>d2
   d12d12d12r4<d12d12d12r4
   f6f6f6g2
a4=l12b-b-b->>ccc<ddd>eee
   <<fff>gggg<g>gg4q8

;*** part 2 (electoric piano)
b0=l12>c<gfcfg
b1=>c<gfcfg>c<gfcfg
   >c<gfcfg>c<gfcfg
   eag->d-<ag-eag->d-<ag-
   v11>>d-cc-<b-aa-gg-fee-dv12
b6=>c<gfcfg>c<gfcfg
   >c<gfcfg>c<gfcfg
   eag->d-<ag-eag->d-<ag-
   v10>>d-cc-<b-aa-gg-fee-dv11
b2=e-<b->e-gab-ab-age-g
   afaafg>dc<gb-ab-
   >c8.c16de-dfe-<a>c<b->c
   d8.d16fefgfed4<
b3=q6eeer4<eeer4>
   c8.c16r8c16c16e16r16d4.
   eeer4<eeer4>
   g8.g16r8g16g16(a4m4i80)a4i10<
b4=a->ce-fd<b->ce-gag-d
   e-gb->c<af>d<b->df4<<
b5=r16a->ce-fd<b->ce-gag-d
   e-gb->c<af>d<b->df8

;*** part 3 (merody)
c0=r2.
   o5l12e>ee-
   dd-c<bb-aa-gg-fee-
d0=r2. z20
   o5l12e>ee-
   dd-c<bb-aa-gg-fee-
   <z
e0=r2. v10 r16.
   o5l12e>ee-
   dd-c<bb-aa-gg-fee-48
   <zv11
c1=d8.d16d4r8.d16ede
   d8.d16d4r8.d16ede
   (f2i80f2 i100)f1i

   d8.d16d4r8.d16ede
   d8.d16d4r8.d16ede
   (f2i80f2 i00f2..)f16..i
c6=d8.d16d4r8.d16ede
   d8.d16d4r8.d16ede
   f2v12z
   <f16a-ge-
   g8.e-16(f8m4i100f8)f2i
   f8. >v10z30

   d8.d16d4r8.d16ede
   d8.d16d4r8.d16ede
   f2v12z
   <f16a-ge-
   g8.e-16(f8m4i100f8)f2i
   f8r32. >v10z30
d1=b-8.b-16b-4r8.b-16>c<b->c<
   b-8.b-16b-4r8.b-16>c<b->c
   (d-2i80d-2 i100)d-1i<

   b-8.b-16b-4r8.b-16>c<b->c<
   b-8.b-16b-4r8.b-16>c<b->c
   (d-2i80d-2 i100d-2..)d-16..i<
e1=f8.f16f4r8.f16gfg
   f8.f16f4r8.f16gfg
   (b-2i80b-2 i100)b-1i

   f8.f16f4r8.f16gfg
   f8.f16f4r8.f16gfg
   (b-2i80b-2 i100b-2..)b-16..i
c2=q6(g64)g4gb-af4g8...
   (a64)a4a>c<bg4a8...
   >(c64)c4ce-d<b-4>c8...
   (d64)d4dfec4d8...<
   m4
d2=q7l2m4
   (a-i80)a-i
   (>ci80)ci
   (e-i80)e-i
   (fi80)fi<
   l12
e2=q7l2m4
   (e-i80)e-i
   (fi80)fi
   (a-i80)a-i
   (b-i80)b-i
   l12
c=r64
c3=>q4cccr4cccr4<
   a-8.a-16r8a-16a-16b16r16(b-8.i80)b-8.i
   >cccr4cccr4
   e-8.e-16r8e-16e-16(f4i80)f4i
d3=q4gggr4gggr4
   e-8.e-16r8e-16e-16g-16r16(f8.i80)f8.i
   gggr4gggr4
   b-8.b-16r8b-16b-16>(c4i80)c4i<
e3=q4eeer4eeer4
   c8.c16r8c16c16e-16r16(d8.i80)d8.i
   eeer4eeer4
   g8.g16r8g16g16(a4i80)a4i
c4=l4q7
   cdeg- gab>c<
c5=l4q7
   cdeg- gab>c16
d4=l4q7
   a-b->cd efab-
e4=l4q7
   e-fga b->cdd

;*** rhythm
;
fmr=v15 vm14 vs13 vh10
    y22,157 y38,3
    y23,156 y39,4
    y24,162 y40,2
psr=o8z90m27i5
;
r0=bh6h6h6h6h6h48b16h48b16
   bh6h12b12h12ms12bms8b12ms12b16ms12ms16
s0=l6v8@4r32cccccc
   ccc12v11@6d12d8r12d12r16d12d16
r1=hb4msh4h4msh8.b16
s1=l4v8@4cv11@6dv8@4cv11@6d
r2=hb4msh4h4msh6ms24ms24
s2=l4v8@4cv11@6dv8@4cv11@6d6@7d24@6d24
r3=b48ms24b24ms12r48ms6ms12b12b12ms8.ms16ms8
s3=r48d12d12r48d6d6r12d8.@7d16@6d8
r4=vm11vs12bms6vs11ms6vm11vs9ms6vm15vs14ms6vm14vs13ms6vm13vs12ms12b12
s4=@28v8d6v7d6v6d6v11@6d6v10d6@29v9d6
r9=vm11vs12bms6vs11ms6vm11vs10ms6vm15vs14ms6vm13vs12ms12vm14vs12ms12ms12ms24ms24
s9=@28v8d6v7d6v6d6v11@6d6v9d12v10@29d12d12@6d24d24
r5=r12vm15vs13ms12b24b24ms12bms48b16ms12ms12ms24ms24ms24ms24ms12ms12ms12
s5=l12v11@6rd6ddddl24ddddl12ddd
r6=vh12h12h12h12b12b12b12h12h12h12b12b12b12
   vh10b8.b16r8h16h16b12vm14vs12ms6ms6ms12
   vh12h12h12h12b12b12b12vm15vs13bms12bms12bms12b12b12b12
s6=l12v11@4cccr4cccr4
   r4.v9@4e16e16rv11@6d6d6@7d
   v11@4cccr4v11@6dddr4
r7=b6b6b6r8b24b24b24ms12ms48b16ms12
s7=r2.@28d12@29d12@6d12
r8=b12ms12ms12b8ms8b16ms16.ms16.ms24ms24ms12ms12
s8=l12rddr8d8.@29d16.@8d16.@6d24d24dd
ba=b4r6b12b4r4 r6b12ms24ms24ms12ms12b6b24ms24ms12ms12ms24ms24
sa=r1 r4l12v11@6d24d24ddr6r24d24ddd24d48r48

;
;** end **
