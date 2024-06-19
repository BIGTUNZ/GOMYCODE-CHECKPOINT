CREATE DATABASE GoMyCodeDB
GO

USE GoMyCodeDB
GO

CREATE TABLE Customer (
customer_id INT PRIMARY KEY NOT NULL,
customer_name VARCHAR (255) NOT NULL,
customer_address VARCHAR (255) NOT NULL,
);
GO


CREATE TABLE Product (
product_id INT PRIMARY KEY NOT NULL,
product_name VARCHAR (255) NOT NULL,
product_price DECIMAL (7, 2) CHECK (product_price > 0) NOT NULL, 
);
GO

CREATE TABLE ORDERS (
order_id INT PRIMARY KEY NOT NULL,
customer_id INT FOREIGN KEY REFERENCES  Customer(customer_id) NOT NULL,
product_id INT FOREIGN KEY REFERENCES Product(product_id) NOT NULL,
quantity INT NOT NULL,
order_date DATE NOT NULL,
);
GO


INSERT INTO Customer
VALUES (1, 'Ahmed', 'Tunisia'),
(2, 'Coulibaly', 'Senegal'),
(3, 'Hassan', 'Egypt');
GO


INSERT INTO Product
VALUES (1, 'Cookies', '10'),
(2, 'Candy', '5.2');
GO


INSERT INTO ORDERS
VALUES (1, 1, 1, 3, '2023-01-22'),
(2, 2, 2, 10, '2023-04-14');
GO

SELECT * FROM ORDERS