      IDENTIFICATION DIVISION.
      PROGRAM-ID. Decrement.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION.
      77   Numbers PIC 9 VALUE 7000.
      77   Result PIC 9999 VALUE ZEROS.

      PROCEDURE DIVISION.

      Begin.
      PERFORM Operation 7 TIMES.
      STOP RUN.

      Operation.
      DIVIDE Numbers BY 2 FROM GIVING Result.
      SUBTRACT Result FROM Numbers.
      DISPLAY Numbers.


      END PROGRAM Decrement.