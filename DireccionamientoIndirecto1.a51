CSEG at 00
Jmp main

CSEG at 100H
 main:
  Mov A, P1
  ANL A, #00001111b
  Mov DPTR, #Tabla
  Movc A, @A+DPTR
  MOV P3, A
  
 Jmp main

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
    
END