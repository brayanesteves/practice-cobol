       IDENTIFICATION DIVISION.
       PROGRAM-ID. LevelNumbersOfVariablesConditional.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  AGE PIC 999.
           88 YOUNG VALUE 1 THRU 40.
           88 MATURE VALUE 41 THRU 65.
           88 OLD VALUE 66 THRU 100.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Enter you age:"
           ACCEPT AGE.
           IF YOUNG
               DISPLAY "You're young.".
           IF MATURE
               DISPLAY "You're mature.".
           IF OLD
               DISPLAY "You are old.".
            STOP RUN.
       END PROGRAM LevelNumbersOfVariablesConditional.