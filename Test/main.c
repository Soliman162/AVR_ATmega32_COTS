#include "std_types.h"
#include "BIT_MATH.h"
#include "SERVICES_interface.h"

#include "DIO_interface.h"
#include "EXINT_interface.h"

#include "LED_interface.h"

LED_config LED_1 = {PORTA,PIN0,STATE_HIGH};


void EXINT0_ISR(void)
{
    LED_voidTOG(&LED_1);
}

int main(void)
{
/************************Init the system*********************/
    Init_voidSystem();
/***********************************************************/
    LED_voidInit(&LED_1);
    /*Init switch  */
    SetPin_enumDirection(PORTD,PIN2,DIO_INPUT);
    /*enable pull up */
    SetPin_enumValue(PORTD,PIN2,DIO_HIGH);

    EXINT_voidInit();

    EXINT_voidSet_Call_Back(EXTINT_0,EXINT0_ISR);

    while(1)
    {

    }

    return 0;
}
