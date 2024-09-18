      IDENTIFICATION DIVISION.
      PROGRAM-ID. TheLevelNumbersOfExecution.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION.
      01 User.
           02 Name PIC X(15) VALUE SPACES.
           02 Lastnames.
               03 Lastname1 PIC X(30) VALUE SPACES.
               03 Lastname2 PIC X(30) VALUE SPACES.
           02 Phones.
               03 Smartphone.
                   04 Smartphone1 PIC X(9) VALUE SPACES.
                   04 Smartphone2 PIC X(9) VALUE SPACES.
               03 LandlineTelephone.
                   04 LandlineTelephone1 PIC X(9) VALUE SPACES.
                   04 LandlineTelephone2 PIC X(9) VALUE SPACES.
      PROCEDURE DIVISION.

      STOP RUN.

      END PROGRAM TheLevelNumbersOfExecution.