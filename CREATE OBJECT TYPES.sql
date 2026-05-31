SQL*Plus: Release 19.0.0.0.0 - Production on Sat May 2 14:58:00 2026
Version 19.3.0.0.0

Copyright (c) 1982, 2019, Oracle.  All rights reserved.

Enter user-name: sys as sysdba
Enter password:

Connected to:
Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 - Production
Version 19.3.0.0.0

SQL> CREATE OR REPLACE TYPE address_type AS OBJECT (
  2  street    VARCHAR2(25),
  3  city      VARCHAR2(25),
  4  country   VARCHAR2(20)
  5  );
  6  /

Type created.

SQL> SHOW ERRORS TYPE address_type;
No errors.
SQL> CREATE TYPE name_varray_type AS
  2
  3  VARRAY(10) OF varchar(20);
  4
  5  /

Type created.

SQL> SHOW ERROR TYPE name_varray_type
No errors.
SQL> CREATE TYPE object_type_name AS OBJECT (
  2  attribute_name1    VARCHAR2(20),
  3  attribute_name2    VARCHAR2(20),
  4  attribute_name3    VARCHAR2(20)
  5  );
  6  /

Type created.

SQL> SHOW ERRORS TYPE object_type_name;
No errors.
SQL>SQL> CREATE OR REPLACE TYPE object_type_name AS OBJECT (
  2  attribute_name1      VARCHAR2(20),
  3  attribute_name2      VARCHAR2(20),
  4  attribute_name3      VARCHAR2(20)
  5  );
  6  /

Type created.
SQL> CREATE TYPE varray_type_name AS
  2    VARRAY(10) OF object_type_name;
  3  /

Type created.

SQL> SHOW ERRORS TYPE varray_type_name;
No errors.

SQL> SELECT object_name, object_type
  2  FROM user_objects
  3  WHERE object_name = 'SITES';

OBJECT_NAME
--------------------------------------------------------------------------------
OBJECT_TYPE
-----------------------
SITES
TABLE


SQL> DROP TABLE sites;

Table dropped.


SQL> CREATE TABLE sites (
  2  site_id     NUMBER(6),
  3  address     varray_type_name
  4  );

Table created.
SQL> CREATE OR REPLACE TYPE student_object AS OBJECT (
  2  name          VARCHAR2(50),
  3  email         VARCHAR2(50),
  4  age           NUMBER
  5  );
  6  /

Type created.
SQL> CREATE OR REPLACE TYPE student_arr AS VARRAY(5) OF student_object;
  2  /

Type created.
SQL> CREATE TABLE student_table (
  2  id  NUMBER,
  3  students student_arr
  4  );

Table created.