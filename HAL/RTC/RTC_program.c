#include "BIT_MATH.h"
#include "std_types.h"

#include "DIO_interface.h"
#include "I2C_interface.h"

#include "RTC_interface.h"
#include "RTC_private.h"
#include "RTC_config.h"

void RTC_voidInit(void)
{
	I2C_voidMaster_Init();
	I2C_enumTransmit_START_CONDITION();
	I2C_enumMaster_Send_Address(RTC_ADDRESS ,WRITE_COMMAND );
	I2C_enumMaster_Send_Data(0x07);
	I2C_enumMaster_Send_Data(0x00);
	I2C_voidTransmit_STOP_CONDITION();
}
void RTC_voidSet_Time(u8 Copy_u8Hour , u8 Copy_u8Minute , u8 Copy_u8Seconds)
{
	I2C_enumTransmit_START_CONDITION();
	I2C_enumMaster_Send_Address(RTC_ADDRESS ,WRITE_COMMAND );
	I2C_enumMaster_Send_Data(0x00);
	I2C_enumMaster_Send_Data(Copy_u8Seconds);
	I2C_enumMaster_Send_Data(Copy_u8Minute);
	I2C_enumMaster_Send_Data(Copy_u8Hour);
	I2C_voidTransmit_STOP_CONDITION();
}
void RTC_voidGet_Time(u8 *Copy_u8Hour , u8 *Copy_u8Minute , u8 *Copy_u8Seconds)
{
	I2C_enumTransmit_START_CONDITION();
	I2C_enumMaster_Send_Address(RTC_ADDRESS ,WRITE_COMMAND );
	I2C_enumMaster_Send_Data(0x00);

	I2C_enumTransmit_REAPEATED_START_CONDITION();

	I2C_enumMaster_Send_Address(RTC_ADDRESS ,READ_COMMAND );
	I2C_enumMaster_Receive_Data_With_ACK(Copy_u8Hour );
	I2C_enumMaster_Receive_Data_With_ACK(Copy_u8Minute );
	I2C_enumMaster_Receive_Data_Without_ACK(Copy_u8Seconds );
	I2C_voidTransmit_STOP_CONDITION();
}
void RTC_voidSet_Date(u8 Copy_u8Year, u8 Copy_u8Month, u8 Copy_u8Day)
{
	I2C_enumTransmit_START_CONDITION();
	I2C_enumMaster_Send_Address(RTC_ADDRESS ,WRITE_COMMAND );
	I2C_enumMaster_Send_Data(0x04);

	I2C_enumMaster_Send_Data(Copy_u8Day);
	I2C_enumMaster_Send_Data(Copy_u8Month);
	I2C_enumMaster_Send_Data(Copy_u8Year);

	I2C_voidTransmit_STOP_CONDITION();
}
void RTC_voidGet_Date(u8 *Copy_u8Year, u8 *Copy_u8Month, u8 *Copy_u8Day)
{
	I2C_enumTransmit_START_CONDITION();
	I2C_enumMaster_Send_Address(RTC_ADDRESS ,WRITE_COMMAND );
	I2C_enumMaster_Send_Data(0x04);

	I2C_enumTransmit_REAPEATED_START_CONDITION();

	I2C_enumMaster_Send_Address(RTC_ADDRESS ,READ_COMMAND );
	I2C_enumMaster_Receive_Data_With_ACK(Copy_u8Day);
	I2C_enumMaster_Receive_Data_With_ACK(Copy_u8Month);
	I2C_enumMaster_Receive_Data_Without_ACK(Copy_u8Year );

	I2C_voidTransmit_STOP_CONDITION();
}
