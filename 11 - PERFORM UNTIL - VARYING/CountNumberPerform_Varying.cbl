       IDENTIFICATION DIVISION.
       PROGRAM-ID. CountNumberPerformVarying.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  NUM PIC 999.
       PROCEDURE DIVISION.

       CONDITIONS.
           PERFORM BEGIN VARYING NUM FROM 1 BY 1 UNTIL NUM > 100.
           STOP RUN.

       BEGIN.
           DISPLAY NUM.

       END PROGRAM CountNumberPerformVarying.