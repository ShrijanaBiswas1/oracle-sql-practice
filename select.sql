

SQL> SELECT * FROM student_table;

        ID
----------
STUDENTS(NAME, EMAIL, AGE)
--------------------------------------------------------------------------------
         1
STUDENT_ARR(STUDENT_OBJECT('RAM', 'ram@gmail.com', 20), STUDENT_OBJECT('shyam',
'shyam@gmail.com', 22))


SQL> SELECT * FROM personal_details;

FIRST_NAME MIDDLE_NAME  LAST_NAME  DATE_OF_D G NATIONAL_I CONTACT_NO
---------- ------------ ---------- --------- - ---------- ---------------
Sita       Devi         Thapa      25-NOV-01 F NID654321  9801000000


SQL> SELECT first_name, national_id FROM personal_details
  2  UNION
  3  SELECT college_name, grade FROM academic_details;

FIRST_NAME NATIONAL_I
---------- ----------
IOE        A+
Sita       NID654321

SQL> SELECT contact_number
  2  FROM contact_details
  3  WHERE contact_number > ALL(9812345678);

no rows selected
