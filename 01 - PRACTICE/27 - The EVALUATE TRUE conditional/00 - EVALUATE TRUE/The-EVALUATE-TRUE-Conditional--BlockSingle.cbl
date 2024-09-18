      IDENTIFICATION DIVISION.
      PROGRAM-ID. TheEVALUATE-TRUE-Conditional--BlockSingle.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION.
      77 Num1 PIC 9(5) VALUE 16.
      77 Num2 PIC 9(5) VALUE 10.
      77 Num3 PIC 9(5) VALUE 20.

      PROCEDURE DIVISION.      
      EvaluateValues.
     *> Possible values ​​are evaluated.
      
      EVALUATE TRUE
        WHEN Num1 = 16
           DISPLAY "Block 1."

        WHEN Num2 = 10
           DISPLAY "Block 2."

        WHEN Num3 >= 15
           DISPLAY "Block 3."

        WHEN OTHER
           DISPLAY "Value not contemplated."

      END-EVALUATE.    

      STOP RUN.
      END PROGRAM TheEVALUATE-TRUE-Conditional--BlockSingle.