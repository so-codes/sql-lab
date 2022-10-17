-- @block
CREATE TABLE Employee_new
(
   Empno NUMBER,
   Ename VARCHAR2(20),
   Job VARCHAR2(20),
   Mgr NUMBER,
   Sal NUMBER
);

-- @block
ALTER TABLE Employee_new ADD (commission NUMBER);
-- @block
INSERT INTO Employee_new VALUES (1, 'Tejas', 'IT', 2, 30000, 1000);
INSERT INTO Employee_new VALUES (2, 'Jesal', 'Sales', 3, 15000, 1000);
INSERT INTO Employee_new VALUES (3, 'Prem', 'HR', 4, 20000, 1000);
INSERT INTO Employee_new VALUES (4, 'Bhomi', 'Manager', 5, 15000, 1000);
INSERT INTO Employee_new VALUES (5, 'Shakti', 'Doctor', 6, 25000, 1000);
INSERT INTO Employee_new VALUES (19, 'Kurizu', 'Manager', 7, 30000, 1000);

-- @block
SELECT * FROM Employee_new;

-- @block
UPDATE Employee_new SET Job = 'Engineer' WHERE Empno = 19;

-- @block
ALTER TABLE Employee_new RENAME COLUMN commission TO comm;
-- @block
DELETE FROM Employee_new WHERE Empno = 19;
-- @block
SELECT * FROM Employee_new;

-- Joins
-- @block
SELECT Empno, Ename, Job FROM Employee_new INNER JOIN EMPLOYEE ON Employee_new.Empno = EMPLOYEE.Emp_no;
-- @block
SELECT Empno, Ename, Job FROM Employee_new FULL JOIN EMPLOYEE ON Employee_new.Empno = EMPLOYEE.Emp_no;
-- @block
SELECT Empno, Ename, Job FROM Employee_new LEFT JOIN EMPLOYEE ON Employee_new.Empno = EMPLOYEE.Emp_no;
-- @block
SELECT Empno, Ename, Job FROM Employee_new RIGHT JOIN EMPLOYEE ON Employee_new.Empno = EMPLOYEE.Emp_no;