CSEG at 0000
	JMP main
	
CSEG at 03H
	CLR P1.0
	RETI

CSEG at 13H
	SETB P1.1
	RETI
	
CSEG at 23H
	CLR TI;
	CLR RI
	CLR P1.1
	RETI
	
CSEG at 0100H
	
	MAIN:
		MOV IP, #00000100b
		MOV IE, #00010101b
		MOV TCON, #00000101b
		SETB EA
		
		Salto: JMP SALTO
		END
			
		