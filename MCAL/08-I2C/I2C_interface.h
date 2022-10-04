#ifndef I2C_INTERFACE_H
#define I2C_INTERFACE_H


/**********************************I2C_Master***********************************************/
#define READ_COMMAND    1
#define WRITE_COMMAND   0

void I2C_voidMaster_Init(void);
ERROR_enumSTATE I2C_enumTransmit_START_CONDITION(void);
ERROR_enumSTATE I2C_enumTransmit_REAPEATED_START_CONDITION(void);
void I2C_voidTransmit_STOP_CONDITION(void);

ERROR_enumSTATE I2C_enumMaster_Send_Data(u8 Copy_u8Data);
ERROR_enumSTATE I2C_enumMaster_Send_Address(u8 Copy_u8Slave_Address, u8 Copy_u8RW_Command);

ERROR_enumSTATE I2C_enumMaster_Receive_Data_With_ACK(u8 *Copy_u8ptrData);
ERROR_enumSTATE I2C_enumMaster_Receive_Data_Without_ACK(u8 *Copy_u8ptrData);

void I2C_voidMaster_Send_GENERAL_CALL_Address(void);
/*****************************************************************************************/

void I2C_voidSLAVE_Init(void);

ERROR_enumSTATE I2C_voidSLAVE_Listen(void);
ERROR_enumSTATE I2C_voidSLAVE_Send_Data(u8 Copy_u8Data);

ERROR_enumSTATE I2C_u8SLAVE_Receive_Data_With_ACK(u8 *Copy_u8ptrData);
ERROR_enumSTATE I2C_u8SLAVE_Receive_Data_Without_ACK(u8 *Copy_u8ptrData);


#endif
