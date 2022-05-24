import sqlite3
from config.config import DATABASE
from os.path import exists
from model.products import Products
from model.users import Users

def create_connection(db):
    conn = None
    try:
        conn = sqlite3.connect(db)

    except sqlite3.Error as error:
        print(error)

    finally:
        if conn:
            conn.close()

'''
def create_database(db_file):
    conn = create_connection(DATABASE)
    conn.executescript("""
    CREATE TABLE users (
        users_id INTEGER PRIMARY KEY, 
        task VARCHAR(50) NOT NULL, 
        email VARCHAR(50) UNIQUE,
        pass VARCHAR(50) NOT NULL
        );

    CREATE TABLE clients(
        nid VARCHAR(9) UNIQUE,
        c_name VARCHAR(80) NOT NULL,
        client_id INTEGER,
        surname1 VARCHAR(80) NOT NULL,
        surname2 VARCHAR(80) NULL,
        street VARCHAR(100) NOT NULL,
        s_number INTEGER NOT NULL,
        postal_code INTEGER NOT NULL,
        city VARCHAR(50) NOT NULL,
        contact VARCHAR(12),
        PRIMARY KEY (nid, client_id),
        FOREIGN KEY (client_id) REFERENCES users(users_id)
    );

    CREATE TABLE employees (
        emp_id INTEGER PRIMARY KEY,
        e_name VARCHAR(80) NOT NULL,
        surname1 VARCHAR(80) NOT NULL,
        surname2 VARCHAR(80) NULL,
        admin BOOLEAN DEFAULT 0,
        FOREIGN KEY (emp_id) REFERENCES users(users_id)
    );

    CREATE TABLE products (
        product_id INTEGER PRIMARY KEY,
        p_name VARCHAR(80) NOT NULL,
        price DECIMAL(5,2) NOT NULL,
        category VARCHAR(50) NOT NULL,
        stock INTEGER DEFAULT 0
    );

    CREATE TABLE orders (
        order_id INTEGER PRIMARY KEY,
        discount DECIMAL(5,2) NOT NULL,
        subtotal DECIMAL(5,2) NOT NULL,
        order_date DATETIME NOT NULL,
        FOREIGN KEY (client_id) REFERENCES clients(client_id)
    );

    CREATE TABLE invoices (
        inv_id INTEGER AUTOINCREMENT,
        client_id INTEGER,
        product_id INTEGER,
        order_id INT,
        PRIMARY KEY (inv_id, product_id, client_id, order_id),
        FOREIGN KEY (client_id) REFERENCES clients(client_id),
        FOREIGN KEY (order_id) REFERENCES orders(order_id),
        FOREIGN KEY (product_id) REFERENCES products(product_id)
    );

    CREATE TABLE employees_orders (
        emp_id INTEGER,
        order_id INTEGER,
        order_prepared DATETIME,
        PRIMARY KEY (id_order, emp_id),
        FOREIGN KEY (emp_id) REFERENCES employees(emp_id),
        FOREIGN KEY (order_id) REFERENCES orders(order_id)
    );

    CREATE TABLE products_orders (
        order_id INTEGER,
        product_id INTEGER,
        amount INTEGER NOT NULL,
        PRIMARY KEY (product_id, order_id),
        FOREIGN KEY (order_id) REFERENCES orders(order_id),
        FOREIGN KEY (product_id) REFERENCES products(product_id)
    );

    CREATE TABLE clients_products (
        client_id INTEGER,
        product_id INTEGER,
        rating INTEGER,
        comment VARCHAR(100),
        PRIMARY KEY (product_id, client_nid),
        FOREIGN KEY (client_id) REFERENCES clients(client_id),
        FOREIGN KEY (product_id) REFERENCES products(product_id)
    );
    """)
    conn.commit()

'''

products = Products()
users = Users()

if __name__ == '__main__':
    if not exists(DATABASE):
        create_connection(DATABASE)
