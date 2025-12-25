;*********************************
; SORCERIAN - ENDING 1 
;   OPLL Arrange ver.
;   voice: so-end1.vcd
; Sorcerian / (c) Nihon Falcom
;*********************************
FM1 =t,m0,a0,   a1,02,a2,a3,00,a1,02,a2,a3,04,a4,00,a0,   a1,02,a2,a5
FM2 =t,m1,a0,   a1,12,a2,a3,10,a1,12,a2,a3,14,a4,10,a0,   a1,12,a2,a5
FM3 =t,m2,b0,21,b1,22,b2,b3,21,b1,22,b2,b3,24,b4,20,b0,21,b1,22,b2,b5
FM4 =t,m3,c0,   c1,   c2,c3,   c1,   c2,c3,34,c4,35,c0,   c1,   c2,c5
FM5 =t,m4,c0,   c1,   c2,c3,   c1,   c2,c3,34,c4,35,c0,   c1,   c2,c5
FM6 =t,m5,d0,51,d1,52,d2,d3,51,d1,52,d2,d3,51,d4,50,d0,51,d1,52,d2,d5
FMR =                                                            
FM7 =t,m6,d0,51,e1,52,e2,e3,51,e1,52,e2,e3,51,e4,50,d0,51,e1,52,e2,e5
FM8 =t,m7,f0,71,d1,72,e2,d3,71,d1,72,e2,f3,71,f4,70,f0,71,d1,72,d2,d5
FM9 =t,m8,a0,   a1,82,a2,a3,80,a1,82,a2,a3,84,a4,80,a0,   a1,82,a2,a5
PSG1=;t,p0,a0,   a1,x2,a2,g3,x0,a1,x2,a2,g3,x4,a4,x0,a0,   a1,x2,a2,a5
PSG2=;t,p1,c0,   c1,   c2,c3,   c1,   c2,c3,   c4,   c0,   c1,   c2,c5
PSG3=;t,p3,b0,   b1,y2,h2,h3,y0,b1,y2,h2,h3,   h4,y0,b0,   b1,y2,h2,b5
SCC1=
SCC2=
SCC3=
SCC4=
SCC5=

t=t78 m6

;***** PART 0

m0=o6 @77v13 q6s1
m1=o6 @77v11 q6s1 z16 r16
m8=o5 @77v11 q6s1 z1
p0=o5 @15v09 q5

00=@77v13 i q6
10=@77v11 i q6
80=@77v11 i q6 o5z1
x0=@15v09 i
a0=l8<fcfcfcfc gcgcgcgc fcfcfcfc gcgcg2>
a1=e2f.e.<b>           d4.c16<b16>c4c<b
   a2rgce              e4.f16e16d2
   e2gg>d<b>           (c2)c<b>cd<
   a4.a16b16>cc16c<b.> c1
02=@78v14 q7
12=@78v12 q7
82=@78v13 q7 z12 o5
x2=@10
a2=a2b>c16d<b(g16      )g2ab-16ae(f16  )f4.edagf 
   ef16(g16g2)gr       a2b>c16d<b(g16  )g4>c4e4.e
   eddcc<b>cd<
a3=>d4.(cc2 )c2.r4<
g3=>d4.(cc2 v8c8v7c8v6c8v5)c8r2<v9
04=@79v13
14=@03v13i32
84=@79v13
x4=@09v8i32
a4=<
   (b2)bab>c<       b4.a(a2
   )a4b4>c4<b4      a4bg2r
   (g2)ggab-        a2d4.r
   (a2)a>cdc        c4.<(bb2        )b2.r4
   >
a5=>d4.(c)c2<
   a2b>c16d<b(g16   )g2ab-16ae(f16  )f4feda16gf.
   ef16(g.)g2r
   a2b>c16d<b(g16   )g4>
   t73 c4
   t68 e4
   t63 re  
   t58 eddc
   t53 c<b>cd
   t43 c2
   t33 c4.r8<
   t32 q8 <e2.r4> r1

;***** PART 1

m2=o5@77v14q7s1
p3=o4@15v7q5z2

20=@77v14
y0=@15
b0=l4dddd eeee dddd eee2
21=@0v11
b1=l8
   c<eg>c<bgdg>     c<ea>c<gced
   acfag<g>ce       fedcd<gb>f
   e<g>g<g>d<g>g<b> c<a>ec<bgab>
   f<a>c<a>f<gab>   c<g>g<g>c<gb->g
22=@78v13
y2=@10
b2=l16>
   afcfafcf bgdgbgdg gecegece aec+e<a>c+eg
   fd<a>dfd<a>d fd<g>dfd<g>d 
   ec<g>cec<g>c ec<g>cec<g>c
   afcfafcf bgdgbgdg gecegece aeceaece
   l8 >c<bbaagab
h2=l16>
   afcfafcf bgdgbgdg gecegece aec+e<a>c+eg
   fd<a>dfd<a>d fd<g>dfd<g>d 
   ec<g>c eceg >c8<b-8a8g8
   afcfafcf bgdgbgdg gecegece aeceaece
   l8 >c<bbaagab
b3=f4.(ee2 )e2.r4
h3=f4.(ee2 v6e8v4e8v3e8v2)e8r2v7
24=@10v11
b4=l16>
   e<ea>ce<ea>ce<ea>ce<ea>c e<ea>ce<ea>ce<ea>ce<ea>c
   e<ea>ce<ea>ce<ea>ce<ea>c d<dgb>d<dgb>d<dgb>d<dgb>
   d<dgb->d<dgb->d<dgb->d<dgb-> c<dfa>c<dfa>c<dfa>c<dfa>
   c<dfa>c<dfa>c<dfa>c<dfa (b1 )b2r2
h4=l16
   v4e<ev5a>cv6e<ev7a>cv8e<ev7a>cv6e<ev5a>c
   v4e<ev5a>cv6e<ev7a>cv8e<ev7a>cv6e<ev5a>c
   v4e<ev5a>cv6e<ev7a>cv8e<ev7a>cv6e<ev5a>c
   v4d<dv5gb>v6d<dv7gb>v8d<dv7gb>v6d<dv5gb>
   v4d<dv5gb->v6d<dv7gb->v8d<dv7gb->v6d<dv5gb->
   v4c<dv5fa>v6c<dv7fa>v8c<dv7fa>v6c<dv5fa>
   v4c<dv5fa>v6c<dv7fa>v8c<dv7fa>v6c<dv5fa
   @16l8
   (v2bv3bv4bv5bv6b2 v5bv4bv3bv2)br2>
   @15v7l4
b5=f4.(e8)e2
   l16
   afcfafcf bgdgbgdg gecegece aec+e<a>c+eg
   fd<a>dfd<a>d fd<a>dfd<a>d 
   ec<g>cec<g>c ec<g>cec<g>c
   afcfafcf bgdgbgdg
   gece
   t73 gece
   t68 a4
   t63 l8 ra>
   t58 c<bba
   t53 agab< 
   t43 a-2
   t33 b-4.r8
   t32 q8 b2.r4> r1

;***** PART 2

m3=o3@06v12q6s1
m4=o3@24v11q6s1z13
p1=o2@13v7q5z4

c0=l4c2..<g8> c2..<g8> c2..<g8> c1
c1=>c2<b2 a2g2 f2e2 d2g2>
   c2<b2 a2g2 f2g2 >c1
c2=<ffgg >cc<aa >dd<gg
   >cccc 
   <ffgg >c<bag ffgg
c3=>c2.<g> c2.<g
34=<
c4=aaaa f+f+f+f+ ffff eeee
   e-e-e-e- dddd gggg
   g.g8gd g.g8g2
35=>
c5=>ccde<
   ffgg >cc<aa >dd<gg>
   cccc
   <ffgg> c<
   t73 b
   t68 a
   t63 g
   t58 ff
   t53 gg
   t43 a-2
   t33 b-4.r8
   t32 q8 >c2.r4 r1

;***** PART 3

m5=o5@77v12q7s1

50=@77v12
70=@77v10
d0=l4cccc cccc cccc ccc2
51=@16v10
71=@16v08
d1=l8>c2<b2 a2g4ag f2re<g>c c4.d16c16<b2>
   c2ddbg (a2)ag4. f2aa16ag. g1
52=@16v11
72=@16v09
d2=l4ffgg eeee dddd
   (e4)e16c16e16g16>c8<b-8a8g8 
   l4ffgg eg>c<b aagg
d3=l4 g.g.f e2.e
d4=@04q4z9 l8>
   (v07ev08ev09ev10ev11ev10ev09ev08)e
   (v07ev08ev09ev10ev11ev10ev09ev08)e
   (v07ev08ev09ev10ev11ev10ev09ev08)e
   (v07dv08dv09dv10dv11dv10dv09dv08)d 
   (v07dv08dv09dv10dv11dv10dv09dv08)d 
   (v07cv08cv09cv10cv11cv10cv09cv08)c 
   (v07fv08fv09fv10fv11fv10fv09fv08)f 
   (v06gv07gv08gv09gv10g2 g4v09gv08gv07gv06)gr4
   z0v11@16q6<
d5=l4 fefg
   ffgg eeee dddd
;   eeee
   (e4)e16c16e16g16>c8<b-8a8g8 
   ffgg e
   t73 g
   t68 >(c
   t63 )c<
   t58 aa
   t53 gg
   t43 f2
   t33 f4.r8
   t32 q8 e2.r4 r1<
          ;r12(e6)e4r4 r1<

;***** PART 4

m6=o5@77v10q7s1z3

e1=g2g2 e2e2 c2l8rc<eg g2g2
   g2bb>gd (e2)ed4. c2ff16fd. e1
e2=l4 ccdd ccc+c+ <aabb>
   cccc
   ccdd ceag ffdd
e3=l4 e.e.d c2.c
e4=z0@04q4 l8>
   (v07ev08ev09ev10ev11ev10cv09ev08)e
   (v07ev08ev09ev10ev11ev10ev09ev08)e
   (v07ev08ev09ev10ev11ev10ev09ev08)e
   (v07dv08dv09dv10dv11dv10dv09dv08)d
   (v07dv08dv09dv10dv11dv10dv09dv08)d
   (v07cv08cv09cv10cv11cv10cv09cv08)c
   (v07fv08fv09fv10fv11fv10fv09fv08)f
   (v06gv07gv08gv09gv10g2 g4v09gv08gv07gv06)gr4
   v11@16q4z3<
e5=l4ccde
   ccdd ccc+c+ <aabb>
   cccc
   ccdd c
   t73 e
   t68 (a
   t63 )a
   t58 ff
   t53 dd
;   <
   t43 g2
   t33 g2
   t32 q8 g2.r4 r1<
          ;r24(g12)g2r4 r1<

;***** PART 5

m7=o5@77v10q7s1z6 r16

f0=l8 fcfcfcfc gcgcgcgc fcfcfcfc gcgcg2 l4
f3=l4 <g.g.f e2.e8.>
f4=z0@04q4 l8>
   (v07cv08cv09cv10cv11cv10cv09cv08)c
   (v07cv08cv09cv10cv11cv10cv09cv08)c
   (v07cv08cv09cv10cv11cv10cv09cv08)c
   <
   (v07bv08bv09bv10bv11bv10bv09bv08)b
   (v07b-v08b-v09b-v10b-v11b-v10b-v09b-v08)b-
   (v07av08av09av10av11av10av09av08)a
   >
   (v07cv08cv09cv10cv11cv10cv09cv08)c
   (v06dv07dv08dv09dv10d2 d4v09dv08dv07dv06)dr4
   <
   v10@77q7z6
   r16

