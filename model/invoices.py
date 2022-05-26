from model.table_inherate import TableInherate

class Invoices(TableInherate):

    table_def = '''
        inv_id INTEGER AUTOINCREMENT,
        client_id INTEGER,
        product_id INTEGER,
        order_id INT,
        PRIMARY KEY (inv_id, product_id, client_id, order_id),
        FOREIGN KEY (client_id) REFERENCES clients(client_id),
        FOREIGN KEY (order_id) REFERENCES orders(order_id),
        FOREIGN KEY (product_id) REFERENCES products(product_id)
    '''
    
    def __init__(self):
        super().__init__()
        self.create(self.table_def)