;***   DRAGON SPIRIT
;
;       - BOSS B -
;
;   COMPOSED BY
;    SHINZI 'MEGATEN' HOSOE

FM1 =t,fm1,a0/32,a2
FM2 =t,fm2,a0/32,a1,a2
FM3 =t,fm3,c0/2,c1,c2/2,c1,c2/2
FM4 =t,fm3,d0/2,d1,d2/2,d1,d2/2
FM5 =t,fm4,e0/4,b1
FM6 =t,fm5,e0/4,b1
FMR =t,fmr,;r0,
           r1/3,r2,r1/3,r2,r1/3,r3,r1/3,r3,r4
FM7 =
FM8 =
FM9 =
PSG1=t,ps0,b0/4,b1
PSG2=t,ps1,b0/4,b1
PSG3=t,psr,;s0,
           s1/3,s2,s1/3,s2,s1/3,s3,s1/3,s3,s4
SCC1=
SCC2=
SCC3=
SCC4=
SCC5=

t=t168

fm1=@24q4s1 v13 o2
fm2=@33q4s1 v14 o2
a0=l8 dfaf
a1=z10>
a2=r2.d16d16b

ps0=@16 v12 o
ps1=@16 v11 o r8.z12
b0=l8r(d.i80)d.i(d.i80)d.i(d d16i80)d.i(d.i80)d.id4(d
   )di(d.i80)d.i(d.i80)d.i(d d16i80)d.id4d<a>>d4<
b1=r2

fm3=@67 v12 m6 o6
c0=l2(ci90)ci <(bi90)bi l(ai90)aigb (a2i90)a2i
d0=<l2(ai90)ai (gi90)gi l(fi90)fieg (f2i90)f2i
c1=l8>efe(ff4i90)f4i ded(ee4i90)e4i
d1=>l2(ci90)ci <(bi90)bi
c2=l8(c.i90)c.i (d.i90)d.i e4<
d2=l8(a.i90)a.i (b.i90)b.i >c4<

fm4=@24s1q4 v13 o5
fm5=@24s1q4 v12 o5 r8.z30
e0=m4i8l8a>c<a>ec<a>ec d<bg>d<bg>d<b fa>c<af>c<a>c <fa>e<fa>e<fa

fmr=v15 vs13 vh11 vc13
  y22,168 y38,3
  y23,165 y39,4
  y24,175 y40,2
r0=ms32ms16.b32b16.cbs32cbs16.y23,195y24,205ms64ms32.ms64ms32.y23,175y24,185ms32ms16.y23,165y24,175ms32ms16.ms64ms32.y23,125y24,135ms64ms32.cbs32cbs16.
r1=bsh8h8hms4hbs8y23,125y24,135bms8y23,165y24,175hms8c8
r2=hbs8h8hms4hbs8y23,125y24,135bms8y23,165y24,175hms8y23,125y24,135cms8y23,165y24,175
r3=hbs8h8hms4hbs8y23,125y24,135bms8y23,165y24,175hms8cms8
r4=y23,195y24,205ms64ms32.y23,175y24,185ms16bs32bs16.y23,125y24,135bms8y23,175y24,185ms64ms32.y23,125y24,135ms16bs32bs16.y23,125y24,135bms8y23,165y24,175ms64ms32.y23,125y24,135ms16ms16cbs64cbs32.

psr=v11 m 
s0=l32@6dd16.r4@28d64d.d64d.@29dd16.@6dd16.d64d.@8d64d.r8
s1=l@6rdr8@8d8@6d
s2=l@6rdl8r@8d@6d@8d
s3=l@6rdl8r@8d@6dd
s4=l16@28d64d32.@29dr8@8d8@29d64d32.@8dr8d8@6d64d32.@8ddr


