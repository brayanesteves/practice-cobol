      IDENTIFICATION DIVISION.
      PROGRAM-ID. Nested-IFsandELSE-IF.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION.
      77 Number1 PIC 99 VALUE 20.
      77 Number2 PIC 99 VALUE 10.
      77 Number3 PIC 99 VALUE 11.

      PROCEDURE DIVISION.      
      Conditionals.
     *> 'IF' with operator 'AND'.
      IF Number1 = 20 AND Number2 = 10 THEN
           DISPLAY "The 'IF' is executed."
      END-IF
      
     *> 'IF' with operator 'AND' and 'ELSE'.
      IF Number1 = 10 AND Number2 = 10 THEN
           DISPLAY "The 'IF' is executed."
      ELSE
           DISPLAY "The 'ELSE' is executed."
      END-IF

     *> Nested Conditionals.
      IF Number1 > 10 THEN
           MOVE 15 to Number1
           DISPLAY "Number 1 is worth 15."
           IF Number1 = 15 AND Number2 < Number1
               IF Number1 < Number2
                   MOVE Number2 TO Number1
               ELSE
                   MOVE Number1 TO Number2
                   DISPLAY "Now, the 2 numbers are equal."
               END-IF
           ELSE
               DISPLAY "The 'AND' condition has not been met."
           END-IF
      ELSE
           DISPLAY "Number 1 is not greater than 10."
      END-IF

      STOP RUN.
      END PROGRAM Nested-IFsandELSE-IF.