       SELECT EMPLOYEES-FILE
       ASSIGN TO "employees.dat"
       ORGANIZATION IS INDEXED
      *Primary key 'EMPLOYEES-KEY'.
       RECORD KEY IS EMPLOYEES-ID
       ACCESS MODE IS DYNAMIC.