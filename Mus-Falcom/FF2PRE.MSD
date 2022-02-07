; FF2 ¢PRELUDE£
; ff2pre.vcd
FM1 =;T,FM1,      A0/2,A1,A2,A3
FM2 =;T,FM2,   A2,A0/2,A1,A2
FM3 =;T,FM3,A3,A2,A0/2,A1,
FM4 =
FM5 =
FM6 =
FMR =
FM7 =
FM8 =
FM9 =
PSG1=T,PS1,      A0/2,A1,A2,A3
PSG2=T,PS2,   A3,A0/2,A1,A2,
PSG3=;T,PS3,A2,A3,A0/2,A1
SCC1=;T,SC1,      A0/2,A1,A2,A2
SCC2=;T,SC2,   A3,A0/2,A1,A2
SCC3=;T,SC3,A3,A2,A0/2,A1
SCC4=
SCC5=

T=;t255r64
  T103

FM1=@32 V13 o4 q8s1
FM2=@32 V10 o4 q8s1
FM3=@32 v8  o4 q8s1

PS1=@25 V9 O3 q8
PS2=@25 V7 O3 q8
PS3=@25 V5 O3 q8
SC1=@9 V11 O3
SC2=@9 V9 O3
SC3=@9 V6 O3

R=r8

A0=L16
 cdeg>cdeg>cdeg>cdeg>
 c<gedc<gedc<gedc<ged<
 ab>ceab>ceab>ceab>ce
 aec<baec<baec<baec<b
A1=L16
 a>cfga>cfga>cfga>cfg
 agfc<agfc<agfc<agfc<
 b>dgab>dgab>dgab>dga
 bagd<bagd<bagd<bagd<
 g+>cd+gg+>cd+gg+>cd+gg+>cd+g
 g+gd+c<g+gd+c<g+gd+c<g+gd+c<
 a+>dfaa+>dfaa+>dfaa+>dfa
 a+afd<a+afd<a+afd<a+
A2=L16a(f32
A3=L16)r32d

