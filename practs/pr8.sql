-- Performing various types of subqueries
-- @block
create table customers (
    id int,
    name varchar(10),
    last_name varchar(10),
    age int,
    address varchar(12),
    salary int
);

-- @block
SELECT * from customers;

-- @block
DROP TABLE customers;

-- @block
insert into customers (id, name, last_name, age, address, salary)
values (1, 'Kurizu', 'Taz', 25, 'Mumbai', 20500.00);
insert into customers (id, name, last_name, age, address, salary)
values(2, 'Criz', 'aya', 20, 'Delhi', 1000.00);
insert into customers (id, name, last_name, age, address, salary)
values (3, 'Mosh', 'Roy', 22, 'Bhopal', 2200.00);
insert into customers (id, name, last_name, age, address, salary)
values (4, 'Chait', 'Kar', 27, 'Mumbai', 6500.00);
insert into customers (id, name, last_name, age, address, salary)
values (5, 'Charls', 'Paras', 23, 'Indore', 8000.00);
insert into customers (id, name, last_name, age, address, salary)
values (6, 'Lia', 'Avag', 22, 'Japan', 4000.00);
insert into customers (id, name, last_name, age, address, salary)
values (7, 'Luffy', 'Klat', 24, 'Indore', 10000.00);

-- @block
create table customers_bkp (
    id int,
    name varchar(10),
    last_name varchar(10),
    age int,
    address varchar(12),
    salary int
);


-- @block
insert into customers (id, name, last_name, age, address, salary)
values (8, 'Hunty', 'Lop', 45, 'Kalyan', 2500.00);


-- @block
-- Select subquery
select *
from customers
where id in (
        select id
        from customers
        where salary > 4500
    );

-- @block
-- Insert subquery
insert into customers_bkp
select *
from customers
where id in (
        select id
        from customers
    );

-- @block
-- Update subquery
update customers
set salary = salary * 0.25
where age in (
        select age
        from customers_bkp
        where age >= 27
    );

-- @block
-- Delete subquery
delete from customers
where age in (
        select age
        from customers_bkp
        where age >= 27
    );