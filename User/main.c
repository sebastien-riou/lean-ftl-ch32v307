/********************************** (C) COPYRIGHT *******************************
* File Name          : main.c
* Author             : WCH
* Version            : V1.0.0
* Date               : 2021/06/06
* Description        : Main program body.
*********************************************************************************
* Copyright (c) 2021 Nanjing Qinheng Microelectronics Co., Ltd.
* Attention: This software (modified or not) and binary are used for 
* microcontroller manufactured by Nanjing Qinheng Microelectronics.
*******************************************************************************/

/*
 *@Note
 USART Print debugging routine:
 USART1_Tx(PA9).
 This example demonstrates using USART1(PA9) as a print debug port output.

*/

#include "debug.h"


/* Global typedef */

/* Global define */

/* Global Variable */
#include "lean-ftl-test.h"

#include <stdbool.h>
#include <string.h>
void led1(bool on){
  if(on) printf("led1 ON\r\n");
  else printf("led1 OFF\r\n");
}

bool button(){
  return 0;
}

void delay_ms(unsigned int ms){
  Delay_Ms(ms);
}

/*********************************************************************
 * @fn      main
 *
 * @brief   Main program.
 *
 * @return  none
 */
int main(void)
{
  NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);
  SystemCoreClockUpdate();
  Delay_Init();
  USART_Printf_Init(115200);	
  printf("SystemClk:%d\r\n",SystemCoreClock);
  printf( "ChipID:%08x\r\n", DBGMCU_GetCHIPID() );
  printf("Lean-FTL test on CH32V307\r\n");
  test_callbacks();
  test_main();
  printf("done\r\n");
  while(1);
}
