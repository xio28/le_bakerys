#from model.table_inherate import TableInherate
from table_inherate import TableInherate

class Users(TableInherate):
    
    table_def = '''
    username VARCHAR(50) PRIMARY KEY,
    password VARCHAR(50) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellido1 VARCHAR(50) NOT NULL,
    apellido2 VARCHAR(50) DEFAULT NULL
    '''

    def __init__(self):
        super().__init__()
        self.create(self.table_def)

class Clients():
    pass

class Employees():
    pass

apellido = ""

usuario = {
    'username' : "xPaco",
    "password" : "LaMariLoli",
    'nombre' : 'Paco',
    'apellido1' : 'Smith',
    'apellido2' : apellido if apellido != "" else "Null" 
}

keys = tuple(usuario.keys())
values = tuple(usuario.values())

c = Users()
c.insert(values)