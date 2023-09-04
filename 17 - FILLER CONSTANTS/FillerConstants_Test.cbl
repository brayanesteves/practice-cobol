       IDENTIFICATION DIVISION.
       PROGRAM-ID. FillerConstantsTest.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       
       01  COMPOSITE-VARIABLE.
           05 TEXT1  PIC X(15) VALUE "Text 1 - ".
           05 FILLER PIC X(15) VALUE "Text 'FILLER' - ".
           05 TEXT2  PIC X(15) VALUE "Text 2.".

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY COMPOSITE-VARIABLE.
            MOVE "Value new - " TO COMPOSITE-VARIABLE.
            DISPLAY COMPOSITE-VARIABLE.
            STOP RUN.
       
       END PROGRAM FillerConstantsTest.