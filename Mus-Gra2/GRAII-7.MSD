;**************************************
;*  GRADIUS II-7  -Synthetic Life-    *
;**************************************
FM1 =t,fm0,a0/4,fm0a,a1,a2,a3,a4,fm0b,a5,fm0c,a6/4
FM2 =t,fm1,a0/4,fm0a,a1,a2,a3,a4,fm0b,a5,fm1c,a6/3,a6e
FM3 =t,fm2,b0/4,fm0a,a1,b2,a3,b4,fm0b,b5,fm0c,b6/4
FM4 =t,fm3,c0/4,c1/4,c0/4,c2/4,c3/4,c4/4,    fm3a,c5/3,c6
FM5 =t,fm4,c0/4,c1/4,c0/4,c2/4,c3/4,c4/3,c4e,fm4a,c5/3,c6e
FM6 =t,fm5,c0/4,c1/4,c0/4,c2/4,c3/4,c4/4,d0/4
FMR =
FM7 =t,fm6,b0/4,fm0a,a1,b2,a3,b4,fm0b,b5,fm1c,b6/3,b6e
FM8 =t,fm7,r0/3,r1,r0/3,r1,r0/3,r1,r2/15,r3,r2/14,r4
FM9 =t,fm8,r0/3,r1,r0/3,r1,r0/3,r1,r2/15,r3,r2/14,r4
PSG1=t,ps0,a0/4,a1,a2,a3,a4,a5,a6/4
PSG2=t,ps1,a0/4,a1,b2e,a3,b4,b5,c5/3,c6e
PSG3=t,ps2,s0/3,s1,s0/3,s1,s0/3,s1,s2/15,s3,s2/14,s4
SCC1=t,sc0,c0/4,c1/4,c0/4,c2/4,c3/4,c4/4,c5/3,c6
SCC2=t,sc1,c0/4,c1/4,c0/4,c2/4,c3/4,c4/4,c5/3,c6e
SCC3=t,sc2,c0/4,c1/4,c0/4,c2/4,c3/4,c4/4,d0/4
SCC4=t,sc3,a0/4,a1,a2,a3,a4,a5,a6/4
SCC5=t,sc4,a0/4,a1,b2,a3,b4,b5,b6/4

t=t120

;part 1

fm0=o5v12@9q6s1
fm1=o5v11@9q6s1 z10 r8.
fm2=o5v12@9q6s1 z6
fm6=o5v11@9q6s1 z16 r8.
sc3=o4v8@15q6 z0
sc4=o4v8@15q6 z1

fm0a=@48
fm0b=@0>
fm0c=@5<v11
fm1c=@5<v09

a0=m4il16g>cd(g8.i50)g4.i<g>cdg
b0=m4il16g>cd(c8.i50)c4.i<g>cdg
a1=fedcedc<b8>d8g8fec (d8.i50d)d4i<d<b>dg>c<bag
a2=b-8.f(f8.i50f)f4ifb->e-f (d8.i50d)d4ie-de-fa-gfe-
b2=f8.d(d8.i50d)d4idfb->d <(b-8.i50b-)b-4i>c<b->cdfe-dc
b2e=f(d8.i50d)d4idfb->d <(b-8.i50b-)b-4i>c<b->cdfe-dcr8
a3=fedcec8<g8>cd(e8.i50e8 )e2i<g>cdefefg
a4=f+8.dd8.<aa8.gg8.f+ f+8.f+
b4=d8.<aa8.f+f+8.dd8.d d8.d
a5=rgggrf+f+f+reee
b5=rdddrdddrddd

a6=dga>(c8.i50)c4.i<b4 (b-8.i50b-)b-4i(a8.i50a)a4i
a6e=dga>(c8.i50)c4.i<b4 (b-8.i50f)b-4.i
b6=<b>dd(g8.i50)g4.ig4 (f8.i50f)f4i(f8.i50f)f4i
b6e=<b>dd(g8.i50)g4.ig4 (f8.i50f)f4.i

;part 2

fm3=v11o6@0s1
fm4=v09o6@0s1r8. z10
ps0=v7o4@11 z1
ps1=v5o4@11 z4 r8.
sc0=v6o3@8q6
sc1=v4o3@8q6r8. z2

fm3a=v12@24q4
fm4a=v11@3q4 r8.

c0=q3l16g8>g<grg>cd<
c1=a-8>a-<a-ra->cd<
c2=b-8>b-<b-rb->e-f
c3=c8>c<crcfg
c4=d8>d<drdga
c4e=d8>d<dr

c5=m4i0(g8.i50g)g8.ir2f (e-8.i50e-)e-4i(f8.i50)f8.ig-8
c6=(g8.i50g)g8.ir2f (e-8.i50e-)e-4if4rf8f
c6e=(g8.i50g)g8.ir2f (e-8.i50e-)e-4if4r

;part 3

fm5=o2@24v14q6s1
sc2=o2@6v13q6

d0=<g>g<g>g<g>g<g>g<g>g<g>g<g>g<g>g <e->e-<e->e-<e->e-<e->e-<f>f<f>f<f>f<f>f

;rhythm

fm7=v15o2z20
fm8=v15o2
ps2=v11o3q6

r0=l16@92g<@91a>@87e<@91a>@92g<@91a>@87e<@91a>@92g<@91a>@87e<@91a>@92gg@87e<@91a>
r1=@92g<@91a>@87e<@91a>@92g<@91a>@87e<@91aa>@90ccc@92b32b32bag
r2=@90c<@91a>@87e<@91a>
r3=<@91a>@92g@90cc
r4=<@91a>@90ccc32c32@92bag<@91a

s0=l16@25g<@1a>@7e<@1a>@25g<@1a>@7e<@1a>@25g<@1a>@7e<@1a>@25gg@7e<@1a
s1=>@25g<@1a>@7e<@1a>@25g<@1a>@7e<@1aa>@0ccc@21b32b32b@23a@25g
s2=@0c<@1a>@7e<@1a>
s3=<@1a>@25g@0cc
s4=<@1a>@0ccc32c32@21b@23a@25g@1<a

