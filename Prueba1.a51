	CSEG AT 0000
		JMP MAIN
		
		MAIN: 
			MOV A, R7
			MOV R3, 30H
			MOVR3, #30H
			MOV A,A
			MOV 40H,30H
			MOV 50H, #10
			MOV R0, R7
			MOV 20H, A
			MOV A, 25H
			MOV A, #25H