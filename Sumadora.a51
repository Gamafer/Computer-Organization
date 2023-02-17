CSEG at 00
Jmp main

DSEG at 30H
 variable1: DS 2
 variable2: DS 2


CSEG at 100H
 
main:
 MOV A, P1
 MOV variable1, A
 ANL variable1, #00000011b
 MOV A, P2
 ANL A, #00000011b
 ADD A, variable1
 MOV variable2, A
 ANL A, #00000100b
 JNZ Overflow
 MOV A,variable2
 ANL A, #00000011b
 Mov DPTR, #Tabla
 Movc A, @A+DPTR
 MOV P3,A
 
 Jmp main
 
Tabla:
 DB 00000010b
 DB 10011110b
 DB 00100100b
 DB 00001100b
Overflow:

 Mov P3,#01100000b
 jmp main 
END