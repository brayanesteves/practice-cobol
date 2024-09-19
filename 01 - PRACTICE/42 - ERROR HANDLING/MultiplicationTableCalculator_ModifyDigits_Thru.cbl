      IDENTIFICATION DIVISION.
      PROGRAM-ID. MultiplicationTableCalculator.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION.
      77   Numbers PIC 999 VALUE ZEROS.
      77   Multiplier PIC 999 VALUE ZEROS.
      77   Result PIC 999999 VALUE ZEROS.
      77   Exits PIC XXXXX VALUE SPACES.

      PROCEDURE DIVISION.

      Begin.
      DISPLAY "To exit enter 'exit' in the console.".
      DISPLAY "To multiply press ENTER.".
      ACCEPT Exits.
      IF Exits = "exit" OR "EXIT"
           PERFORM Finish
      ELSE
           PERFORM RestartProgram THRU ShowTable.

      Finish.
      STOP RUN.

      RestartProgram.
      MOVE 0 TO Multiplier.

      EnterNumber.
      DISPLAY "Enter a number:".
      ACCEPT Numbers.
      IF Numbers IS ZEROS THEN
           DISPLAY "Enter a number or value greater than 0.".
           PERFORM Begin.
      END-IF.

      ShowTable.
      DISPLAY "THE TABLE OF " Numbers ":".
      PERFORM Calculations 100 TIMES.
      PERFORM Begin.

      Calculations.
      ADD1 TO Multiplier.
      COMPUTE Result = Numbers * Multiplier.
      DISPLAY Numbers " * " Multiplier " = " Result.

      END PROGRAM MultiplicationTableCalculator.