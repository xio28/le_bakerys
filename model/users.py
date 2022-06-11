from model.tables import Tables

class Users(Tables):
    
    table_def = '''

    '''

    def __init__(self):
        super().__init__()
        self.create(self.table_def)

class Clients(Users):

    table_def = '''

    '''

    def __init__(self):
        super().__init__()
        self.create(self.table_def)

class Employees(Users):
    
    table_def = '''

    '''

    def __init__(self):
        super().__init__()
        self.create(self.table_def)
