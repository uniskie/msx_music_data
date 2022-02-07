;*************************************
;   GRADIUS II-8  ¢ Crystal World £
;*************************************
FM1 =t,fm0,a0,a1,a2,a3,a4,a5,a4,a6,a7,a8,a7,a9
FM2 =t,fm1,b0,b1,b2,b3,a4,a5,a4,a6,a7,a8,a7,a9
FM3 =t,fm2,c0,@0,c1,a1,c2,    @0,c1,@24,c3,c4,c3,c5,c6,c7,c6,c8
FM4 =t,fm3,d0,@0,c1,b1,b2,b3',@0,c1,@24,d3,d4,d3,d5,d6,d7,d6,d8
FM5 =t,fm6,g0/4,g1,g2,g1,g3,g4,g5/2,g6,g7,g6,g8,g9,ga,g9,gb
FM6 =t,fm5,f0,f1,f2,f3,f4,f3,f5,f6,f7,f6,f8
FMR =
FM7 =t,fm4,e0/4,e1,e2,e1,e3,a2,a3',e4,e4,e4,e6,e7,e8,e7,e9
FM8 =t,fm7,r0,r1,r0,r2,r0/3,r3,r4/2,r5,r6/7,r7,r6/7,r7,r6/7,r7,r6/7,r7,r8/2,r9
FM9 =t,fm8,r0,r1,r0,r2,r0/3,r3,r4/2,r5,r6/7,r7,r6/7,r7,r6/7,r7,r6/7,r7,r8/2,r9
PSG1=t,ps0,a0,a1,a2,a3p,a4,a5,a4,a6,a7,a8,a7,a9
PSG2=t,ps1,f0,f1,f2,f3,f4,f3,f5,f6,f7,f6,f8
PSG3=t,ps2,s0,s1,s0,s2,s0/3,s3,s4/2,s5,s6/7,s7,s6/7,s7,s6/7,s7,s6/7,s7,s8/2,s9
SCC1=t,sc0,g0/4,g1,g2,g1,g3,g4,g5/2,g6,g7,g6,g8,g9,ga,g9,gb
SCC2=t,sc1,f0,f1,f2,f3,f4,f3,f5,f6,f7,f6,f8
SCC3=t,sc2,d0,c1,f1,c2,c1,c3,c4,c3,c5,c6,c7,c6,c8
SCC4=t,sc3,a0,a1,a2,a3s,a4,a5,a4,a6,a7,a8,a7,a9
SCC5=t,sc4,g0/3,b0g,b1,b2,b3s,a4,a5,a4,a6,a7,a8,a7,a9

t=t220

;part 1

fm0=o5@14s1v12
fm1=o5@14s1v12z10
ps0=o4@11v8q6
sc3=o4@15q6v9q6
sc4=o2@15q6v9q6z5

b0g=l8adea4dea4deaa>a>dr
a0=l1rrrrrrrr2l8ra>da
b0=l1rrrrrrrr2l8ra>dr
a1=m4(g2.i50g4 )g4.if+gf+d(e e2.i50e4 )e2ir<a>da (g2.i50g4 )g4.if+gf+d
(e e2.i50e4 )e2.ir4
b1=m4(d2.i50d4 )d4.ir rr r<(b b2.i50b4 )b2ira>dr (d2.i50d4 )d4.ir rr r<(b b2.i50b4 )b2.ir4>
a2=(a2i50)a2i (a4i50)ai(b4i50)bi>c4 <(g2i50)g2i >(d4i50)di(c4i50)ci<b4 (a2.i50a4 )a2i
b2=(f2i50)f2i (f4i50)fi(g4i50)gia4 (e2i50)e2i (b4i50)bi(a4i50)aig4 (e2.i50e4 )e2i
a3=v14rgra v9rgrav4rgra r1 v13 
a3'=v14rgra v9rgrav4rgra r1 v10
a3p=v12rgra v6rgrav2rgra r1 v8
a3s=v14rgra v9rgrav4rgra r1 v9
b3=v14rdre v9rdrev4rdre r1 v12 R8
b3'=v14rdre v8rdrev3rdre v9
b3p=v11rdre v6rdrev4rdre r1 v8
b3s=v13rdre v9rdrev4rdre r1 v9
a4=l8m4(c4i50)c2icf (b-4i50)b-2i(a)f
a5=(g4i50)gi>(cc4.i50c )c1i<
a6=g4a(ff2i50 )f1i
a7=(e-4i50)e-2ie-a- >(d-4i50)d-2ic<a-
a8=(b-4i50)b-i>(e-e-4.i50e- )e-1i<
a9=b-4>c<(a-a-4.i50a- )a-2.ie-g (g-4i50)g-4.i<b->d-g- (a-4i50)a-4.ice-a- (b-4i50)b-2ir>(c c4i50c)c2i

;part 2

fm2=o6v14@16s1
fm3=o6v14@16s1
sc2=o4v9@10q6

c0=r1 r2l8rgrg r1 r2rggg r1 r2rgrg r1
d0=r1 r2l8rdrd r1 r2rddd r1 r2rdrd r1
c1=l24q4<<cc+dd+ef gg+aa+b>c cc+dd+ef f+gg+aa+b>l8q8
@0=@14v12
@6=@24v12
@24=@16v11
c2=l8<f+a>c<a>cf+cf+ af+a>c<a>cf+a<< gb>d<b>dgdg bf+b>d<b>dgb <a>ce<a>ca<a>c e<a>car2 r1< 
c3=ffrff rff  b-b-rb-rb-b-b-
d3=ccrccrcc ffrfrfff
c4=>ccrccrcc rccrcccc<
d4=ggrggrgg rggrgggg
c5=ggaffrff rffrffff
d5=ddeccr<b>c rccr<bbbb>
c6=a-a-ra-a-ra-a- >d-d-rcrccc
d6=e-e-re-e-re-e- a-a-ra-ra-a-a-
c7=e-e-re-e-re-e- reereeee
d7=a-a-ra-a-ra-a- rbbrbbbb
c8=<b-b->c<a-a-ra-a- ra-a-ra-a-a-a- g-4rm4(g-4i50)g-4.i a-4r(a-4i50)a-4.i (b-4i50)b-2ir>(c c4i50)c2.i
d8=f+f+ge-e-re-e- re-e-re-e-e- d-4rm4(d-4i50)d-4.i e-4r(e-4i50)e-4.i (b-4i50)b-2ir(g g4i50)g2.i

;part 3

fm4=o4v10@24m4i4

rr1=r1r1
e0=l8adf+a4df+(a )adf+a4df+a
e1=adea4de(a )adea4dea
e2=bef+b4ef+(b )bef+bbef+b
e3=>c<fg>c4<fg>(c )c<fg>cc<fg>c
e4=cfacfacf b-cf>d<dfb-d
e5=cegce>c<ce gce>c<cegc
e6=fdaff>c<cf acf>c<cfac
e7=ce-a-ce->c<ce- a-d-f>f<d-fa-d-
e8=e-gb-e-g>e-<e-g b-e-g>e-<e-gb-e-
e9=b-f+>c<a-e->c<c>e a-ce->c<ce-a-c g-1 a-1 b-<eb->df+b->dr r1

;part 4

fm5=o5v14@14q6s1
ps1=o4v8@11
sc1=o4v9@8q6

f0=r1 r2l8rgrg r1 r2rggg r1 r2rgrg r1 r1
f1=l1m5(gi50)gi(ei50)ei(gi50)gi(bi50)bi
f2=(fi50)fi(gi50)gi(a i50)a2il8rgral1 r r
f3=l2(fi50)fi(b-i50)b-i
f4=f4.>(c8c2i50)c1i<
f5=g4a8(f8f2i50)f1i
f6=(a-i50)a-i>(d-i50)d-i<
f7=b-4.>(e-8e-2i50)e-1i
f8=b-4>c8<(a-8a-2i50)a-1i (g-i50)g-i(a-i50)a-i (b-4i50)b-2ir8(>c4i50)c2..i

;part 5

fm6=o3@33v14
sc0=o2@11v15

g0=l8adea4dea4deaadea
g1=adea4df+a4deaadea 
g2=bef+b4ef+b4ef+bbef+b
g3=>c<fg>c4<fg>c4<fg>cc<fg>c<
g4=f<g>cf4<a>cf4<a>cff<a>cf g<a>dg4<a>dg4<b>dgg<b>dg
g5=acea4cea4ceaacea
g6=cfacfacf b-dfb-dfb-d
g7=cegcegceg<b>eg<b>eg<b>
g8=ggbffacf acfacfac
g9=ce-a-ce-a-ce- ad-f+ad-f+ad-
ga=e-gb-e-gb-e-g b-e-gb-e-gb-e-
gb=b-b->c<a-e-a-ce a-ce-a-ce-a-c <b->d-g-<b->d-g-<b->d- a-ce-a-ce-a-c b-<f+b->df+b->d<(d d4m4i50)d2.i

;rhythm part

fm7=v15o1z40
fm8=v15o1
ps2=v12o2q6

r0=l8@91a>@87e@90c@86e<@91a>@87e@90c@86e <@91a>@87e@90c@87e<@91a>@90c@87e@90c<
r1=@91a>@87e@90c@86e<@91a>@87e@90c@87e <@91a>@87e@90c@86e<@91a>@90ccc<
r2=@91a>@87e@90c@86e<@91a>@87e@90c@86e <@91a>@90ccccccc<
r3=@91a>@87e@90c@86e<@91a>@87e@90c@86e <@91a>@87e@90c@87e<@91a>@90ccc<
r4=@91a4>@90c<@91ara>@90c<@91a> r@87e@90c@87e<@91aa>@90c@87e
r5=<@91a4>@90c<@91ara>@90e<@91a> r@87e@90c@87e<@91a>@90crc <@91a4>@90c<@91ara>@90c<@91a> @92b16b16bbaa@90ccc<
r6=@91aa>@90c<@91a
r7=>@90cccc<
r8=@91aa>@90c<@91aa>@90ccc<
r9=@91a>@90cccccc@86e Q8@92l16bbbbaaaagggg@90cccc

s0=l8@01a>@07g@00e@06g<@01a>@07g@00e@06g <@01a>@07g@00e@07g<@01a>@00e@07g@00c<
s1=@01a>@07g@00e@06g<@01a>@07g@00e@07g <@01a>@07g@00e@06g<@01a>@00eee<
s2=@01a>@07g@00e@06g<@01a>@07g@00e@06g <@01a>@00eeeeeee<
s3=@01a>@07g@00e@06g<@01a>@07g@00e@06g <@01a>@07g@00e@07g<@01a>@00eee<
s4=@01a4>@00e<@01ara>@00e<@01a r>@07g@00e@07g<@01aa>@00e@07g<
s5=@01a4>@00e<@01ara>@00e<@01a r>@07g@00e@07g<@01a>@00ere< @01a4>@00e<@01ara>@00e<@01a >@21g16g16gg@23ff@00eee<
s6=@01aa>@00e<@01a
s7=>@00eeee<
s8=@01aa>@00e<@01aa>@00eee<
s9=@01a>@00eeeeee@06g l16@21gggg@23ffff@25cccc@00eeee



