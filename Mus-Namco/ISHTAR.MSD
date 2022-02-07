;**********************;
; THE TOWER OF DRUAGA  ;
;     (C) namco        ;
;  ¢TEHME OF ISHTAR£   ;
;**********************;

;   UNISKE     1994'   ;

FM1 =t,fm0,a0/7,a1,a2/6
FM2 =t,fm1,a0/7,a1,a2/5,a3
FM3 =t,fm2,b0,b1
FM4 =t,fm3,b0,b2
FM5 =t,fm4,b0,b1
FM6 =t,fm5,b0
FMR =
FM7 =
FM8 =
FM9 =
PSG1=t,ps0,a0/7,a1,a2/6
PSG2=t,ps1,a0/7,a1,a2/5,a3
PSG3=t,ps2,b0,b1
SCC1=
SCC2=
SCC3=
SCC4=
SCC5=

t=t96

;*** voice & volme

ps0=@23v12 o4 l16
ps1=@23v11 o4 l16 r32z30
ps2=@23v12 o3 l16

fm0=@14v12 o5 l16 q4s1
fm1=@14v11 o5 l16 q4s1r32z30
fm2=@61v11 o4 l16 q6z20
fm3=@61v11 o4 l16 q6r16.z30
fm4=@61v11 o4 l16 s1
fm5=@61v10 o4 l16 s1r8z20
;*** part a & echo

a0=q4d+ef+bf+ed+<b>
a1=ddf+bf+ed<b>
a2=def+bf+ed<b>
a3=def+bf+ed<b32

;*** part b

b0=m3i30
   bbb>f+f+f+bbb>f+f+f+<bbf+f+<
   bbb>f+f+f+bbf+f+<bb
   aaa>eeeaaa>eee<aaee<
   aaa>eeeaaee<aa
   ggg>dddggg>ddd<ggdd<
   ggg>dddggdd<gg
   f+f+f+>c+c+c+f+f+f+>c+c+c+<f+f+c+c+<
   f+f+f+>c+c+c+f+f+c+c+<
b1=f+f+
b2=f+32
