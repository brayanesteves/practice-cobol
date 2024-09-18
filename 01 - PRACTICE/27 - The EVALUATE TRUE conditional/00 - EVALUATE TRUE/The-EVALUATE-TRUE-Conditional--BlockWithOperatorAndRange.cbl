      IDENTIFICATION DIVISION.
      PROGRAM-ID. TheEVALUATE-TRUE-Conditional--BlockWithOperatorAndRange.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION.
     *> Level 88
      01  Ranges PIC 99 VALUE ZEROS.
        88  Ranges1 VALUE 1 THRU 10.
        88  Ranges2 VALUE 11 THRU 20.
        88  Ranges3 VALUE 21 THRU 30.
     *> Level 77
      77 Num1 PIC 9 VALUE 1.
      77 Num2 PIC 9 VALUE 2.
      77 Num3 PIC 9 VALUE 3.

      PROCEDURE DIVISION.      
      
      DISPLAY "ENTER a number: "
      ACCEPT Ranges.
      
      EVALUATE TRUE
        WHEN Num1 = 1 AND Range1
           DISPLAY "Block 1."

        WHEN Num2 = 2 AND Range2
           DISPLAY "Block 2."

        WHEN Num3 = 3 AND Range3
           DISPLAY "Block 3."

        WHEN OTHER
           DISPLAY "Value not contemplated."

      END-EVALUATE.    

      STOP RUN.
      END PROGRAM TheEVALUATE-TRUE-Conditional--BlockWithOperatorAndRange.