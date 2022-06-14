from turtle import update
from model.carrito import Carrito
from model.tablas import *
from model.modules import *
from model.compras import *

class Pedidos(Tablas):

    @classmethod
    def get_order_id(cls):
        return Compras.field_select(['MAX(ID)'])[0][0]

    @classmethod
    def do_order(cls, id_client):
        if len(Carrito.get_select(['*'], {'IdCliente':id_client})) != 0:
            Compras.insert({'Estado' : 0})
            id_order = cls.get_order_id()
            values = Carrito.get_select(['*'], {'IdCliente':id_client})[0]
            query = f"INSERT INTO pedidos (IdProducto, IdCliente, Unidades) VALUES {values}"

            try:
                conn = cls._connect()
                c = conn.cursor()
                c.execute(query)
                conn.commit()
                c.close()

                cls.update({'IdPedido' : id_order}, {'IdCliente' :id_client})
                Compras.update_total(id_client)
                Carrito.delete({'IdCliente':id_client})
            
            except sqlite3.Error as error:
                print('Error while executing sqlite script', error)

            finally:
                if conn:
                    conn.close()