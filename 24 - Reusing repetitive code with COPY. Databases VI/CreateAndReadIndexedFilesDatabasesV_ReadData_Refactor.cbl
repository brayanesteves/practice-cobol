       IDENTIFICATION DIVISION.
       PROGRAM-ID. CreateAndReadIndexedFilesDatabasesV_ReadData_Refactor.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
      *Dynamic physical file.
       FILE-CONTROL.
       COPY "PhysicalFile.cbl".

       DATA DIVISION.
       FILE SECTION.
       COPY "LogicFile.cbl".
       
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
       END PROGRAM CreateAndReadIndexedFilesDatabasesV_ReadData_Refactor.