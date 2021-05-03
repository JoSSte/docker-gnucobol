       IDENTIFICATION DIVISION.
       PROGRAM-ID. FileHandling.
       AUTHOR. JoSSte.
       
       ENVIRONMENT DIVISION.
          INPUT-OUTPUT SECTION.
             FILE-CONTROL.
             SELECT SOMEFILE ASSIGN TO filename
             ORGANIZATION IS LINE SEQUENTIAL.
       
       DATA DIVISION.
          FILE SECTION.
          FD SOMEFILE.
          01 NAME PIC A(25).
       
          WORKING-STORAGE SECTION.
          01 WS-STUDENT PIC A(30).
          01 WS-ID PIC 9(5).
          01 WS-EOF PIC A(1).
          01 filename PIC A(30).
         
       PROCEDURE DIVISION.
           MOVE "input.csv" to filename.
           DISPLAY "opening " function trim(filename) "...".
           OPEN INPUT SOMEFILE.
             PERFORM UNTIL WS-EOF='Y'
             READ SOMEFILE INTO WS-STUDENT
                AT END MOVE 'Y' TO WS-EOF
                NOT AT END DISPLAY WS-STUDENT
             END-READ
             END-PERFORM.
           CLOSE SOMEFILE.
       STOP RUN.
