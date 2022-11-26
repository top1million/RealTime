#include <stdlib.h>
#include <stdio.h>
#include <pic.h>
#include "lcd.h"
#include "delay.h"
#include "string.h"
#define BAUD 9600 //Define baudrate
#define FOSC 4000000L //crystal OSC
#define DIVIDER ((int)(FOSC/(16UL * BAUD) -1)) // calculate baud rate generator value 
/*
*	since we're using 4MHz oscillator, we need to set the oscillator bit to HS
*	the following are needed to make the LCD get to work:
*	BODEN, WDTDIS and WRTEN
*/

__CONFIG(DEBUG_OFF & WDTE_OFF & LVP_OFF & FOSC_HS & BOREN_ON);

void putchOnSerial(unsigned char byte); 
void DelaySec(int sec);
void init_a2d(void); 
float read_a2d(unsigned char channel);
float x;
char str[10]; 
unsigned int send=1;

void main(void){ 
	unsigned char rec; 
	TRISD = 0; /* to transmit characters to the LCD */
	TRISE = 0; /* to control the LCD */
	TRISB = 0; /* to control the motor */
	ADCON1 = 3;//set PORT A to Digital mode, Port E to digital 
	TRISA = 0xFF; /* to take analog values */  
	TRISC7=1;  /* set RC7 to input (RX) to receive bits */
	TRISC6=0;  /* set RC6 to output (TX) ro send bits */
	DelaySec(1); //sleep for 1 sec
	
	/* Loading screen */
	lcd_init(); /* Initialize the LCD */
	lcd_clear(); /* in case of a reset */
	lcd_puts("Starting...");
	DelayMs(1000);

	nRBPU = 0; /* enable pullup resistors */ 
	
	SPBRG = DIVIDER; /* set baud rate generator value in SPBRG register */
	RCSTA = 0x90; /* set - Receive Status and Control Register */
	TXSTA =0x24; /* set Transmit Status and Control Register */
	
	init_a2d();  /* Initialize the A2D module */
	DelayMs(500);
	
	lcd_clear();
	GIE=0;  /* Disable global interrupts */
	while ( 1 ) { 
		
		if(send==1) {
			DelayMs(100); /* increase to 100 in case any problems occured during the implementation */
			lcd_goto(0); 
	
			/* Read analog value on AN0, adjust by coeficient to obtain actual value */
			x= read_a2d(0);
			x = x/51.0; /* fraction to reflect actual analog value (since it reaches within the range of the analog register */
	
			ftoa(x, str, 2); /* Convert value to string with 2 digits after the point */
	
			lcd_puts(str); /* display value on LCD */
			
			if(x>2.0){
				 putchOnSerial('n'); 
				 DelayMs(100);
				 putchOnSerial('o'); 
				 DelayMs(100);
			}
			else {putchOnSerial('l');
				 DelayMs(100);
			}
			send=0;
		}
		else {
			rec = getch();
			DelayMs(100);
	
			if(rec!=NULL) { //check the PC response is zero or one to rotate the motor 
				if(rec=='d') { 
					RB1=0; 
					lcd_goto(8);
					lcd_puts("Disabled"); 
				}
	
				else if(rec=='e') { 
					RB1=1;
					lcd_goto(8); 
					lcd_puts("Enabled "); 
				}
			} /* end of if not null */
			send=1;
		} /* end of else */
	}

}

void putchOnSerial(unsigned char byte) { 
	/* output one byte */
	while(!TXIF) /* set when register is empty */ 
		continue; 
	TXREG = byte; 
}
unsigned char getch() { 
	/* retrieve one byte */ 
	if(RCIF) 
		return RCREG; 
	else 
		return NULL; 
}

void init_a2d(void){ 
	ADCON0 = 0x41; // select Fosc/8 
	ADCON1 = 0x0E; // select left justify result. A/D port configuration 0 
	ADON=1; // turn on the A2D conversion module 
	}
	
/* Return an 8 bit result */ 
float read_a2d(unsigned char channel){ 
	channel &=0x07; // truncate channel to 3 bits 
	ADCON0 = 0x41; // select Fosc/8 
	ADCON1 = 0x0E; // select left justify result. A/D port configuration 0 
	DelayMs(10);	
	ADCON0 |=(channel<<3); // apply the new channel select
	GO_nDONE = 1;
	while(GO_nDONE)
		continue; 
	return( (float) ADRESH); // return 8 MSB of the result
	}

void DelaySec(int sec)
{
   for(int i=0;i<sec;i++)
    DelayMs(1000);
}