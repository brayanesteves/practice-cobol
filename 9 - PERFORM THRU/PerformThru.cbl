       IDENTIFICATION DIVISION.
       PROGRAM-ID. PerformTru.
       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.
       01  NAMES PIC X(15).
       01  LASTNAMES PIC X(20).
       01  AGE PIC 99.

       PROCEDURE DIVISION.

       DATA-REQUEST.
       PERFORM NAMES-REQUEST THRU LASTNAMES-REQUEST.
       PERFORM AGE-REQUEST.
       DISPLAY "Name: " NAMES " Lastnames: " LASTNAMES " Age: " AGE.
           
           STOP RUN.
       
       NAMES-REQUEST.
           DISPLAY "Enter names: "
           ACCEPT NAMES.

       LASTNAMES-REQUEST.
           DISPLAY "Enter lastanmes: "
           ACCEPT LASTNAMES.

       AGE-REQUEST.
           DISPLAY "Enter age: "
           ACCEPT AGE.

       END PROGRAM PerformTru.
       