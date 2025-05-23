;************************************** 
;*   GRADIUS II_10  STAGE 5 (INTRO)   * 
;*     � The Old Stone Age -1- �      * 
;************************************** 
FM1 =t,FM1,A0,FA1,A1,FB1,A2/3,A3 
FM2 =t,FM2,A0,FA2,A1,FB2,A2/3,A3' 
FM3 =t,FM3,C0/4,C1/4,C0/4,C1,C2,C0,C3,FA3,C4,C5,C4,A3
FM4 =t,FM4,B0,FA4,B1,FB4,B2/3,B3 
FM5 =t,FM5,B0,FA5,B1,FB5,B2/3,B3' 
FM6 =t,FM6,C0/4,C1/4,C0/4,C1,C2,C0,C3,FA6,C4,C5,C4,A3
FMR = 
FM7 =t,FM7,C0/4,C1/4,C0/4,C1,C2,C0,C3,FA7,D4,D5,D4,B3
FM8 =t,FM8,H0/15,H1,H2/3,H3
FM9 =t,FM9,H0/15,H1,H2/3,H3
PSG1=t,PS0,B0,PA0,B1,PB0,A2/3,A3 
PSG2=t,PS1,A0,PA1,A1,PB1,B2/3,B3 
PSG3=t,PS2,C0/4,C1/4,C0/4,C1,C2,C0,
       PS3,Z1,Z2/3,Z3
SCC1=t,SC5,C0/4,C1/4,C0/4,C1,C2,C0,C3,SA5,C4,C5,C4,A3
SCC2=t,SC3,B0,SA3,B1,SB3,C4,C5,C4,A3
SCC3=t,SC4,B0,SA4,B1,SB4,C4,C5,C4,A3'
SCC4=t,SC1,A0,SA1,A1,SB1,D4,D5,D4,B3
SCC5=t,SC2,A0,SA2,A1,SB2,D4,D5,D4,B3'
 
t=T112 
 
;****** MERODY 1 
 
FM1=@6 V10 O7 M5   
FM2=@6 V09 O7 M5 Z12 R8. 
PS0=@3 V6 O5 M5 Z1
SC1=@14 V8 O5 M5 
SC2=@14 V5 O5 M5 Z3 R8. 

FA1=@6 V12 
FA2=@6 V10 
PA0=V9 
SA1=@15 V8 
SA2=@15 V5 
 
FB1=@14 V11
FB2=@12 V09
PB0=@4 V11
SB1=@10 V10 < 
SB2=@10 V6  <
 
A0=L8(CI50)C4I<(GI50)G4I 
   >(E-I50)E-16I(DI50)D16I(CI50)C16I<(B-I50)B-16I 
   >(CI50)C4IL16(<G8I50)GIG>CD 
   L8(GI50G)G2I 
   (E-I50)E-4I(<B-I50)B-4I
   >(G-I50)G-4I(D-I50)D-4I
   (E-I50)E-4I<(B-I50B-4
   )B-4.IR> < DD-
   (CI50)C4I< > (GI50)G4I  
   >(E-I50)E-16I(DI50)D16I(CI50)C16I<(B-I50)B-16I
   >(CI50)C4IL16(<G8I50)GIG>CD 
   L8(GI50G4)G.I<L16G>CD 
   L8(E-I50)E-4I<B-B->E-
   D<A>DD-<A->D- 
   (CI50)C4I<(GI50)G4I 
A1=L16<G>CF<B->E-A-D-G-BGD-<G> 
A2=CG>C<D-A->D-< R4. 
A3=<G>F+G< G>F+G G>F+G <G>F+G< 
A3'=<G>F+G< G>F+G G>F+G< 
 
;****** MERODY 2 
 
FM4=@6 V10 O6 M5 
FM5=@6 V9  O6 M5 Z12 R8. 
PS1=@3 V6 O4 M5 Z1 
SC3=@14 V8 O4 M5  
SC4=@14 V5 O4 M5 Z3 R8. 

FA4=@24 V12 
FA5=@6 V10 
PA1=V9
SA3=@15 V8
SA4=@15 V5
 
FB4=@14 V11
FB5=@12 V09 
PB1=@4 V11
SB3=@6 V12 <
SB4=@6 V8 <
 
B0=L8(GI50)G4I(DI50)D4I 
   (B-I50)B-16I(AI50)A16I(GI50)G16I(FI50)F16I
   (GI50)G4I(DI50L16)DIDGAL8 
 
   (>DI50D)D2I 
   <(B-I50)B-4I(FI50)F4I
   >(D-I50)D-4I<(A-I50)A-4I
   (B-I50)B-4I(FI50F4
   )F4.IRAA- 
 
   (GI50)G4I(DI50)D4I 
   (B-I50)B-16I(AI50)A16I(GI50)G16I(FI50)F16I
   (GI50)G4I(DI50L16)DIDGAL8 
 
   (>DI50D4)D.IL16<DGAL8 
   (B-I50)B-4IFFB-
   AEAA-E-A- 
   (GI50)G4I(DI50)D4I 
B1=L16<DG>C<FB->E-<A->D-G-D<A-D 
B2=G>DG<A->E-A-< R4. 
B3=<D>C+D <D>C+D D>C+D <D>C+D < 
B3'=<D>C+D <D>C+D D>C+D < 
 
;****** BASS  
 
FM6=@33Q4 V13 O3 
FM7=@16Q4 V11 O4 
PS2=@12Q6 V7  O2 
SC5=@10Q6 V7  O2 
 
FA6=@33 V15
FA7=@24 V11 M4I40 > 
PA1=V10 M4I40 
SA5=V8 
 
C0=L16CFCGCFCB-CACG 
C1=E-A-E-B-E-A-E->D-<E->C<E-B- 
C2=DGDADGD-G-D-A-D-G- 
C3=<G>CF<B->E-A-D-G-BGD-<G> 
 
C4=C>CC<C>D-D-< <G>CFAEA- 
C5=C>CC<C>D-D-< <G>CF<A->E-<G> 
;C6=<G>F+G <G>F+G G>F+G <G>F+G< 
 
;****** CHORUS  
FM3=@12 Q4 V11 O3 
FA3=@24 V11 M4I40 >> 
 
D4=<C8C8C8> RG>C FBE< 
D5=<C8C8C8> >G>CF< A->C+<F+< 
;D6=D>C+D <D>C+D D>C+D <D>C+D < 
 
;****** RYTHUM 
 
FM8=V15 O2 Z3 
FM9=V15 O2  
 
;OPLL
;@90 HEAVY-SNARE 
;@91 BASS-DRUM 
;@92 TOMTOM 
;@93 SNARE 
;@86 OPEN-HI-HUT 
;@87 CLOSE-HI-HIT 

;PSG
;@0 SNARE1
;@1 BASS-DRUM
;@2 SNARE2
;@5 SNARE3
;@6 OPEN-HI-HUT
;@7 CLOSE-HIHUT
;@12 TOM1 (NOISE 13)
;@22 TOM2 (NOISE 14)
;@23 TOM3 (NOISE 15)
;@24 TOM4 (NOISE 17)
;@25 TOM5 (NOISE 20)
 
H0=R2. 
H1=L16
   <@91D>@90D32D32D <@93D-D-@93D->
   <@91D>@92BB GG<@91D> 
H2=<@91D>@86E@92G <@91D>@92GG
   <@91D>@90DD @92BG@86E 
H3=<@91D>@90DD <@91D>@90DD
   <@91D><@93D-D-> @92B32B32G32G32G32<@91D32>
 
PS3=V11O2Q6 
 
Z1=L16
   <@1D>@0D32D32D <@2D-D-D->
   <@1D>@21BB @23GG<@1D> 
Z2=<@1D>@6E@23G <@1D>@23G@23G
   <@1D>@0DD @21B@23G@6E 
Z3=<@1D>@0DD <@1D>@0DD
   <@1D><@2D-D-> @21B32B32@23G32G32G32<@1D32>
 
