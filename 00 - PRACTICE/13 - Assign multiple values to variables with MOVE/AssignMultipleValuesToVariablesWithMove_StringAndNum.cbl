       IDENTIFICATION DIVISION.
       PROGRAM-ID. AssignMultipleValuesToVariablesWithMoveString.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  TEXT_WRITTEN PIC XX VALUE " ".
       01  TEXT_SPACE PIC XX VALUE SPACE.
       01  TEXT_SPACES PIC XX VALUE SPACES.
       01  NUM_WRITTEN PIC XX VALUE 0.
       01  NUM_ZERO PIC XX VALUE ZERO.
       01  NUM_ZEROS PIC XX VALUE ZEROS.
       01  NUM_ZEROES PIC XX VALUE ZEROES.

       PROCEDURE DIVISION.
       ROUTINE1.
           DISPLAY "(String) Reserved speech with ' ':" TEXT_WRITTEN.
           DISPLAY "(String) Reserved speech with 'SPACE':" TEXT_SPACE.
           DISPLAY "(String) Reserved speech with 'SPACES':" TEXT_SPACES.
           DISPLAY "===========".
           DISPLAY "(Num) Reserved speech with '0':" NUM_WRITTEN.
           DISPLAY "(Num) Reserved speech with 'ZERO':" NUM_ZERO.
           DISPLAY "(Num) Reserved speech with 'ZEROS':" NUM_ZEROS.
           DISPLAY "(Num) Reserved speech with 'ZEROES':" NUM_ZEROES.
            STOP RUN.

       END PROGRAM AssignMultipleValuesToVariablesWithMoveString.