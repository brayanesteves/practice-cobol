      IDENTIFICATION DIVISION.
      PROGRAM-ID. ROUND-DecimalsROUNDED-AndGetTheRemainderREMAINDER.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
     *> We specify that the decimal point is a comma.
           DECIMAL-POINT IS COMMA.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION.
      77   Number1 PIC 99V999 VALUE 10,556.
      77   Number2 PIC 99 VALUE 20.
      77   Result PIC 99V99 VALUE ZEROS.
      77   ResultRounded PIC 99V99 VALUE ZEROS.

      77   ResultRoundedAdd PIC 99V99 VALUE ZEROS.
      77   ResultRoundedSubtract PIC 99V99 VALUE ZEROS.
      77   ResultRoundedMultiply PIC 99V99 VALUE ZEROS.
      77   ResultRoundedDivide PIC 99V99 VALUE ZEROS.
      77   ResultDivide PIC 99V99 VALUE ZEROS.
      77   ResultRemainderDivide PIC 99V99 VALUE ZEROS.

      PROCEDURE DIVISION.
      Calculate.
     *> NORMAL.
      COMPUTE Result = Number1 + Number2.
      DISPLAY "No round " Result.

      COMPUTE ResultRounded = Number1 + Number2.
      DISPLAY "With rounded " ResultRounded.

     *> ROUNDED.
      ADD Number1 TO Number2 GIVING ResultRoundedAdd ROUNDED.
      DISPLAY "With rounded (Add) " ResultRounded.

      SUBTRACT Number1 FROM Number2 GIVING ResultRoundedSubtract ROUNDED.
      DISPLAY "With rounded (Subtract) " ResultRounded.

      MULTIPLY Number1 BY Number2 GIVING ResultRoundedMultiply ROUNDED.
      DISPLAY "With rounded (Multiply) " ResultRounded.

      DIVIDE Number1 BY Number2 GIVING ResultRoundedDivide ROUNDED.
      DISPLAY "With rounded (Divide) " ResultRounded.

     *> REMAINDER.
     *> Performs a division, obtaining the result and the remainder.
      DIVIDE Number1 BY Number2 GIVING ResultDivide REMAINDER ResultRemainderDivide.
      DISPLAY "The result of the division is: " ResultDivide.
      DISPLAY "The remainder of the division is: " ResultRemainderDivide.

      STOP RUN.
      END PROGRAM ROUND-DecimalsROUNDED-AndGetTheRemainderREMAINDER.