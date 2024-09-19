      IDENTIFICATION DIVISION.
      PROGRAM-ID. Calculator.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION.  

     *> We have 5 options (1-5).
      01  Option PIC 9 VALUE ZERO.
           88 Addittion VALUE 1.
           88 Subtraction VALUE 2.
           88 Multiplication VALUE 3.
           88 Divisions VALUE 4.
           88 Exits VALUE 4.

      77   Number1 PIC 999 VALUE ZEROS.
      77   Number2 PIC 999 VALUE ZEROS.

      77   Result PIC 9(6) VALUE ZEROS.

      PROCEDURE DIVISION.
     *> Presents a number to the user and prompts them for a choice.
      AcceptData.
      DISPLAY "Choose an operation.".
      DISPLAY "1 - Add (+)".
      DISPLAY "2 - Subtract (-)".
      DISPLAY "3 - Multiply (*)".
      DISPLAY "4 - Divide".
      DISPLAY "5 - Exit".
      ACCEPT Option.

     *> With options 1-5 we go to the corresponding PERFORM.
      EVALUATE TRUE

      WHEN Addittion
           PERFORM Sums

      WHEN Subtraction
           PERFORM Subtracts

      WHEN Multiplication
           PERFORM Multiplications

      WHEN Divisions
           PERFORM Divides

      WHEN Exits
           DISPLAY "Exiting the program..."
      
      STOP RUN

      WHEN OTHER
       DISPLAY "Invalid option. Please try again."
           PERFORM AcceptData

     *> Paragraphs for PERFORM begin. Execution ends
     *> after its code is executed.
      Sums.
           DISPLAY "You have chosen to add.".
           PERFORM RequestNumbers.
           ADD Number1 TO Number2 GIVING Result.
           DISPLAY "The result of addition is: ".
           PERFORM AcceptData.

      Subtracts.
           DISPLAY "You have chosen to subtract.".
           PERFORM RequestNumbers.
           SUBTRACT Number1 FROM Number2 GIVING Result.
           DISPLAY "The result of subtraction is: " Result.
           PERFORM AcceptData.

      Multiplications.
           DISPLAY "You have chosen to multiply.".
           PERFORM RequestNumbers.
           MULTIPLY Number1 BY Number2 GIVING Result.
           DISPLAY "The result of multiplication is: " Result.
           PERFORM AcceptData.

      Divides.
           DISPLAY "You have chosen to divide.".
           PERFORM RequestNumbers.
           DIVIDE Number1 BY Number2 GIVING Result.
           DISPLAY "The result of division is: " Result.
           PERFORM AcceptData.

      RequestNumbers.
      DISPLAY "Please enter the first number.".
      ACCEPT Number1.
      DISPLAY "Please enter the second number.".
      ACCEPT Number2.

      END PROGRAM Calculator.