       IDENTIFICATION DIVISION.
       PROGRAM-ID. CountNumberPerformUntil.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  NUM PIC 999.
       PROCEDURE DIVISION.

       BEGIN.
           PERFORM OPERATION UNTIL NUM = 100.
           STOP RUN.

       OPERATION.
           ADD 1 TO NUM.
           DISPLAY NUM.

       END PROGRAM CountNumberPerformUntil.