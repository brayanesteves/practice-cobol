      IDENTIFICATION DIVISION.
      PROGRAM-ID. Options.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      SPECIAL-NAMES.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION.  

     *> We have 3 options (1-4), anything else is ZERO.
      01  Option PIC 9 VALUE ZERO.
           88 Option1 VALUE 1.
           88 Option2 VALUE 2.
           88 Option3 VALUE 3.
           88 Exits VALUE 4.

      PROCEDURE DIVISION.
     *> Requests a number from 1 to 3 from the user.
      AcceptData.
      DISPLAY "Enter a number from 1 to 3 to execute one"
      " of the options. If you want to exit, enter the number 4.".
      ACCEPT Option.

     *> With options 1-3 we go to the corresponding PERFORM.
      IF Option1 THEN
           DISPLAY "Select the first option."
           PERFORM Paragraph1
      ELSE
           IF Option2 THEN
               DISPLAY "Select the second option."
               PERFORM Paragraph2
           ELSE
               IF Option3 THEN
                   DISPLAY "Select the third option."
                   PERFORM Paragraph3
               ELSE
                   IF Exits THEN
                       DISPLAY "Exiting the program..."
                       STOP RUN
                   ELSE
                       DISPLAY "Invalid option. Please try again."
                       PERFORM AcceptData
                   END-IF
               END-IF
           END-IF
      END-IF

     *> Paragraphs for PERFORM begin. Execution ends
     *> after its code is executed.
      Paragraph1.
           DISPLAY "You are in paragraph 1.".
           STOP RUN.
      Paragraph2.
           DISPLAY "You are in paragraph 2.".
           STOP RUN.
      Paragraph3.
           DISPLAY "You are in paragraph 3.".
           STOP RUN.

      END PROGRAM Options.