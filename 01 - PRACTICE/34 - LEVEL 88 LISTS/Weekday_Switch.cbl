      IDENTIFICATION DIVISION.
      PROGRAM-ID. Weekday_Switch.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      SPECIAL-NAMES.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION.
      77 Weekday PIC 9 VALUE ZERO.
           88 Monday VALUE 1.
           88 Tuesday VALUE 2.
           88 Wednesday VALUE 3.
           88 Thusday VALUE 4.
           88 Friday VALUE 5.
           88 Saturday VALUE 6.
           88 Sunday VALUE 7.

      PROCEDURE DIVISION.
      SelectDay.
      DISPLAY "What day of the week is it? (1-7)".
      ACCEPT Weekday.
      IF Monday THEN
           DISPLAY "You have a tough week ahead of you."
      ELSE
           IF Tuesday THEN
               DISPLAY "One day less until the 'weekend'."
           ELSE
               IF Wednesday THEN
                   DISPLAY "The day in between."
               ELSE
                   IF Thusday THEN
                       DISPLAY "What's that? The weekend "
                       "is coming."
                   ELSE
                       IF Friday THEN
                           DISPLAY "Friday is here!"
                       ELSE
                           IF Saturday THEN
                               DISPLAY "The best day of my life."
                           ELSE
                               IF Sunday THEN
                                   DISPLAY "You know what comes after "
                                           "this, right?"
                               ELSE
                                   DISPLAY " As far as "
                                           "I know, that day does"
                                           " not exist."
                               END-IF
                           END-IF
                       END-IF
                   END-IF
               END-IF
           END-IF
      END-IF
      STOP RUN.
      END PROGRAM Weekday_Switch.