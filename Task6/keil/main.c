#include <stdint.h>
#include <stdio.h>
#include "code_def.h"

int main()
{
	uint16_t x, y;
	uint8_t dx, dy;
	SYSInit();
    LCD->LCD_RST = 0;
	delay(5000000);
	LCD->LCD_RST = 1;
	x  = y  = 0;
	dx = dy = 20;
	LCD_Init();
	while (1) {
		x = 0; y = 0;
		for (x = 0; x < 240; x += dx) {
			for (y = 0; y < 320; y += dy) {
				LCD_Fill(x, y, x + dx, y + dy, RED);
				delay(50000000);
				LCD_Clear(WHITE);
			}
		}
	}
}
