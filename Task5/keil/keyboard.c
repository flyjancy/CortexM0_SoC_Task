#include "code_def.h"
#include <stdint.h>

uint32_t key_flag;

void KEY_ISR(void)
{
	key_flag = 1;
}

