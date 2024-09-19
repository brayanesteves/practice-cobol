      IDENTIFICATION DIVISION.
      PROGRAM-ID. LettersAndNumbers_Ranges.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      SPECIAL-NAMES.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION.
      01 LettersAndNumbers PIC X VALUE ZERO.
           88 Letters VALUE "A" THRU "Z", "a" THRU "z".
           88 Numbers VALUE 0 THRU 9.

      PROCEDURE DIVISION.
      EnterCharacters.
      DISPLAY "Enter a letter or number and I'll tell you what type it"
      " is: ".
      ACCEPT LettersAndNumbers.
      IF Letters THEN
           DISPLAY "You have entered a letter."
      ELSE
           IF Numbers THEN
               DISPLAY "You have entered a number."
           ELSE
               DISPLAY "I haven't been programmed to know what this is."
           END-IF
      END-IF
      
      STOP RUN.
      END PROGRAM LettersAndNumbers_Ranges.