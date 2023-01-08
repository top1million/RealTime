#include <pic.h>
#include "lcd.h"
#include "delay.h"
/*
*	since we're using 4MHz oscillator, we need to set the oscillator bit to HS
*	the following are needed to make the LCD get to work:
*	BODEN, WDTDIS and WRTEN
*/

__CONFIG(DEBUG_OFF & WDTE_OFF & LVP_OFF & FOSC_HS & BOREN_ON);
void DelaySec(int sec);
void main(void)
{
TRISE = 0; //set PORT E to output mode
TRISD = 0; //set PORT D to output mode
TRISB = 0; //set PORT B to output mode
TRISA = 0; //set PORT A to output mode
ADCON1 = 7;//set PORT A to Digital mode 
RE0 = 0;// set PORT E0 to zero 
DelaySec(1); //sleep for 1 sec
lcd_init(); //intialiaze LCD

while (1) 
{
	lcd_clear(); //Clear LCD
	lcd_goto(0);  // move LCD's cursor to location zero 
	lcd_puts("BZU"); //put string on LCD
	lcd_goto(3);//We should put this value in decimal, not Hex, So not 40, we need to put 64 for moving the cursor to the second line. 
	lcd_puts("is the best"); //put String

    PORTB=0b10000000;//set PORT B7 to 1 , Just for testing issue
	DelaySec(1);// //wait for 1 sec, Testing Issue 
	PORTB=0b00000000;// sec PORT B7 to zero , Testing issue
	DelaySec(1);//wait for 1 sec
}
}

void DelaySec(int sec)
{
   for(int i=0;i<sec;i++)
    DelayMs(1000);
}

