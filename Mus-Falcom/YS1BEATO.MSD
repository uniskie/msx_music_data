; Ys - BEAT OF TERROR -
;voice.vcd
FM1 =t,fm0,;a00
           a1/2,a0/2,a1/2,a0/2,a1/2,a0/2,a0/8,a1/4,a2/4,a1/4,a0/4
FM2 =t,fm1,;a01
           a1/2,a0/2,a1/2,a0/2,a1/2,a0/2,a0/8,a1/4,a2/4,a1/4,a0/4
FM3 =t,fm2,;b0
           b1/2,b2,b1/2,b2,b1/2,b3,   b4,b5,  b6/2,b7  ,b8/2,b9/2,ba/4
FM4 =t,fm2,;b0
           c1/2,c2,c1/2,c2,c1/2,c3,z1,b4,c5,z,c6/2,c7/2,c8/2,c9/2,ca/4
FM5 =t,fm2,;b0
           d1/2,d2,d1/2,d2,d1/2,d3,b0/3,g01,g1,gr,g2
FM6 =t,    ;b0
           b0/9,g00,g1,g2,g3
FMR =
FM7 =t,fm3,;b0
           d1/2,d2,d1/2,d2,d1/2,d3,z0,b0/3,g00,g1,g2,g3
FM8 =t,fm3,;b0
           b1/2,b2,b1/2,b2,b1/2,b3,b4,b5,b6/2,b7  ,b8/2,b9/2,ba/4
FM9 =t,fm3,;b0
           c1/2,c2,c1/2,c2,c1/2,c3,z3,b4,c5,z2,c6/2,c7/2,c8/2,c9/2,ca/2
PSG1=t,ps0,;b0
           e1,e2,e3/8,b0/6,e4,e5
PSG2=t,ps1,;b0
           e01,e1,f2,f3/8,b0/6,f4,e5
PSG3=t,ps2,;b0
           e02,e1,e2',e3/8,b0/6,e4',e5
SCC1=
SCC2=
SCC3=
SCC4=
SCC5=

t=t108


;-------
fm0=@33 o2l8 v14 s1
fm1=@14 o2l8 v11 q4s1

a00=v7b-b-v8b-b-v9b-b-v10b-b- v11b-b-v12b-b-v13b-b-v14b-b-
a01=v4b-b-v5b-b-v6b-b-v7b-b- v8b-b-v9b-b-v10b-b-v11b-b-
a0=b-b-b-b-b-b-b-b-
a1=bbbbbbbb
a2=>cccccccc<

;-------
fm2=@37 q6s1 v11 l16 m5i8
fm3=@37 q6s1 v11 l16 m5i8 z20

b0=r1 r1
b1=o5b-8.a-r8b-8.a-r8b-b-a-r
c1=o5f8.e-r8f8.e-r8ffe-r
d1=o4b-8.b-r8b-8.b-r8b-b-b-r
b2=b-8.a-r8(b-8b-2 i60b-2.)b-8r8i8
c2=f8.e-r8(f8f2 i60f2.)f8r8i8
d2=b-8.b-r8(b-8b-2 i60b-2.)b-8r8i8
b3=b-8.a-r8(b-8b-2 i60)b-2r2i8
   v11
c3=f8.e-r8(f8f2 i60)f2r2i8
   r8.v9
z1=z3
z3=z5
d3=b-8.b-r8(b-8b-2 i60)b-2r2i8
b4=@14q6s1;@38
   l8 ffb->d-c<a-e-f d-e-cd-<b->c<a-e- f1 r1
    > ffb->d-cd-e-f d-e-cd-<b->c<a-(b- )b-1>
b5=r1 @37q8s0 v11
c5=r2.r16 @37q8s0v9
z=z
z2=z20
b6=b-4a-(e-e-4i60)e-4i8 rb-a-e-b-a-e-4
c6=f4e-<(b-b-4i60)b-4i8> rfe-<b->fe-<b-4>
b7=b4a(e)e2 rbaebae4 b4a(ee4i60)e4i8 rbaebaef+
c7=f+4e<(b)b2> rf+e<b>f+e<b4>
b8=d<f+>c+<f+>d<f+>c+<f+>
c8=<f+<b>f+<b>f+<b>f+<b>>
b9=f+<b>e<b>d<b>e<b>
c9=d<f+>c+<f+bf+>c+<f+>
ba=f<b->e-<b->d-<b->e-<b->
ca=d-<f>c<fb-f>c<f>

;-------
ps0=@14 v9
ps1=@14 v7 z20
ps2=@14 v5 z40
e01=r8.
e02=r4r16
e1=m5i10
   qr1 r1 r1 o4b-8.a-16r8b-4..l32>cd-e-fg-a-
   b-1 a-2e-2 f4f+8(f8f2 f2.)f<b->cd-e-fg-a-
   b-1 a-2>d-2 <(b-1 )b-2< 
   l16 @4
e2=v9r2
e2'=r2
e3=f1
f2=v9r4r16
f3=e-1
e4=@14v9
e4'=@14v8
f4=@14v7r8.
e5=(b-2.)b-8b->c (d-2.)d-8d-e- f1 r4


;-------
z0=z10
g00=@0s1o6l8
    r1 v5fv6e-v7b-v8fv9e-v10b-fe-
g01=@0s1o6l8 r16.v9 z30
    r1 v3fv4e-v5b-v6fv7e-v8b-fe-
g1=b-fe-b-fe-b-f e-b-fe-b-fe-b- fe-b-fe-b-fe- b-fe-b-fe-b-f
   bf+ebf+ebf+ ebf+ebf+eb f+ebf+ebf+e bf+ebf+ebf+
   bf+dbf+dbf+ dbf+dbf+db f+dbf+dbf+d bf+dbf+dbf+
   l16
g2=b-b-ffd-d-b-b-ffd-d-b-b-ff d-d-b-b-ffd-d-b-b-ffd-d-b-b-
   ffd-d-b-b-ffd-d-b-b-ffd-d- b-b-ffd-d-b-b-ffd-d-b-
gr=r16.
g3=b-ff
   

