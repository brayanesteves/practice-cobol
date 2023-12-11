       IDENTIFICATION DIVISION.
       PROGRAM-ID. DeletingRecordsFromIndexedFiles.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.

       FILE-CONTROL.
       COPY "PhysicalFile.cbl".

       DATA DIVISION.
       FILE SECTION.      
       COPY "LogicFile.cbl".

       WORKING-STORAGE SECTION.
       77  YES-TO-DELETE PIC X.
       77  RECORD-FOUND PIC X.
       77  FIELD-EMPLOYEES-ID PIC Z(5).

       PROCEDURE DIVISION.
       PROGRAM-BEGIN.
       OPEN I-O EMPLOYEES-FILE.
       PERFORM GET-EMPLOYEE-RECORD.
       PERFORM DELETE-LOGS
       UNTIL EMPLOYEES-ID = ZEROES.
       CLOSE EMPLOYEES-FILE.
       END-PROGRAM.
       STOP RUN.

       GET-EMPLOYEE-RECORD.
       PERFORM START-EMPLOYEE-REGISTRATION.
       PERFORM ENTER-EMPLOYEE-ID-NUMBER.
       MOVE "N" TO RECORD-FOUND.
       PERFORM FIND-REGISTER-EMPLOYEE
       UNTIL RECORD-FOUND = "Y" OR
       EMPLOYEES-ID = ZEROES.
       START-EMPLOYEE-REGISTRATION.
       MOVE SPACE TO EMPLOYEES-REGISTRATION.
       MOVE ZEROES TO EMPLOYEES-ID.
       ENTER-EMPLOYEE-ID-NUMBER.
       DISPLAY " ".
       DISPLAY "Enter an employee ID number." .
       DISPLAY "Enter a number from 1 to 99999.".
       DISPLAY "Enter anything else to exit.".
       ACCEPT FIELD-EMPLOYEES-ID.
       MOVE FIELD-EMPLOYEES-ID TO EMPLOYEES-ID.
       FIND-REGISTER-EMPLOYEE.
       PERFORM READ-RECORD-EMPLOYEE.
       IF RECORD-FOUND = "N"
       DISPLAY "No record was found with that ID."
       PERFORM ENTER-EMPLOYEE-ID-NUMBER.
       READ-RECORD-EMPLOYEE.
       MOVE "Y" TO RECORD-FOUND.
       READ EMPLOYEES-FILE RECORD
       INVALID KEY
       MOVE "N" TO RECORD-FOUND.
       DELETE-LOGS.
       PERFORM SHOW-ALL-FIELDS.
       MOVE "Z" TO YES-TO-DELETE.
       PERFORM QUESTION-DELETE
       UNTIL YES-TO-DELETE = "Y" OR "N".
       IF YES-TO-DELETE = "Y"
       PERFORM DELETE-RECORD.
       PERFORM GET-EMPLOYEE-RECORD.
       SHOW-ALL-FIELDS.
       DISPLAY " ".
       PERFORM SHOW-EMPLOYEE-ID.
       PERFORM SHOW-EMPLOYEE-NAME.
       PERFORM SHOW-EMPLOYEE-LASTNAME.
       PERFORM SHOW-EMPLOYEE-AGE.
       PERFORM SHOW-EMPLOYEE-PHONE.
       PERFORM SHOW-EMPLOYEE-ADDRESS.
       DISPLAY " ".
       SHOW-EMPLOYEE-ID.
       DISPLAY "ID: " EMPLOYEES-ID.
       SHOW-EMPLOYEE-NAME.
       DISPLAY "NAME: " EMPLOYEES-NAME.
       SHOW-EMPLOYEE-LASTNAME.
       DISPLAY "LASTNAMES: " EMPLOYEES-LASTNAME.
       SHOW-EMPLOYEE-AGE.
       DISPLAY "AGE: " EMPLOYEES-AGE.
       SHOW-EMPLOYEE-PHONE.
       DISPLAY "PHONE: " EMPLOYEES-PHONE.
       SHOW-EMPLOYEE-ADDRESS.
       DISPLAY "ADDRESS: " EMPLOYEES-ADDRESS.

       QUESTION-DELETE.
       DISPLAY "ARE YOU SURE YOU WANT TO DELETE THIS RECORD (Y/N)?".
       ACCEPT YES-TO-DELETE.
       IF YES-TO-DELETE= "y"
       MOVE "Y" TO YES-TO-DELETE.
       IF YES-TO-DELETE= "n"
       MOVE "N" TO YES-TO-DELETE.
       IF YES-TO-DELETE NOT = "Y" AND
       YES-TO-DELETE NOT = "N"
       DISPLAY "You must enter Y/N.".
       DELETE-RECORD.
       DELETE EMPLOYEES-FILE RECORD
       INVALID KEY
       DISPLAY "Error deleting employee record.".