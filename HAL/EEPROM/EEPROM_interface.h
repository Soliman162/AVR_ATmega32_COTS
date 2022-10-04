/*
 * EEROM_interface.h
 *
 *  Created on: Nov 14, 2021
 *      Author: DELL
 */

#ifndef HAL_09_EEPROM_EEPROM_INTERFACE_H_
#define HAL_09_EEPROM_EEPROM_INTERFACE_H_

void EEROM_voidInit(void);
void EEPROM_voidSend_Data(u8 Copy_u8EEPROMAddress,u8 Copy_u8Data);
void EEPROM_voidRead_Data(u8 Copy_u8EEPROMAddress,u8 *Copy_u8Data);

#endif /* HAL_09_EEPROM_EEPROM_INTERFACE_H_ */
