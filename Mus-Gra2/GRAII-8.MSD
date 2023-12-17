;*************************************
;   GRADIUS II-8  ¢ Crystal World £
;*************************************
FM1 =t,fm0,a0,     a0',a1,fm0a,b2,a3,fm0b,a4,a5,a4,a6,rr4
FM2 =t,fm1,b0,fm1',a0',a1,fm1a,b2,a3,fm1b,a4,a5,a4,a6
FM3 =t,fm2,c0,a1,fm2a,c1,fm2b,c2,fm2c,c3,c4,c3,c5,fm2d,c6,fm2c,c7,rr4
FM4 =t,fm3,d0,a1,fm3a,c1,fm3b,c2,fm3c,c3,c4,c3,c5,fm3d,c6,fm3c,c7
FM5 =t,fm6,g0/4,g1,g2,g1,g3,g4,g1,g5,g6,g7,g6,g8
FM6 =t,fm4,e0
FMR =
FM7 =t,fm5,g0/4,g1,g2,g1,g3,g4,g1,g5,g6,g7,g6,g8
FM8 =t,fm7,r0,r1,r0,r2,r0/3,r3,r4/2,r5,r6/7,r7,r6/7,r7,r6/7,r7,r8/2,r9
FM9 =t,fm8,r0,r1,r0,r2,r0/3,r3,r4/2,r5,r6/7,r7,r6/7,r7,r6/7,r7,r8/2,r9
PSG1=t,ps0,a0,     a0',a1,     a2,a3,a4,a5,a4,a6,rr4
PSG2=t,ps1,e0
PSG3=t,ps2,s0,s1,s0,s2,s0/3,s3,s4/2,s5,s6/7,s7,s6/7,s7,s6/7,s7,s8/2,s9
SCC1=t,sc0,g0/4,g1,g2,g1,g3,g4,g5/2,g6,g7,g6,g8
SCC2=t,sc1,e0
SCC3=t,sc2,d0,a1,sc2a,c1,sc2b,c2,sc2c,c3,c4,c3,c5,c6,c7,rr4
SCC4=t,sc3,a0,     a0',a1,sc3a,a2,a3,sc3b,a4,a5,a4,a6,rr4
SCC5=t,sc4,b0,sc4',a0',a1,sc3a,a2,a3,sc4b,a4,a5,a4,a6

t=t220

rr4=r4

;part 1

fm0=o5@24q2s1v12
fm1=o5@24q2s1v12
ps0=o3@11v7q7 z2
sc3=o3@8q6v8q6 
sc4=o3@8q6v8q6 

fm1'=v11 z9 r4
sc4'=v5  z4 r4

fm0a=@16 v13q8
fm1a=@16 v11q8
sc3a=@17

fm0b=@24 v13q2
fm1b=@24 v12q2 z6
sc3b=@10 v8>
sc4b=@10 v6> z4

a0=>r1 r2l8rgrg r1 r2rggg r1 r2rgrg r1 <
b0=>r1 r2l8rdrd r1 r2rddd r1 r2rdrd r1 <

a0'=l8r2ra>da 
a1=m5(g2.i50g4 )g4.if+gf+d(e e2.i50e4 )e2ir<a>da
   (g2.i50g4 )g4.if+gf+d(e e2.i50e4 )e2.i;r4

b2=r4
   (a2i50)a2i (a.i50)a.i(b.i50)b.i>c4
   (g2i50)g2i <(g.i50)g.i(a.i50)a.ib4
   >(a2.i50a4 )a2i<
a2=r4
   (a2i50)a2i (a.i50)a.i(b.i50)b.i>c4<
   (g2i50)g2i (g.i50)g.i(a.i50)a.ib4
   (a2.i50a4 )a2i
a3=rgra r1 r1<

a4=l8m4(c4.i50)c4.icf (a+4.i50)a+4.iaf
a5=(g.i50)g.i>(c4.i50)c1i<r4
a6=g4a(f4.i50 )f1ir4
   (d+4.i50)d+4.id+g+ >(c+4.i50)c+4.ic<g+
   (a+.i50)a+.i>(d+d+2i50)d+2ir4<d+f
   (f+4i50)f+4i r4 c+f+ (g+4i50)g+4i r4 d+g+
   (a+4..i50)a+4..i>(c4.i50)c4;r4

;part 2

fm2=o5v10@6s1 z9
fm3=o5v10@6s1 z9
sc2=o4v5@15q6 z3

c0=r8 >r1 r2l8rgrg r1 r2rggg r1 r2rgrg r1 r1< r8
d0=r8 >r1 r2l8rdrd r1 r2rddd r1 r2rdrd r1 r1< r8

fm2a=@0v10 z0
fm3a=@0v08 z3 r4
sc2a=@17v5 z0
c1=<
   l8fa>c<a>cfcf afa>c<a>cfa<<
   gb>d<b>dgdg bgb>d<b>dgb<<
   >>ea>d<ea>d<ae>d<ea>d<<<r2
   r1
   >

fm2b=@0v12 q4s0>
fm3b=@0v10 q4s0>
sc2b=@17v5z1q4>
;c2=l24<cc+dd+ef gg+aa+b>c cc+dd+ef f+gg+aa+bl8
c2=l32<<<rcdef+gab>c def+gab>cd ef+gab>cde f+gab>cde<l8

fm2c=@24v11 q4s1 z10 
fm3c=@24v8  q4s1 z23
sc2c=@2v6 q8z1
c3=ffrff rff  a+a+ra+ra+a+a+
d3=ccrccrcc ffrfrfff
c4=>ccrccrcc rccrcccc<
d4=ggrggrgg rggrgggg
c5=ggaffrff rffrffff
   g+g+rg+g+rg+g+ >c+c+rc+rc+c+c+
   d+d+rd+d+rd+d+ rd+d+rd+d+d+d+<
   m4(f+4.i50)f+4.if+f+ (g+4.i50)g+4.ig+g+

fm2d=@16v14q8
fm3d=@16v12q8
c6=a+<cfa+>cfa+>
c7=(c c4i50c)c2i;r4

;part 3

fm4=o6v13@9 q2s1 
ps1=o5v5@13 q4 z2 r4
sc1=o4v9@18 q4

e0=l8m6i20
   r1 r2rg4. 
   r1 r2rgg4
   r1 r2rg4.
   r1 r1
   
   g4.rr2 r1
   e4.rr2 r1
   rg4.r2 r1
   c4.rr2 r1

   a4.rr2 r1
   g4.rr2 r1
   a4.rr2 r2rg4.
   a2r2 r1
   
   f4.rr2 a+4.rr2
   g4.>c4.r4 r1<
   f4.rr2 a+4.rr2
   g4af4.r4 r1
   d+4.rr2> c+4.rr2<
   a+4.>d+4.r4 r1<
   f+4.rr2 g+4.rr2
   a+4.rr4.>c4.rr;r4

;part 4

fm5=o3@14v10q5 
fm6=o2@33v14q5
sc0=o2@11v13q6

g0=l8adea4dea4deaadea
g1=adea4dea4deaadea 
g2=bef+b4ef+b4ef+bbef+b
g3=>c<fg>c4<fg>c4<fg>cc<fg>c<
g4=f<a>cf4<a>cf4<a>cff<a>cf g<b>dg4<b>dg4<b>dgg<b>dg
g5=adea4dea4agfedc<a+>
g6=cfacfacf a+dfa+dfa+d
g7=cegcegcegcegcegc
g8=ggaffacf acfacfac
   cd+gcd+gcd+ g+c+fg+c+fg+c+
   d+ga+d+ga+d+g a+d+ga+d+ga+d+
   <a+>c+f+<a+>c+f+<a+>c+ g+cd+g+cd+g+c
   a+<fa+>dfa+>d<(d d4 m4i50)d2. i

;rhythm part

fm7=v15o1z20
fm8=v15o1
ps2=v10o2q6

r0=l8@91a>@87e@90c@86e<@91a>@87e@90c@86e <@91a>@87e@90c@87e<@91a>@90c@87e@90c<
r1=@91a>@87e@90c@86e<@91a>@87e@90c@87e <@91a>@87e@90c@86e<@91a>@90ccc<
r2=@91a>@87e@90c@86e<@91a>@87e@90c@86e <@91a>@90ccccccc<
r3=@91a>@87e@90c@86e<@91a>@87e@90c@86e <@91a>@87e@90c@87e<@91a>@90ccc<
r4=@91a4>@90c<@91ara>@90c<@91a> r@87e@90c@87e<@91aa>@90c@87e<
r5=@91a4>@90c<@91ara>@90e<@91a> r@87e@90c@87e<@91a>@90crc< 
   @91a>@90ccccccc
   ;<@91a4>@90c<@91ara>@90c<@91a>
   @92b16b16bbaa@90ccc<
r6=@91aa>@90c<@91a
r7=>@90cccc<
r8=@91aa>@90c<@91aa>@90ccc<
r9=@91a>@90cccccc@86e @92l16>cccc<bbbbbaaaa@90cccc

s0=l8@01a>@07g@00e@06g<@01a>@07g@00e@06g <@01a>@07g@00e@07g<@01a>@00e@07g@00c<
s1=@01a>@07g@00e@06g<@01a>@07g@00e@07g <@01a>@07g@00e@06g<@01a>@00eee<
s2=@01a>@07g@00e@06g<@01a>@07g@00e@06g <@01a>@00eeeeeee<
s3=@01a>@07g@00e@06g<@01a>@07g@00e@06g <@01a>@07g@00e@07g<@01a>@00eee<
s4=@01a4>@00e<@01ara>@00e<@01a r>@07g@00e@07g<@01aa>@00e@07g<
s5=@01a4>@00e<@01ara>@00e<@01a r>@07g@00e@07g<@01a>@00ere<
   @01a>@00eeeeeee<
   ;@01a4>@00e<@01ara>@00e<@01a
   >@21g16g16gg@23ff@00eee<
s6=@01aa>@00e<@01a
s7=>@00eeee<
s8=@01aa>@00e<@01aa>@00eee<
s9=@01a>@00eeeeee@06g l16@21gggg@23ffff@25cccc@00eeee

