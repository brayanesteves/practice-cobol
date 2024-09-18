      IDENTIFICATION DIVISION.
      PROGRAM-ID. IF-SIGN.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION.
      77   Number1 PIC S99 VALUE +10.
      77   Number2 PIC S99 VALUE -10.
      77   Number3 PIC S99 VALUE ZEROS.

      PROCEDURE DIVISION.
      RelationshipSign.
      IF Number1 IS POSITIVE THEN
           DISPLAY "The number is positive."
      END-IF

      IF Number1 IS NOT POSITIVE THEN
           DISPLAY "The number is not positive."
      END-IF

      IF Number2 IS NOT POSITIVE THEN
           DISPLAY "The number is not positive."
      END-IF

      IF Number2 IS NEGATIVE THEN
           DISPLAY "The number is negative."
      END-IF

      IF Number2 IS NOT NEGATIVE THEN
           DISPLAY "The number is not negative."
      END-IF

      IF Number3 IS ZERO THEN
           DISPLAY "The number is equal zero."
      END-IF

      IF Number3 IS NOT ZERO THEN
           DISPLAY "The number is not equal zero."
      END-IF
      STOP RUN.
      END PROGRAM IF-SIGN.