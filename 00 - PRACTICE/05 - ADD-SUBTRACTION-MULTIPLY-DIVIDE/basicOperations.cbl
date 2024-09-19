       IDENTIFICATION DIVISION.
       PROGRAM-ID. BASIC-OPERATIONS.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  NUM1 PIC 9(4).
       01  NUM2 PIC 9(4).
       01  RESULT_ADD PIC 9(5).
       01  RESULT_SUBTRACT PIC 9(5).
       01  RESULT_MULTIPLY PIC 9(5).
       01  RESULT_DIVIDE PIC 9(5).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Enter the first number:"
           ACCEPT NUM1.
           DISPLAY "Enter the second number:"
           ACCEPT NUM2.
           ADD NUM1 TO NUM2 GIVING RESULT_ADD.
           SUBTRACT NUM1 FROM NUM2 GIVING RESULT_SUBTRACT.
           MULTIPLY NUM1 BY NUM2 GIVING RESULT_MULTIPLY.
           DIVIDE NUM1 BY NUM2 GIVING RESULT_DIVIDE.
           DISPLAY "The sum result is: " RESULT_ADD.
           DISPLAY "The subtract result is: " RESULT_SUBTRACT.
           DISPLAY "The multiply result is: " RESULT_MULTIPLY.
           DISPLAY "The divide result is: " RESULT_DIVIDE.
            STOP RUN.
       END PROGRAM BASIC-OPERATIONS.