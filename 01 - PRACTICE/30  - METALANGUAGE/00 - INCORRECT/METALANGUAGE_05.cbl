      IDENTIFICATION DIVISION.
      PROGRAM-ID. METALANGUAGE.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION.
      77   Result PIC 9 VALUE ZEROS.

      PROCEDURE DIVISION.
      Tests.

      COMPUTE Result ROUNDED = 10
      ON SIZE ERROR *> Not correct
      NOT ON SIZE ERROR DISPLAY "There is no size error.".

      DISPLAY Result.

      STOP RUN.
      END PROGRAM METALANGUAGE.