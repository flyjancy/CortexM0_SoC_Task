#include "code_def.h"
#include <string.h>
#include <stdint.h>

#define WaterLight_SPEED_VALUE 0x00c9d2ff
#define WaterLight_INTERVAL_VALUE 0x05f5e100

int main()
{ 
	//interrupt initial
	NVIC_CTRL_ADDR = 1;

	//UART display
	UARTString("Cortex-M0 Start up!\n");
	
	//WATERLIGHT
	int waterlight_mode = 1;
	SetWaterLightSpeed(WaterLight_SPEED_VALUE);
	UARTString("WaterLight speed setting to default!\n");
	while(1)
	{
		SetWaterLightMode(waterlight_mode);
		if(waterlight_mode == 1) UARTString("WaterLight mode setting to left mode!\n");
		else if (waterlight_mode == 2) UARTString("WaterLight mode setting to right mode!\n");
		else if (waterlight_mode == 3) UARTString("WaterLight mode setting to flash mode!\n");
		else UARTString("WaterLight mode setting to die!\n");
		Delay(WaterLight_INTERVAL_VALUE);
		if(waterlight_mode == 3) waterlight_mode = 1;
		else waterlight_mode = waterlight_mode+1;
	}

}

