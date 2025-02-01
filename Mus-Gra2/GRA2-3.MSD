;**************************************
;*  GRADIUS 2  Stage3  ¢KODAI ISEKI£  *
;**************************************
FM1 =T,Fm1,A1,A2,A3,A4,A5
FM2 =T,Fm1,B1,B2,B3,B4,B5
FM3 =T,Fm1',C1/5,C2,C1/4,C3,C4,C5
FM4 =T,Fm2,A1,A2,A3,A4,A6,A7
FM5 =T,Fm2,B1,B2,B3,B4,B6,B7
FM6 =T,Fm2',C1/5,C2,C1/4,C3,C4
FMR =
FM7 =T,Fm3,A1,A2,A3,A4,A6
FM8 =T,Fm3,B1,B2,B3,B4,B6
FM9 =T,Fm3',C1/5,C2,C1/4,C3,C4
PSG1=T,Ps0,A1,A2,A3,A4,A5
PSG2=T,Ps0,B1,B2,B3,B4,B5
PSG3=T,Ps1,C1/5,C2,C1/4,C3,C4,C5
SCC1=T,Sc0,C1/5,C2,C1/4,C3,C4,C5
SCC2=T,Sc1,A1,A2,A3,A4,A5
SCC3=T,Sc2,A1,A2,A3,A4,A6,A7
SCC4=T,Sc3,B1,B2,B3,B4,B5
SCC5=T,Sc4,B1,B2,B3,B4,B6,B7

T=t144

Fm1=o5v13 @2
Fm2=o5v11 @2 r8 z10
Fm3=o5v10 @2 r4 z16

Fm1'=o4v13@33q6
Fm2'=o4v10@33q6 r8 z16
Fm3'=o4v10@14q6 z19

Ps0=v7 @11 m4i2 z1
Ps1=v9 @11 z1 o3

Sc0=v11@6
Sc1=v07@2
Sc2=v05@2 z2 r8
Sc3=v07@15
Sc4=v05@15z2 r8

;**** part 1

A1=>l8gcgcfc<gcgcfc>gca-cb-c>c<cb-ca-cga-g2fgf2
A2=c2f4c4.de-fgcgcfc<gcgcfc>gca-cb-c>c<cb-ca-c
A3=ga-g2fgf2c2dcc4<b4r4f>c<b-a-gf>f>c<b-a-gf
A4=>c<c>c<c<c<c>c<c>>c<c>c<cf>c<b-a-gf>cde-fg>cc2<b>d
A5=g2.
A6=(g2
A7=g8

;**** part 2

B1=>l8c<g>c<g>c<gc<g>c<g>c<g>>c<g>e-<g>f<g>g<g>f<g>e-<g>e-fe-2de-d2
B2=<a2a4a-4.b->cdc<g>c<g>c<gc<g>c<g>c<g>>c<g>e-<g>f<g>g<g>f<g>e-<g
B3=b-2.a2.a-2.g4g4r4ca-gfe-d>ca-gfe-d
B4=<<c4d4e-4f4e-4d4>ca-fge-da-b->cde-gg2fb>
B5=c2.
B6=(c2
B7=c8

;**** part 3

C1=<l8cg>c<g>c<g>
C2=<<b->fb-fb-f
   <a>fafaf<a->e-a-e-b-f>
C3=<e-b->e-<b->e-<b->f>cfcfc<a->e-a-e-a-e-<gb>dgb4<<f>cf<f>cf<f>cf<f>cf>
C4=<<a->e-a-<a->e-a-<a->e-a-<a->e-a-<f>cf<f>cf<a->e-a-<a->e-a-<g>dg<g>dg<g>cdfg
C5=b>
C6=b16>

