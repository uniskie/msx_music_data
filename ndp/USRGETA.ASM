;=======================================
; CALL address & return A reg value
;=======================================
; DEFINT A-Z
; DEFUSR=&HF975
; A=USR(address)
;
	ORG 0F975H ;VOICAQ
; check VARTYP(INT)
	CP 2
	RET NZ
;
	PUSH HL
	POP IX		;(IX+2) = INT VALUE
	LD L,(IX+2)	;get value(low)
	LD H,(IX+3)	;get value(high)
;
	PUSH IX
	LD DE,RETA
	PUSH DE
	JP (HL) ;CALL
RETA:
	POP IX
	LD (IX+2),A
	LD (IX+3),0
	RET

; BIN size 1Dh
; FE 02 C0 E5 DD E1 DD 6E 02 DD 66 03 DD E5 11 88 F9 D5 E9 DD E1 DD 77 02 DD 36 03 00 C9
