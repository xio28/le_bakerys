DROP DATABASE IF EXISTS le_bakery;
CREATE DATABASE le_bakery;
USE le_bakery;

CREATE TABLE clients (    
    users_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50),
    email VARCHAR(50) UNIQUE,
    pass VARCHAR(50 NOT NULL,
    nid VARCHAR(9) UNIQUE,
    c_name VARCHAR(80) NOT NULL,
    surname1 VARCHAR(80) NOT NULL,
    surname2 VARCHAR(80) NULL,
    street VARCHAR(100) NOT NULL,
    s_number INT NOT NULL,
    story INT, -- Story es el piso
    postal_code INT NOT NULL,
    city VARCHAR(50) NOT NULL,
    contact VARCHAR(12)
);

CREATE TABLE employees (    
    users_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50),
    email VARCHAR(50) UNIQUE,
    pass VARCHAR(50 NOT NULL,
    e_name VARCHAR(80) NOT NULL,
    surname1 VARCHAR(80) NOT NULL,
    surname2 VARCHAR(80) NULL,
    admin_user BOOLEAN DEFAULT false
);

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    p_name VARCHAR(80) NOT NULL,
    cost_price DEC(5,2) NOT NULL,
    category VARCHAR(50) NOT NULL,
    stock INT DEFAULT 0,
    producto_img VARCHAR(100) NOT NULL
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    discount DEC(5,2) NOT NULL,
    total DEC(5,2) NOT NULL
);

CREATE TABLE invoices (
    inv_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL,
    p_name VARCHAR(80) NOT NULL,
    p_units INT NOT NULL,
    retail_price DEC(5,2) NOT NULL,
    nid VARCHAR(9) UNIQUE,
    c_name VARCHAR(80) NOT NULL,
    subtotal DEC(5,2) NOT NULL,
    total DEC(5,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

CREATE TABLE employees_orders_clients (
    emp_id INT NOT NULL,
    client_id INT NOT NULL,
    order_id INT NOT NULL,
    order_date DATETIME,
    PRIMARY KEY (id_order, emp_id, client_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id),
    FOREIGN KEY (client_id) REFERENCES clients(client_id)
);

CREATE TABLE employees_orders (
    emp_id INT NOT NULL,
    order_id INT NOT NULL,
    order_prepared DATETIME,
    PRIMARY KEY (id_order, emp_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

CREATE TABLE products_orders (
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    units INT NOT NULL,
    retail_price DEC(5,2) NOT NULL,
    subtotal DEC(5,2) NOT NULL,
    PRIMARY KEY (product_id, order_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE clients_products (
    client_id VARCHAR(9) NOT NULL,
    product_id INT NOT NULL,
    rating INT NOT NULL,
    PRIMARY KEY (product_id, client_id),
    FOREIGN KEY (client_id) REFERENCES clients(client_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
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
