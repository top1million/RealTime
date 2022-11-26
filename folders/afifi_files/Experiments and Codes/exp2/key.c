//#include <pic.h>
//#include <stdlib.h>
//#include "lcd.h"
//#include "delay.h"
//
//__CONFIG(DEBUG_OFF & WDTE_OFF & LVP_OFF & FOSC_HS & BOREN_ON);
//
//extern void getkey();
//void putchar(char ch);
//int col, row, pressed_key;
//char Chkey;
////based on click we turn motor clockwise or counter clockwise
////or a way to save input in a variable.
//void main(void)
//{
//	/* Define program variables */
//	nRBPU = 0;/* Enable PortB weak pullup resistors */
//	TRISE = 0;
//	TRISC = 0;
//	TRISD = 0;
//	ADCON1 = 7; // Digital Input
//	RE2 = 0;
//	DelayMs(100);
//	lcd_init();
//	lcd_clear();
//
//	/* get a key from the keypad, update its value and display it on the LCD */
//	while(1)
//	{
//		getkey(); // it will stay here forever until a key is being pressed
//		Chkey = (char) pressed_key;
//		Chkey += 48;
//		putchar((char)Chkey); // write the char on the LCD
//	
//	}
//
//}
//
//void getkey()
//{
//	char colVar, rowVar;
//	int flag=0;
//	DelayMs(50);
//	
//	/* Wait for all keys up */
//	do {
//		PORTB = 0;
//		TRISB = 0xf0;
//	} while ( (PORTB >> 4) != 0xf );
//
//	DelayMs(50); /* software debouncing */
//
//	/* forever loop that assigns a zero to a column in turns until a key is pressed */
//	while (1) 
//	{
//		if ( flag == 1 ){
//			break;
//		}
//		/* Wait for keypress */
//
//		for ( col = 0; col < 4; col++ ) { /* 4 columns in keypad */
//			PORTB = 0; /* Step(1): set all output bits to zero,
//			 this step makes all the columns (outputs) set to zero until step (2) 
//			 comes to change 3 out of 4 bits to turn 1 */
//
//			/* All output pins low  */
//			/* (We can replace all these stupid "if statements" with pow(2, col) ) */
//			if ( col == 0 ){
//				colVar = 1; // b00000001 (To turn make col0 as the output in this loop iteration by changing TRISB)
//			}
//			else if ( col == 1 ){
//				colVar = 2; // b00000010(To turn make col1 as the output in this loop iteration)
//			}
//			else if ( col == 2 ){
//				colVar = 4; // b00000100
//			}
//			else{
//				colVar = 8; // b00001000
//			}
//
//			/* Use colVar to set one column pin to output */
//			TRISB = colVar ^ 0xff; /* Step(2): this makes the current column picked to be set to zero,
//			 and the rest to be ones, since they changed to inputs where VCC is connected */
//
//			row = PORTB >> 4; /* (remove the first 4 bits which are used a column output, and only keep the row bits)*/ 
//			/* if one value in the row nibble was zero, this means a key was pressed to pass the column value to the row input,
//			 and hence, we need to break the scanning loop */
//			if ( row != 0xf ) { // row == 0xf that means all of them not being pressed
//				flag = 1; //a button has been pressed (this will break the while loop)
//				break;
//			} /* end of if statement */
//		} /* end of column scanning loop */
//	} /* end of while true loop */
//
//	/*The code will be here when a button has been pressed (i.e. flage = 1)*/
//	/* Use rowVar to calculate the shift added to column index in order to change the value of the pressed key from row/column coordinates to a value from 1 to 16 */
//	rowVar = row ^ 0xf; /* XOR to invert the value of the column nibble within the set {1,2,4,8} */
//	/* convert the shift by mapping the set {1,2,4,8} to {1,2,3,4} */
//	if ( (rowVar / 8) == 1 ){// if the forth bit is pressed,  then output is 4
//		rowVar = 4;
//	}
//	else if ( (rowVar / 4) == 1 ){// if the third bit is pressed,  then output is 3
//		rowVar = 3;
//	}
//	else if ( (rowVar / 2) == 1 ){
//		rowVar = 2;
//	}
//	else if ( rowVar == 1 ){
//		rowVar = 1;
//	}
//	else{// unused case
//		rowVar = 0;
//	}
//	
//	
//	pressed_key = (col * 4) + rowVar; /* calculate the key index */
//}
//
///* if you want to change values on the keypad to ones from your own choice, you can implement a new function with the new mappings by changing the answer to each if-statement */
//void putchar(char ch)
//{
//
//	//it statrs from On/c button, and starts going up (to 1, then 4 then 7) then agin from next column
//	if(ch=='1')
//	{
//	  	lcd_clear();
//	}
//	else if(ch=='2')
//	{
//		  lcd_putch('1');
//	}
//	else if(ch=='3')
//	{
//		  lcd_putch('4');
//	}
//	else if(ch=='4')
//	{
//		  lcd_putch('7');
//	}
//	else if(ch=='5')
//	{
//		  lcd_putch('0');
//	}
//	else if(ch=='6')
//	{
//		  lcd_putch('2');
//	}
//	else if(ch=='7')
//	{
//		  lcd_putch('5');
//	}
//	else if(ch=='8')
//	{
//		  lcd_putch('8');
//	}
//	else if(ch=='9')
//	{
//		  lcd_putch('=');
//	}
//	else if(ch==':')
//	{
//		  lcd_putch('3');
//	}
//	else if(ch==';')
//	{
//		  lcd_putch('6');
//	}
//	else if(ch=='<')
//	{
//		  lcd_putch('9');
//	}
//	else if(ch=='=')
//	{
//		  lcd_putch('+');
//	}
//	else if(ch=='>')
//	{
//		  lcd_putch('-');
//	}
//	else if(ch=='?')
//	{
//		  lcd_putch('x');
//	}
//	else if(ch=='@')
//	{
//		  lcd_putch('/');
//	}
//	else
//	lcd_putch(ch);
//}
//
//