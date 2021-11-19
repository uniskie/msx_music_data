;*************************;
;    [ DRAGON SPIRIT ]    ;
;   ¢ NAME RANING 1st £   ;
;       (C)  namco        ;
;*************************;

FM1 =t,a
     t,fm0,a0/4,v10,a1/4
FM2 =t,a
     t,fm0,b0/4,v10,b1/4
FM3 =t,a
     t,fm0,c0/4,c1,b1/3,b2
FM4 =t,a
     t,fm1,a0/4,v8,a1/3,a2
FM5 =t,a
     t,fm1,b0/4,v8,b1/3,b2
FM6 =t,a
     t,fm3,f0/4,f1/4,f2/2,f3/2
FMR =t,fz
     t,fmr,r0/8,r1/4
FM7 =
FM8 =
FM9 =
PSG1=t,a
     t,ps0,d0/2,d1/2,d2,d3
PSG2=t,a
     t,ps0,e0/2,e1/2,e2,e3
PSG3=t,sz
     t,psr,s0/8,s1/4
SCC1=
SCC2=
SCC3=
SCC4=
SCC5=

t=t150

a=r1

;*** rhythm
fz=v15vs12
   y39,2y23,254
   y40,2y24,254
   sm32sm32sm16sm16sm16
   y23,212y24,212
   sm32sm32sm16sm16sm16
   y23,164y24,165
   sm32sm32sm16sm16sm16
   y23,116y24,116
   sm16sm16sm8
sz=v9q6l16
   @28d32d32ddd
   @29d32d32ddd
   @06d32d32ddd
   @08dddv8d

fmr=v15vs12
    y39,2y23,166
    y40,2y24,166
    y38,3y22,168
psr=v9q6l16o8
r0=b4ms4b16b8b16ms4
s0=@3dddd@6d@3dd@3ddddd@6d@3ddd
r1=b8b8ms4b8b8ms4 b8b8ms8.b16b8b8ms4
s1=@3ddee@6d@3deeddee@6d@3dee
   @3ddee@6d@3deeddee@6d@3d@4e@3e

;*** fm merody 1
fm0=o6@86q6s1 v12 l8
fm1=o6@86q6s1 v10 l8 z10r16.
a0= e.r16f.r16e4.(f )fr4 c.rc.d32r16.<
b0= c.r16c.r16c4.(c )cr4<a.ra.b32r16.
c0=<g.r16a.r16g4.(a )ar4 f.rf.g32r16.
v10=v11
v8=v10
a1=@01q5f4fg4gf4 aa4gf4f4
b1=@01q5d4de4ed4 fe4ed4d4
c1=@01q5v8r16..z30
a2=f4fg4gf4 aa4gf4f8
b2=d4de4ed4 fe4ed4d8

;*** kirakira
ps0=o5@23q4 v11 l8
d0=m5l4c>c<gc     v8z10(g4.i40)g4iv11z@24>l8ccc<@23
e0=m5l4r8gc>c<(g8 gi40)g..i@24>l8cc.<@23
d1=l4e2c8r(e8 )e4<(a.i80)a.i
e1=l4rd.(d.   )d8<a4.v8z10(a.i80)a8iv11z
d2=>V11<r8b-.b-.(b-8 )b-8b-8b-.b-(b-8 )b-2b-.(b-8 )b-8b-8b-.b-b->
e2=>v10z30<r4b-.b-.(b-8 )b-8b-8b-.b-(b-8 )b-2b-.(b-8 )b-8b-8b-.b-b->
d3=c.c.(c8 )c8c8c.c(c8 )c8c.c.(c8 )c8c8c.cc8
e3=c.c.(c8 )c8c8c.c(c8 )c8c.c.(c8 )c8c8c.c

;*** base
fm3=@33q6s1 v14 m4i30 l8
f0=o2c>c<c>c<c>c<c>c<
f1=f>f<f>f<f>f<f>f<
f2=b-b-4>b-b-4<b-(b- )b->b-b-4<b->b-<b->b-<
f3=>cc4>cc4<c(c )c>cc4<c>c<c>c<

