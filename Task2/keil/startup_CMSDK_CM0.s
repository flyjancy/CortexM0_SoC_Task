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
                LDR R2, =0x40000000               ;WaterLight mode reg addr
                ADDS R3, R2, #4                   ;WaterLight speed reg addr
                LDR R6, =0x017d7840               ;WaterLight speed value
                STR R6, [R3]                      ;Set WaterLight speed

WaterLight      MOVS R0, #1                       ;WaterLight mode initial
                MOVS R1, #1                       ;Interval cnt initial
                BL delay
                STR R0, [R2]                      ;Set WaterLight mode
                MOVS R0, #2                       ;WaterLight mode initial
                MOVS R1, #1                       ;Interval cnt initial
                BL delay
                STR R0, [R2]                      ;Set WaterLight mode
                MOVS R0, #3                       ;WaterLight mode initial
                MOVS R1, #1                       ;Interval cnt initial
                BL delay
                STR R0, [R2]                      ;Set WaterLight mode
                B WaterLight

; Finish function delay 

;;;;;;;;;;;;;;;;;;;;;;

                ENDP
                    
                END
