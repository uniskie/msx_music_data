;**************************************
;*GRADIUS II^4  St.1  -Burning Heat-  *
;**************************************
FM1 =t
FM2 =t
FM3 =t
FM4 =t
FM5 =t
FM6 =t,fm5,D0
FMR =
FM7 =t,fm6,e0
FM8 =t,fm7,d0
FM9 =t,fm8,e0
PSG1=t
PSG2=t,ps1,d0
PSG3=t,ps2,f0
SCC1=t,sc0,d0
SCC2=t
SCC3=t
SCC4=t
SCC5=t

t=t114

;**** part 1

a0=r4

;**** part 2

;**** part 3

;**** part 4
FM5=o2@33V14
fm7=o2@12v13
ps1=o1@17q6v13z40
sc0=o1@6q6v15

d0=l16a->a-<a-b->b-<b->

;**** part 5 (drum)
fm6=v15o2z40
fm8=v15o2
ps2=v12o2q6

e0=l16@91a@90c32c32ccc@91a
f0=l16@01a>@00c32c32ccc<@01a

