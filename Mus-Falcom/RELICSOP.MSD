; RELICS OP SCC ver.
; relics.vcd
FM1 =
FM2 =
FM3 =
FM4 =
FM5 =
FM6 =
FMR =
FM7 =
FM8 =
FM9 =
PSG1=T1,PS0,VE0,E0,VE1,T2,E1,A2,VE0,A3,R16
     T3,PS0,A4,
     T3,PS0,A5,A6/2,E7/2,
            E8,E9,
     T3,PS0,A5,A6/2,E7/2,
            E8,E9,
     T3,PS0,EA,
PSG2=T1,PS1,VF0,D0,VF1,T2,B1,B2
     T3,PSR,    X3,
     T3,PSR,    X4/4,X4/5,X4/5,X4/2,X4/2,
                X4/8,X5
     T3,PSR,    X4/4,X4/5,X4/5,X4/2,X4/2,
                X4/8,X5
     T3,PSR,    X4/8,X6
PSG3=T1,PS2,C0,T2,C1,B2
     T3,PS2,   C2,B3,B4/2,
     T3,PS2,B4/4,C5,B4/2,C5,B4/2,C6/2,
                C7,F8,C9
     T3,PS2,B4/4,C5,B4/2,C5,B4/2,C6/2,
                C7,F8,C9
     T3,PS2,B4/8,BA
SCC1=T1,SC0,@C@,C0,T2,C1,B2,
     T3,SC0,@C1,C2,B3,B4/2,
     T3,SC0,@C2,B4/4,@C1,C5,B4/2,C5,B4/2,C6/2,
                C7,C8,@C2,C9
     T3,SC0,@C2,B4/4,@C1,C5,B4/2,C5,B4/2,C6/2,
                C7,C8,@C2,C9
     T3,SC0,@C2,B4/8,CA
SCC2=T1,SC1,@D@,VD0,D0,T2,VD1,D1,B2,;R16,>,A3,<
     T3,SC1,@D0,>,B3,B4/4,<
     T3,SC1,@D2,B4/4,C5,B4/2,C5,B4/2,C6/2,
                D7,D8,@D2,C9
     T3,SC1,@D2,B4/4,C5,B4/2,C5,B4/2,C6/2,
                D7,D8,@D2,C9
     T3,SC1,@D2,B4/8,CA
SCC3=T1,SC2,@B@,VB0,B0,T2,VD1,B1,B2,;>,A3,<,R16
     T3,SC2,@B0,B3,B4/4,
     T3,SC2,@B1,B4/4,@B2,B5,@B1,B4/2,@B2,B5,@B1,B4/2,@B2,B6/2,
                B7,
     T3,SC2,@B1,B4/4,@B2,B5,@B1,B4/2,@B2,B5,@B1,B4/2,@B2,B6/2,
                B7,
     T3,SC2,@B1,B4/8,BA
SCC4=T1,SC3,A0,VA1,T2,@A1,A1,A2,VA0,A3,R16
     T3,SC3,A4,
     T3,SC3,    A5,@A2,A6/2,@A3,A7/2,
                @A3,A8,VA1,A9,
     T3,SC3,    A5,@A2,A6/2,@A3,A7/2,
                @A3,A8,VA1,A9,
     T3,SC3,    AA
SCC5=T1,SC4,A0,VF1,T2,R16,@A1,A1,A2,VF0,A3
     T3,SC4,A4,
     T3,SC4,R16,A5,@A2,A6/2,@A3,A7/2,
                @A3,A8,VA1,F9,
     T3,SC4,R16,A5,@A2,A6/2,@A3,A7/2,
                @A3,A8,VA1,F9,
     T3,SC4,R16,AA

T1=t172
T2=t186
T3=t130

R16=r16
>=>
<=<

;
;---- melody
;
PS0=v10@14o4 q7 z3
SC3=v11@7o3 q7 z
SC4=v9@7o3 q7 z8

@A1=@19
@A2=@15
@A3=@7

VE0=v9
VE1=v11

VA0=;v11
VA1=v12
VF0=;v8
VF1=v9

E0=l12 
   e<bg> e<bg>
   f+d<a> f+d<a> ge<b> ge<b>
   af+d af+d bgd bgd
   >c<ge >c<ge >d<af+ >d<af+
E1=e1  
A0=r2 r1 r1 r1 
A1=r1
A2=L12
   bge >c<ge bae >d<ge
   >c<ge bge bge >c<ge
   be<b> ae<b> be<b> ae<b>
   ge<b ggg gga gag
   ade ded e<ab aba
   b(e6 e4 )e6d e6d
   e6d (e4 )e2 >> 
A3=L12 <
   rra b4 r2
   age ag(e )eed ed<b>
   d<ba bag age d(ee
   )e4> r8.;r16

A4=r1 r1 r1 r1 r1  
A5=r1 r1 r1 r1
A6=l16 m5
   eerdeeeded32r.ei20rirdr
   eerdeeeded32r.ei20rirrr
   f+f+f+e32r32f+f+drb8a8g8ar 
   g(e32i20)er.ir2.
   r1
E7=l8 m5
   (a.i20)a.ir(g+.i20)g+.ir
   ggag16f+16i20r2i
A7=l8 m5
   >(c+.i20)c+.ir(c.i20)c.ir<
   ggag16f+16i20r2i
A8=l8 m5
   rf+f+f+f+f+g+a+ 
   bi20r2i>(d+.i20)d+.i<
   (gi20)gr4i(ai20)ar4i rg16g16a16g.ggga
   (gi20)gr4i(ai20)ar4i 
   rf+f+f+f+16f+16f+r4
   rf+f+f+f+16g16f+r4
E8=l8 m4
   rf+f+f+f+f+g+a+
   b.<c+16d+.c+16 d+16c+16d+.c+16d+
   <(bi20)b4.i>(c+i20)c+4.i rd16d16e16d.ddde
   <(bi20)b4.i>(c+i20)c+4.i
   rc+c+c+c+16c+16c+r4
   rc+c+c+c+16d16c+r4>

A9=;r1 r2...;r16
   @16zv10r2(d+2 )d+4r2.
F9=@16zv11r8.r2(f+4 )f+4r2.
E9=;f+4b4>d+4(f+4 )f+4r2r8;r8
   <@14zv11 f+2>(d+2 )d+4r2.
AA=r1 r1 r1 r1
   r1 r1 r1 r1 v8e4r2.
EA=r1 r1 r1 r1
   v8 q8l8>f>e<br16fc>d<c<r16
   r4.v9q7m4i20g4.r4 .g4.r4.g 4.r2. q7e4r2. 

;
;---- base
;
PS1=v9@14o3 z2 m4i2
PS2=v11@17o2 z2
SC0=v12o2 z
SC1=v9o2 z6
SC2=v9o3 z

VB0=v12
VD0=V10
VD1=V9

VF0=v8
VF1=v9

@B@=@7
@D@=@7o3
@C@=@16

@B0=@5
@B1=@5
@B2=@8

@D0=@8 z6
@D1=@16 z6
@D2=@16 z6

@C1=@6
@C2=@6

B0=l12
   ;> 
   e<bg> e<bg>
   f+d<a> f+d<a> ge<b> ge<b>
   af+d af+d bgd bgd
   >c<ge >c<ge >d<af+ >d<af+
   ;<
D0=l12 r16
   ;>
   e<bg> e<bg>
   f+d<a> f+d<a> ge<b> ge<b>
   af+d af+d bgd bgd
   >c<ge >c<ge >d<af+ >d<af+36
   ;<
C0=e2 
   l4(f+m6i10)f+(gi10)gi (ai10)ai(bi10)bi >(ci10)ci(di10)di<
B1= (e1 m6i2e1 i3e1 i4e1 i3e1 i2e1 i1e1 i30)e1i
D1=<(b1 m6i2b1 i3b1 i4b1 i3b1 i2b1 i1b1 i30)b1i>
C1= (e1 m6i2e1 i3e1 i4e1 i3e1 i2e1 i1e1 i30)e1i

B2=r1 r1 r1 r2

C2=r1 r1
B3=l64
   r2.r32gf+ ed+dc+ c<ba+a gf+fe>
B4=l16 <ereegarm6i10riereebbri10ri>
B5=l8
   <eeeeeee>d cccccccc dddd<bbbb>
C5=l8
   <eeeeeee>d ccccccce dddd<bbbb>
B6=l8aaaa g+g+g+g+ gggg f+f+f+f+
C6=a2 g+2 g2 f+2
B7=l8 
   f+f+f+f+f+f+f+f+ bbbbbbbb
   ggggaaaa >cccccccc<
   ggggaaaa bbbbbbbb bbbbbbbb
   b4r2. r1 
C7=l8
   f+f+f+f+f+f+f+f+ f+f+f+f+f+f+f+f+
   <g2a2> c1
   <g2a2 b2..>(d+ )d+f+2..
D7=l8
   a+a+a+a+g+16a+g+16a+a+ >d+.c+16d+.c+16d+16c+16d+.c+16d+<
   >d2e2 g1<
   >d2e2 f+1 f+1<
;B8=b4r2. r1 
C8=;>f+2>(d+2 )d+4<<
   @16zv11 >(f+1) f+4<
D8=;r4b2>(f+4 )f+4<<
   @16zv10 >r4(b2. )b4<
F8=;
   @14zv11 >r4b2>(f+4 )f+4<<
C9=l16agag eded <bgag>

BA=e4r2.
CA=<e4>r2.
;DA=;
;FA=;

;
;--- rhythm
;
PSR=v12o1q6

X3=r1 r1 r1 r1
   l64v11 >>
   (@1g@0f@2e@5)d(@1g@0f@2e@5)d(@1g@0f@2e@5)d(@1g@0f@2e@5)d
   (@1g@0f@2e@5)d(@1g@0f@2e@5)d(@1g@0f@2e@5)d(@1g@0f@2e@5)d
   (@1g@0f@2e@5)d(@1g@0f@2e@5)d(@1g@0f@2e@5)d(@1g@0f@2e@5)d
   (@1g@0f@2e@5)d(@1g@0f@2e@5)d(@1g@0f@2e@5)d(@1g@0f@2e@5)d
   <<
X4=l64
   v12@1(afed)c16v9@28d8v10(>>@1g@0f@2e@5)d<<v8(>>@1g@0f@2e@5d)c8<<
   v12@1(afed)c16v9@28d8v10(>>@1g@0f@2e@5)d<<v8(>>@1g@0f@2e@5d)c8<<
X5=v10(>>@1g@0f@2e@5)d<<r8.v9@28d8r8
   r4v10(>>@1g@0f@2e@5d)c8.<<
X6=v10(>>@1g@0f@2e@5)d<<r8.

