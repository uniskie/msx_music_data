;*********************************
;*** GRADIUS II-1 <Title Demo> ***
;*********************************
FM1 =t,fm0,a0,a1,a0,a2,a3,a4
FM2 =t,fm1,b0,b1,b0,b2,b3,b4
FM3 =t,fm2,a0,a1,a0,a2,a3,a4
FM4 =t,fm3,g0/4,g1/11,g2
FM5 =t,fm4,g0/4,g1/11,g2
FM6 =t,fm5,e0/8,e1/6,e2/2,e3/4,e4
FMR =
FM7 =t,fm6,a0,a1,a0,a2,a3,a4
FM8 =t,fm7,b0,b1,b0,b2,b3,b4
FM9 =t,fm8,d0/4,d1/2,d2/2,d1/2,d2/2,d3/4,d4
PSG1=t,ps0,c0/16,c0/16,c1/4,c2/3,c3,c1/4,c2/3,c3,c4/4,c5/3,c6
PSG2=t,ps1,f0/4,f1/11,f2
     ; PSG3=t,ps2,c0/16,c0/16,c1/4,c2/3,c3,c1/4,c2/3,c3,c4/4,c5/3,c6
PSG3=t,ps3,e0/8,e1/6,e2/2,e3/4,e4
SCC1=t,sc0,d0/4,d1/2,d2/2,d1/2,d2/2,d3/4,d4
SCC2=t,sc1,b0,b1,b0,b2,b3,b4
     ; SCC3=t,sc2,b0,b1,b0,b2,b3,b4
SCC3=t,sc6,e0/8,e1/6,e2/2,e3/4,e4
SCC4=t,sc3,a0,a1,a0,a2,a3,a4
SCC5=t,sc4,a0,a1,a0,a2,a3,a4

t=t120


;*** part 1 ***

fm0=o5v12@24s1 z13
fm2=o5v13@6
fm6=o5v11@6s1 z17r8.
sc3=o3v8@10q6
sc4=o3v6@10q6 z4r8.

a0=m4l4(di50)difb-12b-12b-12(a-i50)a-i>ce-(di50)difb-12b-12b-12
a1=a-e-c<a-
a2=(a-i50)a-8ia-16b-16>ce-
a3=e-e-12e-12e-12<b-g l12(fi50)fi(a-i50)a-i>(d-i50)d-i(fi50)fi(d-i50)d-i<(a-i50)a-i(gi50)gia-l4(b-i0)b-ig12b-12>e-12(d-i50)d-8id-16d-16<a-f
a4=(fi50)fi0l12(fi50)fi(gi50)gi>(ci50)cil4(ci50)c8ic16c16(ci50)cir<b-ad<(a2i50)a2ir1r1

;*** part 2 ***

fm1=o4v13@6q6s1
fm7=o4v11@6q6s1 z10r8.
sc1=o2v8@10q6
;sc2=o2v8@10q6 z3r8.

b0=m4l4(b-i50)b-i>df12f12f12(e-i50)e-ia->c<(b-i50)b-i>df12f12f12
b1=e-c<a-e-<
b2=(e-i50)e-8ie-16f16a->c
b3=<b-b-12b-12b-12ge-l12(d-i50)d-i(fi50)fi(a-i50)a-i(b-i50)b-i(a-i50)a-i(fi50)fi(e-i50)e-ie-l4(gi50)gie-12g12b-12(a-i50)a-8ia-16a-16fd-
b4=(ci50)cil12(ci50)ci(fi50)fi(gi50)gil4(ei50)e8ie16f16(gi50)girff<b-(f2i50)f2ir1r1

;*** part 3 ***

ps0=v08@4q4o5
ps2=v06@4q4o5 z4r8

c0=l24c>c<c>c<c>c<
c1=l16e-a-b->e-<
c2=fa->d-f<
c3=>a-fd-<a-
c4=cfg>c<
c5=ceg>c<
c6=>eg>ce<<<<fb->cfcfg>c<fb->cfcfg>cc1r1r1

;*** part 4 ***

fm8=o5v13@6q4s1
sc0=o4v9@15q4

d0=l12m(c4.i50)c4.iccc(c2m50)c2i
d1=e-6e-re-e-
d2=d-6d-rd-d-
d3=c6crcc
d4=o4(f1i50)f1r1r1

;*** part 5 ***

fm5=v14@33q4o3
ps3=v09@16q6o2z1
sc6=v12@08q6o2z4

e0=l4cccc
e1=l12e-6e-e-e-e-
e2=d-6d-d-d-d-
e3=c6cccc
e4=(f1)f1r1r1

;*** part 6 (drum) ***

fm3=v15o2 m1
fm4=v15o2 m1 z6
ps1=v11o1

g0=l16@92(c64p19)<c16..prr>(c64p19)<c16..prr>(c64p19<)c16..pr>(c64p19<)c64p>(c64p19<)c64p>@90e12e12e12@92(c64p19<)c16..prr>(c64p19<)c16..prr>(c64p19<)c16..pr>(c64p19<)c64p>(c64p19<)c64p>@90eeee
g1=l12<@91a6a>@90e<@91aa>
g2=l16<@91a>@90eeeeeee<@91a1>@86b1r1r1

f0=l16@25(b64p19)c8...p(b64p19)c8...p(b64p19c32.)c8p(b64p19)c64p(b64p19)c64p>@00c12c12c12<@25(b64p19)c8...p(b64p19)c8...p(b64p19c32.)c8p(b64p19)c64p(b64p19)c64p>@00cccc<
f1=l12r4@00crr
f2=l16r@00ccccccc r1o8@06e2r1r1r1

