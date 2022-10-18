-- @block
select * from customers;

-- @block
create VIEW customers_view AS SELECT id , name , age FROM customers;

-- @block
select * from customers_view;

-- @block
select * from customers_view where id = 1;

-- @block
UPDATE customers_view SET name = 'Pogs' WHERE id = 1;

-- @block
DELETE FROM customers_view WHERE id = 7;