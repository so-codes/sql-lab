-- @block
CREATE TABLE customer
(
    id INT,
    name VARCHAR(20),
    age INT,
    address VARCHAR(20),
    salary INT
);

-- @block
INSERT INTO customer VALUES(1,'Tejas',20,'Pune',10000);
INSERT INTO customer VALUES(2,'Bhomi',21,'Mumbai',20000);
INSERT INTO customer VALUES(3,'Jesal',22,'Delhi',30000);
INSERT INTO customer VALUES(4,'James',23,'Bangalore',40000);
INSERT INTO customer VALUES(5,'Shakti',24,'Chennai',50000);

-- @block
SELECT * FROM customer;

-- Subquery with select statement
-- @block
SELECT * FROM customer WHERE id IN ( SELECT id FROM customer WHERE age=22 );

-- Subquery with insert statement
-- @block
CREATE TABLE customer_copy
(
    id INT,
    name VARCHAR(20),
    age INT,
    address VARCHAR(20),
    salary INT
);

-- @block
SELECT * FROM customer_copy;

-- @block
INSERT INTO customer_copy SELECT * FROM customer WHERE id IN ( SELECT id FROM customer);

-- Subquery with update statement
-- @block
UPDATE customer_copy SET address='Nagpur' WHERE id IN ( SELECT id FROM customer WHERE age=21 );

-- Subquery with delete statement
-- @block
DELETE FROM customer_copy WHERE id IN ( SELECT id FROM customer WHERE age=23 );