;**************************************
;*       GRADIUS II-20 [Ranking]      *
;**************************************
FM1 =t,fm0,a0,a1,a0,a1
FM2 =t,fm1,a0,a1,a0,a2
FM3 =t,fm2,b0,b1,b0,b1
FM4 =t,fm3,c0,c1,c0,c1
FM5 =t,fm4,d0/7,d1,d2/4,d3/4,d0/7,d1,d2/4,d3/4
FM6 =t,fm5,d0/7,d1,d2/4,d3/4,d0/7,d1,d2/4,d3/4
FMR =
FM7 =t,fm6,c0/2
FM8 =t,fm7,e0/7,e1,fm7,e0/7,e1
FM9 =t,fm8,e0/7,e1,fm8,e0/7,e1
PSG1=t,ps0,a0,a1,a0,a1
PSG2=t,ps1,b0,b1,b0,b1
PSG3=t,ps2,f0/7,f1,f0/7,f1
SCC1=t,sc0,a0,a1,a0,a2
SCC2=t,sc1,d0/7,d1,d2/4,d3/4,d0/7,d1,d2/4,d3/4
SCC3=t,sc2,c0/2
SCC4=t,sc3,a0,a1,a0,a1
SCC5=t,sc4,b0,b1,b0,b2

t=t110

;*** part 1 ***

fm0=o5@6v13 q6s1
fm1=o5@6v12 q6s1 z8 r8
ps0=o4@11q6v7 
sc3=o4@3q6v9
sc0=o4@3q6v6 z1 r8

a0=m5l8(b-.i50)b-i(a4i50)a.iddef.l16cdfl8(b-.i50)b-i(a4i50)a.iddef.l16fa>cl8(e.i50)ei(d4i50)d.ieede(fi50)fi(f.i50)fi(e4i50)e.i
a1=ffef(gi50)g
a2=ffefg

;*** part 2 ***

fm2=o5v13@6 q6s1
ps1=o4v8@11 q6 
sc4=o4v8@3 q6 

b0=m5l8(f.i50)fi(f4i50)f.i<b-b->cd.l16<ab->dl8(f.i50)f(f4i50)f.i<b-b->cd.l16dfa>l8(c.i50)ci<(b-4i50)b-.i>cc<b->c(di50)di(d.i50)di(c4i50)c.i
b1=l8ddcd(ei50)e
b2=l8ddcde

;*** part 3 ***

fm3=v13@24o4 q6s1
fm6=v11@6 o4 q6s1 z8 r8
sc2=@15v8q6o3 

c0=l16m5(f4.i50)f8.ifcf(f4.i50)f8.icdf(f4.i50)f8.ifcf(f4.i50)f8.ifcf<(b-4.i50)b-8.ib-fb-b-4.i50b-8.ib-fb->(c4.i50)c8.ic<g>c(c4.i50)c8.ic<
c1=g>c

;*** part 4 ***

fm4=v13@33o2q6
fm5=v13@12o3
sc1=v15@06q6o2 z6

d0=l16f>f<fb-f>c
d1=<d>d<dgda<
d2=b->b-<b->e<b->f
d3=c>c<cfcg

;*** part 5 (SNARE DRAM) ***

fm7=v15O1
fm8=v15O1z13
ps2=v11O2q6

e0=l16@91b8.b8.b8b32b32>@90ccc<
e1=@91a>@90cc@92bag@90c32c32cc@92bag

f0=l16@02b8.b8.b8b32b32>@00ccc<
f1=@01a>@00cc@21b@23a@25g@00c32c32cc@21b@23a@25g

