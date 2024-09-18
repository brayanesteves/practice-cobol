       IDENTIFICATION DIVISION.
       PROGRAM-ID. EnvironmentDivision.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. Computer where the code was written.
       OBJECT-COMPUTER. Computer where the code will be executed.
       SPECIAL-NAMES.
       
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       SELECT [OPTIONAL] File-name.
       ASSIGN TO type-of-device.
       ORGANIZATION IS organization-type.
       ACCESS MODE IS File access mode.
       RECORD KEY IS Registry key.
       ALTERNATE RECORD KEY IS Alternate registry keys.
       WITH DUPLICATES
       STATUS IS. File state variable.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       MAIN-PROCEDURE.
           STOP RUN.
       END PROGRAM EnvironmentDivision.
       