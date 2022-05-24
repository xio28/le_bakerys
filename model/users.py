from model.table_inherate import TableInherate

class Users(TableInherate):

    table_def = '''
        users_id INTEGER PRIMARY KEY, 
        task VARCHAR(50) NOT NULL, 
        email VARCHAR(50) UNIQUE,
        pass VARCHAR(50) NOT NULL
    '''
    
    def __init__(self):
        super().__init__()
        self.create(self.table_def)