#include <reg51.h>
#include <stdio.h>
#include <stdlib.h>
void main();
void interrupcion1();
void interrupcion2();
void delays();

unsigned char i;
int vector[10]={0X01,0X4F,0X12,0X12,0X06,0X6C,0X60,0X0F,0X0,0X0B};

void interrupcion1() interrupt 0{
i=0;
}

void interrupcion2() interrupt 1{
i=0;
}




void main()
{
    IE=0X05;
    TCON=0X005;
    EA=1;
    i=10;
    while(1){
	for(i=0;i<10;i++){
	P1=vector[i];
	delays();
	}
	}
}


void delays(){
int x;
for(x=0;x<650;x++);
}

