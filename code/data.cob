       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO.
       
       DATA DIVISION.
          WORKING-STORAGE SECTION.
          01 WS-NAME PIC A(30).
          01 WS-ID PIC 9(5) VALUE 11235.
       
       PROCEDURE DIVISION.
          A000-FIRST-PARA.
          DISPLAY 'Hello World'.
          MOVE 'Jonas' TO WS-NAME.
          DISPLAY "My name is : "WS-NAME.
          DISPLAY "My ID is : "WS-ID.
       STOP RUN.
