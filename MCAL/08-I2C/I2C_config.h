#ifndef I2C_CONFIG_H
#define I2C_CONFIG_H

/*
    options:-
       DIVEDBY_1  
       DIVEDBY_4  
       DIVEDBY_16 
       DIVEDBY_64  
*/
#define PRESCALLER  DIVEDBY_1


#define SLAVE_ADDRESS   0b01010101

/*
 	 options:-
		 * ENABLE
		 * DISABLE
  */
#define	GENERAL_CALL		ENABLE

#endif
