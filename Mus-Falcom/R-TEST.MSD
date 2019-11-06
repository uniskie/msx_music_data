FM1 =
FM2 =
FM3 =
FM4 =
FM5 =
FM6 =
FMR =
FM7 =t,fm7,a0,a1,a1,r2,a0,a1,a2,a0,
FM8 =t,fm8,b0,b1,r2,r2,r2,b2,r2,r2,
FM9 =t,fm9,c0,c1,r2,c1,c0,c1,r2,r2,
PSG1=
PSG2=
PSG3=
SCC1=
SCC2=
SCC3=
SCC4=
SCC5=

t=y14,32   ;-- rhythm:ON
  t255 r64 ;-- need to initialize bug
  t150 m1 l8

; * OPLL inst register's value: ( reg value=@* )
;  0=@user / 1=@2 / 2=@10 / 3=@0 / 4=@3 / 5=@4 / 6=@5 / 7=@6
;  8=@9 / 9=@48 / 10=@24 / 11=@14 / 12=@16 / 13=@23 / 14=@33 / 15=@12

; * OPLL volume register's value: 15=min / 0=max
; * MML volume register's value: 0=min / 15=max
; * PSG volume register's value: 0=min / 15=max

fm7=v15@12 y54,240 q1s1 ;y54,@*16+v : v=bass
fm8=v13@12 y55,242 q1s1 ;y55,@*16+v : v=snare  : @=hihut
fm9=v0@2   y56,15  q8s1 ;y56,@*16+v : v=cinbal : @=tom

r2=r2

;-- ch.7: bass drum
a0=;o3>ec<gc
   o3>(e64<<p24)e16..p>>(c64<<p24)c16..p>><p(g64<p12)g16..p>(c64<p12)c16..p>
a2=o3l64>(edc<bagf)e>(c<bagfed)c><(gfedc<ba)g>(c<bagfed)c>l8
a1=o3>(e64<<p24)e32.p>>(e64<<p24)e32.p>>(c64<<p24)c16..p>><p(g64<p12)g16..p>(c64<p12)c16..p>
a2=o2>(e64<<p24)e16..p>>(c64<<p24)c16..p>><p(g64<p12)g16..p>(c64<p12)c16..p>

;-- ch.8: snare / hi-hut
b2=;o3y55,15b16b16y55,242co8y55,15co3y55,242<c>
   o4y55,15(b64p24<<)b32.p>>(b64p24<<)b32.p>>y55,15(c64<<p24)c16..p>>o3y55,242(g64<p24)g16..p>y55,242(c64<p24)c16..p>
b0=o3>(e64<<p24)e16..p>>(c64<<p24)c16..p>><p(g64<p12)g16..p>(c64<p12)c16..p>
b1=o2>(e64<<p24)e16..p>>(c64<<p24)c16..p>><p(g64<p12)g16..p>(c64<p12)c16..p>

;-- ch.9: cinbal / tom-tom
c0=;o1>ec<gc
   o1>(e64<p24)e16..p>(c64<p12)c16..p(g64p6)c16..p(c64p6)c-16..p>
c1=o1>(e64<p24)e32.p>(e64<p24)e32.p>(c64<p12)c16..p(g64p6)c16..p(c64p6)c-16..p>
c2=o3y56,240(c64<<p24)c16..p> y56,15 rrr
