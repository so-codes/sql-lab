-- @block
CREATE TABLE countries(
country_id int,
country_name varchar(20),
region_id int
);

-- @block
INSERT INTO countries VALUES(1,'India',1);
INSERT INTO countries VALUES(2,'China',2);
INSERT INTO countries VALUES(3,'Japan',3);
INSERT INTO countries VALUES(4,'USA',4);
INSERT INTO countries VALUES(5,'UK',5);

-- @block
SELECT * FROM countries;

-- @block
SELECT * FROM countries WHERE country_name='India';