       IDENTIFICATION DIVISION.
       PROGRAM-ID. LogicalAndPhysicalFilesDatabasesII_IO.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.

       FILE CONTROL.
       SELECT OPTIONAL FILE-EMPLOYEES.
       ASSIGN TO "employees.dat"
       ORGANIZATION IS SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD FILE-EMPLOYEES.
           01 REGISTER-EMPLOYEES.
               05 EMPLOYEES-ID        PIC X(6).
               05 EMPLOYEES-NAME      PIC X(25).
               05 EMPLOYEES-LASTNAMES PIC X(35).
               05 EMPLOYEES-AGE       PIC X(3).
               05 EMPLOYEES-TELEPHONE PIC X(9).
               05 EMPLOYEES-DIRECTION PIC X(35).

       WORKING-STORAGE SECTION.

       01  IDENTIFICATOR PIC X(36)
           VALUE "Enter a new employee ID:".
       01  NAMES PIC X(33)
           VALUE "Enter an employee name:".
       01  LASTNAMES PIC X(25)
           VALUE "Enter the last name:".
       01  AGE PIC X(19)
           VALUE "Enter the age:".
       01  TELEPHONE PIC X(33)
           VALUE "Enter a number of telephone:".
       01  DIRECTION PIC X(25)
           VALUE "Enter a direction:".

       PROCEDURE DIVISION.
       MAIN-LOGIC SECTION.
       PROGRAM-BEGIN.

       PERFORM OPENING-PROCEDURE.
       MOVE "Y" TO YES-NO.
       PERFORM ADD-RECORD
       UNTIL YES-NO = "N".
       PERFORM CLOSURE-PROCEDURE.

       PROGRAM-DONE.
       STOP RUN.

       OPENING-PROCEDURE.
       OPEN INPUT FILE-EMPLOYEES.

       CLOSURE-PROCEDURE.
       CLOSE FILE-EMPLOYEES.

       ADD-RECORD.
       MOVE "N" TO ENTRY-OK.
       PERFORM GET-FIELDS
       UNTIL ENTRY-OK = "Y".
       PERFORM WRITE-LOG.
       PERFORM RESTART.

       GET-FIELDS.
       MOVE SPACE TO FILE-EMPLOYEES.
       DISPLAY IDENTIFICATOR " ? ".
       ACCEPT EMPLOYEES-ID.
       DISPLAY NAMES " ? ".
       ACCEPT EMPLOYEES-NAME.
       DISPLAY LASTNAMES " ? ".
       ACCEPT EMPLOYEES-LASTNAMES.
       DISPLAY AGE " ? ".
       ACCEPT EMPLOYEES-AGE.
       DISPLAY TELEPHONE.
       ACCEPT EMPLOYEES-TELEPHONE.
       DISPLAY DIRECTION.
       ACCEPT EMPLOYEES-DIRECTION.
       PERFORM VALIDATE-FIELDS.

       VALIDATE-FIELDS.
       MOVE "Y" TO ENTRY-OK.
       IF  EMPLOYEES-NAME = SPACE
       DISPLAY "Error: You must specify a name."
       MOVE "N" TO ENTRY-OK.

       WRITE-LOG.
       WRITE FILE-EMPLOYEES.

       RESTART.
       DISPLAY "Do you want to store another record in the database?".
       ACCEPT YES-NO.
       IF YES-NO = "y"
       MOVE "Y" TO YES-NO.
       IF YES-NO NOT = "Y"
       MOVE "N" TO YES-NO.

       END PROGRAM LogicalAndPhysicalFilesDatabasesII_IO.