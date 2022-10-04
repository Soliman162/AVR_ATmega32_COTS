#ifndef RTC_INTERFACE_H
#define RTC_INTERFACE_H

void RTC_voidInit(void);
void RTC_voidSet_Time(u8 Copy_u8Hour , u8 Copy_u8Minute , u8 Copy_u8Seconds);
void RTC_voidGet_Time(u8 *Copy_u8Hour , u8 *Copy_u8Minute , u8 *Copy_u8Seconds);
void RTC_voidSet_Date(u8 Copy_u8Year, u8 Copy_u8Month, u8 Copy_u8Day);
void RTC_voidGet_Date(u8 *Copy_u8Year, u8 *Copy_u8Month, u8 *Copy_u8Day);



#endif
