#include <pic.h>
#include "delay.h"

__CONFIG(DEBUG_OFF & WDTE_OFF & LVP_OFF & FOSC_HS & BOREN_ON);

void DelaySec(int sec);

void main(void)
{
	TRISB = 0; // set port B to output
	PORTB=0;//set zero to output

	while (1) {

		PORTB=0b000000001; //set port B0 to 1 
		DelaySec(1);       //delay

		PORTB=0b00000010; //set port B1 to 1 
		DelaySec(1);       //delay

		PORTB=0b000000100; //set port B1 to 1 
		DelaySec(1);       //delay

		PORTB=0b00001000; //set port B3 to 1 
		DelaySec(1);

	}

}

void DelaySec(int sec)
{
   for(int i=0;i<sec;i++)
    DelayMs(1000);
}
