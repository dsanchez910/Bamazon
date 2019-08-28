DROP DATABASE IF EXISTS bamazon_db;
CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
  item_id INT(4) NOT NULL,
  product_name VARCHAR(175) NOT NULL,
  department_name VARCHAR(50) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  stock_quantity INT (50) NOT NULL,

  PRIMARY KEY (id)
);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (1, "Playstation 4", "Electronics", 299.99, 10),
       (2, "Tricycle", "Toys", 34.99, 20), 
       (3, "Towel", "Home Goods", 8.99, 30), 
       (4, "Wall Paint", "Home Improvement", 24.99, 40),
       (5, "Baseball Glove", "Sports & Outdoors", 49.99, 15),
       (6, "Futon", "Furnature", 249.99, 25), 
       (7, "T-Shirt", "Clothing & Shoes", 9.99, 35), 
       (8, "Eye Drops", "Pharmacy", 7.99, 45),
       (9, "Baby Crib", "Baby", 199.99, 5), 
       (10, "Motor Oil", "Auto", 24.99, 50);

SELECT * FROM products;