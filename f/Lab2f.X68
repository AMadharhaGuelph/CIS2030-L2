*-----------------------------------------------------------
* Title      : Lab2f 
* Written by : Your name goes here
* Date       : dd/mm/yyyy
* Description: Adding numbers with different data sizes
*-----------------------------------------------------------

* Put program instructions into memory here
    
        ORG     $8000
START   MOVE.B  BYTE,D0        ;load byte at BYTE into D0
        EXT.W   D0             ;sign extend byte to word
        ADD.W   D0,WORD        ;add words and store sum at WORD
        SIMHALT                ;halt simulator

* Put program variables and constants here

        ORG     $9000
BYTE    DC.B    -1             ;store -1 in memory
WORD    DC.W    13             ;store 13 in memory
        END     START          ;last line of source
