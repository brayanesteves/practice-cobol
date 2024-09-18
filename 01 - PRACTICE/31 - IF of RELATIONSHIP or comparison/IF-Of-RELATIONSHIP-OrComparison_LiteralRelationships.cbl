      IDENTIFICATION DIVISION.
      PROGRAM-ID. IF-Of-RELATIONSHIP-OrComparison_LiteralRelationships.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION.
      77   Result PIC 9 VALUE ZEROS.

      PROCEDURE DIVISION.
      LiteralRelationships.
      IF 10 IS GREATER THAN 5 THEN
           DISPLAY "The value 10 is greater than 5."
      END-IF

      IF 10 + 5 IS GREATER THAN 25 THEN
           DISPLAY "The value 10 + 5 is greater than 25."
      END-IF

      IF 10 IS EQUAL TO 10 AND 10 IS GREATER THAN 5 THEN
           DISPLAY "The value 10 is greater than 5."
      END-IF
      STOP RUN.
      END PROGRAM IF-Of-RELATIONSHIP-OrComparison_LiteralRelationships.