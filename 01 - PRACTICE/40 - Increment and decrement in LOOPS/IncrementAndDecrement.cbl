      IDENTIFICATION DIVISION.
      PROGRAM-ID. IncrementAndDecrement.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION.
      77   Numbers PIC 9 VALUE ZERO.
      77   Numbers2 PIC 9 VALUE ZERO.

      PROCEDURE DIVISION.

      Begin.
      PERFORM 7 TIMES
      ADD 1 TO Numbers
      DISPLAY Numbers
      END-PERFORM.

      PERFORM 7 TIMES
      ADD 10 TO Numbers
      DISPLAY Numbers
      END-PERFORM.

      STOP RUN.

      END PROGRAM IncrementAndDecrement.