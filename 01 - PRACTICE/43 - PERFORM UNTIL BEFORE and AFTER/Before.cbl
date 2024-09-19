      IDENTIFICATION DIVISION.
      PROGRAM-ID. Before.

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
      PERFORM ShowNumber WITH TEST BEFORE
      UNTIL Numbers = 10.
     *> DISPLAY Numbers.
      STOP RUN.

      ShowNumber.
     *> DISPLAY Numbers.
      ADD 1 TO Numbers.
      DISPLAY Numbers.

      END PROGRAM Before.