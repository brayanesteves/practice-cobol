      IDENTIFICATION DIVISION.
      PROGRAM-ID. LogicalOperatorsAND-ORandNOT.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION.
      77 Number1 PIC 99 VALUE 10.
      77 Number2 PIC 99 VALUE 10.
      77 Number3 PIC 99 VALUE 11.

      PROCEDURE DIVISION.      
      LogicalOperators.
     *> Comparisons with logical operators.
      IF Number1 > 5 AND Number2 < 11 THEN
           DISPLAY "The condition 'AND' is fulfilled."
      END-IF

      IF Number1 > 5 OR Number3 < 11 THEN
           DISPLAY "The condition 'OR' is fulfilled."
      END-IF

      IF Number1 IS NOT < 5 THEN
           DISPLAY "The condition 'NOT' is fulfilled."
      END-IF

      IF Number1 IS NOT > 15 OR Number1 < 7 AND Number2 > 9 THEN
           DISPLAY "The condition 'NOT', 'OR' and 'AND' is fulfilled."
      END-IF

     *> With parentheses.
      IF (Number1 > 9 OR < 5) AND (Number1 NOT = 15 OR > 15) AND (Number2 = 10) THEN
           DISPLAY "The condition ('OR'), ('NOT' and 'OR') and 'AND' is fulfilled."
      END-IF

      *> Without parentheses.
      IF Number1 > 9 OR < 5 AND Number1 NOT = 15 OR > 15 AND Number2 = 10 THEN
           DISPLAY "The condition 'OR', 'NOT', 'OR' and 'AND' is fulfilled."
      END-IF

      STOP RUN.
      END PROGRAM LogicalOperatorsAND-ORandNOT.