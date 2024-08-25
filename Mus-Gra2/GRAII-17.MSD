;********** GRADIUS II - 17 ***********
;*        ¢ The Final Enemy £         *
;**************************************
FM1 =t,fm0,a0/4,a1/3,a0/4,a2/4
FM2 =t,fm1,a0/4,a1/3,a0/4,a2/3,a3
FM3 =t,fm3,a0/4,a1/3,a0/4,a2/4
FM4 =
FM5 =t,fm4,c0/4,c1/3,c0/4,c2,c3
FM6 =t,fm5,c0/4,c1/3,c0/4,c2
FMR =
FM7 =
FM8 =t,fm7,d0/11,d1/3,d2
FM9 =t,fm8,d0/11,d1/3,d2
PSG1=t,ps0,c0/4,c1/3,c0/4,c2,c3
PSG2=t,ps1,a0/4,a1/3,a0/4,a2/4
PSG3=t,ps2,e0/11,e1/3,e2
SCC1=t,sc0,a0/4,a1/3,a0/4,a2/4
SCC2=t,sc1,a0/4,a1/3,a0/4,a2/3,a3
SCC3=t,sc2,b0/4,b1/3,b0/4,a2/4
SCC4=t,sc3,c0/4,c1/3,c0/4,c2,c3
SCC5=t,sc5,a0/4,a1/3,a0/4,a2/4

t=t120
;**** part 1

fm0=o5@24q6v13
fm1=o5@6q6v12z10r16
sc0=o5@15q6v8z1
sc1=o5@14q6v6Z4r16
sc2=o5@2v7q6z1

a0=l16c<cfcgc>c<cfcgc>c<c
b0=l16g<g>c<g>d<d>g<g>c<g>d<g>g<g>
a1=b<b>e<b>f+<b>b<b>e<b>f+<b>b<b>>
b1=f+<f+bf+>c+<f+>f+<f+bf+>c+<f+>f+<f+>
a2=g8g8b-8gbbg>c<g>d-<g>d<g
a3=g8g8b-8gbbg>c<g>d-<g>d

;**** part 2

fm4=o6v13@24 q5s1
fm5=o6v11@24 q5s1Z10 r8
ps0=o5v8@11z1
sc3=o5v7@8q6z2
;sc4=o5v5@8q6Z4 r8

c0=m5c8<(b-4.i50)b-4ir8
c1=b8(a4.i50)a4ir8>
c2=(g4..i50)g2if16 (g4..i50)g2if16 (g4..i50)g2ib-16 (g4i50)g4ir8(b-8.i50
c3=)b-8i

;**** part 3

fm3=o4@33v13q6s1
ps1=@17v9q6o3 z1
sc5=@6v14o3 z3

;**** drum

fm7=o1v15z20
fm8=o1v15
ps2=o2v11q6

d0=l8@91aa>@90c.<@91aaa16>@90c<
d1=l16@91a>@87e<@91a>@87e@90c<@91a>@87e<@91a>@87e<@91a>@87e<@91a>@90c@87e@87e<@91a
d2=l16@91a>@87e<@91a>@87e@90c<@91a>@87e<@91aa>@90c32c32ccl24@92bbaag<@91a

e0=l8@01aa>@00c.<@01aaa16>@00c<
e1=l16@01a>@07e<@01a>@07e@00c<@01a>@07e<@01a>@07e<@01a>@07e<@01a>@00c@07e@07e<@01a
e2=l16@01a>@07e<@01a>@07e@00c<@01a>@07e<@01aa>@00c32c32ccl24@21bb@23aa@25g<@01a


