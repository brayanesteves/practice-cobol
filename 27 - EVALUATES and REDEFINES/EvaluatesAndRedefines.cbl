       IDENTIFICATION DIVISION.
       PROGRAM-ID. EvaluatesAndRedefines.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 NUM1 PIC 9(5) VALUE 16.
       77 NUM2 PIC 9(5) VALUE 10.
       77 NUM3 PIC 9(5) VALUE 20.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
       EVALUATE TRUE
       WHEN NUM1 = 5
       COMPUTE NUM1 = NUM1 + NUM2 + NUM3
       DISPLAY NUM1
       
       WHEN NUM1 = 10
       COMPUTE NUM1 = NUM1 * NUM3
       DISPLAY NUM1
       
       WHEN NUM1 = 15
       COMPUTE NUM1 = NUM2 - NUM3
       DISPLAY NUM1
       
       WHEN OTHER
       DISPLAY "VALUE NOT CONTEMPLATED."
       
       END-EVALUATE.
       
       STOP RUN.
       END PROGRAM EvaluatesAndRedefines.