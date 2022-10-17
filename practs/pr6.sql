-- @block
SELECT * FROM EMPLOYEE;

-- @block
SELECT Emp_no, Salary FROM EMPLOYEE;

-- @block
SELECT AVG(Salary) FROM EMPLOYEE;

-- @block
SELECT COUNT(*) FROM EMPLOYEE;

-- @block	
SELECT COUNT(DISTINCT E_name) FROM EMPLOYEE;


-- @block
SELECT E_name, SUM(Salary) FROM EMPLOYEE GROUP BY E_name;


-- @block
SELECT * FROM EMPLOYEE WHERE Salary > 12000;


-- @block
SELECT * FROM EMPLOYEE ORDER BY E_name DESC;


-- @block
SELECT * FROM EMPLOYEE WHERE E_name = 'Amit' AND Salary > 50000;
