       IDENTIFICATION DIVISION.
       PROGRAM-ID. ProcedureDivisionMenuNoCaseSensitive.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  title PIC A(40) VALUE 'COBOL Tutotial'.
       01  NUMBEr PIC 9(1) VALUE 5.

       PROCEDURE DIVISION.
       DISPLAY 'Hello world!'.
       DISPLAY "Title : " TITLE.
       DISPLAY "This is the tutorial: " NUMBER.
       STOP RUN.

       END PROGRAM ProcedureDivisionMenuNoCaseSensitive.