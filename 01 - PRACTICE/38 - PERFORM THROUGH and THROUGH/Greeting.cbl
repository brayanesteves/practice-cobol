      IDENTIFICATION DIVISION.
      PROGRAM-ID. Greeting.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION. 
      77   Names PIC X(15) VALUE SPACES.
      77   Lastnames PIC X(35) VALUE SPACES.

      PROCEDURE DIVISION.
      Greeting.
           DISPLAY "Hola " Names " " Lastnames.

      RequestsForFirstNames.
           DISPLAY "Can you tell me your first name?".
           ACCEPT Names.

      RequestsForLastnames.
           DISPLAY "Can you tell me your last name?".
           ACCEPT Lastnames.

           STOP RUN.

      END PROGRAM Greeting.