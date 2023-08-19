       IDENTIFICATION DIVISION.
       PROGRAM-ID. ProcedureDivision.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  GREETING PIC A(22).
       01  TITLE PIC A(40) VALUE 'COBOL Tutotial'.
       01  NUMBER PIC 9(1) VALUE 5.

       PROCEDURE DIVISION.
       DISPLAY 'Hello world!'.
       MOVE "Welcome to my channel." TO GREETING.
       DISPLAY "Very good," GREETING.
       DISPLAY "Title : " TITLE.
       DISPLAY "This is the tutorial: " NUMBER.
       STOP RUN.

       END PROGRAM ProcedureDivision.