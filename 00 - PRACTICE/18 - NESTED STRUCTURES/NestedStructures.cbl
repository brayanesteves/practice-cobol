       IDENTIFICATION DIVISION.
       PROGRAM-ID. NestedStructures.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  COMPOSITE-VARIABLE.
           05 TEXT1 PIC X(11) VALUE "This text ".
           05 TEXT2 PIC X(36) VALUE "It belongs to the main structure.".
           05 COMPOSITE-SUBVARIABLE.
               10 TEXT3 PIC X(11) VALUE "This text ".
               10 TEXT4 PIC X(37) VALUE "It belongs to the main structure.".
               10 COMPOSITE-SUB-SUBVARIABLE.
                   15 TEXT5 PIC X(11) VALUE "This text ".
                   15 TEXT6 PIC X(37) VALUE "It belongs to the main structure.".
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY COMPOSITE-VARIABLE.
            DISPLAY "============".
            DISPLAY COMPOSITE-SUBVARIABLE.
            DISPLAY "============".
            DISPLAY COMPOSITE-SUB-SUBVARIABLE.
            STOP RUN.
       END PROGRAM NestedStructures.