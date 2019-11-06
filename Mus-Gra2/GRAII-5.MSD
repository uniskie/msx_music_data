;**************************************
;*   GRADIUS II-5   [ Take Care! ]    *
;**************************************
FM1 =t,fm0,a0/2,a1,a0/2,a1
FM2 =t,fm1,b0/2,b1,b0/2,b1
FM3 =t,fm2,c0/16,c1/16,c0/16,c1/16
FM4 =t,fm3,c0/16,c1/16,c0/16,c1/16
FM5 =t,fm4,d0/2
FM6 =t,fm5,d0,d1
FMR =
FM7 =t,fm6,d0/2
FM8 =t,fm7,e0/4
FM9 =t,fm8,e0/4
PSG1=t,ps0,a0/2,a1,a0/2,a1
PSG2=t,ps1,b0/2,b1,b2/2,b1
PSG3=t,ps2,f0/4
SCC1=t,sc0,a0/2,a1,a0/2,a1
SCC2=t,sc1,b0/2,b1,b0/2,b1
SCC3=t,sc2,c0/16,c1/16,c0/16,c1/16
SCC4=t,sc3,d0/2
SCC5=t,sc4,d0,d1

t=t144

;***** part 1
fm0=o5@24q6v14
ps0=o4@17q6v11
sc0=o5@14q6v14

a0=l16e-<a-e->d<b-f>c<a-e->c<a-e->c<e->d<f>

a1=c<gdbgdafcafcafbg>c<gdbgdafcafcafbd>

;***** part 2
fm1=o4@24q6v14
ps1=o3@17q6v11
sc1=o4@14q6v14

b0=l16a-e-cb-fda-e-ca-e-ca-cb-d

b1=gd<g>gd<g>fc<f>fc<f>fc gdgd<g>gd<g>fc<f>fc<f>fcg<b>
b2=ge-cfd<b->e-c<a->e-c<a->e-cfd

;***** part 3
fm2=o4@0q6v12
fm3=o3@4q6v8z10
sc2=o3@14q6v13

c0=l16a->e-<
c1=g>d<

;***** part 4
fm4=@6v14o3
fm5=@6v13o4z10r8
fm6=@6v14o2z30
fm7=@90o2
fm8=@90o2z40
ps2=@2o2q6
sc3=@8q6v13o4
sc4=@8q6v13o2

d0=m4(a-4.i50)a-2ia-8>(a-4i50)a-2.i< (g4.i50)g2ig8>(g4i50)g2.i<
d1=m4(a-4.i50)a-2ia-8>(a-4i50)a-2.i< (g4.i50)g2ig8>(g4i50g8)g2i<

e0=q4l8v15cv14cv13Q8l16ccccccccccl8Q4v15c8cv14cv13cv12cv11cv10cv9cv8c
f0=l8q4v12cv11cv10q8l16ccccccccccl8q4v11c8cv12cv11v10cv9cv8cv7cv6cv5c



