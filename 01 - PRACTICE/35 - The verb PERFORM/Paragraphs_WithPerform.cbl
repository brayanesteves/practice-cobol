      IDENTIFICATION DIVISION.
      PROGRAM-ID. Paragraphs_WithPerform.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      SPECIAL-NAMES.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION.      

      PROCEDURE DIVISION.
      Paragraph1.
           DISPLAY "You are in paragraph 1.".
           PERFORM Paragraph3.
      Paragraph2.
           DISPLAY "You are in paragraph 2.".
           DISPLAY "Here is the trip.".
           STOP RUN.
      Paragraph3.
           DISPLAY "You are in paragraph 3.".

      END PROGRAM Paragraphs_WithPerform.