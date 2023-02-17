CSEG at 0000
	JMP MAIN
	
CSEG at 03H
	JMP EXT0
	
CSEG at 13H
	JMP EXT1
	
	DSEG AT 30H
		val1: ds 1
		cont1: ds 1
		cont2: ds 1
		cont3: ds 1
		cont4: ds 1
		lim: ds 1
		

CSEG at 0100H
	
	MAIN:
		MOV IP, #00000100b
		MOV IE, #00000101b
		MOV TCON, #00000101b
		SETB EA
		
	LOOP:
		MOV lim, #10d
		MOV val1, #0d
	LOOP1:
		mov A,val1
		MOV DPTR, #Tabla
		MOVC a,@A+DPTR
		MOV P1,A
		CALL DELAY1S
		INC val1
		DJNZ lim, LOOP1
		
		Jmp LOOP
		
	Tabla:
	   DB 00000010b
	   DB 10011110b
	   DB 00100100b
	   DB 00001100b
	   DB 10011000b
	   DB 01001000b
	   DB 01000000b
	   DB 00011110b
	   DB 00000000b
	   DB 00011000b
	   DB 00010000b
	   DB 11000000b
	   DB 01100010b
	   DB 10000100b
	   DB 01100000b
	   DB 01110000b
		   
	DELAY1s:
			mov cont1, #1d
			mov cont2, #20d
			mov cont3, #0d
			mov cont4, #187d
			
	et2:	DJNZ cont4, et2
			DJNZ cont3,et2
			DJNZ cont2,et2
			DJNZ cont1, et2
			
		RET
		
EXT0:
	MOV val1, #0d
	MOV lim, #10d
	RETI
	
EXT1:
	jmp EXT1
	RETI
END
	
		   
		   
		   