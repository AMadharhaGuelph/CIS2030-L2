*-----------------------------------------------------------
* Title      : Lab2h 
* Written by : Your name goes here
* Date       : dd/mm/yyyy
* Description: multiplying signed and unsigned words
*-----------------------------------------------------------

* Put program instructions into memory here
    
        ORG     $8000
START   MOVE.W  WORD,D0       ;load word at WORD1 into D0
        MULS    WORD,D0       ;word x word to D0
        MOVE.W  WORD,D1       ;load word at WORD into D1
        MULU    WORD,D1       ;word x word to D1        
        SIMHALT                ;halt simulator

* Put program variables and constants here

        ORG     $9000
WORD    DC.W    -1             ;store -1 in memory
        END     START          ;last line of source
