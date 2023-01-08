#include <pic.h>

__CONFIG(DEBUG_OFF & WDTE_OFF & LVP_OFF & FOSC_HS & BOREN_ON);

int i=0;
void main(void) {                             
	TRISC = 0 ;	// set PORTC as output
	PORTC = 0 ; // clear PORTC
	
	/* configure CCP module as 15 KHz PWM output */
	//PR2 = 66 ; //set PR2 Regesiter to  66 decimal ( PR2 = (fosc)/(4*f*prescaler) - 1 ) to configure the frequency
	PR2 = 99;
	T2CON =   0b00000100; //set Timer2 control Register , where Prescaler is 1 and Postscale is 1:1
	//CCP1CON = 0b00101100; //set CCP1 to Pulse Width Modulation Mode. 0b00(10)(1100) , (least signficat two bits in duty cycle) , (pwm mode)
	CCP1CON = 0b00001100;
	//320 = 0101000000

	//the output will be generated from RC2(CCP1)
	for(;;){
		/* PWM resolution is 10 bits, so only CCPRxL have to be touched to change duty cycle */
		/* set CCPR1L to 25 to give 50% duty cycle with frequency = 15 KHz , note that DC1B1 and DC1B0 are set to 10 in CCP1CON */
		// CCPR1L(7..0):CPP1Con(5):CPP1Con(5) =   (fosc *on_time_percentage)/(F * prescaler) = (4MHz*0.5)/(15K * 1)
		// = 133 = ‭0010000101‬ as 10bits => CCPR1L will get most 8 significant bits 00100001 and CCP1CON<5:4> = 01
		//CCPR1L = 0b00100001 ;
		CCPR1L = 0b01010000;    
	}
}
