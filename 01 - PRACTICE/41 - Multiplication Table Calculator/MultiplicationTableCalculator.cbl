      IDENTIFICATION DIVISION.
      PROGRAM-ID. MultiplicationTableCalculator.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION.
      77   Numbers PIC 99 VALUE ZEROS.
      77   Multiplier PIC 999 VALUE ZEROS.
      77   Result PIC 9999 VALUE ZEROS.
      77   Exits PIC XXXXX VALUE SPACES.

      PROCEDURE DIVISION.

      Begin.
      DISPLAY "To exit enter 'exit' in the console.".
      DISPLAY "To multiply press ENTER.".
      ACCEPT Exits.
      IF Exits = "exit" OR "EXIT"
           PERFORM Finish
      ELSE
           PERFORM RestartProgram.
           PERFORM EnterNumber.
           PERFORM ShowTable.

      Finish.
      STOP RUN.

      RestartProgram.
      MOVE 0 TO Multiplier.

      EnterNumber.
      DISPLAY "Enter a number:".
      ACCEPT Numbers.

      ShowTable.
      DISPLAY "THE TABLE OF " Numbers ":".
      PERFORM Calculations 10 TIMES.
      PERFORM Begin.

      Calculations.
      ADD1 TO Multiplier.
      COMPUTE Result = Numbers * Multiplier.
      DISPLAY Numbers " * " Multiplier " = " Result.

      END PROGRAM MultiplicationTableCalculator.