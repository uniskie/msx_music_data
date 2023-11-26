2;*     SNATCHER   OPENNING THEME     *
;*    ¢TWILIGHT OF NEO KOBE CITY£    *
;*           (C) KONAMI              *
; OPLL+PSG modify 2023/11/26 uniskie

FM1 =;t',fm1i,a0
     t,fm1, a1,a2,a1,a3,a4,a5,a6
FM2 =;t',fm1i,b0
     t,fm2, a1,a2,a1,a3,b4,a5,b6
FM3 =;t',f3'1,c0,c0f
     t,fm3 ,c1,c2,c1,c3f,c3,c4f,c4,c5/2,c6,c4,c5,c7,c8f,c8,c9
FM4 =;t',fm4i,d0,d1,d0,d2
     t,fm4 ,d3,d4,d3,d5,d6,d7,d6,d8
FM5 =;t',f3'2,c0,c0f
     t,fm5 ,e1,e2,e1,e3f,e3,e4f,e4,e5,e4,e6
FM6 =;t',f'4 ,d0,d1,d0,d2
     t,fm6 ,f1,f2,f1,f3f,f3,f4f,f4,f5,f4,f6
FMR =;t',fmr ,e0/8
     t,fmr ,r1/15,r2,r1/6,r3
FM7 =
FM8 =
FM9 =
PSG1=;t',ps1,d0,d1,d0,d2
     t,ps1,d3,d4,d3,d5,d6,d7,d6,d8
PSG2=;t',ps2i,c0,c0p
     t,ps2,c1,c2,c1,c3p,c3,c4p,c4,c5/2,c6,c4,c5,c7,c8p,c8
PSG3=;t',ps3,e0/8
     t,ps3,s1/15,s2,s1/6,s3
SCC1=
SCC2=
SCC3=
SCC4=
SCC5=

t'=t112
t=t115

;****** merody

fm1i=@81 v9 o5 m6i6 
fm1=@78 v12 o5 m6i6 s1 
fm2=@78 v10 o5 m6i6 s1 z12 r8
a0=<l8b>cev13(b4i60)b4.i6v10
   <b>cev13(b4i60)b4.i6v10
   <b>cev13(b4i60)b4i6a16b16v10
   (a4i60)a4i6v12(g4i0)g4i6v10
   <b>cev13(b4i60)b4.i6v10
   <b>cev13(b4i60)b4.i6v10
   <b>cev13(b4i60)b4i6a16b16v10
   a-4v8a-4v6a-4v4a-4
b0=<l8b>cv13(e4.i60)e4.i6v10
   <b>cv13(e4.i60)e4.i6v10
   <b>cv13(e4i60)e4.i6a16b16v10
   (e4i60)e4i6v12(d4i60)d4i6v10
   <b>cv13(e4.i60)e4.i6v10
   <b>cv13(e4.i60)e4.i6v10
   <b>cv13(e4i60)e4.i6a16g16
   e4v8e4v6e4v4e4
a1=l8c24d24(e24e4i60)e4i6<a>cd
   d4e<a-4a->cd
   d4e<g4>cde
   a32(b16.i60)bi6ae4d4c
a2=d4e<a4>d4e
   (d.i60)d.i6<(b.i60)b.i6g4
   (a.i60)a.i6>(ee2
   ei60)e2..i6
a3=d4e<a4>d4e
   (d.i60)d.i6<(b.i60)b.i6g4
   (a2i60
a4=)a2i6
   v13@16
   >d-q4d-4qd4(e.i60)e.i6
   v12@79
b4=)a4.i6
   v13@16
   >eq4e4qf4(g.i60)g.i6r8
   v10@79
a5=d24e24(f24f4i60)f4i6<a>df
   (e.i60)e.i6(d.i60)d.i6cd
   (e4i60)e4.i6<gb>e
   (c.i60)c.i6(d.i60)d.i6e4
   d24e24(f24fi60)fi6(f.i60)f.i6f4
   (e.i60)e.i6(d.i60)d.i6c4
   (e2i60
a6=)e2i6
   @16
   rq3grq(f4i60)f4.i6
b6=)e2i6
   @16
   rq3grq(f4i60)f4i6

;****** sub merody

f3'1=@3 v11 o4m5 q4s1
f3'2=@24 v13 o3m5 q4s1 z12
fm3=@10 v10 o4m5 q4s1
ps2i=@16 v5 o3m5 q6 z1
ps2=@16 v5 o3m5 Q6 z1

c3f=@16v10
c3p=@11v5
c4f=>v8
c4p=>
c8f=<
c8p=<

c0=l12(ep5ff+ gg+a a+b>c c+dd+ eff+ gg+a a+b>c c+dd+ e1 e1
   m4i30 e1 e1 e1 e2)p0
c0f=@0
   l32(d+dc+c<ba+ag+gf+f)er8
c0p=>
   l32(d+dc+c<ba+ag+gf+f)er8
c1=i6l8a>ce<a16>ce<a16>c<a
   a->ce<a-16>ce<a-16>c<a-
   g>ce<g16>ce<g16>c<g
   g-a>d<g-16a>c<g-16a>e
   <fa>c<f16a>c<f16a>c
   <gb>d<g16b>dc16<bg
   a>ce<a16>ce<a16>ce
c2=<ea-be16a-be16a-e

c3=<q2aa4q4b4>(d-.i60)d-.i6 l24
c4=<fa>d(f4.i60)f4.i6r8
c5=<gb>d(g4.i60)g4.i6r8
c6=<ea>c(e4.i60)e4.i6r8
c7=l12 <<b>egb>egbge<bge>
c8=q2l8rdr(d4i60d4
c9=)di

;****** bass
fm4i=o2v14 @33 m6 z q2s1
fm4=o2v14 @33 m6 z   q2s1
f'4=o2v11 @6  m6 z20 q4s1
ps1=o2v6 @17 m6 z q6

d0=l2 (ai60)ai (gi60)gi (fi60)fi
d1=(gi60)gi
d2=(ei60)ei
d3=l8
   (a .i60)a .i(a 4i60)a 4ie
   (a-.i60)a-.i(a-4i60)a-4ie
   (g .i60)g .i(g 4i60)g 4ie
   (g-.i60)g-.i(g-4i60)g-4id
   (f .i60)f .i(f 4i60)f 4ic
   (e .i60)e .i(e 4i60)e 4ic
   (a .i60)a .i(a 4i60)a 4i
d4=c16d16
   rer(e4i60)e4i<b>
d5=a16a16
   q4d-d-rqd4e4<a> >
d6=(d.i60)d.i>(c4i60)c4i<<a
   (g.i60)g.i>(g4i60)g4id
d7=(c.i60)c.i>(c4i60)c4i<<b
   (a.i60)a.i>(e.i60)e.ic4
d8=l6egb>(e4i60)e4i<
   q4l8rer(e4i60)e4i<b
   
;******* cord
fm5=o5v8 @14 q5s1 m5i6 z
fm6=o5v7 @14 q5s1 m5i6 z16
e3f=@16 v11 q4s1
f3f=@16 v11 q4s1
e4f=@3 v10 q5s1
f4f=@3 v10 q5s1

e0=r1
;e1=l2(ci60)ci6 (ci60)ci6 (ci60)ci6 <(ai60)ai6 (ai60)ai6 (bi60)bi6 >(ci60)ci6
e1=l8 <ea>c(e4i60)e4.i6 <ea->c(e4i60)e4.i6 <eg>c(e4i60)e4.i6 
     <dg-a>(d4i60)d4.i6< cfa>(c4i60)c4.i6< dgb>(d4i60)d4.i6< ea>c(e4i60)e4.i6
f1=l2(ai60)ai6 (a-i60)a-i6 (gi60)gi6 (g-i60)g-i6 (fi60)fi6 (gi60)gi6 (ai60)ai6
e2=l8<rb r(b 4i60)b 4.i6>
f2=l8 ra-r(a-4i60)a-4.i6
e3=l16 d-rd-rl8r  dr (e .i60)e .i6
f3=l16 a ra rl8r  br>(d-.i60)d-.i6<
e4=l2 (di60)d2i6 <(bi60)b2i6
f4=l2 (ai60)a2i6 (gi60)g2i6
e5=(bi60)b2i6 >(ci60)c2i6
f5=(gi60)g2i6 (gi60)g2i6
e6=>(ei60)e2i6rr
f6=(bi60)b2i6rr

;****** rythum
fmr=y22,165y38,3 ;b
    y23,156y39,1 ;sh
    y24,184y40,2 ;cm
    v8vb14vc9vh8
r1=b8h8vs10vm10sm16vs8vm8sm16vs7vm7sm16r8vs10vm10h8sm16h8c8
r2=vs11vm11sm8sm4vs10vm10sm4sm4sm16sm16
r3=b8h8vs10vm10sm16vs8vm8sm16vs7vm7sm16vs10vm10h8h8sm16sm4
   h8b4sm2sm16sm16

ps3=@0 q3 l16
s1=r4v6dv3dv2dr4v6dr4
s2=v7d8d4v6d4d4dd
s3=r4v6dv4dv2dr4v6@2dd4@0
   r8@7d8r8@6d2@0dd

