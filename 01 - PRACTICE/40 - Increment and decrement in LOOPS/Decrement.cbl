      IDENTIFICATION DIVISION.
      PROGRAM-ID. Decrement.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION.
      77   Numbers PIC 9 VALUE 8.

      PROCEDURE DIVISION.

      Begin.
      PERFORM Operation 7 TIMES.
      STOP RUN.

      Operation.
      DISPLAY Numbers.
      SUBTRACT 1 FROM Numbers.


      END PROGRAM Decrement.