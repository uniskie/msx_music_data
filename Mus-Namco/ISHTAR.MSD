;**********************;
; THE TOWER OF DRUAGA  ;
;     (C) namco        ;
;  ¢TEHME OF ISHTAR£   ;
;**********************;
;voice:ISHTAR.VCD
;   UNISKE     1994'   ;

FM1 =t,fm0,a0/7,a1,a2/6
FM2 =t,fm1,a0/7,a1,a2/5,a3
FM3 =t,fm2,b0,b1
FM4 =t,fm3,b0,b2
FM5 =t,fm4,b0,b3
FM6 =t,fm5,a0/7,a1,a2/6
FMR =
FM7 =
FM8 =
FM9 =
PSG1=t,ps0,a0/7,a1,a2/6
PSG2=t,ps1,b0,b1
PSG3=t,ps2,b0,b2
SCC1=
SCC2=
SCC3=
SCC4=
SCC5=

t=t96

;*** voice & volme

ps0=@18v05 o5 l16 q3
ps1=@23v06 o3 l16 q8 
ps2=@23v04 o3 l16 q8 r12 z8

fm0=@88v13 o6 l16 q8        z1
fm1=@88v11 o6 l16 q8    r12 z15
fm2=@88v13 o4 l16 q1        z1  
fm3=@88v11 o4 l16 q1    r12 z13 
fm4=@88v09 o4 l16 q1    r6  z21
fm5=@88v08 o5 l16 q1        z1

;*** part a & echo

a0=q4d+ef+bf+ed+<b>
a1=ddf+bf+ed<b>
a2=def+bf+ed<b>
a3=def+bf+ed48

;*** part b

b0=bbb>f+f+f+bbb>f+f+f+<bbf+f+<
   bbb>f+f+f+bbf+f+<bb
   aaa>eeeaaa>eee<aaee<
   aaa>eeeaaee<aa
   ggg>dddggg>ddd<ggdd<
   ggg>dddggdd<gg
   f+f+f+>c+c+c+f+f+f+>c+c+c+<f+f+c+c+<
   f+f+f+>c+c+c+f+f+
b1=c+c+<f+f+
b2=c+c+<f+48<
b3=c+48
