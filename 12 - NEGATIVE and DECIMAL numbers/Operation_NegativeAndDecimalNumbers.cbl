       IDENTIFICATION DIVISION.
       PROGRAM-ID. OperationNegativeAndDecimalNumbers.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  NUM1 PIC S99V99.
       01  NUM2 PIC S99V99.
       01  RESULT PIC S99V99.

       PROCEDURE DIVISION.
       NEGATIVE-POSITIVES-DECIMALS.
           MOVE -10.15 TO NUM1.
           MOVE -5.10 TO NUM2.
           COMPUTE RESULT = NUM1 + NUM2.
           DISPLAY RESULT.
            STOP RUN.
       END PROGRAM OperationNegativeAndDecimalNumbers.