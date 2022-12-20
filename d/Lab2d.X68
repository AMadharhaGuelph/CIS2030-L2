*-----------------------------------------------------------
* Title      : Lab2d 
* Written by : Your name goes here
* Date       : dd/mm/yyyy
* Description: Examples of addition instructions
*-----------------------------------------------------------

* Put program instructions into memory here
    
        ORG     $8000
START   MOVE.B  ONE,D1         ;load byte at ONE into D1
        ADD.B   TWO,D1         ;add byte at TWO to D1
        ADD.B   #$10,D1        ;add 16 to byte in D1

        SIMHALT                ;halt simulator

* Put program variables and constants here

        ORG     $9000
ONE     DC.B    1               ;store 1 in memory
TWO     DC.B    2               ;store 2 in memory
  
        END     START          ;last line of source
