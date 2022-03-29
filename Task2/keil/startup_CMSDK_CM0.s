                PRESERVE8
                THUMB

                AREA    RESET, DATA, READONLY
                EXPORT  __Vectors

__Vectors       DCD     0x20000000                ; Top of Stack
                DCD     Reset_Handler             ; Reset Handler
                DCD     0			              ; NMI Handler
                DCD     0				          ; Hard Fault Handler
                DCD     0                         ; Reserved
                DCD     0                         ; Reserved
                DCD     0                         ; Reserved
                DCD     0                         ; Reserved
                DCD     0                         ; Reserved
                DCD     0                         ; Reserved
                DCD     0                         ; Reserved
                DCD     0			              ; SVCall Handler
                DCD     0                         ; Reserved
                DCD     0                         ; Reserved
                DCD     0            			  ; PendSV Handler
                DCD     0          				  ; SysTick Handler
                DCD     0                         ; IRQ0 Handler

                AREA    |.text|, CODE, READONLY


; Reset Handler

Reset_Handler   PROC
                GLOBAL  Reset_Handler
				ENTRY
                B	start
				ENDP


;Inset a loop algorithm there;
            AREA template, CODE, READONLY
start       PROC
            MOVS    R1,             #4
Clear       MOVS    R0,             #0
Adder       ADDS    R0,     R0,     #1
            CMP     R0,     R1
            BEQ     Clear
            BNE     Adder

            ENDP
;****************************;

            END