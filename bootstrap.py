import sqlite3
from os.path import exists

from model.usuarios import *
from model.productos import *
from model.carrito import *

def create_connection(db):
    try:
        conn = sqlite3.connect(db)

    except sqlite3.Error as error:
        print(error)

    finally:
        if conn:
            conn.close()


if __name__ == '__main__':

    DATABASE = Modules.load_config().get('database')

    Usuarios.create(Modules.load_config().get('usuarios'))
    Clientes.create(Modules.load_config().get('clientes'))
    Empleados.create(Modules.load_config().get('empleados'))
    Productos.create(Modules.load_config().get('productos'))
    Carrito.create(Modules.load_config().get('carrito'))

    if not exists(DATABASE):
        create_connection(DATABASE)
