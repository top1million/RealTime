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
void loopWord(char* word, int len,int delay_time_seconds,int line_length);
void displayTwoLines(char* word,int line_length);
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
		//	lcd_clear(); //Clear LCD
		//	lcd_goto(0);  // move LCD's cursor to location zero 
		//	lcd_puts("BZU"); //put string on LCD
		//	lcd_goto(3);//We should put this value in decimal, not Hex, So not 40, we need to put 64 for moving the cursor to the second line. 
		//	lcd_puts("is the best"); //put String
		//
		//    PORTB=0b10000000;//set PORT B7 to 1 , Just for testing issue
		//	DelaySec(1);// //wait for 1 sec, Testing Issue 
		//	PORTB=0b00000000;// sec PORT B7 to zero , Testing issue
		//	DelaySec(1);//wait for 1 sec
		//	loopWord("now i am trying to test the loop word functionality",52,1,16);
		displayTwoLines("Testing the Display 2 Lines Functionality",16);
		DelaySec(1);
		
	}
}

void DelaySec(int sec)
{
   for(int i=0;i<sec;i++)
    DelayMs(1000);
}

void loopWord(char* word, int len,int delay_time_seconds,int line_length)
{
	for(int i = 0; i < len; i++)
	{
		lcd_clear();
		lcd_goto(0);
		lcd_puts(word + i);
		lcd_goto(64);	//40H is the address of second line (after 80H which the lcd_goto goes to)
		//see : https://www.raviyp.com/16x4-lcd-line-addresses/ and look at the implementation of
		//lcd_goto. BTW, it is not 80H + 16D since not all LCDs have 16 chars, so this is used to
		//Unify all codes for all LCDs
		lcd_puts(word + i + line_length);	//since we can only display up to 16 chars on a single line
		DelaySec(delay_time_seconds);
	}
}

void displayTwoLines(char* word,int line_length)
{
	lcd_clear();
	lcd_goto(0);
	lcd_puts(word);
	lcd_goto(64);
	lcd_puts(word + line_length);
	
}