LOOP
SQL> DECLARE
  2  vn_counter NUMBER(3) :=0;
  3  BEGIN
  4  LOOP
  5    IF vn_counter> 3 THEN
  6      EXIT;-- needs a point to break the loop
  7  END IF;
  8  DBMS_OUTPUT.PUT_LINE('counter has not exceeded
  9  3');
 10  vn_counter := vn_counter +1;
 11  END LOOP;
 12  END;
 13
 14  /

PL/SQL procedure successfully completed.


EXIT WHEN

SQL> DECLARE
  2  vn_counter NUMBER(3) :=0;
  3  BEGIN
  4    LOOP
  5          EXIT WHEN vn_counter>3;
  6          DBMS_OUTPUT.PUT_LINE('counter hasn"t exceeded 3');
  7          vn_counter:=vn_counter+1;
  8     END LOOP;
  9  END;
 10  /

PL/SQL procedure successfully completed.

  

WHILE LOOP
SQL>
SQL>  vn_counter NUMBER(3) :=0;
SP2-0734: unknown command beginning "vn_counter..." - rest of line ignored.
SQL> DECLARE
  2   vn_counter NUMBER(3) :=0;
  3  BEGIN
  4     WHILE 3>= VN_counter LOOP
  5       DBMS_OUTPUT.PUT_LINE ('counter has mot exceeded 3');
  6        vn_counter := vn_counter + 1;
  7       END LOOP;
  8   END;
  9  /

PL/SQL procedure successfully completed.

SQL> SET SERVEROUTPUT ON;
SQL> /
counter has mot exceeded 3
counter has mot exceeded 3
counter has mot exceeded 3
counter has mot exceeded 3

PL/SQL procedure successfully completed.

SQL> BEGIN
  2    FOR vn_another_counter IN 1..4 LOOP
  3      DBMS_OUTPUT.PUT_LINE('Loop number ' || vn_another_counter);
  4  END LOOP;
  5  END;
  6  /
Loop number 1
Loop number 2
Loop number 3
Loop number 4

PL/SQL procedure successfully completed.

SQL> SET SERVEROUTPUT ON;
SQL> DECLARE
  2  vc_name VARCHAR(40):='SHRIJANA';
  3  BEGIN
  4  FOR vc_counter IN 1..LENGTH(vc_name) LOOP
  5     DBMS_OUTPUT.PUT_LINE(
  6              SUBSTR(vc_name, vc_counter,1)
  7  );
  8    END LOOP;
  9  END;
 10  /
S
H
R
I
J
A
N
A

PL/SQL procedure successfully completed.