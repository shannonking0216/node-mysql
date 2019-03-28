DROP DATABASE IF EXISTS bamazon_db;
CREATE DATABASE bamazon_db;
USE bamazon_db;

CREATE TABLE products (
item_id INT NOT NULL AUTO_INCREMENT,
product_name VARCHAR(255),
department_name VARCHAR(255),
price DECIMAL(10,2) NULL,
stock_quantity INT NULL, 
PRIMARY KEY (item_id)
);

SELECT * FROM products;

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("PopSockets: Collapsible Grip & Stand for Phones and Tablets - Black Marble", "mobile phone accessory", 9.99, 20);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("IP428-B New Yellow Crystal Bee Anti Dust Plug Cover Charm for Iphone Android 3.5mm", "mobile phone accessory", 7.80, 12);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Indoor - Outdoor Area Rug Runners. Multiple Colors (6 x 10, Gunmetal)", "home", 90.00, 25);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Rivet Modern Hand-Woven Stripe Fringe Throw Blanket, Soft and Stylish, Navy", "home", 49.99, 30);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Woven Nook Decorative Throw Pillow Covers ONLY for Couch, Sofa, or Bed Set of 4 18x18 20x20 and 22x22 inch Modern Design 100% Cotton Stripes Geometric Faux Leather Amaro Set (18'' x 18'')", "home", 39.95, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Rivet Bohemian Stripe Pillow, Ink", "home", 39.99, 13);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Kiera Grace HO85046-1INT KG Julie 4-Piece Bathroom Set – Ceramic White Bath Accessory", "bathroom", 21.43, 42);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("6-Pack Vintage Edison Light Bulb, Antique Style Amber Warm Light, Clear Glass Squirrel Cage Incandescent Lights, E26/E27 Base Dimmable (60w/110v)", "home improvement", 17.99, 64);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Dazhuan Antique 1-Light Metal Globe Chandelier with Cage Flush Mount Ceiling Lamp Light Fixture", "home improvement", 44.99, 27);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Gibson Elite 101984.16RM Rhinebeck 16 Piece Dinnerware Set", "kitchen", 40.71, 6);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUE ("Dawson Dark Bronze Pharmacy Floor Lamp", "home improvement", 49.99, 42);
