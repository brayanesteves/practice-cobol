      IDENTIFICATION DIVISION.
      PROGRAM-ID. Colors_Ranges.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION.
      01 Colors PIC x(8) VALUE ZERO.
           88 Primary VALUE "red", "yellow", "blue".
           88 Secondary VALUE "orange", "green", "violet".

      PROCEDURE DIVISION.
      SelectColor.
      DISPLAY "Enter a color and I'll tell you what type it is: ".
      ACCEPT Colors.
      IF Primary THEN
           DISPLAY "That color is primary."
      ELSE
           IF Numbers THEN
               DISPLAY "That color is secondary."
           ELSE
               DISPLAY "I don't have that color stored."
           END-IF
      END-IF
      
      STOP RUN.
      END PROGRAM Colors_Ranges.