       IDENTIFICATION DIVISION.
       PROGRAM-ID. VariablesConstantDisplay.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  GREETING PIC XXXX VALUE "Hello".
       01  NUM PIC 99 VALUE 70.
       01  GREETING_LONG PIC X(33) VALUE "Test - This text is going to be shown".
       01  NUM_LONG PIC 9(5) VALUE 20000.
       PROCEDURE DIVISION 70.
       MAIN-PROCEDURE.
           DISPLAY "This text is going to be shown".
           DISPLAY GREETING.
           DISPLAY NUM.
           DISPLAY GREETING_LONG.
           DISPLAY NUM_LONG.
           STOP RUN.
       END PROGRAM VariablesConstantDisplay.