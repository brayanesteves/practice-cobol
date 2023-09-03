       IDENTIFICATION DIVISION.
       PROGRAM-ID. AssignMultipleValuesToVariablesWithMove.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  NUM1 PIC 99.
       01  NUM2 PIC 99.
       01  NUM3 PIC 99.
       01  NUM4 PIC 99.
       01  NUM5 PIC 99.
       01  NUM6 PIC 99.

       PROCEDURE DIVISION.
       ROUTINE1.
           MOVE 10 TO NUM1 NUM2 NUM3 NUM4 NUM5 NUM6.
           DISPLAY NUM1.
           DISPLAY NUM2.
           DISPLAY NUM3.
           DISPLAY NUM4.
           DISPLAY NUM5.
           DISPLAY NUM6.

            STOP RUN.

       END PROGRAM AssignMultipleValuesToVariablesWithMove.