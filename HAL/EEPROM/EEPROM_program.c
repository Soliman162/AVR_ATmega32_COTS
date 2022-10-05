#include "BIT_MATH.h"
#include "std_types.h"
#include "SERVICES.h"

#include "DIO_interface.h"
#include "I2C_interface.h"

#include "EEPROM_config.h"
#include "EEPROM_interface.h"
#include "EEPROM_private.h"

void EEROM_voidInit(void)
{
	/*Initialize I2C bus */
	I2C_voidMaster_Init();
	/*wait 100ms for EEPROM to get ready*/
	_delay_us(100000);
}
void EEPROM_voidSend_Data(u8 Copy_u8EEPROMAddress,u8 Copy_u8Data)
{
	/*Send start condition*/
	I2C_enumTransmit_START_CONDITION();
	/*Send EEPROM address with write command*/
	I2C_enumMaster_Send_Address(EEPROM_ADDRESS,WRITE_COMMAND);
	/*Send the remaining address to EEPROM*/
	I2C_enumMaster_Send_Data(Copy_u8EEPROMAddress);
	/*Send data to the EEPROM */
	I2C_enumMaster_Send_Data(Copy_u8Data);
	/*Send stop condition*/
	I2C_voidTransmit_STOP_CONDITION();
	/*Wait 100ms for EEPROM until it save the data */
	_delay_us(100000);
}
void EEPROM_voidRead_Data(u8 Copy_u8EEPROMAddress,u8 *Copy_u8Data)
{
	/*Send start condition*/
	I2C_enumTransmit_START_CONDITION();
	/*Send EEPROM address with write command*/
	I2C_enumMaster_Send_Address(EEPROM_ADDRESS,WRITE_COMMAND);
	/*Send the remaining address to EEPROM*/
	I2C_enumMaster_Send_Data(Copy_u8EEPROMAddress);
	/*send a repeated start*/
	I2C_enumTransmit_REAPEATED_START_CONDITION();
	/*Send EEPROM address with read command*/
	I2C_enumMaster_Send_Address(EEPROM_ADDRESS,READ_COMMAND);
	/*read the data from the EEPROM*/
	I2C_enumMaster_Receive_Data_Without_ACK( Copy_u8Data   );
	/*Send stop condition*/
	I2C_voidTransmit_STOP_CONDITION();
	_delay_us(100000);
}
