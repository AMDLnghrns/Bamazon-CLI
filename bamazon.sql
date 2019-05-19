-- CREATE DATABASE bamazon -- create the database namned bamazon 

USE bamazon
; -- switch to the database

-- UPDATE products 
-- SET stock_quantity = (stock_quantity - 1) 
-- WHERE item_id = 11;

-- UPDATE products 
-- SET stock_quantity = 100
-- -- WHERE item_id = 11
-- ;

-- DELETE from products where item_id in ('1','2','5','6','7','12','17','9','19'); 

SELECT * -- item_id, item_name, price, stock_quantity
FROM products
WHERE item_id = item_id
-- AND genre = 'Electric'  
ORDER BY genre
;



-- DROP TABLE products;

-- CREATE TABLE products ( -- create the table with these columns
-- 	item_id integer not null auto_increment primary key, -- integer column with an item number
-- 	item_name varchar(50) not null, -- name of the album
--     genre varchar(50) not null, -- genre
--     department_name varchar(50) not null, -- department the product should be part of
--     price decimal(13,2) not null, -- cost to customer
--     stock_quantity integer(10) -- how much of the product you have in stock
-- );

-- INSERT INTO products (item_name, genre, department_name, price, stock_quantity) VALUES ('Dressed to Kill by KISS','Classic Rock','Electronics',25,5);
-- INSERT INTO products (item_name, genre, department_name, price, stock_quantity) VALUES ('Dynasty by KISS','Classic Rock','Electronics',11,5);
-- INSERT INTO products (item_name, genre, department_name, price, stock_quantity) VALUES ('The Dark Side of the Moon by Pink Floyd','Classic Rock','Electronics',25,5);
-- INSERT INTO products (item_name, genre, department_name, price, stock_quantity) VALUES ('The Wall by Pink Floyd','Classic Rock','Electronics',11,5);
-- INSERT INTO products (item_name, genre, department_name, price, stock_quantity) VALUES ('Wish You Were Here by Pink Floyd','Classic Rock','Electronics',25,5);
-- INSERT INTO products (item_name, genre, department_name, price, stock_quantity) VALUES ('Tejas by ZZ Top','Classic Rock','Electronics',11,5);
-- INSERT INTO products (item_name, genre, department_name, price, stock_quantity) VALUES ('Afterburner by ZZ Top','Classic Rock','Electronics',15,5);
-- INSERT INTO products (item_name, genre, department_name, price, stock_quantity) VALUES ('Backstreet Boys by Backstreet Boys','Pop','Electronics',10,5);
-- INSERT INTO products (item_name, genre, department_name, price, stock_quantity) VALUES ('Millenium by Backstreet Boys','Pop','Electronics',10,5);
-- INSERT INTO products (item_name, genre, department_name, price, stock_quantity) VALUES ('No Strings Attached by NSync','Pop','Electronics',15,5);
-- INSERT INTO products (item_name, genre, department_name, price, stock_quantity) VALUES ('Voices by Phantogram','Electric','Electronics',25,5);
-- INSERT INTO products (item_name, genre, department_name, price, stock_quantity) VALUES ('Nightlife by Phantogram','Electric','Electronics',25,5);
-- INSERT INTO products (item_name, genre, department_name, price, stock_quantity) VALUES ('Eyelid Movies by Phantogram','Electric','Electronics',11,5);
-- INSERT INTO products (item_name, genre, department_name, price, stock_quantity) VALUES ('Feels Like Today by Rascal Flatts','Country','Electronics',15,5);
-- INSERT INTO products (item_name, genre, department_name, price, stock_quantity) VALUES ('The Bones of What You Believe by Chvrches','Electric','Electronics',12,5);
-- INSERT INTO products (item_name, genre, department_name, price, stock_quantity) VALUES ('Every Open Eye by Chvrches','Electric','Electronics',15,5);
-- INSERT INTO products (item_name, genre, department_name, price, stock_quantity) VALUES ('Love Is Dead by Chvrches','Electric','Electronics',25,5);
-- INSERT INTO products (item_name, genre, department_name, price, stock_quantity) VALUES ('1989 by Taylor Swift','Pop','Electronics',25,5);
-- INSERT INTO products (item_name, genre, department_name, price, stock_quantity) VALUES ('Reputation by Taylor Swift','Pop','Electronics',20,5);
-- INSERT INTO products (item_name, genre, department_name, price, stock_quantity) VALUES ('Speak Now by Taylor Swift','Pop','Electronics',20,5);
-- INSERT INTO products (item_name, genre, department_name, price, stock_quantity) VALUES ('Epoch by Tycho','Electric','Electronics',10,5);
-- INSERT INTO products (item_name, genre, department_name, price, stock_quantity) VALUES ('MELT by SHAED','Electric','Electronics',11,5)

-- ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '$Wordf1sh211986' 

