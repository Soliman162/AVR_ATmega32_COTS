/* COTS headers */
#include "std_types.h"
#include "BIT_MATH.h"

#include "SERVICES.h"

#include "DIO_interface.h"
#include "TIMER0_interface.h"
#include "TIMER1_interface.h"
#include "TIMER2_interface.h"
#include "TIMER1_private.h"

#include "CLCD_interface.h"
#include "stepper_interface.h"

volatile u8 flag=0;
volatile u32 Counter = 0;
volatile u64 Snap[3] = {1,2,3};

void TIMER1_ICU_ISR(void)
{
	if( flag==0 )
	{
		Snap[0] = ICR1L_REG;
		Counter=0;
		Timer1_voidICU_EdgeSelector(ICU_FALLING_EDGE);
	}
	else if ( flag==1 )
	{
		Snap[1] = Counter*TIMER1_OVER_FLOW_VALUE +ICR1L_REG;
		Timer1_voidICU_EdgeSelector(ICU_RISING_EDGE);
	}
	else if( flag==2 )
	{
		Snap[2] = Counter*TIMER1_OVER_FLOW_VALUE +ICR1L_REG;
		Timer1_voidDisableInterrupt(TIMER1_ICU);
		Timer1_voidDisableInterrupt(TIMER1_OVF);
	}
	flag++;
}

void TIMER1_OVF_ISR(void)
{
	Counter++;
}
/*-----------------------------------------------------------*/
int main(void)
{
	volatile u32 Freq = 0;
	volatile u32 Duty_Cycle = 0;
	volatile u64 T_u64total = 0;
	volatile u64 T_u64on = 0;

	// pwm direction 
	SetPin_enumDirection(PORTB,PIN3,DIO_OUTPUT);
	// ICU pin
	SetPin_enumDirection(PORTD,PIN6,DIO_INPUT);
	
	Init_voidSystem();
	TIMER2_voidInit();
	
	Timer0_voidSet_Duty_Cycle(50);
	Timer0_voidInit();

	Timer1_voidICU_EdgeSelector(ICU_RISING_EDGE);
	Timer1_voidEnableInterrupt(TIMER1_ICU,TIMER1_ICU_ISR);
	Timer1_voidEnableInterrupt(TIMER1_OVF,TIMER1_OVF_ISR);
	Timer1_voidInit_OVF();

	CLCD_voidInit();
	Clear_voidCLCD();

	while(1)
	{
		if( flag==3 )
		{
			flag=0;

			T_u64total = Snap[2] - Snap[0];
			T_u64on = Snap[1]-Snap[0];

			Freq = (u32)8000000/T_u64total;
			Duty_Cycle = (T_u64on/T_u64total)*100;

			Clear_voidCLCD();
			CLCD_voidSetPosition(CLCD_ROW_1,CLCD_COL_1);
			CLCD_void_Send_Number(Freq);
			CLCD_voidSend_String((u8 *)"HZ");

			CLCD_voidSetPosition(CLCD_ROW_2,CLCD_COL_1);
			CLCD_void_Send_Number(Duty_Cycle);
			CLCD_voidSend_String((u8 *)"-/-");

			TIMER1_voidCLRFlag(TIMER1_ICU);
			TIMER1_voidCLRFlag(TIMER1_OVF);
			Timer1_voidEnableInterrupt(TIMER1_ICU,TIMER1_ICU_ISR);
			Timer1_voidEnableInterrupt(TIMER1_OVF,TIMER1_OVF_ISR);
		}
	}
	return 0;
}
