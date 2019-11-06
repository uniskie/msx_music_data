;***************************
;    YS  ¢Final Battle£
;    voice3.vcd
;***************************
FM1 =t,fm0,a0/2,a1,a2,a1,a3/2,a4,a5
FM2 =t,fm1,b0/2,b1,b2,b1,b3/2,b4
FM3 =t,fm2,c0/2,c1
FM4 =t,fm3,d0/8,d1
FM5 =t,fm4,d0/8,d1
FM6 =t,fm5,c0/2,c1'
    ;t,fm5,a0/2,a1,a2,a1,a3/2,a4
FMR =t,fmr,r0/4,r1/2,r2
FM7 =
FM8 =
FM9 =
PSG1=t,psr,z0/4,z1/2,z2
     ;t,ps0,c0/2,c1
PSG2=t,ps0,c0/2,c1
     ;t,ps1,d0/8,d1
PSG3=t,ps2,b0/2,b1,b2,b1,b3/2,b4
SCC1=
SCC2=
SCC3=
SCC4=
SCC5=

t=t120

;**** distution guiter ****
fm0=o6@72q6 v13 s1
fm1=o5@72q6 v13 s1
;fm5=o5@67q6 v11 z4r8.
ps2=o4@13q6 v10 m8i20
a0=l16e-f>c<e-f>c<e-f>c<e-f>c<e-fg-a-
b0=l16b->cf<b->cf<b->cf<b->cf<b->cd-e-<
a1=<g-g->g-8<g->g-8<ba-a->a-8<a->a-8.
b1=<bb>b8<b>b8g-d-d->d-8<d->d-8.<
a2=fg-b->d-fd-<b-g-fg-b->d-fg-a-b-<
b2=b->e-fg-a-g-fe-<b->e-fg-a-b-b->d<<
a3=e-b->e-<fb->e-<e-b-
b3=<b-b->b-8<b->b-<b-b->
a4=fb->d<fb->d<fb-< @23 b->d @23 f<b->d
a5=f<b->d
b4=<b-b->b-8<b->b-<b-b->d-<f>a->d-<fa->d-f

;**** sub guiter ****
fm2=o5@2q6 v15 m4
fm5=o5@24q6 V11 m4 z30 r16
ps0=o4@10q6 v11 m4 z30
c0=l8e-.f.(b-.i90)b-.il16a-a-g-f
c1=l(e-i90)e-i(fi90)fi (g-..i90)g-..if8
    (e-i90)e-i(fi90)fi (f..i90)f..ie-8
   l2(di90)di
c1'=l(e-i90)e-i(fi90)fi (g-..i90)g-..if8
    (e-i90)e-i(fi90)fi (f..i90)f..ie-8
   l2(di90d4d8)d16i

;**** base guiter ****
fm3=o3@33q4 v14
fm4=o3@23q5 v14
ps1=o3@17q4 v10
d0=l16e-e-e-e-
d1=<bbbbbbbb>d-d-d-d-d-d-d-d- e-e-e-e-e-e-e-e-e-e-e-e-e-e-d-d-
   <bbbbbbbb>d-d-d-d-d-d-d-d- <b-b-b-b-b-b-b-b-b-b-b-b-b-b-b-b-
   b-b-b-b-b-b-b-b-b-b-b-b-b-b-b-b->>

;**** rythum ****
fmr=v15vs13vh12
     y24,186 Y40,2
     y23,152 y39,4
     y22,120 y38,3
r0=b8hsm8bh24h24h24hsm8 b8hsm8bm16h16sm16h16
r1=b8hsm8bh24h24h24hsm8 b8hsm8 b16h16sm16h16
r2=b8hsm8bh24h24h24hsm8 b8hsm8bsm16hsm16y23,100y24,130sm16sm16

psr=v12 q6 @2 o3
z0=l r8ddl8ddd
z1=l r8dddd8
z2=l r8ddd8l16ddv11@27l64(d<bg)e>(d<bg)e


