       IDENTIFICATION DIVISION.
       PROGRAM-ID. ParagrahpOrRoutinesWithPerform.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  YES-OR-NO PIC X.
       PROCEDURE DIVISION.

           QUESTION.

           PERFORM CONTINUATION.

           IF YES-OR-NO = "N" OR YES-OR-NO = "n"
               GO TO END-PROGRAM.
           IF YES-OR-NO = "S" OR YES-OR-NO = "s"
               PERFORM APP-PROGRAM
           ELSE
               DISPLAY "Please enter an 'N' or 'S'".

           END-PROGRAM.
               STOP RUN.

           CONTINUATION.
               DISPLAY "Execute the program (Y/N)?".
               ACCEPT YES-OR-NO.

           APP-PROGRAM.
               DISPLAY "The program is executed.".

       END PROGRAM ParagrahpOrRoutinesWithPerform.