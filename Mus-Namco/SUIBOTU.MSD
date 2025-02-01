;**************************************
;  DRAGON SABER  Stage1  ¢½²ÎÞÂ Ä¼£
;**************************************
;suibotu.msd suyibotu.vcd/voice.vcd

FM1 =t,fm0,a0/3,a1,a2,
           a3,a4,a3,a5,
           a6,a7,a6,a8,
           d7/4,ab,d8
FM2 =t,fm0,b0/3,b1,a2,
           b3,b4,b3,b5,
           a6,a7,a6,a8,
           e7/4,ab,e8,e9
FM3 =t,fm0,c0/3,c1,c2r
           a3,a4,a3,a5,
           a6,a7,a6,c8,
           f7/2,ab,f8
FM4 =t,fm3,g0,g1/11,g0,g1/2,g2,
           g3/2,g4/2,g5/2,g4/2,g3/2,g4/2,g5/2,g6,
           g7/2,g8/2,g9/2,ga,gb/2,gc/2,gd/2,ge,
           gf/4,gg/4,gf/4,gg/4,gh 
FM5 =t,fm4,h0/4,wr,
           h1,h2,h1,h3,
           h4,h5,h4,h6,
           h7,gf/4,gg/4,gf/4,gg/4,gh
FM6 =t,fm5,i0/16,wr,
           i1/3,i2,i1/3,i3,i3'
           i4,i5,i4,i6,
           i7,f7/2,e8
FMR =t,fmr,r0,r1/2,r2,r1/3,r3,r0,r1/2,r4,r1/3,r5,
           r0,r1/2,r6,r1/3,r7,r0,r1/2,r6,r1/2,r8,
           r9,ra/6,rb,r9,ra/7
           rc/4,rd
FM7 =
FM8 =
FM9 =
PSG1=t,ps0,a0/3,a1,a2p,
           d0,d1,d0,d2,
           d3/7,d4,d3/7,d5,
           wr/8,d8
PSG2=t,ps0,b0/3,b1,a2p,
           e0,e1,e0,e2,
           e3/15,e4,
           wr/8,e8
PSG3=t,    s0,s1/2,s2,s1/3,s3,s0,s1/2,s4,s1/3,s5,
           s0,s1/2,s6,s1/3,s7,s0,s1/2,s6,s1/2,s8,
           s9,sa/6,sb,s9,sa/7
           sc/4,sd
SCC1=t,sc0,g0,g1/11,g0,g1/2,g2,
           g3/2,g4/2,g5/2,g4/2,g3/2,g4/2,g5/2,g6,
           g7/2,g8/2,g9/2,ga,gb/2,gc/2,gd/2,ge,
           gf/4,gg/4,gf/4,gg/4,gh
SCC2=t,sc1,h0/4,wr,
           h1,h2,h1,h3,
           h4,h5,h4,h6,
           h8,d7/4,d8
SCC3=t,sc2,a0/3,a1',
           d3v,d0,d1,d0,d2
           d3/7,d4,d3/7,d5
           d6v,d7/4,d8
SCC4=t,sc2,b0/3,b1',
           d3v,e0,e1,e0,e2
           e3/15,e4
           d6v,e7/4,e8,e9
SCC5=t,sc2,<,c0/3,c1,
           d3v,f0,f1,f0,f2
           f3/2,f4/2,f5/2,f6/2,f3/2,f4/2,f5/2,f6,f6'
           d6v,f7/2,f8

t=t152
;  r64 ;for hi-hut vol bug. <- remove from loop bgm

;==== keybord 1
fm0=o5@71v12 m6
ps0=o4@14v13 m6

a0=l8dr4e-r4d-r rg-r4e-ra-r cr4d-r4g-r re-r4a-r>cr<
a1=  dr4e-r4d-r rg-r4e-ra-r cr4d-r4g-r re-r4a-r>(a-4 i30a-1 i60)a-1i<
;>(c4 i30c1 i60)c1i<
a1'= dr4e-r4d-r rg-r4e-ra-r cr4d-r4g-r re-r4a-r(a-4 i30a-1 i60)a-1i
b0=l8<b-r4>cr4<b-r >rd-r4cre-r <a-r4b-r4>d-r rcr4e-ra-r
b1=  <b-r4>cr4<b-r >rd-r4cre-r <a-r4b-r4>d-r rcr4e-r>(e-4 i30e-1 i60)e-1i<
;(a-4 i30a-1 i60)a-1i
b1'= <b-r4>cr4<b-r >rd-r4cre-r <a-r4b-r4>d-r rcr4e-r(e-4 i30e-1 i60)e-1i
c0=l8<fr4a-r4g-r rb-r4a-r>cr <e-r4g-r4a-r ra-r4>cre-r
c1=  <fr4a-r4g-r rb-r4a-r>cr <e-r4g-r4a-r ra-r4>cr>(c4 i30c1 i60)c1i<
;(e-4 i30e-1 i60)e-1i

a2=@61 v14
c2r=@61 v12r8z10
a2p=o5@14v12z

a3=b-amp6b-pm5(ff2i60 )f2.ie-d
   (c4i60)cmp40(gg2m5i60 )g1i<
   (b-4i60)b-mp40>(ff2m5i60 )f2.ie-d
a4=e-dmp6e-pm5(cc2i60 )c1i
a5=c<a->mp40e-pm5d4c<a-e- fb-amp40>f4pm5c<a>mp40fpm5
b3=dcmp6dpm5<(b-b-2i60 )b-2.igf
   (e-4i60)e-i>(e-e-2i60 )e-1i<
   (d4i60)dimp24b-(b-2m5i60 )b-2.igf>
b4=<gfmp6gpm5(e-e-2i60 )e-1i>
b5=<e-cmp40a-pm5g4e-c<a- a>dcmp40a4pm5fcmp40apm5
   z10>

a6=<l8(a-4i60)a-8i>mp90(a-8pm5a-2i60 )a-1i
   (g4i60)g8imp8(f8pm5f2i60 )f1i<
   (a-4i60)a-8i>mp90(g-8ppm5g-2i60 )g-1i
a7=l2(a-i60)a-i (gi60)gi
a8=l8(e-4i60)e-i (dd2i60 )d1i
   v11 z0 @62q
c8=l8(e-4i60)e-i (dd2i60 )d2..i
   v11 z0 @62q
ab=v14 q6

;==== keybord 2
sc2=o5@19v12 m5 l8 q6
<=<v13

d3v=o4@18v12 l8

d0=dr4(ff4.i40f )f4ir4e-ra-r
   dr4(e-e-2i40 )e-2.ir4
   ;dr4(ff2i40 )f2.ir4
   dr4(ff2i40 )f2.ir4
d1=e-r4(cc2i40 )c2.ir4
d2=e-<a->e-d4c<a-e-> cfcff<fa>f

e0=<b-r4>(dd4.i40d )d4ir4cre-r
   <b-r4>(cc2i40 )c2.ir4
   ;<b-r4>(dd2i40 )d2.ir4
   <b-r4>(dd2i40 )d2.ir4
e1=cr4<(a-a-2i40 )a-2.ir4>
;e2=c<r>cr4r4. r4.ccr4.
e2=<c>>a-<c>(a-)a-4.e-< <b->f<b-b-b->f4.

f0=<fr4(b-b-4.i40b- )b-4ir4a-r>cr
   <fr4(a-a-2i40 )a-2.ir4
   ;<fr4(b-b-2i40 )b-2.ir4
   gr4(b-b-2i40 )b-2.ir4>
f1=<a-r4(e-e-2i40 )e-2.ir4>
f2=<a-r2r4. b-rb-b-b-r4.>

d3=l16a-ra-r8.a-a-a-8a-rr4
d4=grgr8.ggg8grr4
d5=b-rb-r8.b-b-b-8b-rr4

e3=l16e-re-r8.e-e-e-8e-rr4
e4=frfr8.fff8frr4

f3=l16d-rd-r8.d-d-d-8d-rr4
f4=crcr8.ccc8crr4
f5=<brbr8.bbb8brr4>
f6=<b-rb-r8.b-b-b-8b-rr4>
f6'=drdr8.ddd8drr4

d6v=v11 @19

d7=l4<(b-i40)b-8i>(c8ci40c )ci<b->cd-
     <(b-i40)b-8i>(c8c2i40 )c1i
d8=l4(e-i40)e-8i(di40)d8i(d-i40 )d-8i(ci40)c8iqcc
e7=l4<(g-i40)g-8i(a-8a-i40a- )a-ig-a-b-
     (g-i40)g-8i(a-8a-2i40 )a-1i>
e8=l4<(b-i40)b-8i(b-i40)b-8i(a-i40 )a-8i(a-i40)a-8iqb-(a8>
e9=<)a8>
f7=<<l1(g- g- i40g- )g-i (a- a- i40a- )a-i>>
f8=l4<(fi40)f8i(fi40)f8i(e-i40 )e-8i(e-i40)e-8iq6qff>


;==== strings
fm4=o5@2q7s1v13 z6
sc1=o4@14v9q6 z1

h0=m5i4 l1(b- b- i10b- i20)b-i4
wr=r1 r1

h1=>(b- i20)b-i (a-2i20)a-2i (c4i20)c8i(g4.i20)g4i (di20 )di<
h2=>(e-i20 )e-i<
h3=>(a-2i20)a-4.ie-8 <(f4i20)f8i>(f4.i20)f4i<

h4=l8
   (a-4i20)a-8i>(a-a-2i20) a-1i<
   >(g4i20)g8i(ff2i20) f1i<
   (a-4i20)a-8i>(g-g-2i20) g-1i<
h5=l2>(a-i20)a-i (gi20)gil8<
h6=l2>(a-i20)a-i (b-i20)b-il8<

h7=@12v11<<< o2
h8=v7@17z7<< o2

;==== sequence
fm5=o6@0v10 m5i4 q6s1
;ps3=o5@17v8q6 m4i

i0=l16
   b->b-<b-rb->b-<b->b-
   <b-rb-r<b->b->b-<<b->
i1=>d8<e-8 b-8 e-8
   >d8<e-8 b-8 e-8
   >d8<e-8 b-8 e-8
   >f8<e-8 b-8 e-8
i2=>c8<e-8 a-8 e-8
   >c8<e-8 a-8 e-8
   >c8<e-8 a-8 e-8 >c<e-e-a-ce-a->c<
i3=>c8<a-8>e-8 d 8 rrc<a-e-c<a-e-
   >f8 b-8 a-8>f 8 c<a>f<ac<a>f<a>
   @14 ;* psg/fm both voice *
i3'=v12@16
i4=l4
   r1 (a-i60)a-8i4>(a-8a-i60)a-i
   r1 (gi60)g8i4(f8fi60)fi
   r1 r4.(a-8a-i60)a-i
   (a-2i60)a-2i<
i5=>(g2i60)g2i<
i6=(b-2i60)b-2i
   l8 <;o4
   ;@14 v7z3;-psg
i7=@62q s1 v9r8z3;-fm

;==== bass
fm3=o2@33v14q5s1
;ps1=o2@17v11q5
sc0=o1@11v15q5

g0=l8b-b-b-b-b-16b-16b-b-b-
g1=b-b-b-b-b-b-b-b-
g2=b-b-b-b-b-b-(b-4 b-1 )b-1

g3=l16b-b-b-rl8b-b-b-b-b-b-
g4=l16a-a-a-rl8a-a-a-a-a-a-
g5=l16gggrl8gggggg
g6=>a-<a-a-a-a-a-a-a- fb->cfff<f>f<

g7=l16g-g-g-8g-rg-g-g-8g-rg-g-g-r
g8=fff8frfff8frfffr
g9=eee8ereee8ereeer
ga=;ddd8drddd8drdddr 
   e-e-e-8e-re-e-e-8e-re-e-e-r
   >e-e-e-8e-re-e-e-8e-re-e-e-r
gb=d-d-d-8d-rd-d-d-8d-rd-d-d-r
gc=ccc8crccc8crcccr
gd=<bbb8brbbb8brbbbr
ge=b-b-b-8b-rb-b-b-8b-rb-b-b-r
   b-b-b-8b-rb-b-b-8b-rb-b-b-r
   ;a-a-a-8a-ra-a-a-8a-ra-a-a-r
gf=l8g-g-g-g-g-g-l16g->g-<g->g-<
gg=l8a-a-a-a-a-a-l16a->a-<a->a-<
gh=l8b-4b->b-4b-<a-4 a->a-4a-<f>f<f>f


;==== drums
fmr=v15vh10vc12vs12vm14
    y38,4y22,186 ;bassdrum
    y39,2y23,164 ;snare
    y40,2y24,178 ;tom
;ps2=v12

r0=bc16vh10h16h16h16bms16h16h16h16bh16bh16h16h16bms16h16h16h16
r1=vh11bh16vh10h16h16h16bms16h16h16h16bh16h16h16h16bms16h16h16h16
r2=vh11bh16vh10h16h16h16bh16h16h16h16bm16m16m16m16y24,118bm16m16y24,98m16y24,98m16y24,178
r3=vh11bh16vh10h16h16msh16bh16mh16y24,118mh16y24,178h16bh16h16h16h16bms16msh16y24,118mh16y24,98mh16y24,178
r4=vh11bh16vh10h16h16h16bms16h16h16h16bh16y24,148mh16mh16mh16y24,178bms16y24,118mh16mh16mh16y24,178
r5=bms32ms32ms16ms16ms16bms16ms16ms16ms16bms16ms16ms16ms16bsc4 bch16hm16y24,148hm16y24,178h16bh16h16h16h16bh16h16h16h16bh16h16h16h16 bch16hm16y24,98hm16y24,178h16bh16h16h16h16y24,148bmh16mh16mc16y24,118mh16y24,178bms16y24,148mh16y24,118mh16mh16y24,178

s0=v12
   l8o7@6bro4@2errrer
s1=l8@2rrerrrer
s2=l64r2@21(gfe)d(gfe)d(gfe)d(gfe)d@22(fed)c(fed)c@24(c<b-a)g><@25(b-ag)f>
s3=l64r16r16r16@2e8@21(g+fe)d@22(f+ed)cr16r4@2(edc>)b<(edc<b)>@23(dc<b)a>@24(c<ba)g>
s4=l8rr@2err16l64@23(dc<b)a>(dc<b)a>(dc<b)a>@8e16@24(c<ba)g>(c<ba)g>(c<ba)g>
s5=l32@2eel16eeeeeeeeeeee4 rl64@21(g+f+e)d@22(f+ed)cr16r2. r16@21(g+f+e)d@22(f+ed)cr16r4@22(dc<b-)a>(dc<b-)a>(dc<b-)a>@24(c<b-a)g+>@2e16@22(f+ed)c@24(c<b-a)g+>(c<b-a)g+>

r6=vh11bh16vh10h16h16h16bms16h16h16h16bh16h16hs16hs16bms16y24,118mh16mh16mh16y24,178
r7=vh11bh16vh10h16h16msh16bms16y24,138mh16y24,118mh16y24,178h16bh16h16h16h16bms16h16y24,118mh16y24,98mh16y24,178
r8=y24,158bm8m8b8y24,138m8bm4y24,98bm4 bm8y24,178ms8bms8y24,98m16y24,138m16y24,178ms16y24,158m16y24,138m16y24,118m16bm16m16m16r16y24,178

s6=r4@2e8r4l16eeel64@24(c<b-a)g+>(c<b-a)g+>(c<b-a)g+>
s7=l16rrr@2eel64@23(dc<b-)a>@24(c<b-a)g+>r16r4@2e8@24(c<b-a)g+><@25(b-ag+)f>
s8=l8l64@22(f+edc<b-ag+)f+>(f+edc<b-ag+)f+>r8@23(dc<b-ag+f+e)d>(dc<b-ag+f+e)d>r8@25(c<b-ag+f+ed)c>r8 (c<b-ag+f+ed)c>@2e8e8l16l64@25<(b-ag+)f+>@23(dc<b-)a>@2e16@22(f+ed)c@23(dc<b-)a>@24(c<b-a)g+>(c<b-a)g+>(c<b-a)g+>(c<b-a)g+>r16

r9=bhc16h16bh16h16bms16h16bc16bh16bh16h16bh16h16bms16h16y24,118bmc16y24,178h16
ra=bh16h16bh16h16bms16h16bc16bh16bh16h16bh16h16bms16h16bc16h16
rb=bh16h16bh16h16bms16h16bc16bh16bh16h16y24,118bmh16y24,178h16bms16sh16y24,118mc16mh16y24,178

s9=l8o7@6b16r.o4@2errrel64@24(c<b-a)g+>r16
sa=l8rr@2errl64@24(c<b-a)g+>l16r@2e8r8
sb=l8rr@2errl64@24(c<b-a)g+>l16r@2eel64@24(c<b-a)g+>(c<b-a)g+>

rc=bch16h16bh16h16bms16h16bh16h16bh16h16bh16h16bms16bh16bh16bh16
   bh16h16bh16h16bms16h16bh16h16bh16h16bh16h16bms16bh16bh16bh16
   bh16h16bh16h16bms16h16bh16h16bh16h16bh16h16bms16bh16bh16bh16
   bh16h16bh16h16bms16h16bh16h16bh16h16bh16h16bms16bms16bms16bms16
rd=bch8y24,158m8m8y24,178bch8y24,138m8m8y24,178bch8y24,118m8 m8y24,178bch8y24,118m8m8y24,178bch4bch4

sc=l8o7@6b16r.o4@2errrer
   rrerrrer
   rrerrrer
   rrerrrl16eeee
sd=l8o7@6b8o4l64@22(f+edc<b-ag+)f+>(f+edc<b-ag+)f+>o7@6b8o4@23(dc<b-ag+f+e)d>(dc<b-ag+f+e)d>o7@6b8o4@24(c<b-ag+f+ed)c> (c<b-ag+f+ed)c>o7@6b8o4@24(c<b-ag+f+ed)c>(c<b-ag+f+ed)c>o7@6b8rb8r

