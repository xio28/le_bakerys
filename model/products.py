from model.table_inherate import TableInherate

class Products(TableInherate):

    table_def = '''
        product_id INTEGER PRIMARY KEY,
        p_name VARCHAR(80) NOT NULL,
        price DECIMAL(5,2) NOT NULL,
        category VARCHAR(50) NOT NULL,
        stock INTEGER DEFAULT 0
    '''
    
    def __init__(self):
        super().__init__()
        self.create(self.table_def)