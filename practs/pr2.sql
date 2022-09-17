-- @block
CREATE TABLE product_details(
   Product varchar(20),
   Quantity int,
   Price real,
   purchase_cost decimal,
   estimated_sale_price float
);

-- @block
ALTER TABLE product_details ADD Geo_Location varchar(20);

-- @block
INSERT INTO product_details VALUES('Product1', 50, 500, 600, 700, 'Location1');
INSERT INTO product_details VALUES('Product2', 60, 600, 700, 800, 'Location2');
INSERT INTO product_details VALUES('Product3', 70, 700, 800, 900, 'Location3');
INSERT INTO product_details VALUES('Product4', 80, 800, 900, 1000, 'Location4');
INSERT INTO product_details VALUES('Product5', 90, 900, 1000, 1100, 'Location5');
INSERT INTO product_details VALUES('Product6', 100, 1000, 1100, 1200, 'Location6');
INSERT INTO product_details VALUES('Product7', 110, 1100, 1200, 1300, 'Location7');
INSERT INTO product_details VALUES('Product8', 120, 1200, 1300, 1400, 'Location8');
INSERT INTO product_details VALUES('Product9', 130, 1300, 1400, 1500, 'Location9');
INSERT INTO product_details VALUES('Product10', 140, 1400, 1500, 1600, 'Location10');

-- @block
SELECT * FROM product_details;

-- @block
SELECT * FROM product_details WHERE Price > 1000;

-- @block
SELECT * FROM product_details WHERE purchase_cost < 800;

-- @block
SELECT * FROM product_details WHERE Quantity > 100;
