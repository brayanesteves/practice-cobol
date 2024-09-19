      IDENTIFICATION DIVISION.
      PROGRAM-ID. Increment.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION.
      77   Numbers PIC 9 VALUE ZERO.

      PROCEDURE DIVISION.

      Begin.
      PERFORM Operation 7 TIMES.
      STOP RUN.

      Operation.
      ADD 1 TO Numbers.
      DISPLAY Numbers.


      END PROGRAM Increment.