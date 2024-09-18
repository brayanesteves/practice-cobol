      IDENTIFICATION DIVISION.
      PROGRAM-ID. IF-CLASS.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      SPECIAL-NAMES.
     *> We specify two classes for number types.
           CLASS Hexadecimal IS "A" THRU "F", "0" THRU "9".
           CLASS Decimal IS "0" THRU "9".
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION.
      77 Num PIC 99 VALUE 75.
      77 Number1 PIC X(4) VALUE "A07F".
      77 Number2 PIC 9(5) VALUE 41087.
      77 WebSite1 PIC X(25) VALUE "easy programming".
      77 WebSite2 PIC X(25) VALUE "Easy programming".
      77 WebSite3 PIC X(25) VALUE "EASY PROGRAMMING".
      77 WebSite4 PIC X(25) VALUE "EASY PROGRAMMINg".
      77 Greeting PIC AAAAA VALUE "Hello".
      77 Greeting1 PIC AAAAA VALUE "hello".

      PROCEDURE DIVISION.
      ClassRelation.
      IF 10 IS NUMERIC THEN
           DISPLAY "Is a number."
      END-IF

      IF "10" IS NUMERIC THEN
           DISPLAY "Is a number."
      END-IF

      IF "A" IS NUMERIC THEN
           DISPLAY "Is a number."
      ELSE
           DISPLAY "The value is not numeric."
      END-IF

      IF 10 * 10 IS  NUMERIC THEN
           DISPLY "Is a number."
      ELSE
           DISPLAY "The value is not numeric."
      END-IF

      IF "10 * 10" IS NUMERIC THEN
           DISPLAY "Is a number."
      ELSE
           DISPLAY "The value is not numeric."
      END-IF

      IF Num IS NUMERIC THEN
           DISPLAY "Is a number."
      ELSE
           DISPLAY "The value is not numeric."
      END-IF

      IF WebSite1 IS ALPHABETIC-LOWER THEN
           DISPLAY "The text is all in lowercase."
      ELSE
           DISPLAY "The text is not all in lowercase."
      END-IF

      IF WebSite2 IS ALPHABETIC-LOWER THEN
           DISPLAY "The text is all in lowercase."
      ELSE
           DISPLAY "The text is not all in lowercase."
      END-IF

      IF WebSite3 IS ALPHABETIC-UPPER THEN
           DISPLAY "The text is all in letters."
      ELSE
           DISPLAY "The text is not all in letters."
      END-IF

      IF WebSite4 IS ALPHABETIC-UPPER THEN
           DISPLAY "The text is all in letters."
      ELSE
           DISPLAY "The text is not all in letters."
      END-IF

      IF Greeting IS NOT NUMERIC THEN
           DISPLAY "Not is a number."
      END-IF

      IF Greeting IS ALPHABETIC THEN
           DISPLAY "Not is a number."
      END-IF

      IF Greeting IS NOT ALPHABETIC-UPPER THEN
           DISPLAY "The text is not all in letters."
      END-IF

      IF Greeting1 IS NOT ALPHABETIC-UPPER THEN
           DISPLAY "The text is not all in letters."
      END-IF

      IF Number1 IS Hexadecimal THEN
           DISPLAY Number1 " Is a value hexadecimal."
      END-IF

      IF Number2 IS Decimal THEN
           DISPLAY " Is a value decimal."
      END-IF

      STOP RUN.
      END PROGRAM IF-CLASS.