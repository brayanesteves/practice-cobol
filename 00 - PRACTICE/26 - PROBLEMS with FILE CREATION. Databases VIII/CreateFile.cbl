       IDENTIFICATION DIVISION.
       PROGRAM-ID. CreateFile.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
      *Dynamic physical file.
       FILE-CONTROL.
       COPY "PhysicalFile.cbl".

       DATA DIVISION.
       FILE SECTION.
       COPY "LogicFile.cbl".
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.

       OPENING-PROCEDURE.
       OPEN OUTPUT EMPLOYEES-FILE.

       CLOSING-PROCEDURE.
       CLOSE EMPLOYEES-FILE.
       DISPLAY "The file was created successfully."
           STOP RUN.
       END PROGRAM CreateFile.