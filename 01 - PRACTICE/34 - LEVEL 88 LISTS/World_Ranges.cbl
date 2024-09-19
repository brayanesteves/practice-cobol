      IDENTIFICATION DIVISION.
      PROGRAM-ID. World_Ranges.

      ENVIRONMENT DIVISION.
      CONFIGURATION SECTION.
      DATA DIVISION.
      FILE SECTION.
      WORKING-STORAGE SECTION.
      01 World PIC X(20).
           88 AsianCountries VALUE "Bhutan" "Iran" "China" "Japan".
           88 Africa VALUE "Egypt" "Ethiopia" "Libya" "Morocco".
           "Nigeria" "Republic of the Congo" "Senegal".
           88 America VALUE "Argentina" "Mexico" "Colombia" "Peru"
           "Dominican Republic" "Venezuela" "Chile".
           88 Asia VALUE "Bhutan" "Malaysia" "Iran" "China" "Japan"
           "Turkey" "Mongolia".
           88 Europe VALUE "France" "Italy" "Spain" "Switzerland"
           "Andorra" "Denmark" "Portugal".
           88 Oceania VALUE "Australia" "New Zealand" "Samoa"
           "Micronesia" "Tuvalu" "Palau".

      PROCEDURE DIVISION.
      SelectCountry.
      DISPLAY "Enter a country and I'll tell you if it's on the list: ".
      ACCEPT World.
      IF AsianCountries THEN
           DISPLAY "The Asian country is on the list."
      ELSE
           IF Asia THEN
               DISPLAY "The country is Asian, but it is not on the"
               " list of specified countries."
           ELSE
               DISPLAY "The country is not Asian.."
           END-IF
      END-IF
      
      STOP RUN.
      END PROGRAM World_Ranges.