;--------------------------------------
; Senxin-Aleste // ACES -Array of Stars-(Stage01)  
; (C)2021 M2Co ., Ltd.                             
; Composed by Tatsuhiko Kasuga                     
;https://m2stg.com/senxin-aleste/mml.php
;--------------------------------------
; Converted by Uniskie

FM1 =t,FM1,A0,FA1,A1,A2,A1,A3,FA2,A4,FA3,A5,A6,A5,A7,A8/3,A9,AA/8
FM2 =t,FM2,B1,FB2,B2/2,FB3,B3,FB4,B4,B5,B4,B6,B7/2,B8/8
FM3 =t,FM2,C1,FB2,C2/2,FB3,C3,FB4,C4,C5,C4,C6,C7/2,C8/8
FM4 =t,FM3,D0,FD1,D1/2,FD2,D2,FD3,D3,D4,D3,D5, FD4,D6/8
FM5 =t,FM4,D0,FE1,D1/2,FE2,D2,FE3,D3,D4,D3,D5, FE4,D6/8
FM6 =t,FM5,F0,FF1,F1,F2,F1,F3,FF2,F4,FF3,F5,F6,F5,F7, FF4,F8/8
FMR =t,FMR,R0/4,RF1,R1/28,R2/6,R3/5,R4, R5,R3,R5,R3,R5,R3,R5,R7, R3/32
FM7 =
FM8 =
FM9 =
PSG1=t,PS0,D0,PD1,D1/2,PD2,D2,PD3,D3,D4,D3,D5, PD4,D6/8
PSG2=t,PS1,A0,PA1,A1,A2,A1,A3,PA2,A4,PA3,A5,A6,A5,A7,A8/3,A9,AA/8
PSG3=t,PSR,S0/4,S1/3,S2,S1/3,S2, S3/6, S4,S5/4,S6,S5/5,S6,S5/4,S6, S5/4,S6,S5/4,S6,S5/2
SCC1=
SCC2=
SCC3=
SCC4=
SCC5=

t=t160

;--- TR0 bass
FM1=v11 @6 q o3
PS1=v11 @11 q o2 i10 z3
A0=l1 m5
  f g g+ a 
  a+4.f4.d4.<a+4.>f4a+4 b4.f+4.d4 e2.g+8b8
FA1=v10@33 q4s1 
PA1=v11@17 q4
A1=l16
   a2..(g+)a f2..(e)f e2..(f)e d+2..(e)d+ d2..(d)d+ e2..(d+)e f4.(f+8)f+4. (f)f+g4.
A2=(g+4)g+4(g)g+
A3=g+4.(e8)e8
FA2=v10 @60 q8s0
PA2=v09 @10 q6
A4=l1
   g+ mp6>d+ p5<a+ p7>f p5c p6<g p6>d p7<a p7
   >(e) e (e) e< p
FA3=v10@33 q4s1
PA3=v08@17 q4 m5i10
A5=l8 
  f4rf+ g4f e4 egg+ a>a<ed+ d4rd+ e4ra4aag+ g>c<gf+
  f4rf+ g4eg+4eg+a4ea 
A6=a+4ffdd<a+r>b4f+de4g+b4
A7=a+4. f4.d4.<a+4.>f4a+4 b4.f+4.d4.e4.g+4.b4
A8=l8
   aaaaaaaa aaaaaagg+
A9=aaaaaaaa aaaaaag+g
AA=f+2.a4>c+2f+2
   f2.c4<a2f2

;--- TR1,2 back
; @backC
FM2=v9 @2 o5 q7s1 m5
B1=l2 (ci60)ci (ci60)ci (di60)di (ci60)ci (ci60)ci (ci60)ci (ci60)ci (ci60)ci
C1=l2 (ei60)ei (fi60)fi (g+i60)g+i (gi60)gi (fi60)fi (fi60)fi (f+i60)f+i (fi60)fi
; @backD
; [
FB2=v8 @48 s1
B2=(ci60)ci (ci60)ci (ci60)ci (ci60)ci (ci60)ci (di60)di (c8.i60)c8.i (c8c4i60)c4i (d8.i60)d8.i (d8.i60)d8.i   c4
C2=(gi60)gi (ei60)ei (gi60)gi (fi60)fi (fi60)fi (gi60)gi (e8.i60)e8.i (e8e4i60)e4i (a8.i60)a8.i (g+8.i60)g+8.i g+4 
; ]2
;  @backB P8.
FB3=v9 @2
B3=mp8(d+m5i60)d+m5i mp8(c+m5i60)c+m5i mp8(cm5i60)cm5i mp8(cm5i60)cm5i mp8(dm5i60)dm5i mp8(dm5i60)dm5i mp8(cm5i60)cm5i  mp8(cm5i60)cm5i
   mp8(dm5i60)dm5i mp8(dm5i60)dm5i mp8(dm5i60)dm5i mp8(dm5i60)dm5i
C3=mp8(a+m5i60)a+m5i mp8(f+m5i60)f+m5i mp8(fm5i60)fm5i mp8(gm5i60)gm5i mp8(gm5i60)gm5i mp8(am5i60)am5i mp8(fm5i60)fm5i  mp8(gm5i60)gm5i
   mp8(gm5i60)gm5i mp8(gm5i60)gm5i mp8(g+m5i60)g+m5i mp8(g+m5i60)g+m5i
; TR1,2 P* l2
; [
FB4=v8 @2
B4=l4
   (ci60)ci i (di60)di (ci60)ci (ci60)ci (ci60)ci (di60)di (ci60)ci (di60)di
   (ci60)ci i (di60)di (di60)di (ci60)ci 
B5=(ci60)ci i (ci60)ci (ci60)ci (ci60)ci
C4=l4
   (ei60)ei i (fi60)fi (gi60)gi (gi60)gi (fi60)fi (g+i60)g+ (gi60)gi (fi60)fi
   (gi60)gi i (ai60)ai (g+i60)g+i (gi60)gi
C5=(gi60)gi i (gi60)gi (fi60)fi (fi60)fi
;]2
B6=l2 (ci60)ci i (ci60)ci (ci60)ci i <(bi60)bi>
C6=l2 (gi60)gi i (gi60)gi (fi60)fi i (f4i60)f4i (f4i60)f4i
;[
B7=(d1i60)d1i (c1i60)c1i
C7=(g1i60)g1i (f1i60)f1i
;]2
; TR1,2
;  L
B8=<(ai60ai >ai60ai
C8=(ei60ei ei60ei

;--- TR3,4 melody
;   @melo q4 o5 P#6 MD24 MP2,8,12
FM3=v11 @68 o6
FM4=v10 @68 o6 r8. z8
PS0=v10 @11 o5
D0=l16 m5
   c4.<a4.>e4d2d8c8<b8a8g+4.e4.b8>(c8c8i60)c4.i c8d8e4f4.e4.c4.<a4.>c4 d4 (e4i60)e4.if8e8(d8d4i60)d2.i
;   @meloB l16
FD1=@67 v10 <
FE1=@67 v09 <
PD1=v10 <
;  [
D1=  l16 
     >c4.<a4.b4>c4.<g4.>c4 e2.g8d+8(d4.i60)d2i cd
     c4.<a4.b4>c4.<g4.b4> c4.(d8d8i60)d4.ic4.<(b8b8i60)b4.i
;  ]2
;   P8. @synth q0
FD2=v10 @60 m
FE2=v09 @60 m
PD2=v10 mp8
D2=<(a+4m5i60a+4)a+8.mp6 >f4p4 (c2m5i60)c2mp2
   (d+4m5i60)d+4mp6<(a+4m5i60)a+4mp7 >(g2m5i60)g2mp6<
   >(c4.m5i60)c4.mp6 g4p5 (d2m5i60)d2mp5
   (a4m5i60)a4mp5(e4m5i60)e4mp4<(b4m5i60)b4mp1>(c4m5i60)c4mp2
   (d1m5i60)d1 r1r1r16i>
;  _0 D0
;  o5 P* q4 @guiter
FD3=v11 @66 q4
FE3=v10 @66 q4
PD3=v10 q4
;  [
D3= a4c4<b4>a8g4c8<b8>c4d8e8 f4<a4g+8>d8e8f8e4c8<b8>(c8c4i60)c4i
    a4c4<b4>a8 g+4a8b8>c4 d8e8
;  :
D4= f4e8e8c8c8<a4>(d4i60d4)d8i(e4i60)e4i<
;  ]2
D5= f4. e4.c4<a8>(c4i60c4)c8i d8e8 (g2i60g2)g8i(g+2i60)g+2i
   (b1i60)b1i(a2.i60a4)a2.ia4 (b1i60)b1i(a1i60)a1i
;  @strings (4
;  L
FD4=v13 @2 o6q4s1
FE4=v11 @2 o6q4s1
PD4=v8 o5q4
D6= aaf+f+ aaf+f+ aaf+f+ aaf+f+
    aaf+f+ aaf+f+ aaf+f+ aaf+f+
    aaff aaff aaff aaff
    aaff aaff aaff aaff

;--- TR5 arpeggeo
;  @arp l16 q1 EC1,32,-8,1
FM5=@16 v11 q1s1 l16 o5 m3i40
F0=c e f a e f a>c<f a>c e<a>c e f 
   d f g b f g b>d<g b>d f<b>d f g 
   d f g+b f g+b>d<g+b>d f<b>d f g+
   c e g a e g a>c<g a>c e<a>c e g 
   <<<
   a+a f d a f d<a+>fd<a+a>d<a+a f 
   a+f aa+>d<a a+>df<a+>df a d f a 
   bafd afd<b >fd<ba >d<baf
   eg+b>d <g+b>de <b>deg+ deg+b
   <
;  @strings o5 
FF1=v14@2 q1s1
;  [
F1=e2g2e2c4d4g2b2a+2g2
   a8 fa>cr <a>c fr c fa8v12a8v14
   r8 gb>dr <b>dgr d gb8v12b8v14
   << g2 >c2
;  :
F2=  dd<bbggdd bbg+g+ffdd
;  ]2
F3=  dd<bbggdd bbeeg+g+bb
;  @triangle o5 q4
FF2=@16 q1s1 v11
F4=>
   v12d+v10d+v11d+v10d+ v11d+v10d+v11d+v10d+ v10d+v9d+d+d+ v10d+v9d+d+d+
   v12a+v10a+v11a+v10a+ v11a+v10a+v11a+v10a+ v10a+v9a+a+a+ v10a+v9a+a+a+
   v12fv10fv11fv10f v11fv10fv11fv10f v10fv9fff v10fv9fff 
  >v12cv10cv11cv10c v11cv10cv11cv10c v10cv9ccc v10cv9ccc 
  <v12gv10gv11gv10g v11gv10gv11gv10g v10gv9ggg v10gv9ggg 
   v12dv10dv11dv10d v11dv10dv11dv10d v10dv9ddd v10dv9ddd 
   v12av10av11av10a v11av10av11av10a v10av9aaa v10av9aaa 
   v12ev10ev11ev10e v11ev10ev11ev10e v10ev9eee v10ev9eee 
   v12bv10bv11bv10b v11bv10bv11bv10b v10bv9bbb v10bv9bbb
   v12bv10bv11bv10b v11bv10bv11bv10b v10bv9bbb v10bv9bbb
   v12bv10bv11bv10b v11bv10bv11bv10b v10bv9bbb v10bv9bbb
   v12bv10bv11bv10b v11bv10bv11bv10b v10bv9bbb v10bv9bbb
;  @strings 
FF3=@2 v13 q1s1 >
;  [
F5=c4e4d2<b4g4>c2
   g4e4d4<b4>d4<b4a+4>c4
   <c4d4e4f8g+4a8b8>c4<b8>c8
;  :
F6=d4c8c8<a8a8f8r8
   b4a8g+8f8e8d8c8<b8>>
;  ]2
F7=v12 m5
   d4. c4.<a4f8q7(a4i60a4)a8iq1 b8>c8 q7(e2i60e2)e8i(d2i60)d2i
   (d1i60)d1i(c2.i60c4)c2.iq1c4 q7(d1i60)d1i(c1i60)c1iq1
;  L
;  v125 (4 o6
FF4=v13 m3i20
F8=c+c+<aa> c+c+<aa> c+c+<aa> c+c+<aa>
   c+c+<aa> c+c+<aa> c+c+<aa> c+c+<aa>
   cc<aa> cc<aa> cc<aa> cc<aa>
   cc<aa> cc<aa> cc<aa> cc<aa>
; 00: c c+ d d+ e f f+ g g+ a a+ b
; 05: f f+ g g+ a a+ b c c+ d d+ e 
; 07: g g+ a a+ b c c+ d d+ e f f+

;--- TR6 Drum
;  @P"drumD" o0 l16 KM
PSR=v12 o2 z120 l16 m4i10
S0=q4
   v12@1c8@1g v10@1c8@1g v09@1c8@1g v08@1c8@1g
   v07@1c8@1g v06@1c8@1g v05@1c8@1g v04@1c8@1g
   v03@1c8@1g v02@1c v12@5dV11dv12@1cv9@5d
   v12 q4
;  ]4
;  [
;   [
S1=  @1c8.@1c8.@1c8r8@1c8@5d4
     @1c8.@1c8.@1c8r8@1cv09@1cv12@5d4
;   ]3
S2=  @1c8.@1c8.@5d8r8@1c8@5d4
     @1c8.@1c8.@5d8r8@1cv09@1cv12@5d8@1c8
;  ]2
;  [
S3=@1c8v09@1c8v12@1c8@1c8.v10@1cv12@1c8r8@5d8
   r8@1c8r8@5d8r8@1c8@5d8.v09@5dv12
;  ]6
S4=@1c8v09@1c8v12@1c8@1c8.v10@1cv12@1c8r8@5d8
   @1c8@5d8@5d8@5d8 @5d@5d@1c@1c@5d8r8
S5=@1c4@5d4@1c8@1c8@5d8@1c8r8@1c8@5d4@1c8@1c8
   @5d4
;  ]4
S6=@1c4@5d4@1c8@1c8@5d8@1c8r8@1c8@5d4@1c8@1c8
   @5d8@5d@5d
;  ]
;  [
;S7=@1c4@5d4@1c8@1c8@5d8@1c8r8@1c8@5d4@1c8@1c8
;   @5d4
;  ]5
;S8=@1c4@5d4@1c8@1c8@5d8@1c8r8@1c8@5d4@1c8@1c8
;   @5d8@5d@5d
;  [
;S9=@1c4@5d4@1c8@1c8@5d8@1c8r8@1c8@5d4@1c8@1c8
;   @5d4
;  ]4
;SA=@1c4@5d4@1c8@1c8@5d8@1c8r8@1c8@5d4@1c8@1c8
;   @5d8@5d@5d
;  L
;  [
;SB=@1c4@5d4@1c8@1c8@5d8@1c8r8@1c8@5d4@1c8@1c8
;   @5d4
;  ]4
;SC=@1c4@5d4@1c8@1c8@5d8@1c8r8@1c8@5d4@1c8@1c8
;   @5d8@5d@5d

;--- TR7 hut/cynbal
;  @P"drumA" o0 l16 KM
FMR=y38,3 y22,160
    y39,3 y23,150
    y40,5 y24,180
    VB14 VS12 VH10 VC12
;  [ 
R0=  VH10h16VH08h16VH11h16VH08h16 
     VH09h16VH07h16VH09h16VH07h16 
     VH08h16VH06h16VH08h16VH06h16 
     VH07h16VH05h16VH07h16VH05h16 
     VH06h16VH04h16VH06h16VH04h16 
     VH05h16VH03h16VH05h16VH03h16 
     VH04h16VH02h16VH04h16VH02h16 
     VH12VS12r4
     VS12
;  ]4
RF1=y23,140
;  [
;   [
R1=  h16VH08h16VH10h16VH08h16VH10
     h16VH08h16VH10 h16 VH08h32
     h32VH10 h16VH08h16VH10h16VH08h16VH10
     h16VH08h16VH10 c8
;   ]4
;  ]7
;  [
;   [
R2=  h16VH08h16VH10h16VH08h16VH10 h16VH08h16VH10 h16 VH08h32 h32VH10
     h16VH08h16VH10h16VH08h16VH10 h16VH08h16VH10 c8
     h16VH08h16VH10h16VH08h16VH10 h16VH08h16VH10 h16 VH08h32 h32VH10
     h16VH08h16VH10c8 h16VH08h16VH10 h16VH08h16VH10
;   ]2
;  ]3
;  [
R3=  h16VH08h16VH10h16VH08h16VH10 h16VH08h16VH10 h16 VH08h32 h32VH10
     h16VH08h16VH10h16VH08h16VH10 h16VH08h16VH10 c8
;  ]5
R4=  h16VH08h16VH10h16VH08h16VH10 h16VH08h16VH10 h16 VH08h32 h32VH10
     h16VH08h16VH10c8 h16VH08h16VH10 h16VH08h16VH10
;  [
R5=  h16VH08h16VH10h16VH08h16VH10 h16VH08h16VH10 h16 VH08h32 h32VH10
     h16VH08h16VH10h16VH08h16VH10 h16VH08h16VH10 h16VH08h16VH10
;  :
;R6=R3
;    h16VH08h16VH10h16VH08h16VH10 h16VH08h16VH10 h16 VH08h32 h32VH10
;    h16VH08h16VH10h16VH08h16VH10 h16VH08h16VH10 c8
;  ]4
R7=  h16VH08h16VH10h16VH08h16VH10 h16VH08h16VH10 h16 VH08h32 h32VH10
     h16VH08h16VH10c8 h16VH08h16VH10 c8
;  L
;R8=R3
;    h16VH08h16VH10h16VH08h16VH10 h16VH08h16VH10 h16 VH08h32 h32VH10
;    h16VH08h16VH10h16VH08h16VH10 h16VH08h16VH10 c8

