CSEG at 00
	JMP main
	
	DSEG AT 30H
		x: DS 1
		y: DS 1
		
	CSEG at 100H
		
		main: 
			MOV A, P1
			JNZ main
		
			mov x, #3
			mov y, #4
			
			CJNE A, y, mayor
			setb p3.0
			jmp main
			
		mayor:

			JC menor
			setb p3.1
			jmp main
			
		menor:
			setb p3.2
			jmp main
			
			END
			
			
			