#include "std_types.h"
#include  <util/delay.h>

#include "DIO_interface.h"

#include "UART_interface.h"
#include "L298_interface.h"
#include "HC05_interface.h"

#include "LED_interface.h"


/*
void ISR(void)
{
    u8 counter = 0;

    while (counter<=4)
    {
        LED_voidON(&LED_1);
        LED_voidON( &LED_2);
        LED_voidON( &LED_3);
        _delay_ms(500);

        LED_voidOFF(&LED_1);
        LED_voidOFF( &LED_2);
        LED_voidOFF( &LED_3);
        _delay_ms(500);

        counter++
    }
    

}

*/
int main(void)
{
    LED_config LED_1 = {PORTC,PIN0,STATE_HIGH}; 
    LED_config LED_2 = {PORTC,PIN1,STATE_HIGH};
    LED_config LED_3 = {PORTC,PIN2,STATE_HIGH};

    LED_voidInit(&LED_1);
    LED_voidInit(&LED_2);
    LED_voidInit(&LED_3);

    while(1)
    {
        LED_voidON(&LED_1);
        LED_voidOFF( &LED_2);
        LED_voidOFF( &LED_3);
        _delay_ms(500);

        LED_voidOFF(&LED_1);
        LED_voidON( &LED_2);
        LED_voidOFF( &LED_3);
        _delay_ms(500);

        LED_voidOFF(&LED_1);
        LED_voidOFF( &LED_2);
        LED_voidON( &LED_3);
        _delay_ms(500);

    }

    return 0;
}
