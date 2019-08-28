DROP DATABASE IF EXISTS bamazon_db;
CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
  product_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(175) NOT NULL,
  department_name VARCHAR(50) NOT NULL,
  price DECIMAL(10,2),
  stock_quantity INT,
  PRIMARY KEY (id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Playstation 4", "Electronics", 299.99, 1500),
       ("Tricycle", "Toys", 34.99, 500), 
       ("Towel", "Home Goods", 8.99, 9000), 
       ("Wall Paint", "Home Improvement", 24.99, 6000),
       ("Baseball Glove", "Sports & Outdoors", 49.99, 300),
       ("Futon", "Furnature", 249.99, 150), 
       ("T-Shirt", "Clothing & Shoes", 9.99, 10000), 
       ("Eye Drops", "Pharmacy", 7.99, 2500),
       ("Baby Crib", "Baby", 199.99, 300), 
       ("Motor Oil", "Auto", 24.99, 5555);