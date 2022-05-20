DROP DATABASE IF EXISTS le_bakery;
CREATE DATABASE le_bakery;
USE le_bakery;

CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30),
    surname VARCHAR(30),
    username VARCHAR(20) NOT NULL,
    pass VARCHAR(30) NOT NULL,
    email VARCHAR(50)
);

CREATE TABLE clients (
    address VARCHAR(100) NOT NULL,
    contact VARCHAR(12)
);

CREATE TABLE employees (
    admin BOOLEAN DEFAULT false
);

CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    price DEC(5,2) NOT NULL,
    category VARCHAR(50) NOT NULL,
    stock INT DEFAULT 0
);

CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE clients_orders (
    id_client INT NOT NULL,
    id_order INT NOT NULL,
    order_date datetime
);

CREATE TABLE employees_orders (
    id_employee INT NOT NULL,
    id_order INT NOT NULL,
    order_prepared datetime
);

CREATE TABLE products_orders (
    id_order INT NOT NULL,
    id_product INT NOT NULL,
    quantity INT NOT NULL
);

CREATE TABLE clients_products (
    id_client INT NOT NULL,
    id_product INT NOT NULL,
    rating INT NOT NULL,
    comment VARCHAR(100)
);


-- // Posible Trigger que al insertar un nuevo dato en tablas (ej: clients_orders) la fecha sea el datetime actual a la hora de insertarlos.
DELIMITER $$
DROP TRIGGER IF EXISTS set_datetime $$
CREATE TRIGGER set_datetime
ON clients_orders
AFTER INSERT
FOR EACH ROW
BEGIN
    UPDATE clients_orders SET order_date = now();
END $$
DELIMITER ;