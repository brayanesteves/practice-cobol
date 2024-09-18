       IDENTIFICATION DIVISION.
       PROGRAM-ID. ProcedureDivisionMenuNoCaseSensitive.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  titles PIC A(40) VALUE 'COBOL Tutotial'.
       01  NUm PIC 9(1) VALUE 5.

       PROCEDURE DIVISION.
       DISPLAY 'Hello world!'.
       DISPLAY "Title : " TITLES.
       DISPLAY "This is the tutorial: " NUm.
       STOP RUN.

       END PROGRAM ProcedureDivisionMenuNoCaseSensitive.