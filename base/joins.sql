
-- Inner join with select statement
-- @block
SELECT customer.id, customer.name FROM customer INNER JOIN customer_copy ON customer.id=customer_copy.id;

-- Full join with select statement
-- @block
SELECT customer.id, customer.name FROM customer FULL JOIN customer_copy ON customer.id=customer_copy.id;

-- Left join with select statement
-- @block
SELECT customer.id, customer.name FROM customer LEFT JOIN customer_copy ON customer.id=customer_copy.id;

-- Right join with select statement
-- @block
SELECT customer.id, customer.name FROM customer RIGHT JOIN customer_copy ON customer.id=customer_copy.id;