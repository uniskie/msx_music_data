;   DRAGON SABER Stage1  intro
;
; suibotu1.msd suibotu.vcd/voice.vcd

FM1 =t,fm0,a0,a1,a0,tt,a2
FM2 =t,fm0,b0,b1,b0,tt,b1
FM3 =t,fm0,c0,c1,c0,tt,c2,;fm2'c3
FM4 =t,fm3,g0/7,tt,g0
FM5 =t,fm4,h0/3,h1,h0/3,tt,h1
FM6 =t,fm5,i0
FMR =t,fmr,r0,r1,r2,r3,r2,r1,r2,tt,r4
FM7 =
FM8 =
FM9 =
PSG1=;t,ps0,a0,a1,a0,tt,a2
PSG2=;t,ps0,b0,b1,b0,tt,b1
PSG3=t,ps2,s0
SCC1=t,sc0,g0/7,tt,g0
SCC2=t,sc2,f0/3,f1
SCC3=t,sc1,i0
SCC4=t,sc2,d0,d1,d0,tt,d2
SCC5=t,sc2,e0,e1,e0,tt,e2


t=t103 r64
tt=t152

;**** keybord 1
;ps0=o5@11v9
fm0=o4@60v11
;fm2'=v15

a0=l1e- mp6fp (d-m5i40
a1=)d-i
a2=)d-2i>>
   >
   d-64p2m1<<d-4....
b0=l1c mp6dp< (b-m5i40
b1=)b-i>
c0=l1<a- mp6b-p (m5g-i40 
c1=)g->
c2=)g-2i>>
   >
   g-64p6m1<<g-4....

;*** keybord 2
sc2=o5@21v9 m5i4

d0=l2e-<a-4.>(f8 )f>mp20fp< (d-1m5i40
d1=)d-1i4
d2=)d-i>>
   v10
   g-64p2m1<<g-4....

e0=l2<a-f4.(b-8 )b->mp20b-p< (g-1m5i40
e1=)g-1i4>
e2=)g-i>>
   v8 r32.
   g-64p2m1<<g-4..

f0=l8<<a-ra-ra-ra-r a-a-a-ra-ra-r>>
f1=l8<<a-ra-ra-ra-r t152 a-a-a-ra-ra-r>>


;*** strings
fm5=o4@2v12
sc1=o4@19v12

i0=z1m5i4 
   e-2..f1 (d-8 d-1 i40)d-1i4
   e-2..f1 (d-8 d-1 t152 i40)d-1i4

;*** sequence 1
fm4=o7@0v10 q6s1

h0=l16
   a-a-a-ra-a-a-r a-a-a-a-ra-a-r
h1=a-<<a->a-<a->a->a-8<<a->> a-a-a-a-ra-a-r

;*** bass
fm3=o2@33q6s1v14
sc0=o1@11q5v15

g0=l8a->a-<a->a-<l16a-a-a->a-r<a->a-r<

;*** drums
fmr=v15vs12vm14vh11vc13
    y38,3y22,178
    y39,0y23,148
    y40,2y24,178

ps2=v12

r0=vh12vc11hcb8vh13h16hb16hb8h16h16hb8h16hb16hb8h16h16
r1=hb8cb16c16hb8h16h16hb8h16hb16hb8h16h16
r2=hb8h16hb16hb8h16h16hb8h16hb16hb8h16h16
r3=hb8mb16m16hb16mh16r8y24,158mb8y24,138m16b16y24,118mb16m16r8y24,178
r4=hms16ms16ms16ms16ms16ms16ms16ms16ms16ms16ms16ms16msb16msb16msb16msb16

s0=@6e4r2. r1 r1 o4l64r8@21(g+f+e)d(g+f+e)dr16(g+f+e)dr8@22(f+e+dc<b-ag+)f+>@23(dc<b-ag+f+ed)c>@24(c<b-a)g+>(c<b-a)g+>r8
   r1 r1 r1 
   t152
   @2l16eeeeeeeeeeeeeeee

