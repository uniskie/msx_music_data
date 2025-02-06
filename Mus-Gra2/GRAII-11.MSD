;******** GRADIUS II-11 **********
;*      -- Maximum Speed --      *
;*********************************
FM1 =;T,FM1,A0/4       
     T,FM1,               A1/2,A2/2,A3,A4
FM2 =;T,FM2,A0/3,A0'   
     T,FM2,               A1/2,A2/2,A3
FM3 =;T,FM3,B0/4       
     T,FM3,               B1/2,B2/2,B3,B4
FM4 =;T,FM4,A0/4       
     T,FM4,               A1/2,A2/2,C3
FM5 =;T,FM5,D0/2,D1/2  
     T,FM5,               D0/2,D1/2,D2,D3,D2,D4,D5,D6,D5,D7
FM6 =;T,FM6,E0/2,E1/2  
     T,FM6,               E0/2,E1/2,E2,E3,E2,E4,E5,E6,E5,E7
FMR =      
FM7 =;T,FM7,F0         
     T,FM7,               F1/8,F2/8,F3/16,F4/6,F5/6,F4/6,F1/5,F5
FM8 =;T,FM8,H0,H1,H0,H2
     T,FM8,               H3/3,H4,H5/7,H6,H7/7,H8
FM9 =;T,FM9,H0,H1,H0,H2
     T,FM9,               H3/3,H4,H5/7,H6,H7/7,H8
PSG1=;T,PS1,A0/4       
     T,PS1,               A1/2,A2/2,A3,A4
PSG2=;T,PS2,D0/2,D1/2  
     T,PS2,               D0/2,D1/2,D2,D3,D2,D4,D5,D6,D5,D7
PSG3=;T,PS3,I0,I1,I0,I2
     T,PS3,               I3/3,I4,I5/7,I6,I7/7,I8
SCC1=;T,SC1,A0/4       
     T,SC1,               A1/2,A2/2,A3,A4
SCC2=;T,SC2,B0/4       
     T,SC2,               B1/2,B2/2,B3,B4
SCC3=;T,SC3,D0/2,D1/2  
     T,SC3,               D0/2,D1/2,D2,D3,D2,D4,C3
SCC4=;T,SC4,E0/2,E1/2  
     T,SC4,               E0/2,E1/2,E2,E3,E2,E4,E5,E6,E5,E7
SCC5=;T,SC5,F0         
     T,SC5,               F1/8,F2/8,F3/16,F4/6,F5/6,F4/6,F1/5,F5


T=T150

;****** MAIN

FM1=@24 V12 O5 Q5S1
FM2=@24 V10 O5 Q5S1 Z14 R8
PS1=@17 V09 O4 Q4 z1
SC1=@15 V08 O4 Q4 z2

A0=L8C<B16>C16DC16(D16)D16C16DC<B>
A0'=L8C<B16>C16DC16(D16)D16C16DC
A1=L16>C8<B>CD8C(D)DCD8C8<B8
   >CC<B>CD8C(D)DCD8C8<B8
A2=<A>CE<A>CE<A>C<B>DF+<B>DF+<B>D
   CEGCEGCEDF+ADF+ADF+
A3=ERGRF+8G(A)AGF+8
   EEG(F+)F+8G(A)AGF+8
   AR>CR<B8>C(D)DC<B8
   AA>C<(B)B8>C(D)DC<B8
   ERGRF+8G(A)AGF+8
   EEG(F+)F+8G(A)AGF+8
   AR>CR<B8>C(D)DC<B8
   AA>C<(B)B>CD(C)CD
A4=E8

;------ MAIN 2

FM3=@14 V11 O4 Q5   
SC2=@15 V08 O3 Q6 z1

B0=m6L16
   A8GAB8A(B)BAB8A8G8
B1=m6L16
   >A8GAB8A(B)BAB8A8G8
   AAGAB8A(B)BAB8A8G8<
B2=CEACEACEDF+BDF+BDF+
   EG>C<EG>C<EGF+A>D<F+A>D<F+A
B3=>CRER(D4I60)D4I
   CCE(DD4I60)D4I
   FRAR(G4I60)G4I
   FFA(GG4I60)G4I
   CRER(D4I60)D4I
   CCE(DD4I60)D4I
   FRAR(G4I60)G4I
   FFA(G)G8.(AA8
B4=)A8

;------ MAIN 3

FM4=@14 V11 O5 Q5M6 L16

C3=<GR>CR<(A4I60)A4I
   GG>C<(AA4I60)A4I
  >CRFR(D4I60)D4I
   CCF(DD4I60)D4I
  <GR>CR<(A4I60)A4I
   GG>C<(AA4I60)A4I
  >CRFR(D4I60)D4I
   CCF(D)D8.(E)E4

;------ CHORUS 1

FM5=@06 V12 O5 q5
PS2=@13 v07 O4 q6 z1
SC3=@15 V08 O4 Q6 z2

D0=m6L16
   AARAARAARAARARAR
D1=GGRGGRGGRGGRGRGR
D2=(E4I60)E4I(F+4I60)F+4I
D3=(G4I60)G4I(F+4I60)F+4I
D4=(G4I60)G4I(A4I60)A4I
D5=CRCRCRCCRCCR
   CCCRCRCCRCCR
D6=FRFRFRFFRFFR
   FFFRFRFFRFFR
D7=FRFRFRFFRFFR
   FGA(G)GAB(A)AB>C8

;------ CHORUS 2

FM6=@06 V11 O5 Q5 z6
SC4=@15 V06 O4 Q6 z2

E0=m6L16
   R AARAARAARAARARA
E1=R GGRGGRGGRGGRGRG
E2=(A4I60)A4I(B4I60)B4I
E3=>(C4I60)C4I<(B4I60)B4I
E4=>(C4I60)C4I(D4I60)D4I<
E5=R CRCRCRCCRCCR
     CCCRCRCCRCC
E6=R FRFRFRFFRFFR
     FFFRFRFFRFF
E7=R FRFRFRFFRFFR
    >FGA(G)GAB(A)AB>C

;****** BASS

FM7=@33 V13 O3 q6 
SC5=@11 V15 O2 z2

F0=m6
   (F1I60)F1I
   (G1I60)G1I
F1=m6L16
   <F>F<F>F
F2=<G>G<G>G
F3=<A>A<A>A
F4=C>C<C>C<
F5=<F>F<F>F

;****** DRUM

FM8=v15o2z10
FM9=v15o2
PS3=v11o2q6


H0=L16<@91a8>@87ee <@91a8>@87ee <@91a8>@87ee <@91a8>@87e@86g
H1=<@91a8>@87ee <@91a8>@87ee <@91a8>@87ee @90c8@87e@86g
H2=<@91a8>@87ee <@91a8>@87ee <@91a>@92c-32c-32c-c-@90cccc 

H3=L16<@91aaaa> @90c@87e@86g<@91a> @87e<@91a@91a>@86g @90c@87ee@86g ;*3
H4=<@91aaaa> @90c@87e@86g<@91a> @87e<@91a@91a@91a> @90cc@86g8
H5=<@91aa>@86g8@90c@87e@86g8 ;*7
H6=<@91aa>@86g8@90c8
H7=<@91a>@87e<@91a>@87e@90c@87e<@91a@91a>@87e<@91a@91a>@86g ;*7
H8=<@91a>@87e<@91a>@87e@90c@87e@90cc@87e@90cc@86g

I0=L16<@1a8>@7ee <@1a8>@7ee <@1a8>@7ee <@1a8>@7e@6e
I1=<@1a8>@7ee <@1a8>@7ee <@1a8>@7ee @0c8@7e@6c
I2=<@1a8>@7ee <@1a8>@7ee <@1a>@21c-32c-32c-c-@0cccc 

I3=L16<@1aaaa> @0c@7e@6e<@1a> @7e<@1a@1a>@6e @0c@7ee@6e ;*3
I4=<@1aaaa> @0c@7e@6e<@1a> @7e<@1a@1a@1a> @0cc@6e8
I5=<@1aa>@6e8@0c@7e@6e8 ;*7
I6=<@1aa>@6e8@0c8
I7=<@1a>@7e<@1a>@7e@0c@7e<@1a@1a>@7e<@1a@1a>@6e ;*7
I8=<@1a>@7e<@1a>@7e@0c@7e@0cc@7e@0cc@6e

