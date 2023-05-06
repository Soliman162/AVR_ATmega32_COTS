#include "std_types.h"
#include "BIT_MATH.h"

#include "UART_interface.h"
#include "UART_private.h"

u8 string[20];

void UART_voidInit(void)
{
    UCSRA = 0b00000000;
	UCSRB = 0b00011000;
	UCSRC = 0b10000110;

    // buad rate 9600 -> 51  115200 -> 3
	UBRRL = 51;
	UBRRH = 0;
}
u8 UART_u8Receive_Char(void)
{
    while(GETBIT(UCSRA,7) != 1);
    return UDR;
}
void UART_voidTransmit_Char(u8 Copy_u8Data)
{
    UDR = Copy_u8Data;
    while(GETBIT(UCSRA,6) != 1 );
    while(GETBIT(UCSRA,5) != 1 );
}

u8 * UART_u8ptrReceive_String(void)
{
    u8 Received_Data = 0;
    u8 Iterator = 0;
    while( Received_Data = UART_u8Receive_Char() != 13 )
    {
        string[Iterator++] = Received_Data;
    }
    return string;
}
void UART_voidTransmit_String(u8 *Copy_u8Data)
{
    u8 Iterator = 0;
    while( Copy_u8Data[Iterator] != '\0' )
    {
        UART_voidTransmit_Char(Copy_u8Data[Iterator++]);
    }
}

void UART_voidTransmit_Float_Number(f64 Copy_Number)
{
    u64 Real_number = (u64)Copy_Number;
    u64 Friction = (u64)((Copy_Number - (f64)Real_number)*100);

    u8 Number_real_digit = 0;
    u8 Number_friction_digit = 0;

    for(Number_real_digit=0; Real_number != 0;Number_real_digit++)
    {
        Real_number/=10;
    }
    for(Number_friction_digit=0; Friction != 0;Number_friction_digit++)
    {
        Friction/=10;
    }

    u8 Real_number_String[Number_real_digit];
    u8 Friction_String[Number_friction_digit];

    Real_number = (u64)Copy_Number;
    Friction = (u64)((Copy_Number - (f64)Real_number)*100);

    for(u8 i=Number_real_digit-1;i>=0;i--)
    {
        Real_number_String[i] = (Real_number%10) + '0' ;
        Real_number /=10;
    }

    for(u8 i=Number_friction_digit-1;i>=0;i--)
    {
        Friction_String[i] = (Friction%10) +'0' ;
        Friction /=10;
    }

    for(u8 i=0;i<=Number_real_digit;i++)
    {
        UART_voidTransmit_Char(Real_number_String[i]);
    }

    UART_voidTransmit_Char('.');

    for( u8 i=0;i<=Number_friction_digit;i++ )
    {
        UART_voidTransmit_Char(Friction_String[i]);
    }


}
