-- PLSQL commands

-- @block
BEGIN
dbms_output.put_line('Hello World!');
END;
/

-- @block
DECLARE
a integer: = 10;
b integer: = 20;
c integer;
BEGIN
c: = a + b;
dbms_output.put_line('C ='||c);
END;
/