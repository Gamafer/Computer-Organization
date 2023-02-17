	CSEG AT 0000
		JMP MAIN
		
		MAIN: 
			MOV A, R7;Registro
			MOV R3, 30H;Directa
			MOV R3, #30H;Inmediata
			;MOV A, A 
			MOV 40H,30H;Directa directa
			MOV 50H,#10;Directa con Inmediata
			;MOV R0, R7 
			MOV 20H, A;Directa con acumulador
			MOV A,25H;Acumulador con directa
			MOV A, #25H;Acumulador con inmediata
		END