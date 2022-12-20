*-----------------------------------------------------------
* Title      : Lab2c 
* Written by : Your name goes here
* Date       : dd/mm/yyyy
* Description: Example of MOVE instruction involving memory
*-----------------------------------------------------------

* Put program instructions into memory here
    
        ORG     $8000
START   MOVE.L  NUM,D1         ;load longword into D1
        MOVE.B  D1,D2          ;copy from D1 to D2
        MOVE.W  D1,D3          ;copy from D1 to D3
        MOVE.L  D1,D4          ;copy from D1 to D4
        MOVE    D1,D5          ;copy from D1 to D5 

        SIMHALT                ;halt simulator

* Put program variables and constants here

        ORG     $9000
NUM     DC.L    305419896      ;store 305419896 in memory
        END     START          ;last line of source
