

#ifndef SSD_INTERFACE_H
#define SSD_INTERFACE_H


#define COMMON_CATHOD 0
#define COMMON_ANODE  1


typedef struct{

	u8 ssd_type;
	u8 SSD_data_port;
	u8 SSD_enable_port;
	u8 SSD_enable_pin;
}SSD_config;

void SSD_voidDisable(SSD_config new_SSD);
void SSD_voidEnable (SSD_config new_SSD);
void SSD_voidWriteNumber (SSD_config new_SSD,u8 Copy_u8Number);

#endif /* HAL_03_7_SEGMENT_7_SEGMENT_INTERFACE_H_ */
