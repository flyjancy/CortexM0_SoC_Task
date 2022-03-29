				PRESERVE8
                THUMB

                AREA    RESET, DATA, READONLY
                EXPORT  __Vectors

__Vectors       DCD     0x20000000                ; Top of Stack
                DCD     Reset_Handler             ; Reset Handler
                DCD     0                         ; NMI Handler
                DCD     0                         ; Hard Fault Handler
                DCD     0                         ; Reserved
                DCD     0                         ; Reserved
                DCD     0                         ; Reserved
                DCD     0                         ; Reserved
                DCD     0                         ; Reserved
                DCD     0                         ; Reserved
                DCD     0                         ; Reserved
                DCD     0                         ; SVCall Handler
                DCD     0                         ; Reserved
                DCD     0                         ; Reserved
                DCD     0                         ; PendSV Handler
                DCD     0                         ; SysTick Handler
                DCD     0                         ; IRQ0 Handler

                AREA    |.text|, CODE, READONLY

; Reset Handler

Reset_Handler   PROC
                GLOBAL  Reset_Handler
                ENTRY
                LDR R2, =0x40000010               ;WaveformGenerator

WaveformGe      MOVS R0, #1                       
                MOVS R1, #1                       
                BL delay
                STR R0, [R2]                      ;Set 1
                MOVS R0, #0                       
                MOVS R1, #1                       
                BL delay
                STR R0, [R2]                      ;Set 0
                B WaveformGe

; Finish function delay 
delay 			ADDS R1, R1, #1
				LDR R4, =0X10
				CMP R4, R1
				BNE delay
				BX LR
;;;;;;;;;;;;;;;;;;;;;;

                ENDP
                    
                END
