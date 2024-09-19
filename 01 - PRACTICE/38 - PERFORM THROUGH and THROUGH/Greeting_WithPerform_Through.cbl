      IDENTIFICATION DIVISION.
      PROGRAM-ID. Greeting_WithPerform__Through.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION. 
      77   Names PIC X(15) VALUE SPACES.
      77   Lastnames PIC X(35) VALUE SPACES.

      PROCEDURE DIVISION.
      Greeting.
           PERFORM RequestsForFirstNames THROUGH RequestsForLastnames.
           DISPLAY "Hola " Names " " Lastnames.
           STOP RUN.

      RequestsForFirstNames.
           DISPLAY "Can you tell me your first name?".
           ACCEPT Names.

      AnyParagraph.
           DISPLAY "This message is about an intermediate paragraph.".

      RequestsForLastnames.
           DISPLAY "Can you tell me your last name?".
           ACCEPT Lastnames.

      END PROGRAM Greeting_WithPerform__Through.