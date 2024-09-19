      IDENTIFICATION DIVISION.
      PROGRAM-ID. Increment_Multiply.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION.
      77   Numbers PIC 9999 VALUE 8.

      PROCEDURE DIVISION.

      Begin.
      PERFORM Operation 7 TIMES.
      STOP RUN.

      Operation.
      MULTIPLY 2 BY Numbers.
      DISPLAY Numbers.


      END PROGRAM Increment_Multiply.