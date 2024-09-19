      IDENTIFICATION DIVISION.
      PROGRAM-ID. MultiplicationTableCalculator.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION.
      77   Numbers PIC 99 VALUE ZEROS.

      PROCEDURE DIVISION.

      GetNumber.
      DISPLAY "Enter number:"
      ACCEPT Numbers.
      PERFORM ShowNumber WITH TEST AFTER
     *> UNTIL Numbers = 10.
      UNTIL Numbers > 10.
      STOP RUN.

      ShowNumber.
      DISPLAY Numbers.
      ADD 1 TO Numbers.
     *> DISPLAY Numbers.

      END PROGRAM MultiplicationTableCalculator.