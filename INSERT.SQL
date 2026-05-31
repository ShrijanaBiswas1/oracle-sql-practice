SQL> SELECT s.site_id, c.room_number, c.capacity
  2  FROM sites s, TABLE(s.classroom) c
  3  WHERE site_id=1;

SQL> SELECT i.invoice_number, ii.student_surename
  2  FROM invoices i, TABLE(i.invoice_item) ii
  3  WHERE3 ii.course_title = 'C++' ;