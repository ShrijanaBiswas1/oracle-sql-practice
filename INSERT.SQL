SQL> INSERT INTO student_table VALUES (
  2  1,
  3  student_arr(
  4   student_object('RAM', 'ram@gmail.com', 20),
  5   student_object('shyam', 'shyam@gmail.com', 22)
  6     )
  7  );

1 row created.

SQL> SELECT * FROM student_table;

        ID
----------
STUDENTS(NAME, EMAIL, AGE)
--------------------------------------------------------------------------------
         1
STUDENT_ARR(STUDENT_OBJECT('RAM', 'ram@gmail.com', 20), STUDENT_OBJECT('shyam',
'shyam@gmail.com', 22))