       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCULATOR.
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
           IF RESULT_ADD > 50           
               DISPLAY "The result of the sum is greater than 50."
           ELSE
               DISPLAY "The result is less than or greater than 50."
           END-IF.
           IF RESULT_SUBTRACT > 50           
               DISPLAY "The result of the subtract is greater than 50."
           ELSE
               DISPLAY "The result is less than or greater than 50."
           END-IF.
           IF RESULT_MULTIPLY > 50           
               DISPLAY "The result of the multiply is greater than 50."
           ELSE
               DISPLAY "The result is less than or greater than 50."
           END-IF.
           IF RESULT_DIVIDE > 50           
               DISPLAY "The result of the divide is greater than 50."
           ELSE
               DISPLAY "The result is less than or greater than 50."
           END-IF.
           STOP RUN.
       END PROGRAM CALCULATOR.