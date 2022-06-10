import sys
sys.path.append('/home/cfgs1/Documentos/repo/le_bakerys')
from model.table_inherate import TableInherate

class Clients(TableInherate):

    table_def = '''
        client_id INTEGER PRIMARY KEY AUTOINCREMENT,
        username VARCHAR(50) NOT NULL,
        password VARCHAR(50) NOT NULL,
        email VARCHAR(50) NOT NULL,
        c_name VARCHAR(80) NOT NULL,
        surname1 VARCHAR(80) NOT NULL,
        surname2 VARCHAR(80) DEFAULT "",
        nid VARCHAR(9) NOT NULL,
        contact VARCHAR(12) NOT NULL,
        street VARCHAR(100) NOT NULL,
        s_num INTEGER NOT NULL,
        s_story VARCHAR(12) NOT NULL,
        postal_code INTEGER NOT NULL,
        city VARCHAR(50) NOT NULL,
        privacy_policy BOOLEAN NOT NULL
    '''
    
    def __init__(self):
        super().__init__()
        self.create(self.table_def)


form_data = {
    'username' : "ilos28",
    'password' : "cocoloco2022",
    'email' : "xiomara281190@gmail.com",
    'c_name' : "Siomara",
    'surname1' : "Alonso",
    'surname2' : "Hernández",
    'nid' : "46946978K",
    'contact' : "696969696",
    'street' : "Almería",
    's_num' : 18,
    's_story' : "4D",
    'postal_code' : 35022,
    'city' : "Las Palmas",
    'privacy_policy' : 1
}

keys = tuple(form_data.keys())
values = tuple(form_data.values())

c = Clients()
c.insert(values)
