USE BikeStores;
GO

SELECT * FROM sales.stores;

SELECT brand_name FROM production.brands;
SELECT customer_id, first_name, last_name FROM sales.customers WHERE city = 'Houston';
SELECT customer_id, first_name, last_name FROM sales.customers WHERE state = 'TX' OR state = 'CA';
SELECT product_name FROM production.products WHERE list_price > 1500;
SELECT product_name FROM production.products WHERE model_year > 2017 AND list_price < 1000;
SELECT product_name FROM production.products WHERE model_year = 2017 OR model_year = 2018 AND list_price >= 750 AND list_price <= 1250;
SELECT MAX(list_price) AS preco_maximo FROM production.products;
SELECT AVG(list_price) AS media_precos FROM production.products;
SELECT COUNT(*) AS total_produtos FROM production.products;
SELECT DISTINCT product_name FROM production.products;
SELECT COUNT(DISTINCT product_name ) AS total_produtos_distintos FROM production.products;

DELETE FROM sales.stores WHERE store_name IN ('Ellenpi', 'PINTOS');
DELETE FROM production.brands WHERE brand_name IN ('Biklas', 'Lx Trotinetes');

SET IDENTITY_INSERT sales.stores OFF; 
INSERT INTO sales.stores (store_name,phone,email,street,city,state,zip_code)
VALUES ('Ellenpi','(351) 210-0000', 'ellenpi@gmail.com', 'Avenida da Liberdade', 'Lisboa','LS','27783'),('PINTOs', NULL,'ellenpi66@gmail.com', 'Avenida da PAZ', 'Porto','PO','24673');

SELECT * FROM sales.stores WHERE city IN ('Porto', 'Lisboa');

SET IDENTITY_INSERT production.brands OFF;
INSERT INTO production.brands (brand_name) 
VALUES('Biklas'),('Lx Trotinetes');

SELECT * FROM production.brands WHERE brand_name IN ('Biklas', 'Lx Trotinetes');

UPDATE sales.stores SET phone = '+3512121212121'  WHERE store_name = 'PINTOs';

UPDATE production.brands SET brand_name = 'Lx Cycles'  WHERE brand_name = 'Biklas';
UPDATE production.brands SET brand_name = 'Lx CYCLES'  WHERE brand_name = 'Lx Cycles';
SELECT * FROM sales.stores WHERE city = 'Porto';
SELECT * FROM production.brands WHERE brand_name = 'LX CYCLES';

DELETE FROM sales.stores WHERE city IN ('Porto','Lisboa')
DELETE FROM production.brands WHERE brand_name LIKE 'Lx%'

SELECT * FROM sales.stores WHERE city IN ('Porto', 'Lisboa');
SELECT * FROM production.brands WHERE brand_name LIKE 'Lx%';

