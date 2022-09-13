#include "std_types.h"
#include "BIT_MATH.h"

#include "DIO_interface.h"
#include "SSD_interface.h"

const u8 SSD_u8Numbers[10] = {0b00111111,0b00000110,0b01011011,0b01001111,0b01100110,0b01101101,0b01111101,0b00000111,0b01111111,0b01101111};

void SSD_voidEnable (SSD_config new_SSD){

	if(new_SSD.ssd_type==COMMON_ANODE){

		SetPin_enumDirection (new_SSD.SSD_enable_port ,new_SSD.SSD_enable_pin , DIO_OUTPUT);
		SetPin_enumValue     (new_SSD.SSD_enable_port ,new_SSD.SSD_enable_pin , DIO_HIGH  );

	}else if(new_SSD.ssd_type==COMMON_CATHOD){

		SetPin_enumDirection (new_SSD.SSD_enable_port ,new_SSD.SSD_enable_pin , DIO_OUTPUT);
		SetPin_enumValue     (new_SSD.SSD_enable_port ,new_SSD.SSD_enable_pin , DIO_LOW   );
	}
}

void SSD_voidDisable (SSD_config new_SSD){

	if(new_SSD.ssd_type==COMMON_ANODE){

			SetPin_enumDirection (new_SSD.SSD_enable_port ,new_SSD.SSD_enable_pin , DIO_OUTPUT);
			SetPin_enumValue     (new_SSD.SSD_enable_port ,new_SSD.SSD_enable_pin , DIO_LOW  );

		}else if(new_SSD.ssd_type==COMMON_CATHOD){

			SetPin_enumDirection (new_SSD.SSD_enable_port ,new_SSD.SSD_enable_pin , DIO_OUTPUT);
			SetPin_enumValue     (new_SSD.SSD_enable_port ,new_SSD.SSD_enable_pin , DIO_HIGH   );
		}

}

void SSD_voidWriteNumber (SSD_config new_SSD,u8 Copy_u8Number){

	SetPort_enumDirection (new_SSD.SSD_data_port , 255);

	if(new_SSD.ssd_type==COMMON_ANODE)      {SetPort_enumValue (new_SSD.SSD_data_port , ~(SSD_u8Numbers[Copy_u8Number]) );}

	else if(new_SSD.ssd_type==COMMON_CATHOD){SetPort_enumValue (new_SSD.SSD_data_port ,   SSD_u8Numbers[Copy_u8Number]  );}

}

