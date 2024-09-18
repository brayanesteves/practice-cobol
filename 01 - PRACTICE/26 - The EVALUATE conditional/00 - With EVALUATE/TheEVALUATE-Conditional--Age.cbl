      IDENTIFICATION DIVISION.
      PROGRAM-ID. TheEVALUATE-Conditional--Age.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION.
      77 Age PIC 999 VALUE ZEROS.

      PROCEDURE DIVISION.      
      CheckAge.
     *> The user's age is requested.
      DISPLAY "Enter to age: "
      ACCEPT Age.
      
      EVALUATE Age
        WHEN 1 THRU 39
           DISPLAY "You are a teenager. " WITH NO ADVANCING

        WHEN 40 THRU 65
           DISPLAY "You are a mature person. " WITH NO ADVANCING

        WHEN 66 THRU 100
           DISPLAY "You are a ancian person. " WITH NO ADVANCING

        WHEN OTHER
           DISPLAY "Age incorrect. " WITH NO ADVANCING

      END-EVALUATE.

      DISPLAY "You are " Age " years old.".      

      STOP RUN.
      END PROGRAM TheEVALUATE-Conditional--Age.