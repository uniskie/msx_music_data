;*********************;
;  DRAGON SABER st.2  ;
;    - VOLCANO -      ;
;*********************;
; 1994/1/19,2021/11/19;
;         by uniskie  ;
;*********************;
FM1 =t,fm0,az
       fm0,a0/32,     a1,a0/32,      a2/8,a3/5,         a4
FM2 =t,fn1,bx',bz
       fm1,bx,b0/2,b',a1,bx1,b2,b3,  b4/2,b5,b6/8,vd,b7,b8,bv,b9,ba
FM3 =t,fn1,by',dz
       fm1,bx,c0/2,by,b1,by1,b2,c3,  c4/2,c5,b6/8,vc,b7,c8,bv,c9,ba
FM4 =t,fm3,bx',az
       fm1,bx,d0/2,   a1,dx,d1,d2/3,d3/8, fx,d4/5,      bv,d9,bw,ba
FM5 =t,fm3,by',cz
       fm3,   q0  ,by,b1,ex,q1,q2/3,q3/8, fx,e4/5,      gw,d9,ev,ba
FM6 =t,fm2,az,
       fm2,f0/32,     a1,f0/32,     f1/8, fx,f4/5,      fv,a4
FMR =t,fmr,rz
       fmr,r0,r1/2,r2,r3/3,r4,r01,r11/2,r21,r3/3,r5,r5'
           r6/2,r7,r8,r6/2,r7,r8,r6/2,r7,r8,r6/2,r7,r5
           r9,ra,r9,rb
           rc/7,rd,rc/7,re,rc/7,re,rc/7,re,rc/7,re,     rf
FM7 =
FM8 =
FM9 =
PSG1=t,ps0,gx,bz
       ps0,gx,g0/2,   a1,g1,g2/3,   g3/8, d4/5,         gv,b9,ba
PSG2=t,ps0,gy,dz
       ps0,gx,h0/2,gy,b1,h1,h2/3,   h3/8, e4/5,         gv,c9,ba
PSG3=t,psr,sz
       psr,s0,s1/2,s2,s3/3,s4,s01,s11/2,s21,s3/3,s5,s5'
           s6/3,s7,s6/3,s7,s6/3,s7,s6/3,s5
           s9,sa,s9,sb
           sc/3,sd,sc/3,se,sc/3,se,sc/3,se,sc/3,se,      sf
SCC1=
SCC2=
SCC3=
SCC4=
SCC5=
;
t=t150
;
;** bass
fm0=@33q6s1m3i80 v14 o2 l16
az=l16f-a-b->e-<b-a-dga>d<agd-f-a->d-
cz=v10l16r.f-a-b->e-<b-a-dga>d<agd-f-a-32z
;
a0=g>gg<g>gg<g>g<
a1=>e-<b-a-e-a-b->d<agdga>d-<a-f-d- r1
b1=r.>e-<b-a-e-a-b->d<agdga>d-<a-f- d-zr.rr2.
a2=b-rb-b-rb-b-rb-rb-rb-r
a3=>d8dd8dd8d8dd8dd8 d8dd8dd8d8dd8dd8
   <a-8a-a-8a-a-8a-8a-a-8a-a-8 a-8a-a-8a-a-8a-8a-a-8a-a-8
a4=>l16d8.dr2. d8.dr4ddr4. d8.dr8ddr4ddr8 e-d-c-g-r8gc<b->gr4
;
;** key 1
fm1=@77 m5o4 q6
fn1=@78 m5o4 q6
bx'=v12
by'=v11
bz=l16e-a-b->e-<b-a-dga>d<agd-f-a->d-
dz=l16r.e-a-b->e-<b-a-dga>d<agd-f-a-32z
;
bx=v12
by=v11z30
b0=l(a..i80)a..i(b8 b.i80)b2i>(c8 c.i80)c2i(d8 d2i80)d2i< (a..i80)a..i(b8 b.i80)b2i>(c8 c2..i80c8 )c1i<l16
c0=l(f..i80)f..i(g8 g.i80)g2i(a8  a.i80)a2i(b8 b2i80)b2i  (f..i80)f..i(g8 g.i80)g2i(a8 a2..i80a8  )a1il16z10
d0=l<(g..i80)g..i(g8g.i80)g2i(g8  g.i80)g2i(g8 g2i80)g2i  (g..i80)g..i(g8 g.i80)g2i(g8 g2..i80g8  )g1il16
b'=@77
bx1=v12@76
by1=v11r8.z30
b2=>l(a..i80)a..ig+16a16 (b..i80)b..ia16b16
    >l8(c.i80)c.i(f.i80)f.ic4 (d.i80)d.i(gg.i80g16)g4i
   <l(a..i80)a..ig+16a16 (b..i80)b..ia16b16
    >(c.mp9>c8c2 m5i80)c1i<
   <l(a..i80)a..ig+16a16 l8b.a.d(d.i80)d.ig16a16
    >(c.i80)c.i(f.i80)f.ic4 (d.i80)d.i(gg.i80g16)g4i
   <l(a..i80)a..il32agaa+ l8b.g.d.ga.(b16. )b>(c2..i80
b3=)c1i<
c3=c16)c2.i<z
b4=l8@77v12(e.i80)e.i(f2 fi80)f2.i (e.i80)e.i(f.i80)f.i(g g4.i80)g2i
c4=l8@77v12(c.i80)c.i(d2 di80)d2.i (c.i80)c.i(d.i80)d.i(e e4.i80)e2i
b5=@78v13l16(a1i80 )a2..iga (a4mp3c4.p5>c4.  c2m5i80c2 mp2d1 m5i80)d1i (c2i80)c2i (g4..i80)g4..ifgv13
c5=@78v13l16(d1i80 )d2..icd (c4mp3<f4.p5>f4. f2m5i80f2 mp3a1 m5i80)a1i (g2i80)g2i >(c2i80)c2i r8.v12z20
b6=agfd
vd=v13
vc=v12
b7=>(c4i80)c4l8<g.f.g d.c.d<(a4mp2<)a4p>>
   l16d8c<ag>f8.d8c<ag>g8. d8c<ag>a8.d8c<ag>g8.
   (a>c<a-bgb-g-afa-ege-g-df d-e-<b->
b8=d-<a>c<<cp8>>>c)c2p
   l8v13d.<g.>c.<f.b-.e -.a.d.(g.c.m5i80c
   <<mp2a2.>>p12a4 a4m5i80)a2.i
c8=)d-a>c<<<(cp8>>>c)c2p
   l8v12d.<g.>c.<f.b-.e -.a.d.(g.c.m5i80c
   <<mp2a2.>>p12a4 a4m5i80a16)a2i
bv=@78v13q6s1 o6
bw=z20v12
b9=l16 g8.gr2. g8.gr4ggr4. g8.gr8ggr4ggr8
c9=l16 d8.dr2. d8.dr4ddr4. d8.dr8ddr4ddr8 < z22
d9=l16<a8.ar2. a8.ar4aar4. a8.ar8aar4aar8 r16.
ba=q4a-e-d-a-r8adcar8
;
;** sequence
fm2=@16q4 v11 o6 l16
f0=araaraar
f1=>frffrffrfrfrfr
fv=@24q4 v13o2 z20
;
;** key 2
fm3=@77 q5s1 m5i30 o
ps0=@19 m5i30 o
gx=v10
gy=v9z20
;
g0=l(a..i80)a..i30(b8 b.i80)b2i30>(c8 c.i80)c2i30(d8 d2i80)d2i30< (a..i80)a..i30(b8 b.i80)b2i30>(c8 c2..i80c8 )c1i30<l16
h0=l(f..i80)f..i30(g8 g.i80)g2i30(a8 a.i80)a2i30(b8 b2i80)b2i30 (f..i80)f..i30(g8 g.i80)g2i30(a8 a2..i80a8 )a1i30l16z10
q0=v11l(g..i80)g..i(g8g.i80)g2i30(g8 g.i80)g2i30(g8 g2i80)g2i30 (g..i80)g..i30(g8 g.i80)g2i30(g8 )g2..i30l16>@16df+ gbf+gb>d<gb>df+<b>df+gb>d<<<@77<i30
   l(g..i80)g..i(g8g.i80)g2i30(g8 g.i80)g2i30(g8 g2i80)g2i30 (g..i80)g..i30(g8 g.i80)g2i30(g8 g2..i80g8 )g1i30l16<
dx=@24v13o3
ex=@3v11o5q3s1
g1=v9>l(f..i80)f..i30(g8 g.i80)g2i30(e-8 e-.i80)e-2i30(f8 f2i80)f2i30
h1=v9>l(c..i80)c..i30(d8 d.i80)d2i30(c8 c.i80)c2i30(d8 d2i80)d2i30
q1=   l(a..i80)a..i30(b8 b.i80)b2i30(a-8 a-.i80)a-2i30(b-8 b-2i80)b-2i30
d1=   l(g..i80)g..i30(g8 g.i80)g2i30(g8 g.i80)g2i30(g8 g2i80)g2i30
g2=(f..i80)f..i30(g8 g.i80)g2i30(a-8 a-1 i80)a-1i30
h2=(c..i80)c..i30(d8 d.i80)d2i30(e-8 e-1 i80)e-1i30<
q2=(a..i80)a..i30(b8 b.i80)b2i30>(c8 c1 i80)c1i30<
d2=(g..i80)g..i30(g8 g.i80)g2i30(g8 g1 i80)g1i30
g3=@18v10l16drddrddrdre-re-r
h3=@18v10l16b-rb-b-rb-b-rb-r>crcr<
q3=v10   l16frffrffrfrgrgr
d3=     l16b-rb-b-rb-b-rb-rb-rb-r
gv=@11 v11 o4
gw=@4 q4 v11 o5
ev=v11z30
;
fx=@2 q2s1 v12 o6 l16
d4=f8ff8gg8f8ff8gg8 f8ff8gg8f8ff8gg8
   g8gg8gg8g8gg8gg8 g8gg8gg8g8gg8gg8
e4=d8dd8ee8d8dd8ee8 d8dd8ee8d8dd8ee8
   d8dd8e-e-8d8dd8e-e-8 d8dd8e-e-8d8dd8e-e-8
f4=c8cc8cc8c8cc8cc8 c8cc8cc8c8cc8cc8
   c8cc8cc8c8cc8cc8 c8cc8cc8c8cc8cc8
;
;** drums
fmr=vb15vm14vs12vh11vc12
    y22,156 y38,3
    y23,169 y39,4
    y24,174 y40,2
rz=b16h16Y24,174mc16Y24,154mh16Y24,134mh16Y24,174h16bh16h16h16y24,174mc16Y24,134mh16Y24,114mh16VM14Y24,174bh16hms16hms16cms16
;
r0=VH11bh16VH10h16h16bh16bh16h16h16bh16bh16h16h16bh16bh16h16VH11bh16VH10h16
r01=VM14VH11bh16VH10h16h16bh16bhm16VM13VS11hms16VM11VS9hms16VM14VS12bh16bh16h16h16bh16bhm16VM13VS11hms16VH11VM11bhm16VM14VH10h16
r1=Y24,144bc16Y24,174h16h16bh16bh16h16h16bh16bh16h16h16bh16bh16h16VH11bh16VH10h16
r11=Y24,144bc16Y24,174h16h16bh16bhm16VM13VS11hms16VM11VS9hms16VM14VS12bh16bh16h16h16bh16bhm16VM13VS11hms16VH11VM11bhm16VM14VH10h16
r2=Y24,144bc16Y24,174h16h16h16h16h16bh16h16h16h16h16h16bmh16VM13VS11hms16VM11VS9hms16VM14VS12h16
r21=Y24,144bc16Y24,174h16h16h16hms16VM13VS11hms16VM11bhm16VM14h16h16h16h16h16bhm16VM13VS11hms16VM11VS9hms16VM14VS12h16
r3=Y24,144bc16Y24,174h16h16bh16bhm16VM13VS11hms16VM11VS9hms16VM14VS12bh16bh16h16h16bh16bhm16VM13VS11hms16VM11bhm16VM14h16
r4=Y24,144bc16Y24,174h16h16bh16bhm16VM13VS11hms16VM11VS9hms16VM14VS12bh16bh16h16h16bh16bh20h20h40b40h20h20
r5=VM15Y24,184bmc16VH10h16h16Y24,174bm16bh16h16Y24,154mh16bh16Y24,174bm32m32m16Y24,154m32m32bm16Y24,134bm16Y24,174VM14ms32ms32ms16bms16
r5'=VC13b16c16VM15Y24,174mh16Y24,154mh16Y24,144mh16Y24,174h16bh16h16h16Y24,154mc16Y24,134mh16Y24,114mh16VM14Y24,174bh16hms16hms16cms16
   bhm16bhm16bhm16VM15Y24,154mc32mh32mh16h16Y24,134bmh24m24mh24mh16Y24,114mc16mh24m24mh24VM14Y24,174bh32h32h32h32h16ms48cms48ms48VC12
r6=bc16bh16bh16bh16bhm16hms16VM13VS11hms16VM11bhm16VM14bh16bh16bh16bh16bhm16hms16VM13VS11hms16VM11bhm16VM14vs12
r7=Y14,144bc16Y24,174bh16bh16bh16bhm16hms16VM13VS11hms16VM11bhm16VM14vs12bh16bh16bh16bh16bhm16hms16VM15Y24,114mh16VM14Y24,174bh16
r8=bc16bh16bh16bh16bhm16hms16VM13VS11hms16VM11bhm16VM14bh16bhm16bhm16bhm16bh16hms16hms16VM13bhm16VM14vs12
r9=Y24,144bc8.Y24,174bh16bh8bh16bh16bh8bhm16VM13VS11ms16VM11bhm8VM14vs12
   bh8.bh16bh8bh16bh16bh8bhm16VM13VS11ms16VM11bhm8VM14vs12
   bh8.bh16bh8bh16bh16b16h16bhm16ms32VM15Y24,134m32Y24,114bmh8VM14Y24,174
ra=bh8.bh16bh8bh16bh16b16h16bhm16hms16bhm8
rb=bh8.bh16bh8bms16bms16bms16ms16VM15Y24,144bm16Y24,124m16Y24,104bm16m16VM14Y24,174
rc=bh16h16bh16bh16hms16VM13VS11hms16VM11bhm16VM14h16vs12
rd=bh16h16bh16bh16ms16ms16bms16ms16
re=bh16h16bh16bh16ms16ms16VM15Y24,134bm16Y24,114m16VM14Y24,174
rf=bh16h16h16bh16VM15Y24,174m32m32m16m16Y24,164m16Y24,144m16m16Y24,124m16VM14Y24,174ms16bh16bh16hms16hms16
   bh16VM13VS11hms16VM11VS9hms16VM14VS12bh16VH12h32VH11h32h16h16h16bhm16VM13bhm16VM11VS9hms16VM13VS11hms16VM11VS9hms16VM14VS12h16h16h16
   bh16h16h16bh16r8bhm16bhm16VM13VS11ms16VM11VS9ms16VM10VS8ms16VM14VS12bhm16bhm16VM13VS11ms16VM11VS9ms16VM10VS8ms16VM14VS12
   VM15Y24,144bmh16mh16Y24,124mh16bmh16r8Y24,124bmh16mh16Y24,104mh16bm8Vm14Y24,174ms32ms32ms16ms16ms8
;
psr=l16 o8 v8
sz=v9r@3a@4a@3aaaaaa@4a@3aaav11@6ddd
s0=@4a@3aaaaaaaaaaaaa@4a@3a
s01=@4a@3aaav11@6dv8@3aaaaaaav11@6dv8@3a@4a@3a
s1=@3aaaaaaaaaaaaaa@4a@3a
s11=@3aaaav11@6dv8@3aaaaaaav11@6dv8@3a@4a@3a
s2=@3aaaaaaaaaaaav11@6dv8@3a@4a@3a
s21=@3aaaav11@6dv8@3aaaaaaav11@6dv8@3a@4a@3a
s3=@3aaaav11@6dv8@3aaaaaaav11@6dv8@3aaa
s4=@3aaaav11@6dv8@3aaaaaaal20aaaaal16
s5=@3aaaaaaaar4rv11@6d32d32dd
s5'=rv8@3a@4a@3aaaaaa@4a@3aaav10@6ddd
   dddv8@4a32@3a32aaa12a24a@4a@3a12a24l32aaaal16av11@6d48d48d48
s6=v8@4a@3aaav11@6dv10dv8@3aaaaaav11@6dv8dv8@3aa
s7=@3aaaav11@6dv8d@3aaav11@6dddv8@3av11@6ddv8@3a
s9=v8@4arr@3aaraaarv11@6d8v8d@3a
   @3arraaraaarv11@6d8v8d@3a
   @3arraaraarav11@6ddv8d@3a
sa=arraaraarav11@6ddd8
sb=arraarv11@6ddddv9@3r4
sc=v9@4a@3aaav11@6dv9@3aaaaaaav11@6dv9@3aaa
sd=@4a@3aaav11@6dv9@3aaaaaaav11@6ddddv9
se=@4a@3aaav11@6dv9@3aaaaaaav11@6ddv9rr
sf=@4a@3aa@4ar4rrrv11@6dv8@3aav11@6ddv8
   @4a@3aa@4av8@3a32v8a32aaav11@6dv8@4a@3aaaaaa
   @4a@3aa@4ar8v11@6ddr4ddr8v8
   @3aaaar8aaaa8v11@6d32d32ddd8
;
;*** end
