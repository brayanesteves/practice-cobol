       IDENTIFICATION DIVISION.
       PROGRAM-ID. CountNumberPerformTimes.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  NUM PIC 999.
       PROCEDURE DIVISION.

       BEGIN.
           PERFORM OPERATION 100 TIMES.
           STOP RUN.

       OPERATION.
           ADD 1 TO NUM.
           DISPLAY NUM.

       END PROGRAM CountNumberPerformTimes.