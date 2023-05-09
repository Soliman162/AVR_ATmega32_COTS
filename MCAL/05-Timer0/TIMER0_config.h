#ifndef TIMER0_CONFIG_H
#define TIMER0_CONFIG_H

/**
 * Options:-
 * 
 *      NORMAL              
 *      CTC                 
 *      FAST_PWM            
 *      PHASE_CORRECT_PWM   
 */
#define TIMER0_MODE     FAST_PWM

/**
 * 
 * Options:-
 * 
 *      DISCONNECTED    
 *      CLEAR_ON_COMPARE       //non Inverted PWM
 *      SET_ON_COMPARE         //Inverted PWM
 * 
 */
#define OC0_MODE    CLEAR_ON_COMPARE

/**
 * OPtions:-
 * 
 *       TIMER0_NO_PRESCALLER  
 *       TIMER0_PRESCALLER_8   
 *       TIMER0_PRESCALLER_64  
 *       TIMER0_PRESCALLER_256 
 *       TIMER0_PRESCALLER_1024
 */
#define PRESCALLER_VALUE    TIMER0_PRESCALLER_8


#endif