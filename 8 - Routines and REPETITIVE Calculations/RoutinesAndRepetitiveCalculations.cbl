       IDENTIFICATION DIVISION.
       PROGRAM-ID. RoutinesAndRepetitiveCalculations.
       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.
       01  NUM PIC 99.
       01  MULTIPLIER PIC 999.
       01  RESULT PIC 9999.
       01  OUTPUTS PIC XXXXX..

       PROCEDURE DIVISION.

           BEGIN.
           DISPLAY "To exit, enter 'exit' in the console.".
           DISPLAY "To multiply, press 'enter'.".
           ACCEPT OUTPUTS.
           IF OUTPUTS = "exit"
               GO TO FINISH
           ELSE
           PERFORM RESET-PROGRAM.
           PERFORM ENTER-NUMBER.
           PERFORM SHOW-TABLE.

           FINISH.
            STOP RUN.
           
           RESET-PROGRAM.
               MOVE 0 TO MULTIPLIER.

           ENTER-NUMBER.
           DISPLAY "ENTER A NUMBER.".
               ACCEPT NUM.

           SHOW-TABLE.
               DISPLAY "THE TABLE OF " NUM ":".
               PERFORM CALCULATE.
           
           CALCULATE.
               ADD 1 TO MULTIPLIER.
               COMPUTE RESULT = NUM * MULTIPLIER.
               DISPLAY NUM " * " MULTIPLIER " = " RESULT.
            IF MULTIPLIER < 10
               GO TO CALCULATE.
           PERFORM BEGIN.

       END PROGRAM RoutinesAndRepetitiveCalculations.