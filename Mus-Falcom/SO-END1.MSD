;*********************************
; SORCERIAN - ENDING 1 
;   PSG+OPLL Arrange ver.
;   voice: so-end1.vcd
; Sorcerian / (c) Nihon Falcom
;*********************************
FM1 =t,m0,a0,    a1,m02,a2,a3,m00,a1,m02,a2,a3,m04,a4,m00,a0,    a1,m02,a2,a5
FM2 =t,m1,a0,    a1,m12,a2,a3,m10,a1,m12,a2,a3,m14,a4,m10,a0,    a1,m12,a2,a5
FM3 =t,m2,b0,m21,b1,m22,b2,b3,m21,b1,m22,b2,b3,m24,b4,m20,b0,m21,b1,m22,b2,b5
FM4 =t,m3,c0,    c1,    c2,c3,    c1,    c2,c3,    c4,    c0,    c1,    c2,c5
FM5 =t,m4,c0,    c1,    c2,c3,    c1,    c2,c3,    c4,    c0,    c1,    c2,c5
FM6 =t,m5,d0,m51,d1,m52,d2,d3,m51,d1,m52,d2,d3,m51,d4,m50,d0,m51,d1,    d2,d5
FMR =                                                            
FM7 =t,m6,d0,m51,e1,m52,e2,e3,m51,e1,m52,e2,e3,m51,e4,m50,d0,m51,e1,    e2,e5
FM8 =t,m7,a0,m71,d1,m72,e2,d3,m71,d1,m72,e2,f3,m71,f4,m70,a0,m71,d1,    d2,d5
FM9 =t,m8,a0,    a1,m82,a2,a3,m80,a1,m82,a2,a3,m84,a4,m80,a0,    a1,m82,a2,a5
PSG1=;t,p0,a0,    a1,    a2,a3,    a1,    a2,a3,    a4,    a0,    a1,    a2,a5
PSG2=;t,p1,c0,    c1,    c2,c3,    c1,    c2,c3,    c4,    c0,    c1,    c2,c5
PSG3=;t,p3,b0,    b1,    b2,b3,    b1,    b2,b3,    b4,    b0,    b1,    b2,b5
SCC1=
SCC2=
SCC3=
SCC4=
SCC5=

t=t85

;***** PART 0

m0=o6@77v15q6s1
m1=o6@77v12q6s1 z12 r16
m8=o5@77v13q6s1
;p0=o5@10v7

m00=@77v15
m10=@77v12
m80=@77v13
a0=m5l8<fcfcfcfc gcgcgcgc fcfcfcfc gcgcg2>
a1=e2f.e.<b>           d4.c16<b16>c4c<b
   a2rgce              e4.f16e16d2
   e2gg>d<b>           (c2)c<b>cd<
   a4.a16b16>cc16c<b.> c1
m02=@78v14
m12=@78v11
m82=@78v12
a2=a2b>c16d<b(g16      )g2ab-16ae(f16  )f4.edagf 
   ef16(g16g2)gr       a2b>c16d<b(g16  )g4>c4e4.e
   eddcc<b>cd<
a3=>d4.(cc2 )c2.r4<
m04=@79v14
m14=@79v11
m84=@79v12
a4=<
   (b2)bab>c<       b4.a(a2
   )a4b4>c4<b4      a4bg2r
   (g2)ggab-        a2d4.r
   (a2)a>cdc        c4.<(bb2        )b2.r4
   >
a5=>d4.(c)c2<
   a2b>c16d<b(g16   )g2ab-16ae(f16  )f4feda16gf.
   ef16(g.)g2r      a2b>c16d<b(g16  )g4>
   t80 c4
   t76 e4
   t72 re  
   t68 eddc
   t62 c<b>cd
   t58 c2c4.r8<
   t52 <(e1 )e2r2> r1

;***** PART 1

m2=o5@16v13s1
;p3=o4@10v5

m20=@16v13
b0=m5l4<dddd eeee dddd eee2>
m21=@0v11
b1=l8
   c<eg>c<bgdg>     c<ea>c<gced
   acfag<g>ce       fedcd<gb>f
   e<g>g<g>d<g>g<b> c<a>ec<bgab>
   f<a>c<a>f<gab>   c<g>g<g>c<gb->g
m22=@78v14
b2=l16>
   afcfafcf bgdgbgdg gecegece aec+e<a>c+eg
   fd<a>dfd<a>d fd<g>dfd<g>d ec<g>cec<g>c ec<g>cec<g>c
   afcfafcf bgdgbgdg gecegece aeceaece
   l8
   >c<bbaagab
b3=<f4.(ee2 )e2.r4>
m24=@16v12
b4=l16
   e<ea>ce<ea>ce<ea>ce<ea>c e<ea>ce<ea>ce<ea>ce<ea>c
   e<ea>ce<ea>ce<ea>ce<ea>c d<dgb>d<dgb>d<dgb>d<dgb>
   d<dgb->d<dgb->d<dgb->d<dgb-> c<dfa>c<dfa>c<dfa>c<dfa>
   c<dfa>c<dfa>c<dfa>c<dfa (b1 )b2r2>
b5=f4.(e8)e2
   l16
   afcfafcf bgdgbgdg gecegece aec+e<a>c+eg
   fd<a>dfd<a>d fd<a>dfd<a>d ec<g>cec<g>c ec<g>cec<g>c
   afcfafcf bgdgbgdg
   gece
   t80 gece
   t76 a4
   t72 l8 ra>
   t68 c<bba
   t62 agab< 
   t58 a-2b-4.r8
   t52 (b1 )b2r2> r1

;***** PART 2

m3=o3@06v13q6s1
m4=o3@24v13q6s1z13
;p1=o3@10v8

c0=l4c2..<g8> c2..<g8> c2..<g8> c1
c1=>c2<b2 a2g2 f2e2 d2g2>
   c2<b2 a2g2 f2g2 >c1
c2=<ffgg >cc<aa >dd<gg
   >cccc 
   <ffgg >c<bag ffgg
c3=>c2.<g> c2.<g
c4=<aaaa f+f+f+f+ ffff eeee
   e-e-e-e- dddd gggg
   g.g8gd g.g8g2>
c5=ccde <ffgg >cc<aa
   >dd<gg> cccc <ffgg
   >c<
   t80 b
   t76 a
   t72 g
   t68 ff
   t62 gg
   t58 a-2b-4.r8
   t52 >(c1 )c2r2 r1

;***** PART 3

m5=o5@16v12q6s1

m50=@16v12
m70=@16v09
d0=l4<cccc cccc cccc ccc2>
m51=@16v12
m71=@16v09
d1=>l8c2<b2 a2g4ag f2re<gc c4.d16c16<b2>
   c2ddbg a2agg4 f2aa16ag. g1
m52=v13
m72=v10
d2=l4ffgg eeee dddd
   (e4)e16c16e16g16>c8<b-8a8g8 
   l4ffgg eg>c<b aagg>
d3=l4 <g.g.f e2.e>
d4=@04q4 l8>
   (v08ev09ev10ev11ev12ev11ev10ev09)e
   (v08ev09ev10ev11ev12ev11ev10ev09)e
   (v08ev09ev10ev11ev12ev11ev10ev09)e
   (v08dv09dv10dv11dv12dv11dv10dv09)d 
   (v08dv09dv10dv11dv12dv11dv10dv09)d 
   (v08cv09cv10cv11cv12cv11cv10cv09)c 
   (v08fv09fv10fv11fv12fv11fv10fv09)f 
   (v08gv09gv10gv11gv12g2 g4v11gv10gv09gv9)gr4
   v12@16q6<
d5=l4<
   fefg >f<g>gg
   eeee dddd eeee ffgg
   e
   t80 g
   t76 >(c
   t72 )c<
   t68 aa
   t62 gg
   t58 f2f4.r8
   t52 r24(e12e2. )e2r2 r1

;***** PART 4

m6=o5@16v12q6s1z3

e1=g2g2 e2e2 c2l8rc<eg g2g2
   g2bb>gd e2edd4 c2ff16fd. e1
e2=l4 ccdd cccc <aabb
   >c2cc
   ccdd ceag ffdd
e3=l4 <e.e.d c2.c>
e4=z0@04q4 l8>
   (v08cv09cv10cv11cv12cv11cv10cv09)c
   (v08cv09cv10cv11cv12cv11cv10cv09)c
   (v08cv09cv10cv11cv12cv11cv10cv09)c
   <
   (v08bv09bv10bv11bv12bv11bv10bv09)b
   (v08b-v09b-v10b-v11b-v12b-v11b-v10b-v09)b-
   (v08av09av10av11av12av11av10av09)a
   >
   (v08cv09cv10cv11cv12cv11cv10cv09)c
   (v08dv09dv10dv11dv12d2 d4v11dv10dv09dv9)dr4
   v12@16q4z3<
e5=l4
   ccde >ccdd ccc+c+
   <aabb >cccc ccdd
   c
   t80 e
   t76 (a
   t72 )a
   t68 f2
   t62 d2
   t58 <g2g2
   t52 r12(g6g2 )g2r1 r1

;***** PART 5

m7=o5@77v09q6s1z6 r16

f3=l4 <g.g.f e2.e8.>
f4=z0@04q4 l8>
   (v08ev09ev10ev11ev12ev11cv10ev09)e
   (v08ev09ev10ev11ev12ev11ev10ev09)e
   (v08ev09ev10ev11ev12ev11ev10ev09)e
   (v08dv09dv10dv11dv12dv11dv10dv09)d
   (v08dv09dv10dv11dv12dv11dv10dv09)d
   (v08cv09cv10cv11cv12cv11cv10cv09)c
   (v08fv09fv10fv11fv12fv11fv10fv09)f
   (v08gv09gv10gv11gv12g2 g4v11gv10gv09gv9)gr4
   v09@77q6z6<
   r16

