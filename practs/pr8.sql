-- Performing various types of subqueries

-- @block
SELECT * FROM Employee_new;

-- @block
-- Subquery using select statement
SELECT * FROM Employee_new WHERE Empno IN (SELECT Empno FROM Employee_new WHERE Sal > 20000);

-- @block
-- Subquery using update statement
UPDATE Employee_new SET Sal = 50000 WHERE Empno IN (SELECT Empno FROM Employee_new WHERE Sal > 20000);

-- @block
-- Subquery using delete statement
DELETE FROM Employee_new WHERE Empno IN (SELECT Empno FROM Employee_new WHERE Sal > 20000);

-- @block
SELECT * FROM Employee_new;