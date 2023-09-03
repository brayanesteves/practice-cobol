       IDENTIFICATION DIVISION.
       PROGRAM-ID. CompositeVariablesIsArrayNum.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  SINGLE-VARIABLE PIC 9.
       01  COMPOSITE-VARIABLE-ISARRAY.
           02 NUM1 PIC 9 VALUE 2.
           02 NUM2 PIC 9 VALUE 4.
           02 NUM3 PIC 9 VALUE 4.
           02 NUM4 PIC 9 VALUE 9.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Show variable of 'COMPOSITE-VARIABLE-ISARRAY': " NUM3.
           DISPLAY "Show values of variables of 'COMPOSITE-VARIABLE-ISARRAY': " COMPOSITE-VARIABLE-ISARRAY.
            STOP RUN.
       END PROGRAM CompositeVariablesIsArrayNum.