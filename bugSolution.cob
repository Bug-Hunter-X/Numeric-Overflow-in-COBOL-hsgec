01  WS-AREA. 
05  WS-NUMBER PIC 9(5) VALUE 99999. 
05  WS-NUMBER2 PIC 9(5). 
05  WS-OVERFLOW PIC 9 VALUE 0. 

PROCEDURE DIVISION. 
    ADD 1 TO WS-NUMBER ON SIZE ERROR MOVE 1 TO WS-OVERFLOW. 
    IF WS-OVERFLOW = 1 THEN 
        DISPLAY "Overflow occurred!" 
    ELSE 
        MOVE WS-NUMBER TO WS-NUMBER2 
        DISPLAY "WS-NUMBER: " WS-NUMBER 
                 "WS-NUMBER2: " WS-NUMBER2 
    END-IF. 
    STOP RUN.