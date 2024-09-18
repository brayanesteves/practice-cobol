      IDENTIFICATION DIVISION.
      PROGRAM-ID. TheEVALUATE-TRUE-Conditional--Age.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION.
      01 Age PIC 999 VALUE ZEROS.
           88 Teen VALUE 1 THRU 39.
           88 Mature VALUE 40 THRU 65.
           88 Anacian VALUE 66 THRU 100.

      PROCEDURE DIVISION.      
      CheckAge.
     *> The user's age is requested.
      DISPLAY "Enter to age: "
      ACCEPT Age.
      
      EVALUATE TRUE
        WHEN Teen
           DISPLAY "You are a teenager. " WITH NO ADVANCING

        WHEN Mature
           DISPLAY "You are a mature person. " WITH NO ADVANCING

        WHEN Anacian
           DISPLAY "You are a ancian person. " WITH NO ADVANCING

        WHEN OTHER
           DISPLAY "Age incorrect. " WITH NO ADVANCING

      END-EVALUATE.

      DISPLAY "You are " Age " years old.".      

      STOP RUN.
      END PROGRAM TheEVALUATE-TRUE-Conditional--Age.