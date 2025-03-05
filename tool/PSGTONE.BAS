10 defint a-z:screen 0:width 80
20 dim n(7,11),n$(11)
30 for n=0 to 11
40  read n$(n):print n$(n);" ";
50  for o=0 to 7
60   read a$:n(o,n)=val("&h"+a$):print n(o,n);" ";
70  next
80  print
90 next
100 data "C ",D5D,6AF,357,1AC,D6,6B,35,1B
110 data "C#",C9C,64E,327,194,CA,65,32,19
120 data "D ",BE7,5F4,2FA,17D,BE,5F,30,18
130 data "D#",B3C,59E,2CF,168,B4,5A,2D,16
140 data "E ",A9B,54E,2A7,153,AA,55,2A,15
150 data "F ",A02,501,281,140,A0,50,28,14
160 data "F#",973,4BA,25D,12E,97,4C,26,13
170 data "G ",8EB,476,23B,11D,8F,47,24,12
180 data "G#",86B,436,21B,10D,87,43,22,11
190 data "A ",7F2,3F9,1FD,FE ,7F,40,20,10
200 data "A#",780,3C0,1E0,F0 ,78,3C,1E,F
210 data "B ",714,38A,1C5,E3 ,71,39,1C,E
