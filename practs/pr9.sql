-- @block
create view emp_view as select empno, ename from EMP;

-- @block
select * from emp_view;

-- @block
SELECT * from EMP;

-- @block
create view emp_view2 as select empno, ename, sal from EMP where sal = 10000 AND job = 'IT';

-- @block
select * from emp_view2;

-- @block
update emp_view set ename = 'Lia' where empno = 104;

-- @block
delete emp_view where empno = 104;