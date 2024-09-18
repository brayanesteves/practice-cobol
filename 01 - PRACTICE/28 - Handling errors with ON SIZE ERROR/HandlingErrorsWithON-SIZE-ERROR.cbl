      IDENTIFICATION DIVISION.
      PROGRAM-ID. HandlingErrorsWithON-SIZE-ERROR.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION.
     *> Level 77
      77 Number1 PIC 999 VALUE 200.
      77 Number2 PIC 999 VALUE 100.
      77 Result PIC 999 VALUE ZEROS.
      77 BigResult PIC 99999 VALUE ZEROS.

      PROCEDURE DIVISION.      
      Calculations.
     *> Option Nº0
      COMPUTE Result = Number1 * Number2
        ON SIZE ERROR DISPLAY "Number too big."
      END-COMPUTE.
      DISPLAY "Option Nº0 " Result.

     *> Option Nº1 without 'END-COMPUTE.'.
      COMPUTE Result = Number1 * Number2
        ON SIZE ERROR DISPLAY "Number too big.".
      DISPLAY "Option Nº1 " Result.

     *> Option Nº2
      COMPUTE Result = Number1 * Number2
        ON SIZE ERROR COMPUTE BigResult = Number1 * Number2
        DISPLAY BigResult
      END-COMPUTE.
      DISPLAY "Option Nº2 " Result.

     *> Option Nº3
      COMPUTE Result = Number1 * Number2
        ON SIZE ERROR
        DISPLAY "The number is too large, it is not"
        "displayed in full."
        DISPLAY "The default value (200) has been set."
        MOVE 200 TO Result
        DISPLAY Result
      END-COMPUTE.
      DISPLAY "Option Nº3 " Result.

     *> Option Nº4
      ADD Number1 TO Number2 GIVING Result
        ON SIZE ERROR
        DISPLAY "The number is too large, it is not"
        "displayed in full."
      END-ADD.
      DISPLAY "Option Nº4 " Result.

     *> Option Nº5
      SUBTRACT Number1 FROM Number2 GIVING Result
        ON SIZE ERROR
        DISPLAY "The number is too large, it is not"
        "displayed in full."
      END-SUBTRACT.
      DISPLAY "Option Nº5 " Result.

     *> Option Nº6
      MULTIPLY Number1 BY Number2 GIVING Result
        ON SIZE ERROR
        DISPLAY "The number is too large, it is not"
        "displayed in full."
      END-MULTIPLY.
      DISPLAY "Option Nº6 " Result.

     *> Option Nº7
      DIVIDE Number1 BY Number2 GIVING Result
        ON SIZE ERROR
        DISPLAY "The number is too large, it is not"
        "displayed in full."
      END-DIVIDE.
      DISPLAY "Option Nº7 " Result.

     *> Option Nº8
      COMPUTE Result = Number1 * Number2
        ON SIZE ERROR
           DISPLAY "The number is too large, it is not"
           "displayed in full."
           DISPLAY "The default value (200) has been set."
           MOVE 200 TO Result
        NOT ON SIZE ERROR
           DISPLAY "Option Nº8 " Result
      END-COMPUTE.

      STOP RUN.
      END PROGRAM HandlingErrorsWithON-SIZE-ERROR.