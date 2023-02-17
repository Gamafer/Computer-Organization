Dseg at 30h
	cont1: ds 1
	cont2: ds 1
	cont3: ds 1
	cont4: ds 1

Cseg at 00h
	jmp main

Cseg at 100h

main: mov cont1,#1
	mov cont2,#127
	mov cont3,#169
	mov cont4,#236

mov p1,#00001100B

label: DJNZ cont4,label
	DJNZ cont3,label
	DJNZ cont2,label
	DJNZ cont1,label

	mov cont1,#1
	mov cont2,#20
	mov cont3,#0
	mov cont4,#187

	mov p1,#00001010B

et2: DJNZ cont4,et2
	DJNZ cont3,et2
	DJNZ cont2,et2
	DJNZ cont1,et2

	mov cont1,#1
	mov cont2,#127
	mov cont3,#169
	mov cont4,#236

	mov p1,#00100001B

et3: DJNZ cont4,et3
	DJNZ cont3,et3
	DJNZ cont2,et3
	DJNZ cont1,et3

	mov cont1,#1
	mov cont2,#20
	mov cont3,#0
	mov cont4,#187

	mov p1,#00010001B

et4: DJNZ cont4,et4
	DJNZ cont3,et4
	DJNZ cont2,et4
	DJNZ cont1,et4

	JMP main
END