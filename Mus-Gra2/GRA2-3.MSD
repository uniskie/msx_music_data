;**************************************
;*  GRADIUS 2  Stage3  ¢KODAI ISEKI£  *
;**************************************
FM1 =T,Fm1,A1,A2,A3,A4,A5
FM2 =T,Fm1,B1,B2,B3,B4,B5
FM3 =T,Fm1',C1/5,C2,C1/4,C3,C4,C5
FM4 =T,Fm2,A1,A2,A3,A4,A6,A7
FM5 =T,Fm2,B1,B2,B3,B4,B6,B7
FM6 =T,Fm2',C1/5,C2,C1/4,C3,C4,C6
FMR =
FM7 =T,Fm3,A1,A2,A3,A4,A6
FM8 =T,Fm3,B1,B2,B3,B4,B6
FM9 =T,Fm3',C1/5,C2,C1/4,C3,C4
PSG1=T,Psg,A1,A2,A3,A4,A5
PSG2=T,Psg,B1,B2,B3,B4,B5
PSG3=T,Psg,C1/5,C2,C1/4,C3,C4,C5
SCC1=T,Sc0,C1/5,C2,C1/4,C3,C4,C5
SCC2=T,Sc1,A1,A2,A3,A4,A5
SCC3=T,Sc2,A1,A2,A3,A4,A6,A7
SCC4=T,Sc3,B1,B2,B3,B4,B5
SCC5=T,Sc4,B1,B2,B3,B4,B6,B7

T=t144

Fm1=o5v12@43
Fm2=o5v10@43r16z10
Fm3=o5v11@2r8

Fm1'=o4v13@33q6
Fm2'=o4v10@33q6r16z10
Fm3'=o4v11@2q6r8

Psg=v9@11 m4i2
Sc0=v13@6
Sc1=v09@2
Sc2=v06@2z3r16
Sc3=v09@15
Sc4=v07@15z3r16

;**** part 1

A1=>l8gcgcfc<gcgcfc>gca-cb-c>c<cb-ca-cga-g2fgf2
A2=c2f4c4.de-fgcgcfc<gcgcfc>gca-cb-c>c<cb-ca-c
A3=ga-g2fgf2c2dcc4<b4r4f>c<b-a-gf>f>c<b-a-gf
A4=>c<c>c<c<c<c>c<c>>c<c>c<cf>c<b-a-gf>cde-fg>cc2<b>d
A5=g2.
A6=(g2g8
A7=g16

;**** part 2

B1=>l8c<g>c<g>c<gc<g>c<g>c<g>>c<g>e-<g>f<g>g<g>f<g>e-<g>e-fe-2de-d2
B2=<a2a4a-4.b->cdc<g>c<g>c<gc<g>c<g>c<g>>c<g>e-<g>f<g>g<g>f<g>e-<g
B3=b-2.a2.a-2.g4g4r4ca-gfe-d>ca-gfe-d
B4=<<c4d4e-4f4e-4d4>ca-fge-da-b->cde-gg2fb>
B5=c2.
B6=(c2c8
B7=c16

;**** part 3

C1=<l8cg>c<g>c<g>
C2=<<b->fb-fb-f
   <a>fafaf<a->e-a-e-b-f>
C3=<e-b->e-<b->e-<b->f>cfcfc<a->e-a-e-a-e-<gb>dgb4<<f>cf<f>cf<f>cf<f>cf>
C4=<<a->e-a-<a->e-a-<a->e-a-<a->e-a-<f>cf<f>cf<a->e-a-<a->e-a-<g>dg<g>dg<g>cdfg
C5=b>
C6=b16>

