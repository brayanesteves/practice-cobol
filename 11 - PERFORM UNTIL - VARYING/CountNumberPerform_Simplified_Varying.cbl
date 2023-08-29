       IDENTIFICATION DIVISION.
       PROGRAM-ID. CountNumberPerformSimplifiedVarying.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  NUM PIC 999.
       PROCEDURE DIVISION.
       BEGIN.
           PERFORM VARYING NUM FROM 1 BY 1 UNTIL NUM > 100
           DISPLAY NUM
           END-PERFORM
           STOP RUN.

       END PROGRAM CountNumberPerformSimplifiedVarying.