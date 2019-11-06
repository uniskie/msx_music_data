;++++/////////////////////////+
;+++/// STREET FIGHTER II ///++
;++/// ¢VS.-Ken(America)£///+++
;+/////////////////////////++++
;--- COMPOSED BY ALFH LYRA 
;-------- (C) CAPCOM
; voice.vcd
FM1 =t,w11',a0
       w11,a1/2,a2,a1,a3
FM2 =t,w12,a0
       w41,f0,vb,f1/2,vc,@62,f2,f21,f2,f22,@6,vb,f3
FM3 =t,w21,b0
       w21,b1,b11,b1,b12,w22,b2,b20,w21,vc,b3,w22,b2,b22,w21,vc,b4,b1,b5
FM4 =t,w31,c0
       w31,c1,c11,c1,c12,w23,b2,b21,w31,vc,c3,w23,b2,b23,w31,vc,c4,c1,c5
FM5 =t,w31,d0
       w31,d1,d11,d1,d12,w32,d21,d2,w31,vc,d3,w32,d22,d2,w31,vc,d4,d1,d5
FM6 =t,w31,e0
       w31,e1,e11,e1,e12,w32,e21,e2,w31,vc,e3,w32,e22,e2,w31,vc,e4,e1,e5
FMR =t,fmr,r0
       fmr,r1,r11,r1,r12,r2,r21,r2,r22,r1,r3
FM7 =
FM8 =
FM9 =
PSG1=t,w2a,b0
       w4a,f0,v9,f1/2,v8,f2,f21,f2,f22,v9,f3
PSG2=t,w2b,b0
       w4b,f0,v8,f1/2,v7,f2,f21,f2,f22,v8,f3
PSG3=t,psr,s0
       psr,s1,s11,s1,s12,s2,s21,s2,s22,s1,s3
SCC1=
SCC2=
SCC3=
SCC4=
SCC5=

t=;t255r64
  t200

vd=v13
vc=v12
vb=v11
va=v10
v9=v9
v8=v8
v7=v7

@6=@6
@14=@14
@16=@16
@24=@24
@62=@62

z1=z10
w11'=v14 @33 q2s1 o3 ;m5i10
w11= v14 @33 q2s1 o3 ;m5i10
w12= v10 @14 q4   o2 ;m5i10
a0=l8 (f1 )f4.f>fe-r(d- d-1 )d-2rd-c<b-
   rb-b-b-b-b-b-b- b-b-b-b-b-b-b->c rccccccc ccccccc
a1=l8 f rfffffff fff<f>fe-rd-
     rd-d-d-d-d-d-d- d-d-d-d-d-d-c<b-
     rb-b-b-b-b-b-b- b-b-b-b-b-gr>c rccccccc ccccccr
a2=r d-4r(d-)d-2 d-4r(d-)d-d-c4 <b-4r(b-)b-2 b-4r(b-)b-b->c<f rfa->ce-dr<f a->ce-dr4<f>d- 
   r4.d-d-2 d-4rd-d-d-d-4 e-4e-(e-)e-2 e-4r(e-)e-e-e-c rceg>c<b-r>(c )c<cccccr
a3=f rfffffff fff<f>fe-rd- rd-d-d-d-d-d-d- d-d-d-d-d-d-d-e- re-e-e-e-e-e-e- eeeeeer(f f1 )f2<f>fr

w21=v13 @62 q6s1 o3 m5i z
w22=v14 @16 q6s1 o4 m5i
w23=v13 @16 q6s1 o4 m5i r8 z10
w2a=v8  @14 q6 o2 m5i10
w2b=v8  @14 q6 o2 m5i10 z10
b0=l8 (f1 )f4.cfe-r(e- )e-d-r(d-d-2 )d-2rd-c<(b-
   b-1 )b-2.b->(c )c1 d2.c

b1=l8 (f )f1 rfr4f4r(d-
      )d-1 rd-r4d-4r<(b-
      )b-1 rb-r4b-4r>(c )c1
b11=rcr4ccr
b12=rcccccr
b2=r rd-f>(c)c2 r<d-f>(c)c<b-a-g
b20=r<b->d-(a-)a-2 r<b->d-(a-)a-gf
b21=r<b->d-(a-)a-2 r<b->d-(a-)a-g
b3=(f )f1 rfr4ffr
b22=re-g>(e-)e-2< re-g>(e-)e-d-c
b23=re-g>(e-)e-2< re-g>(e-)e-d-
b4=(c )c1 rcr4ccr
b5=rcccccr(f )f1 rfr4f4.(d- )d-1 rd-r4d-4r(e- )e-1 e2.r(f )f1 rfr4ffr


w31=v11 @62 q6s1 o5 m5 z 
w32=v11 @2 q6s1 o6 m5 z 
c0=l8 (f2fi50f4. )f4ricfe-r(e- )e-d-r(d-d-2 i50)d-2rid-e-(f
      )f4f4rf4. f4rff4fg g4g4rg4. g4rgg4g
d0=l8 (c2ci50c4. )c4ricccr<(a- )a-a-r(a-a-2 i50)a-2ria-b->(d-
      )d-4d-4rd-4. d-4rd-d-4d-e e4e4re4. e4ree4e
e0=l8 <(a-2a-i50a-4. )a-4rifa-a-r(f )ffr(ff2 i50)f2rifg(a-
      )a-4a-4ra-4. a-4ra-a-4a->c c4c4rc4.c4rcc4c

c1=l8(b-
   )b-4a-4rb-b-a- r<a-r4a-4r>(b-
   )b-4a-4rb-b-a- r<a-r4a-4r>>(c )c4<b-4r>cc<b- r<b-r4b-4r>(f )f4g4rff
d1=l8(f
   )f4f4rfff r<fr4f4r>(f
   )f4f4rfff r<fr4f4r>(f )f4f4rfff r<fr4f4r>(c )c4c4rcc
e1=l8(c
   )c4c4rccc r<cr4c4r>(c
   )c4c4rccc r<cr4c4r>(d- )d-4d-4rd-d-d- r<d-r4d-4r(b- )b-4b-4rb-b-
c11=g r<gr4g4>g
d11=c r<cr4c4>e
e11=b- r<b-r4b-4>c
c12=g rgggggr
d12=c reeeeer
e12=b- rb-b-b-b-b-r
d21=r(i30
d22= (i30v6a-
d2=l4 v7a-v8a-v9a-v10a-v11 i60)a-1i
     (v7a-v8a-v9a-v10a-v11 i60)a-2..i l8
e21=r(i30
e22= (i30v6f
e2=l4 v7fv8fv9fv10fv11 i60)f1i
     (v7fv8fv9fv10fv11 i60)f2..i l8
c3=(b- )b-4a-4rb-b-a- rfr4ffr
d3=(f )f4f4rfff rcr4ccr
e3=(c )c4c4rccc r<a-r4a-a-r
c4=(a- )a-4g4ra-a-g rgr4ggr
d4=(e )e4e4reee rer4eer
e4=(c )c4c4rccc rcr4ccr
c5=g rgggggr(b- )b-4a-4rb-b-a- r<a-r4a-4r>(b- )b-4a-4rb-b-a-
     r<a-r4a-4>r(a- )a-4g4ra-a-g rgr4g4g(b- )b-4a-2. rfr4ffr
d5=e reeeeer(f )f4f4rfff r<fr4f4r>(f )f4f4rfff
    r<fr4f4r>(e- )e-4e-4re-e-e- rer4e4e(g )g4f2. rcr4ccr
e5=>c rcccccr(c )c4c4rccc r<cr4c4r>(c )c4c4rccc
     r<(cr4c4r(b- )b-4b-4rb-b-b- r>cr4c4c(c )c4c2. rcr4ccr


w41=v13 @6 o5 m5 s1
w4a=v12 @16 o4 m5
w4b=v10 @16 o4 m5 z10 r8
f0=l8 r
f1=r4iq8c4f4b-(a- )a-g(f4)fq4e-rf
   r4iq8c4f4b-(a- )a-g(f4)fq4e-rf
   r4ic4q8f4b->(c )cd-c<q4b-4q8a-b-q6>(c ci30)c4i<(b-)q4b-4a-4 g4fq8(ee4i30)e4
f2=i(f4)f16.q4g-32q8(g)g2 q4a-4.q8b-4a-gf q4d-4>r16.c-32q8(cc2 i60)c2.i<q4b->q8(c c2..i60c
f21=)c2.ri<(f
f22=)c1<
f3=r4ic4f4b->(c )c4<b-a-rq4grq8(a-
   )a-4gfrq4e-rq8(f fi60)f4ifga-r4
   r4q4b-4a-4q8gq4b- rb-a-4g4q8a-(g )g4f4e4f>q4c rcccccrq8(c 
   )c4<b-4a-4b-(a- )a-grq4frq8c4(a-
   )a-4gfre-r(f fi60)f4ifga-r4
   r4b-4>c4d-c rq4c<b-4a-4q8e(g )g4(f4.i60f)f4i r2

fmr=v11 vb14 vm13
    y22,220 y38,3
    y23,146 y39,2
    y24,175 y40,2
r0=c4b4r4b4 r4b4b8b4bc8 r4b4r4b4 r4b4r8b8b8bc8
   r8b8ms4b4ms4 b4ms8b4b8ms8bc8 r8b8ms4b4ms4 b4ms4b8b8msc8

r1=bc8 r8b8ms4b4ms4 b4ms8b4b8ms8b8 r8b8ms4b4ms4 b4ms4b8b8ms8b8
       r8b8ms4b4ms4 b4ms8b4b8ms8b8 r8b8ms4b4ms4
r11=b4ms4b8b8msc8
r12=b8bms8bms8bms8bms8ms8r8
    r8 bc4
r2=   r8b8r4ms4 b4r8b4y23,180y24,200ms8y23,120y24,150ms4y23,148y24,175
   bc4r8b8r4ms4 b4r8b4y23,180y24,200ms8y23,120y24,150ms8y23,148y24,175bc8 
r21=c8b8ms4b4ms8b8 b4ms8b4ms8ms8bc8 r4
r22=r8b8ms4b4ms8b8 r4ms4b8b8msc8
r3=b8ms8ms8ms8y23,170y24,200ms8y23,120y24,160ms8y23,148y24,175r8bc8
   r8b8ms4b4ms4 b4ms8b8b8b8ms8b8 
   r8b8ms4b4ms4 b4ms4b8b8ms8b8
   r8b8ms4b4ms4 b4ms8b4b8ms8b8
   r4b4b4b4 b4b4ms8bms8r8

psr=v8 l m q4 
s0=@6i70o8cr2. r2..(c8 )c8r2.. r2..(c8 
   )c8r8@0drd rdrd8@6c .@0drd rdrd8
s1=@6i70o8c8 r@0drd rdrd rdrd rdrd
      rdrd rdrd rdrd
s11=rdrd8
s12=r8d8d8d8d8d8r8
    r8 @6c
s2= rr@0d rr.v9o2@27(g64p30<)g16..p>(e64p30<<)e16..pr8
   v8@6o8i70crr@0d rr.v9o2@27(g64p30<)g16..p>(e64p30<)e16..p>v8@6o8i70c8
s21=c8r8@0drd rdr8d8d8@6c8 r
s22=r@0drd rdrd8
s3=r8d8d8d8v9o2@27(g64p30<)g16..p>(e64p30<)e16..p>r8v8@6o8i70c8 r@0drd rdrd rdrd rdrd rdrd rdrd rrrr rrd8d8r8

