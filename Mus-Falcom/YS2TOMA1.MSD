;******** YS II   TITLE BGM ********
;    �TO MAKE THE END OF BATTLE�
;***********************************
FM1 =t,A0,FM1,A1,@74,A2,@99,A3,@74,A2,@99,A4,B4,A5,A6,A5,A7,A8/2,A1,@74,A2,@99,A3,@74,A2,@99,A4,B4,A9
FM2 =t,A0,FM2,A1,@74,A2,@99,A3,@74,A2,@99,A4,B4,A5,A6,A5,A7,A8/2,A1,@74,A2,@99,A3,@74,A2,@99,A4,B5,B9
FM3 =t,A0,FM3,A1,@04,A2,@24,A3,@04,A2,@24,A4,B4,A5,A6,A5,A7,A8/2,A1,@04,A2,@24,A3,@04,A2,@24,A4,B4,A9
FM4 =t,A0,FM4,A1,@74,A2,@99,A3,@74,A2,@99,A4,B4,A5,A6,A5,A7,A8/2,A1,@74,A2,@99,A3,@74,A2,@99,A4,B4,A9
FM5 =t,A0,FM5,E1,E2/3,E3,E4/4,E5/4,E6,E4/4,E5/4,E6,E4/4,E5/4,E6,E4/4,E5/4,E7,E8,E9,E8,EA,EB/2,E1,E2/3,E3,E4/4,E5/4,E6,E4/4,E5/4,E6,E4/4,E5/4,E6,E4/4,E5/4,E7,EC
FM6 =t,A0,FM6,E1,E2/3,E3,E4/4,E5/4,E6,E4/4,E5/4,E6,E4/4,E5/4,E6,E4/4,E5/4,E7,E8,E9,E8,EA,EB/2,E1,E2/3,E3,E4/4,E5/4,E6,E4/4,E5/4,E6,E4/4,E5/4,E6,E4/4,E5/4,E7,EC
FMR =t,FMR,F0,F1/8,F2/3,F3,F2/3,F4,F5/7,F3,F5/7,F6,F5/7,F7,F5/7,F8,F5/7,F9,FA/4,F1/8,F2/3,F3,F2/3,F4,F5/7,F3,F5/7,F6,F5/7,F7,F5/7,F8,FB
FM7 =
FM8 =
FM9 =
PSG1=T,C0,PS1,C1,C2/3,C3,C4/2,C5,C6,C4/2,C5,C7,C8,C9/2,CA,CB/2,C1,C2/3,C3,C4/2,C5,C6,C4/2,C5,C7,CC
PSG2=t,C0,PS2,D1,D2/3,D3,D4/2,D5,D6,D4/2,D5,D7,D8,D9/2,DA,DB/2,D1,D2/3,D3,D4/2,D5,D6,D4/2,D5,D7,CC
PSG3=T,PS3,G0,G1/8,G2/3,G3,G2/3,G4,G5/7,G3,G5/7,G6,G5/7,G7,G5/7,G8,G5/7,G9,GA/4,G1/8,G2/3,G3,G2/3,G4,G5/7,G3,G5/7,G6,G5/7,G7,G5/7,G8,GB
SCC1=
SCC2=
SCC3=
SCC4=
SCC5=

t=t240

;****** MERODY

FM1=@29 V13 O6 M5 Q7
FM2=@29 V12 O5 M5 Q7z16R8.
FM3=@24 V13 O6 M5 Q7z36
FM4=@29 V13 O5 M5 Q7

A0=V10O1@91A8>@92(E64m1p16<)e8...p
A1=L8EFG(A.I79)A.I<A4 >C+DEE4EDE
   R1 R1
   >c32C+16.<AB-GAFGE B-GAFGEFD
   C+DEFGAB->C+ e-32E16.C+<B->FC+<B-R4
   <(G4.I79)G4.Ia-32A16.B- >(C+4.I79)C+4.IEF
   GFEFGAB->C+  E(E.I79)E.IF4G4<
@74=@32
@04=@14
A2=L8>FEC(D2d16I90D16 )D2I<a-32A16.>CDC
   FEC(D2d16I90D16 )D2I<AGFE
   f-32(f32FI79)F.I(D.I79)D.IF4
   (G.I79)G.I(E.I79)E.IG4
   (A.I79)A.If-32(f32FI79)F.ID4
   (E.I79)E.I(G.I79)G.IB-4
A3=(A2I79)A2I >DEFGAGFE
   g-32(g32GI79)G.I(E.I79)E.IC4 (<G.I79)G.I>c-32(c32CI79)C.IE4
   FD<AFDA>DF EC<GECG>CE<

   L8d-32D16.FA>C+DFA>C+ (I90D2)D2I<<
A4=(A2I79)A2I >DEFGAGFE
   g-32(g32GI79)G.I(E.I79)E.IC4 (<G.I79)G.I>c-32(c32CI79)C.IE4
   FD<AFDA>DF EC<GECG>CE<

   L8(E-.I79)E-.IE-(G.I79)G.IE-16G16 (B-.I79)B-.IG16B-16>(E-4I79
B4=)E-4I<
B5=)E-16I<
@99=@29
@24=@24
A5=L8>(A4I79)A4IDFGa-32(A16.  A16I79)A.IG4FG4>(D<<
A6=>>D16I79)D.I<A4GF4(E  E16I79)E.I(F.I79)F.I(G.I79)G.I<
A7=>>D4I79)D4IE4D4 (D4I79)D4I(C+4I79)C+4I<<
A8=>DFADFADF ADFAE-GB-G
   DFADFADF ADFACCEG<
A9=>DRRDR..d-32D(D  DMP4<<)D4.R2<
B9=ARRAR..a-32A(A  AMP4<<)A4.R2

;****** SUB
PS1=@14 V11 O5 M5Q7
PS2=@14 V11 O4 M5Q7

C0=V05R8@0D4
C1=I40L2(EI70)EI40 (GI70)GI8
   L16D+ED+ED+ED+E>D+ED+ED+ED+E L8<EFG+FEFG+A
C2=R4R(E4I70)E4.I8 R1
C3=R4R(E4I70)E4.I8 C+C+C+C+DDEE
C4=DC<G(A4I70)A4.I8 >A4G4F4E4
C5=(D.I70)D.I8<(B-.I70)B-.I8>D4
   (E.I70)E.I8(C.I70)C.I8E4
   (F.I70)F.I8(D.I70)D.I8<A4
   (A.I70)A.I8>(E.I70)E.I8G4
   (D2I70)D2I8 <(A4I70)A4I8>(D4I70)D4I8
   (E2I70)E2I8 (C2I70)C2I8
   (F2I70)F2I8 (E2I70)E2I8
C6=(D2I70)D2I8 D4C+4<B4>C+4
C7=(B-1I70 )B-1I8
C8=<(A1I70 )A1I8
   (B-2I70)B-2I8 (A2I70)A2I8>
C9=FFFFFFFF
CA=B-B-B-B-B-B-B-B- AAAAAAEC+
CB=<FA>D<FA>D<FA >D<FA>D<GB->D+<B-
   FA>D<FA>D<FA >D<FA>D<GG>CE
CC=R1R1 R1R1

D1=I8L2(AI70)AI8 >(C+I70)C+I8
   L16<G+AG+AG+AG+A>G+AG+AG+AG+A L8<AB->C+<B-AB->C+D<
D2=R4.(A4I70)A4.I8 R1
D3=R4.(A4I70)A4.I8 AAAABB>C+C+<
D4=AGE(F4I70)F4.I8 >F4E4D4C4<
D5=(B-.I70)B-.I8(F.I70)F.I8B-4
   >(C.I70)C.I8<(G.I70)G.I8>C4
   (D.I70)D.I8<(A.I70)A.I8F4
   (E.I70)E.I8>(C+.I70)C+.I8E4
   <(A2I70)A2I8 (F4I70)F4I8(A4I70)A4I8
   >(C2I70)C2I8 <G2I70)G2I8
   >(D2I70)D2I8 (C2I70)C2I8<
D6=>R16v9z7(D2I70)D2I8 D4C+4<B4>C+8.<v10z
D7=>(G1I70 )G1I8<
D8=(F1I70 )F1I8
   (F2I70)F2I8 (E2I70)E2I8
D9=>DDDDDDDD
DA=FFFFFFFF EEEEEEC+<A
DB=R16v9z7FA>D<FA>D<FA >D<FA>D<GB->D+<B-
   FA>D<FA>D<FA >D<FA>D<GG>CE16<v10z

;****** BASE

FM5=@6 V15 O2 Q4s1 Z40
FM6=@33 V15 O2 Q6s1

E1=L8AAAAAA>E<A
   AA>E<A>G<A>F<A
   AA>G<A>F<D>E<A
   >C+<AB->C+<B-AGB-
E2=A4R2>A4
   AE<A4A4>C+E<
E3=A4R2>A4
   <A4>A4<B4>C+4<
E4=>DDDD<
E5=>CCCC<
E6=B-B->FB->D<B-FB-
   CCG>CEC<G>C
   <DDFA>D<AFD
   <A>AEC+<AAAA
E7=B-B->FB->D<B-FB-
   CCG>CEC<G>C
   <E-E-B-E-GE-B-F
   GE-B-E->E-<E->G<E-<
E8=>DD>D<DGA>CD
   <FF>F<FFF>F<F
   B-B->B-<B-B-B->B-<B-
E9=AA>A<A>G<A>A<A<
EA=AA>A<A>AEC+<A<
EB=>DR4DRR>(C)D
   <RDFDE-E-GB-
   DRRDRR>(C)D
   <RDFDCCEC<
EC=>DD>D<DGA>C(D
   DP4<<)D4.R2

;****** RYTHUM

FMR=VB15 VM15 VS14 VH13
    Y38,3 Y22,165 ;B
    Y39,2 Y23,188 ;H S
    Y40,2 Y24,168 ;C M

F0=B8MS4
F1=B4MS4
F2=HB8H8H8MS8B8MS8B8B8
F3=HB8H8H8MS8B8MS8MSmB8MSB8
F4=HB8MS8MS8MS8MS8MS8MS8MS8
F5=HB8H8MS8H8HB8H8MS8H8
F6=HB8MS8MS4MSB8MS8R8MS8
F7=HB8H8MS4MSB8MS8MS8MS8
F8=HB8Y24,153Y23,173MS8Y24,168Y23,188MS8Y24,153Y23,173M8BMS16MS16MS16MS16Y24,138Y23,158MS16MS16MS16MS16Y24,168Y23,188
F9=HB8H8MS4B8B8B8B8
FA=B8H8H8B8H8H8MS4
   B8B8MSB8B8B8B8MSB8B8
FB=MS8B8B8MSB8B8B8MS8MS8
   B4R2.

PS3=V10 O3 L64 ;bass @1  SNARE @0  TOM @21-@25

G0=<@1(DC<BAGFE)D>>@2D8R8
G1=<@1(DC<BAGFE)D>>R8@2D4
G2=<@1(DC<BAGFE)D>>R4@2D8@1<(DC<BAGFE)D>>@2D8@1<(DC<BAGFE)D>(DC<BAGFE)D>>
G3=<@1(DC<BAGFE)D>>R4@2D8@1<(DC<BAGFE)D>>@2V9D8V10D8V11D8V10
G4=<@1(DC<BAGFE)D>>L8@2V8DV9DV10DV11DDDDL64V10
G5=<@1(DC<BAGFE)D>>R8@2D8R8@1<(DC<BAGFE)D>>R8@2D8R8
G6=<@1(DC<BAGFE)D>>@2D8D4D8D8R8D8
G7=<@1(DC<BAGFE)D>>R8@2D4V9D8V10D8V11D8D8V10
G8=<@1(DC<BAGFE)D>>@24(GFEDC<BA)G>@2D8@24(GFEDC<BA)G>(GEC<)A>(GEC<)A>(GEC<)A>(GEC<)A>@25(FD<B)G>(FD<B)G>(FD<B)F>(FD<B)G>
G9=<@1(DC<BAGFE)D>>R8@2D4@1<(DC<BAGFE)D>(DC<BAGFE)D>(DC<BAGFE)D>(DC<BAGFE)D>>
GA=<@1(DC<BAGFE)D>R4(DC<BAGFE)D>>R4@2D4
   <@1(DC<BAGFE)D>(DC<BAGFE)D>>@2D4@1<(DC<BAGFE)D>(DC<BAGFE)D>>@2D8@1<(DC<BAGFE)D>>
GB=@2D8@1<(DC<BAGFE)D>(DC<BAGFE)D>>@2D8@1<(DC<BAGFE)D>(DC<BAGFE)D>>@2D8D8
   <@1(DC<BAGFE)D>>R2. R1

