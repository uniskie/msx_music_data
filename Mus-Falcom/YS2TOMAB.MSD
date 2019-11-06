; YS II ¢TO MAKE THE END OF BATTLE£
;
; voice.vcd -> ys2tomak.vcd

FM1 =t,A0,FM1,@29,A1,@34,A2,@29,A3,A4a,A4c,A4d,A4f,A5,@28,A5',@32,A4b,A4c,A4e,A4f,@35,A6,A7,A8,A9,@32,A8,AA,@31,AB/2, @29,A1,@34,A2,@29,A3,A4a,A4c,A4d,A4f,A5,@28,A5',@32,A4b,A4c,A4e,A4f,@35,A6,A7,A8,A9,@32,A8,AA,@31,AB/2, @29,A1,@34,A2,@29,A3,A4a,A4c,A4d,A4f,A5,@28,a5',@32,A4b,A4c,A4e,A4f,@35,A6,A7,@29,AC
FM2 =t,A0,FM2,@29,A1,@34,B2,@29,A3,A4a,A4c,A4d,A4f,A5,@28,a5',@32,A4b,A4c,A4e,A4f,@35,A6,A7,A8,A9,@32,A8,AA,@31,AB/2, @29,A1,@34,B2,@29,A3,A4a,A4c,A4d,A4f,A5,@28,a5',@32,A4b,A4c,A4e,A4f,@35,A6,A7,A8,A9,@32,A8,AA,@31,AB/2, @29,A1,@34,B2,@29,A3,A4a,A4c,A4d,A4f,A5,@28,a5',@32,A4b,A4c,A4e,A4f,@35,A6,B7,@29,BC
FM3 =t,A0,FM3,@24,A1,@12,A2,@24,A3,A4a,A4c,A4d,A4f,A5,@24,a5',@16,A4b,A4c,A4e,A4f,@6 ,A6,A7,A8,A9,@16,A8,AA,@14,AB/2, @24,A1,@12,A2,@24,A3,A4a,A4c,A4d,A4f,A5,@24,a5',@16,A4b,A4c,A4e,A4f,@6 ,A6,A7,A8,A9,@16,A8,AA,@14,AB/2, @24,A1,@12,A2,@24,A3,A4a,A4c,A4d,A4f,A5,@24,a5',@16,A4b,A4c,A4e,A4f,@6 ,A6,A7,@24,AC
FM4 =t,A0,FM5,E1,G2/3,G3,E4/4,E5/4,E6,E4/4,E5/4,E6,E4/4,E5/4,E6,E4/4,E5/4,E7,E8,E9,E8,EA,EB/2,E1,G2/3,G3,E4/4,E5/4,E6,E4/4,E5/4,E6,E4/4,E5/4,E6,E4/4,E5/4,E7,E8,E9,E8,EA,EB/2,E1,G2/3,G3,E4/4,E5/4,E6,E4/4,E5/4,E6,E4/4,E5/4,E6,E4/4,E5/4,E7,EC
FM5 =t,A0,FM6,E1,E2/3,E3,E4/4,E5/4,E6,E4/4,E5/4,E6,E4/4,E5/4,E6,E4/4,E5/4,E7,E8,E9,E8,EA,EB/2,E1,E2/3,E3,E4/4,E5/4,E6,E4/4,E5/4,E6,E4/4,E5/4,E6,E4/4,E5/4,E7,E8,E9,E8,EA,EB/2,E1,E2/3,E3,E4/4,E5/4,E6,E4/4,E5/4,E6,E4/4,E5/4,E6,E4/4,E5/4,E7,EC
FM6 =t,FM9,K0/3,
       K0/32,K0/64,          K0/128,           K0/120,
       K0,K1,K0,K1,K2'/4,K3'/4,
       K0/128,
       K0/32,K0/64,          K0/128,           K0/120,
       K0,K1,K0,K1,K2'/4,K3'/4,
       K0/128,
       K0/32,K0/64,          K0/128,           K0/120,
       K0,K1,K0,K1,K2'/4,K3'/4,
       K0/16
FMR =t,FMR,F0,
       F1/8, F2/3,F3,F2/3,F4,F5/15,F6,F5/14,F7,F5/15,F6,F5/14,
       F8,
       F5/15,F6',F9/3,FA,F9/3,FB, 
       F1/8, F2/3,F3,F2/3,F4,F5/15,F6,F5/14,F7,F5/15,F6,F5/14,
       F8,
       F5/15,F6',F9/3,FA,F9/3,FB, 
       F1/8, F2/3,F3,F2/3,F4,F5/15,F6,F5/14,F7,F5/15,F6,F5/14,
       F8,
       FC
FM7 =
FM8 =
FM9 =
PSG1=t,H0,PS1,H1,@p3,H2,@p2,H3,H4/2,H5,H6,H4/2,H5,H7,H8,v9,HA,@p6,HB/2     ,@p2,H1,@p3,H2,@p2,H3,H4/2,H5,H6,H4/2,H5,H7,H8,v9,HA,@p6,HB/2     ,@p2,H1,@p3,H2,@p2,H3,H4/2,H5,H6,H4/2,H5,H7,HC
PSG2=t,H0,PS1,I1,@p3,I2,@p2,I3,I4/2,I5,I6,I4/2,I5,I7,I8,v9,IA,@p6,IB/2     ,@p2,I1,@p3,I2,@p2,I3,I4/2,I5,I6,I4/2,I5,I7,I8,v9,IA,@p6,IB/2     ,@p4,I1,@p3,I2,@p2,I3,I4/2,I5,I6,I4/2,I5,I7,IC
PSG3=t,H0,PS2,J1,@p3,J2,@p4,H3,H4/2,H5,H6,H4/2,H5,H7,H8,v9,HA,@p6,JB,HB,JB',@p4,J1,@p3,J2,@p4,H3,H4/2,H5,H6,H4/2,H5,H7,H8,v9,HA,@p6,JB,HB,JB',@p4,J1,@p3,J2,@p4,H3,H4/2,H5,H6,H4/2,H5,H7,JC
SCC1=
SCC2=
SCC3=
SCC4=
SCC5=

t=t255r8

;- MELODY

FM1=@29 v14 o4 m4 q6s1
FM2=@29 v12 o4 m4 q6s1 z8r8
FM3=@29 v12 o5 m4 q6s1 z4

@6= @5  ;@35
@12=@10 ;@34
@14=@14 ;@31
@16=@32 ;@32
@24=@29 ;@29

@28=@28 ;DGUITH
@29=@29 ;DGUIT
@34=@34 ;KIRAH
@32=@32 ;ELEPI
@31=@31 ;HARPS
@35=@35 ;BRASS
@16=@16

A0=r4.
A1=l8 e-ega4<aaa>
      c+<a>d<a>e<a>d<a>
A2=l16(a)b-(a)b-(a)b-(a)b->(a)b-(a)b-(a)b-(a)b-<
   l8ab->c+<b-ab->c+d<
B2=l16(a)b-(a)b-(a)b-(a)b->(a)b-(a)b-(a)b-(a)b-<
   l8ab->c+<b-ab->c+r<
A3=l8
   >c+<ab-gafge b-gafgefd 
   c+defgab->c+ ec+<b->fc+<b-< ef
   (gm3i120g)g2iab- >(c+m3i120c+)c+2m5i ef
   gfefgab->c+ e4e4f4g4<
A4a=l8 >
   ifec(dd2i60 )d2i<a>cdc
   ifec(dd2i60 d4mp6)<d4>m5i<agfe
A4b=l8 >
   ifec(dd2i60 )d2i<a>cdc
   ifec(dd2i60 )d2i<agfe
A4c=(f.i60)f.i(d.i60)d.if4
   (g.i60)g.i(e.i60)e.ig4
   (a.i60)a.i(f.i60)f.id4
   (e.i60)e.i(g.i60)g.ib-4
   (a2i60)a2i> defgagfe
A4d=(g.i60)g.i(e.i60ee-32)d32ic4
A4e=(g.i60)g.i(e.i60)e.ic4 
A4f=<(g.i60)g.>i(c.i60)c.ie4
   l8fd<afda>df ec<gecg>ce
   <
A5=l8 dfa>c+dfa 
A5'=>c+(d2i60d4mp6)<d4>m5i <<
A6=(e-4.<b-16)>e-16(g4.e-16)g16 (b-4.g16)b-16 >(e-4i60
A7=)e-4i<
B7=)e-8i<
A8=l8>(a4i60)a4idfg(a  a16i60)a.ig4fg4>(d<<
A9=l8>>d16i60)d.i<a4gf4(e  e16i60)e.i(f.i60)f.i(g.i60)g.i<
AA=l8>>d16i60)d.id4e4d4 (d4i60)d4i(c+4i60)c+4i<<
AB=l8>dfadfadf adfae-gb-g
   dfadfadf adfacceg<
AC=>dr4dr..d-32d(d  dmp6<<)d4.r2m5< r1r1
BC= ar4ar..a-32a(a  amp6<<)a4.r2m5  r1r1

;- SUB

PS1=@14 v10 o4 m5
PS2=@14 v10 o4 m5 z2
FM7=@4 v11 o5 m5s1
FM8=@4 v11 o5 m5s1 z2

@p2=@14v10 q8
@p3=@10v9 q6
@p4=@14v9 q8
@p6=@26v8
V6=v6
V7=v7
V8=v8
V9=v9

H0=r4.

H1=l2i>(ei60)e i(gi60)g<
     il8>>a+gec+<a+gec+     efg+fefg+a< 
I1=l2i>(c+i60)c+ i(ei60)e<
     il8>>ec+<a+gec+<a+g>   c+dedc+def<
J1=l2i>(ei60)e i(gi60)g<
     il8>>gec+<a+gec+<b->   efg+fefg+a<
H2=>l8m3
   i120(b-m3i120)b-2..>mp20(e m3i120)e 2.. mp20(g m3i120g )g 2mp20f4 (e m3i120)e 2..<
   mp80(b-m3i120)b-2..>mp20(e m3i120)e 2.. mp20(g 8m3i120)g2.. <<
I2=>l8m3
   i120(g m3i120)g 2.. mp20(a+m3i120)a+2..>mp20(e m3i120e )e 2mp20d4 (c+m3i120)c+2..<
   mp80(g m3i120)g 2.. mp20(a+m3i120)a+2..>mp20(e 8m3i120)e2.. <<
J2=>l8m3
   i120(e m3i120)e 2.. mp20(g m3i120)g 2.. mp20(b-m3i120b-)b-2mp20a4 (g m3i120)g 2.. 
   mp20(e m3i120)e 2.. mp20(g m3i120)g 2.. mp20(b-8m3i120)b-2..<
H3=l4>m5i8ec+de<
I3=l4>m5i8c+<ab>c+<
H4=l8>m5i8dc<g(a4i60)a4.i8>a4g4f4e4<
I4=l8 m5i8age(f4i60)f4. i8>f4e4d4c4<
H5=>i8(d.i60)d.i8<(b-.i60)b-.i8>d4
   i8(e.i60)e.i8 (c.i60)c.i8e4
   i8(f.i60)f.i8 (d.i60)d.i8<a4
   i8(a.i60)a.i8>(e.i60)e.i8g4
   i8(d2i60)d2 i8<(a4i60)a4i8>(d4i60)d4
   i8(e2i60)e2 i8 (c2i60)c2
   i8(f2i60)f2 i8 (e2i60)e2<i8
I5=i8(b-.i60)b-.i8(f.i60)f.i8b-4
   i8>(c.i60)c.i8<(g.i60)g.i8>c4
   i8 (d.i60)d.i8<(a.i60)a.i8f4
   i8 (e.i60)e.i8>(c+.i60)c+.i8e4
   i8<(a2i60)a2 i8 (f4i60)f4i8(a4i60)a4
   i8>(c2i60)c2 i8 <g2i60)g2
   i8>(d2i60)d2 i8 (c2i60)c2<i8
H6=>i8(d2i60)d2i8 d4c+4<b4>c+4<
I6=>r8z6v6i8(d2i60)d2i8 d4c+4<b4>c+<v9z

H7=l8>(v6b-v7b-v8b-v9b-v10b-2i60 )b-1i8<
I7=l8>(v6g v7g v8g v9g v10g 2i60 )g 1i8<

H8= ffffrff4 ffffrff4 b-b-b-b-rb-b-4 aaaaraa4
   >ffffrff4 ffffrff4 b-b-b-b-rb-b-4 aaaara<
I8= ddddrdd4 ccccrcc4 ffffrff4 eeeeree4
   >ddddrdd4 ccccrcc4 ffffrff4 eeeere<
IA=l32>c+<bagfedcl8
HA=l32>edc<bagfel8
HB=l8fa>d<fa>d<fa >d<fa>d<gb->e-<b-
     fa>d<fa>d<fa >d<fa>d<gg>ce<
IB=l8ad>f<ad>f<ad >f<ad>f<b->e-ge-<
     ad>f<ad>f<ad >f<ad>feeg>c<<
JB=r8v6z7
JB'=l8fa>d<fa>d<fa >d<fa>d<gb->e-<b-
      fa>d<fa>d<fa >d<fa>d<gg>c< v10z2
;HC=r1r1 r1r1
HC=ar4ar..a-32a(a  aq4mp12<<)a4.r2m5  r1r1
IC=fr4fr..f-32f(f  fq4mp12<<)f4.r2m5  r1r1
JC=dr4dr..d-32d(d  dq4mp12<<)d4.r2m5  r1r1

;- BASE

FM5=@12 v9 o2 q4z
FM6=@33 v13 o2 q4s1

E1=l8
   aaaa>c+<a>d<a 
   >e<a>f<a>g<a>f<a
   >e<a>f<a>e<a>d<a
   >c+<ab-gab->c+<b-
E2=aaa >>>v13@12q6s1a4. <<v13@33q4s1a4
   a<aaraa>c+d<
G2=aaa >>>>v13@24q6s1e4. <<<v9@12q4s0a4
   a<aaraa>c+d<
E3=aaa >>>v13@12q6s1a4. <<v13@33q4s1a4
   <aa>a<abb>c+c+<
G3=aaa >>>>v13@24q6s1e4. <<<v9@12q4s0a4
   <aa>a<abb>c+c+<
E4=>dddd<
E5=>cccc<
E6=b-b->fb->d<b-fb-<
   >ccg>cec<g>c<<
   >ddfa>d<afd<
   a>age<aaaa
E7=b-b->fb->d<b-fb-<
   >ccg>cec<g>c<<
   >e-e-b-e-ge-ae-<
   >b-e->e-<e->g<e->b-<e-<
E8=>dd>d<dga>cd
   <ff>f<fff>f<f
   b-b->b-<b-b-b->b-<b-<
E9=aa>a<a>g<a>a<a
EA=aa>a<a>aec+<a
EB=>dr4drr>cd
   <rdfde-e-gb-
   dr4drr>cd
   <rdfdccec<
EC=>dd>d<dga>c(d
   dmp6<<)d4.r2

;- RHYTHM

FMR=v14 vs13 vb15
    y38,3 y22,198 ;b
    y39,0 y23,188 ;h s
    y40,2 y24,188 ;c m

F0=y40,0mb8y40,2ms8r8 vb15
F1=y40,0mb8mb8y40,2ms8r8
F2=y40,0mb8y40,2h8h8ms8b8ms8y40,0mb8mb8y40,2
F3=y40,0mb8y40,2h8h8ms8b8ms8ms8ms8
F4=y40,0mb8y40,2vm10vs10ms8ms8ms8vm12vs11ms8vm13vs12ms8vm14vs13ms8vm15vs14ms8vm14vs13
F5=y40,0mb8y40,2h8ms8h8
F6=ms8ms8ms8ms8
F6'=vm13vs12ms8ms8ms8ms8vm13vs13
F7=y40,0mb8y40,2ms8ms8b8ms8ms8b8ms8
F8=y40,0mb8y40,2y24,188y23,188ms8y23,128y24,128ms8y24,188y23,188ms8y24,128y22,128ms16ms16ms16ms16y24,68y23,68ms16ms16ms16ms16y24,188y23,168
F9=y40,0mb8y40,2h8h8b8h8h8ms8r8
FA=y40,0mb8mb8y40,2h8ms8y40,0mb8mb8y40,2h8ms8
FB=y40,0mb8mb8y40,2ms8y40,0mb8mb8y40,2ms8ms8ms8
FC=ms8y40,0mb8mb8y40,2ms8y40,0mb8mb8y40,2ms8ms8
   y40,0mb8y40,2r8r2.

FM9=l64 v14 o4 @3 q2s1
KR=r8
K0= y22,188 y24,188 r
    y22,168 y24,168 r
    y22,148 y24,148 r
    y22,128 y24,128 r
    y22,108 y24,108 r
    y22, 88 y24, 88 r
    y22, 68 y24, 68 r
    y22, 48 y24, 48 r
    y22,188 y24,188
K0'=y22,188 y24,188 r
    y22,168 y24,168 r
    y22,148 y24,148 r
    y22,128 y24,128 r
    y22,188 y24,188
K1= y22,188 y24,188 (>c<
    y22,168 y24,168 b
    y22,148 y24,148 a
    y22,128 y24,128 g
    y22,108 y24,108 f
    y22, 88 y24, 88 e
    y22, 68 y24, 68 d
    y22, 48 y24, 48 )c
    y22,188 y24,188
K1'=y22,188 y24,188 (>c<
    y22,168 y24,168 b
    y22,148 y24,148 a
    y22,128 y24,128 )g
    y22,188 y24,188
K2= y22,188 y24,128 (g
    y22,168 y24,108 f
    y22,148 y24, 88 e
    y22,128 y24, 68 d
    y22,108 y24, 48 c<
    y22, 88 y24, 28 b
    y22, 68 y24, 18 a
    y22, 48 y24,  8 )g>
    y22,188 y24,188
K2'=y22,188 y24,128 (g
    y22,168 y24,108 f
    y22,148 y24, 88 e
    y22,128 y24, 48 )d
    y22,188 y24,188
K3'=y22,188 y24, 68 (c<
    y22,168 y24, 48 b
    y22,148 y24, 28 a
    y22,128 y24,  8 )g>
    y22,188 y24,188

