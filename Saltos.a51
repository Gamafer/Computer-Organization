	CSEG AT 00
		JMP main
	
	Dseg at 30H
		variable1: DS 1
		cont1: DS 1
		cont2: DS 1
		cont3: DS 1
	
	CSEG AT 100H
		
	main: mov A, P1
		mov P3, A
		JNZ main
		
		MOV cont1, #9
		MOV cont2, #8
		MOV cont3, #236
		
	otro: DJNZ cont3, otro
		DJNZ cont2, otro
		DJNZ cont1, otro
		
	jmp main
		
		
		END