       IDENTIFICATION DIVISION.
       PROGRAM-ID. CompositeVariablesIsArrayString.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  COMPOSITE-VARIABLE-ISARRAY.
           02 TXT1 PIC X(12) VALUE "Programming".
           02 TXT2 PIC X VALUE SPACE.
           02 TXT3 PIC X(5) VALUE "Easy".

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Show 'TXT1' and 'TXT2' of 'COMPOSITE-VARIABLE-ISARRAY': " TXT1 TXT2.
           DISPLAY "Show values of variables of 'COMPOSITE-VARIABLE-ISARRAY': " COMPOSITE-VARIABLE-ISARRAY.
            STOP RUN.
       END PROGRAM CompositeVariablesIsArrayString.