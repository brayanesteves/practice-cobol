       IDENTIFICATION DIVISION.
       PROGRAM-ID. EditingCharactersOperations.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  NUM1 PIC 9999 VALUE 5000.
       01  NUM2 PIC 9999 VALUE 1000.
       01  RESULT PIC 99999.
       01  RESULT_SUPRIME_ZERO PIC ZZZZZ.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           COMPUTE RESULT = NUM1 + NUM2.
           COMPUTE RESULT_SUPRIME_ZERO = NUM1 + NUM2.
           DISPLAY "No suprime 'zero': " RESULT.
           DISPLAY "Suprime 'zero': " RESULT_SUPRIME_ZERO.
           STOP RUN.

       END PROGRAM EditingCharactersOperations.