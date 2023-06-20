;***** DRAGON SPIRIT (C)namco ***
;      ZAWEL  (INTORODUCTION)
;********************************
FM1 =t,a,fm0,d0
FM2 =t,b
FM3 =t,c
FM4 =t,dd
FM5 =
FM6 =
FMR =
FM7 =
FM8 =
FM9 =
PSG1=t,d,f,ps0,e0
PSG2=t,e,f
PSG3=t,g
SCC1=
SCC2=
SCC3=
SCC4=
SCC5=

t=t122

;***** efect
a=@95v15 o1 m6l2(ai80)ari
b=@95v13 o2 r16m6l2(ai80)a
c=@95v11z3 o2 r8l2m6 (ai80)a
dd=@95v12 z60o2 r4m6 (ai80)a
d=v11
e=v12r8
f=@29o1m6i60l2(aa)a4r4
g=v10@28o1a2r4

;***** drum
fm0=v15o1z50

d0=l16@91a>@90eeeee

ps0=v11o1q6

e0=l16@0a>@3eeeee

