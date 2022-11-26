#include <pic.h>
#include <stdlib.h>
#include <stdio.h>
#include <pic.h>
#include "lcd.h"
#include "delay.h"
#include "string.h"
__CONFIG(DEBUG_OFF & WDTE_OFF & LVP_OFF & FOSC_HS & BOREN_ON);

int Counter=0; // used to trigger d2 on every second

void DelaySec(int sec);
void init_a2d(void);
float read_a2d(unsigned char channel);
float s1,s2,s3,s4;
char str[10];
float tempreture=0,avg=0;
void InitMain()
{
    nRBPU = 0; /* enable pullup resistors */
    TRISD = 0; /* to transmit characters to the LCD */
    TRISC = 0; /* to transmit characters to the LCD */
    TRISE = 0; /* to control the LCD */
    TRISB = 0; /* to control the motor */
    TRISA = 0xFF; /* to take analog values */

    ADCON1 = 3;//set PORT A to Digital mode, Port E to digital
    init_a2d();  /* Initialize the A2D module */

    /* Loading screen */
    lcd_init(); /* Initialize the LCD */
    lcd_clear(); /* in case of a reset */
    lcd_puts("Starting...");
    DelayMs(1000);
    lcd_clear();


}

void main()
{

    InitMain();
  
    TMR0 =236; //5ms dealy
    OPTION_REG = 0x47;

    while (1)    // Endless loop
    {

  

        s1= read_a2d(0);
        s1 = s1/51.0;
		
		s2= read_a2d(1);
        s2 = s2/51.0; 
		
		s3= read_a2d(2);
        s3 = s3/51.0; 
		
		s4= read_a2d(3);
        s4 = s4/51.0; 
		
				
		avg =((s1+s2+s3+s4)/20)*100;
		ftoa(avg, str, 2); /* Convert value to string with 2 digits after the point */
		      
		GIE=1; // Enable Global Interrupt
		T0IE = 1; // Timer0 Interrput Enable

		if(avg<40){
		lcd_goto(0);
        lcd_clear();
		lcd_puts("Average Temp");
		lcd_goto(64);
		lcd_puts(str); /* display value on LCD */
		DelayMs(300); 
		}
		else if(avg>40 && avg<51){
		
		lcd_goto(0);
		lcd_clear();
     	lcd_puts("Warning");
		
		if (Counter==100){ //5ms *100
		lcd_goto(64);
		lcd_puts(str); /* display value on LCD */
		}
		if (Counter==200){ //5ms *200
		lcd_goto(64);
		lcd_puts("         "); /* display value on LCD */
		Counter=0;
		}
		
		//Buzzer (15kHz)
 			T2CON = 0b00000100; //set Timer2 control Register , where Prescaler is 1 and Postscale is 1:1
            CCP1CON = 0b00011100;
            CCPR1L = 0b00100001 ;
		
		}
		
		else if(avg>50 && avg<61){
		lcd_goto(0);
        lcd_clear();
		lcd_puts("Danger");
		if (Counter==50){ //5ms *50
		lcd_goto(64);
		lcd_puts(str); /* display value on LCD */
		}
		if (Counter==100){ //5ms *100
		lcd_goto(64);
		lcd_puts("         "); /* display value on LCD */
		Counter=0;
		}
		
	
		//Buzzer (50kHz)
			PR2 = 19;
 			T2CON = 0b00000100; //set Timer2 control Register , where Prescaler is 1 and Postscale is 1:1
            CCP1CON = 0b00001100;
            CCPR1L = 0b0010100 ;
		}

		else if(avg>70){
		lcd_goto(0);
        lcd_clear();
		lcd_puts("High Danger");
		
		if (Counter==25){ //5ms *25
		lcd_goto(64);
		lcd_puts(str); /* display value on LCD */
		}
		if (Counter==50){ //5ms *25
		lcd_goto(64);
		lcd_puts("         "); /* display value on LCD */
		Counter=0;
		}
	 
			//Buzzer (100kHz)
			PR2 = 9;
 			T2CON = 0b00000100; //set Timer2 control Register , where Prescaler is 1 and Postscale is 1:1
            CCP1CON = 0b00001100;
            CCPR1L = 0b00001010 ;


		
		}
		
		
	
       
}		 // end of main
}


void init_a2d(void)
{
    ADCON0 = 0x41; // (01)(000)(0)0(1) = ( select Fosc/8) , (AN0), (GO_DONE), (enable)
    ADCON1 = 0x0E; //(0)(0)00(1110) (select left justify result), (select Fosc/8)   ,(AN0 is analog wiht Vdd and Vss)
    ADON=1; // turn on the A2D conversion module (last bit in ADCON0)
}

/* Return an 8 bit result */
float read_a2d(unsigned char channel)
{
    channel &=0x07; // truncate channel to 3 bits
    ADCON0 = 0x41; // select Fosc/8
    ADCON1 = 0x0E; //  select left justify result, A/D port configuration 0
    DelayMs(10);
    ADCON0 |=(channel<<3); // apply the new channel select
    GO_nDONE = 1;
    while(GO_nDONE)
        continue;
    return( (float) ADRESH); // return 8 MSB of the result
}
void interrupt IntVector( void )  // invoked on every TMR0 int (happens every 0.01 seconds)
{
    if (T0IE && T0IF)   // check if the Timer0 is overflowed and Timer Interrupt is enabled
    {
        T0IF = 0; // set Timer Overflow flag to zero for the next interrupt
      TMR0 =236;  /* reload the time value. It is calcualted based on this equation Period = (256 - TMR0)*(4/fosc)*(Prescaler)
in our case a 10ms period (resolution) should be achieved by set Prescaler to 256 and the used Fsoc=4MHz
0.01 = (256 -TMR0)*(4/4*10^6)*256 -----> TMR0= 256-39=217 */
        Counter++; // increment d1Counter


    }
}




/*
  if(RC7==0)
        {
            lcd_clear();
            lcd_puts("pushed");
            T2CON = 0b00000100; //set Timer2 control Register , where Prescaler is 1 and Postscale is 1:1
            CCP1CON = 0b00011100;
            CCPR1L = 0b00100001 ;
        }

*/
