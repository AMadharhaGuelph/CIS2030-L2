*-----------------------------------------------------------
* Title      : Lab2g 
* Written by : Your name goes here
* Date       : dd/mm/yyyy
* Description: Division, sign-extension, and swapping
*-----------------------------------------------------------

* Put program instructions into memory here
    
        ORG     $8000
START   MOVE.B  DIVIDEND,D0    ;load byte at DIVIDEND into D0
        EXT.L   D0             ;sign extend word to longword
        DIVS    #15,D0         ;divide longword by 15  
        CLR.L   D1             ;clear D1
        MOVE.W  D0,D1          ;move quotient to D1
        CLR.L   D2             ;clear D2
        SWAP    D0             ;swap quotient and remainder
        MOVE.W  D0,D2          ;move result to D2
        SIMHALT                ;halt simulator

* Put program variables and constants here

          ORG     $9000
DIVIDEND  DC.B    -100           ;store -100 in memory
          END     START          ;last line of source
