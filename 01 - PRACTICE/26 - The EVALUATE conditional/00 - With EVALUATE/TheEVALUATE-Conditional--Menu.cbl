      IDENTIFICATION DIVISION.
      PROGRAM-ID. TheEVALUATE-Conditional--Menu.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION.
      77 ValueMenu PIC 9 VALUE ZEROS.

      PROCEDURE DIVISION.      
      Choose.
     *> The user's age is requested.
      DISPLAY "Please enter a number."
      " option and press ENTER:".

      DISPLAY "1 - Addition.".
      DISPLAY "2 - Subtraction.".
      DISPLAY "3 - Multiplication.".
      DISPLAY "4 - Division.".
      
      ACCEPT ValueMenu.

      EVALUATE ACCEPT Age.
        WHEN 1
           DISPLAY "You have selected addition."

        WHEN 2
           DISPLAY "You have selected subtraction."

        WHEN 3
           DISPLAY "You have selected multiplication."

        WHEN 4
           DISPLAY "You have selected division."

        WHEN OTHER
           DISPLAY "Menu incorrect. "

      END-EVALUATE.    

      STOP RUN.
      END PROGRAM TheEVALUATE-Conditional--Menu.