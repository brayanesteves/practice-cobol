      IDENTIFICATION DIVISION.
      PROGRAM-ID. Loop_Paragraphs.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION.

      PROCEDURE DIVISION.
      Loop.
           PERFORM Greeting 5 TIMES.
      
      Greeting.
           DISPLAY "Hello!".
      
      EndProgram.
           STOP RUN.

      END PROGRAM Loop_Paragraphs.