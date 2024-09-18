       IDENTIFICATION DIVISION.
       PROGRAM-ID. CreateAndReadIndexedFilesDatabasesV_ReadData.
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
       77  READ-ALL PIC X.
       PROCEDURE DIVISION.
       START-PROGRAM.
       PERFORM OPENING-PROCEDURE.
       MOVE "0" TO READ-ALL.
       PERFORM READ-NEXT-RECORD.
       	IF READ-ALL = "1"
       		DISPLAY "No records found in the file."
       			ELSE
       				PERFORM DISPLAY-FIELDS
       				UNTIL READ-ALL = "1".
       				PERFORM CLOSING-PROCEDURE.
       				END-PROGRAM.
       				STOP RUN.
       				OPENING-PROCEDURE.
       				OPEN I-O EMPLOYEES-FILE.
       				CLOSING-PROCEDURE.
       				CLOSE EMPLOYEES-FILE.
       				DISPLAY-FIELDS.
       				DISPLAY "ID: " EMPLOYEES-ID
       					" Name: " EMPLOYEES-NAME " Lastnames: "
       					EMPLOYEES-LASTNAMES " Age: " EMPLOYEES-AGE " Phone: "
       					EMPLOYEES-PHONE " Address: " EMPLOYEES-ADDRESS.
       
       				PERFORM READ-NEXT-RECORD.
       				READ-NEXT-RECORD.
       				READ EMPLOYEES-FILE NEXT RECORD
       				AT END MOVE "1" TO READ-ALL.
       END PROGRAM CreateAndReadIndexedFilesDatabasesV_ReadData.