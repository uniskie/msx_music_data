;**************************************
;* GRADIUS II-18  ENDING ¢ Farewell £ *
;**************************************

FM1 =t,fm0,a0/2,a1,a,a2
FM2 =t,fm1,a0/2,a1,a3
FM3 =t,fm2,b0/2,b1/2,b2/2,b3/2,ff2,b4,fm2,b0/2,b1/2,b2/2,b3/2,ff2,b4,b5
FM4 =t,fm3,b0/2,b1/2,b2/2,b3,b3e,ff3,c4,fm3,b0/2,b1/2,b2/2,b3,b3e,ff3,c4,c5
FM5 =t,fm4,d0,d0',d0,d1
FM6 =t,fm5,d0,d0',d0,d1
FMR =
FM7 =;t,fm6,d0,d0',d0,d1e
FM8 =t,fm7,r0,r1/3,r2,r0,r1/3,r2,r3
FM9 =t,fm8,r0,r1/3,r2,r0,r1/3,r2,r3
PSG1=t,ps0,a0/2,a1,a,a2
PSG2=t,ps1,b0/2,b1/2,b2/2,b3/2,b4,ps0,b0/2,b1/2,b2/2,b3/2,b4,b5
PSG3=t,ps2,s0,s1/3,s2,s0,s1/3,s2,s3
SCC1=t,sc0,b0/2,b1/2,b2/2,b3/2,ss0,b4,sc0,b0/2,b1/2,b2/2,b3/2,b4,b5
SCC2=t,sc1,b0/2,b1/2,b2/2,b3,b3e,ss1,b4,sc1,b0/2,b1/2,b2/2,b3/2,ss1,b4,b5
SCC3=t,sc2,d0,d0',d0,d1
SCC4=t,sc3,a0/2,a1,a,a2
SCC5=t,sc4,a0/2,a1,a3

t=t120

;**** part 1
fm0=o4v13@6s1
fm1=o4v11@6s1z3r6
ps0=o3v7@10
sc3=o3@4v9
sc4=o3@4v7z1r6

a0=l6m5(a4i50a4)ai>d(a a8i50)a4.ieg>c (d4i50d4)die(f f8i50)f4.i<fga >(c4i50c4)cide(e4i50)e4id4<a4 >(e4i20)e4id<a>(c c4i40)c2.i
a1=(c4i40)c4ifg>
a=c
a2=(e2i40)e2 r1
a3=(c2i40)c2 r1
   r1 r1

;**** part 2
fm2=o5v11@0s1
fm3=o5v09@0s1z10r16
ps1=o4v7@4
sc0=o4v7@15
sc1=o4v5@15z2r16

b0=l16defa>defa<
b1=cdeg>cdeg<<
b2=b>cdfb>cdf<<
b3=b->cdfb->cdf
b3e=<<b->cdfb->cd

ff2=<v11@14z0
ff3=<v11@14
ss0=v6@8
ss1=v6@8

b4=l4cccc dddd dddd cccc
c4=l4aaaab-b-b-b-gggggggg
b5=m4(c2i50)c2i (c2i50)c2i r1
c5=m4(f2i50)f2i (e2i50)e2i r1

;**** part 3 & 4
fm4=o5@9v15q5s1
fm5=o3@12v14
fm6=o5@9v13z10r8.
sc2=o2@6v13

d0=m4l2 (di50)di (ci50)ci <(bi50)bi (b-i50)b-i l4aaaa b-b-b-b- bbbb >cde
d0'=<a>
d1=c l2 (d-i50)d-i (ci50)ci r
d1e=c l2 (d-i50)d-i (ci50)ci r2

;**** drum
fm7=v15o1z20
fm8=v15o1
ps2=v11o1

r0=l4@91a>@87eee8<@91a8 a>@87eee <@91a>@87eee8<@91a8 a>@87ee8<@91a16a16>@90c<
r1=l8@91a>@87e<@91a>@87e<@91aa>@90c@86e<
r2=@91a>@87e<@91a>@87e<@91aa>@90c<@91a
r3=a4>@87e@90q4l24cccq5c6@92g6<@91a12>@86e24e24 e2..<@91a16a16

s0=q6l4@01a>@07eee8<@01a8 a>@07eee <@01a>@07eee8<@01a8 a>@07ee8<@01a16a16>@00c<
s1=l8@01a>@07e<@01a>@07e<@01aa>@00c@06e<
s2=@01a>@07e<@01a>@07e<@01aa>@00c<@01a
s3=a4>@07e@00q4l24cccc6@24g6<@01a12>@06e24e24 e2..<@01a16a16

