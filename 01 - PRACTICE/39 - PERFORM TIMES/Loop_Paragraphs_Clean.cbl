      IDENTIFICATION DIVISION.
      PROGRAM-ID. Loop_Paragraphs_Clean.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION.

      PROCEDURE DIVISION.
      Loop.
           PERFORM Greeting 5 TIMES.
           STOP RUN.     
      Greeting.
           DISPLAY "Hello!".

      END PROGRAM Loop_Paragraphs_Clean.