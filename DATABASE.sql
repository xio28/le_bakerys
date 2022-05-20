DROP DATABASE IF EXISTS le_bakery;
CREATE DATABASE le_bakery;
USE le_bakery;

CREATE TABLE users (
    username VARCHAR(30) PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(50) UNIQUE,
    pass VARCHAR(30) NOT NULL
);

CREATE TABLE clients (
    nid VARCHAR(9) NOT NULL,
    name VARCHAR(80) NOT NULL,
    surname1 VARCHAR(80) NOT NULL,
    surname2 VARCHAR(80) NULL,
    street VARCHAR(100) NOT NULL,
    number INT NOT NULL,
    postal_code INT NOT NULL,
    city VARCHAR(50) NOT NULL,
    contact VARCHAR(12),
    CONSTRAINT fk_user_client FOREIGN KEY (username) REFERENCES users(username),
    PRIMARY KEY (nid, username), -- en clientes, el nid y el username son clave primera compuesta ¿?
    email VARCHAR(40) REFERENCES users(email),
    pass VARCHAR(20) REFERENCES users(pass)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    FOREIGN KEY (username) REFERENCES users(username),
    name VARCHAR(80) NOT NULL,
    surname1 VARCHAR(80) NOT NULL,
    surname2 VARCHAR(80) NOT NULL,
    admin BOOLEAN DEFAULT false
);

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    price DEC(5,2) NOT NULL,
    category VARCHAR(50) NOT NULL,
    stock INT DEFAULT 0
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    discount DEC(5,2) NOT NULL,
    subtotal DEC(5,2) NOT NULL,
    total DEC(5,2) NOT NULL,
    FOREIGN KEY (client_nid) REFERENCES clients(nid)
);

CREATE TABLE clients_orders (
    id_client INT NOT NULL,
    id_order INT NOT NULL,
    order_date datetime
);

CREATE TABLE employees_orders (
    emp_id INT NOT NULL,
    id_order INT NOT NULL,
    order_prepared datetime,
    CONSTRAINT employees_orders_employee FOREIGN KEY (emp_id) references orders(emp_id),
    CONSTRAINT employees_orders_order FOREIGN KEY (id_order) references products(order_id),
    CONSTRAINT employees_orders_unique UNIQUE (id_order, emp_id)
);

CREATE TABLE products_orders (
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    amount INT NOT NULL,
    CONSTRAINT products_orders_order FOREIGN KEY (order_id) references orders(order_id),
    CONSTRAINT products_orders_product FOREIGN KEY (product_id) references products(product_id),
    CONSTRAINT products_orders_unique UNIQUE (product_id, order_id)
);

CREATE TABLE clients_products (
    client_nid VARCHAR(9) NOT NULL,
    product_id INT NOT NULL,
    rating INT NOT NULL,
    comment VARCHAR(100),
    CONSTRAINT clients_products_client FOREIGN KEY (client_nid) references clients(nid),
    CONSTRAINT clients_products_product FOREIGN KEY (product_id) references products(product_id),
    CONSTRAINT clients_products_unique UNIQUE (product_id, client_nid)
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
