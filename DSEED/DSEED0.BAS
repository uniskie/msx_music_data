100 DEFINT A-Z:COLOR 15,0,0:SCREEN 5
110 SETPAGE 0,1:BLOAD"DSEED.SC5",S
120 COLOR=RESTORE
130 COPY(0,0)-(255,191),1 TO (0,0),0
140 LINE(0,192)-(255,211),0,BF
150 SETPAGE 0,0:R=RND(-TIME)
160 DIM X(255),Y(255)
170 X(I)=RND(1)*255:Y(I)=RND(1)*211
180 IF POINT(X(I),Y(I)) THEN 200
190 SETPAGE,0:PSET(X(I),Y(I)),5+RND(1)*5
200 I=(I+1)AND 255:SETPAGE,1
210 IF POINT(X(I),Y(I)) THEN 230
220 SETPAGE,0:PSET(X(I),Y(I)),0
230 SETPAGE,1:GOTO 170
