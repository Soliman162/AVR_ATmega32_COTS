#include "std_types.h"
#include "BIT_MATH.h"
#include "SERVICES_interface.h"

#include "DIO_interface.h"

#include "LED_interface.h"


int main(void)
{
/************************Init the system*********************/
    Init_voidSystem();
/***********************************************************/

    LED_config LED_1 = {PORTA,PIN0,STATE_HIGH};

    LED_voidInit(&LED_1);
    Timer0_voidInit();

    while(1)
    {
        LED_voidON(&LED_1);
        _delay_u32_us(1000000);
        LED_voidOFF(&LED_1);
        _delay_u32_us(1000000);
    }

    return 0;
}
