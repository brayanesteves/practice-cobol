       IDENTIFICATION DIVISION.
       PROGRAM-ID. CreateAndReadIndexedFilesDatabasesV_AddData.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
      *Dynamic physical file.
       FILE-CONTROL.
       SELECT EMPLOYEES-FILE
       ASSIGN TO "employees.dat"
       ORGANIZATION IS INDEXED
      *Primary key 'EMPLOYEES-KEY'.
       RECORD KEY IS EMPLOYEES-ID
       ACCESS MODE IS DYNAMIC.

       DATA DIVISION.
       FILE SECTION.
      *File logic.
       FD EMPLOYEES-FILE.
       01 EMPLOYEES-RECORD.
           05 EMPLOYEES-ID PIC 9(6).
           05 EMPLOYEES-NAME PIC X(25).
           05 EMPLOYEES-LASTNAMES PIC X(25).
           05 EMPLOYEES-AGE PIC 9(3).
           05 EMPLOYEES-PHONE PIC X(9).
           05 EMPLOYEES-ADDRESS PIC X(35).

       WORKING-STORAGE SECTION.
       01  INDETIFICATION PIC X(36)
           VALUE "ENTER a ID of new employee: ".
       01  NAMES PIC X(33)
           VALUE "ENTER a name of employees: ".
       01  LASTNAMES PIC X(25)
           VALUE "ENTER a lastname: ".
       01  PHONE PIC X(33)
           VALUE "ENTER a number phone: ".
       01  DIRECTION PIC X(25)
           VALUE "ENTER a direction: ".
       
       01  YES-NO PIC X.
       01  INPUTS PIC X.

       PROCEDURE DIVISION.
       MAIN-LOGIC SECTION.
       PROGRAM-BEGIN.

       PERFORM PROCEDURE-FOR-OPENING.
       MOVE "Y" TO YES-NO.
       PERFORM ADD-DATA
       UNTIL YES-NO = "N".
       PERFORM PROCEDURE-FOR-CLOSED.

       END-PROGRAM.
       STOP RUN.

       PROCEDURE-FOR-OPENING.
       OPEN OUTPUT EMPLOYEES-FILE.
       
       PROCEDURE-FOR-CLOSED.
       CLOSE EMPLOYEES-FILE.
       
       ADD-DATA.
       MOVE "N" TO INPUTS.
       PERFORM GET-FIELDS
       UNTIL INPUTS = "Y".
       PERFORM WRITTE-DATAS.
       PERFORM REBOOT.
       
       GET-FIELDS.
       MOVE SPACE TO EMPLOYEES-RECORD.
       DISPLAY INDETIFICATION.
       ACCEPT EMPLOYEES-ID.
       DISPLAY NAMES.
       ACCEPT EMPLOYEES-NAME.
       DISPLAY LASTNAMES.
       ACCEPT EMPLOYEES-LASTNAMES.
       DISPLAY AGE.
       ACCEPT EMPLOYEES-AGE.
       DISPLAY PHONE.
       ACCEPT EMPLOYEES-ADDRESS.
       DISPLAY DIRECTION.
       ACCEPT EMPLOYEES-ADDRESS.
       PERFORM CONTINUES.
       
       CONTINUES.
       MOVE "Y" TO INPUTS.
       IF EMPLOYEES-NAME = SPACE
       MOVE "N" TO INPUTS.
       
       WRITTE-DATAS.
       WRITE EMPLOYEES-RECORD.
       
       REBOOT.
       DISPLAY "Do you want to store another record in the database?".
       ACCEPT YES-NO.
       IF YES-NO = "y"
       MOVE "y" TO YES-NO.
       IF YES-NO NOT = "Y"
       MOVE "N" TO YES-NO.
       
       END PROGRAM CreateAndReadIndexedFilesDatabasesV_AddData.
