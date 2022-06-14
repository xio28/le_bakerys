from model.carrito import Carrito
from model.tablas import *
from model.modules import *
from model.compras import *

class Pedidos(Tablas):
    @classmethod
    def gen_order_id(cls):
        ref = Compras.field_select[['MAX(ID)']]
        return 1 if ref == None else 2
    
    @classmethod
    def do_order(cls, id_client):
        values = Carrito.get_select(['*'], {'IdCliente':id_client})[0]
        query = f"INSERT INTO pedidos (IdProducto, IdCliente, Unidades) VALUES {values}"

        try:
            conn = cls._connect()
            c = conn.cursor()
            c.execute(query)
            conn.commit()
            c.close()

        
        except sqlite3.Error as error:
            print('Error while executing sqlite script', error)

        finally:
            if conn:
                conn.close()