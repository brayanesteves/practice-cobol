      IDENTIFICATION DIVISION.
      PROGRAM-ID. LevelOfExecution88.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION.
      01 Age PIC 999 VALUE ZEROS.
           *> 88 Teen VALUE 1 THRU 39.
           88 Mature VALUE 40 THRU 65.
           88 Anacian VALUE 66 THRU 100.

      PROCEDURE DIVISION.      
      CheckAge.
     *> The user's age is requested.
      DISPLAY "Enter to age: "
      ACCEPT Age.

     *> Possible values are evaluated.
      IF Age IS GREATER THAN 1 AND Age IS LESS THAN 40 THEN
           DISPLAY "You are a teenager. " WITH NO ADVANCING
      END-IF

      *> IF Teen THEN
      *>      DISPLAY "You are a teenager. " WITH NO ADVANCING
      *> END-IF

      IF Mature THEN
           DISPLAY "You are a mature person. " WITH NO ADVANCING
      END-IF

      IF Anacian THEN
           DISPLAY "You are a ancian person. " WITH NO ADVANCING
      END-IF

      DISPLAY "You are " Age " years old.".

      STOP RUN.
      END PROGRAM LevelOfExecution88.