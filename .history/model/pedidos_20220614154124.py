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
            id_order = cls.get_order_id()
            Compras.insert({'Estado' : 0})
            values = Carrito.get_select(['*'], {'IdCliente':id_client})[0]
            query = f"INSERT INTO pedidos (IdProducto, IdCliente, Unidades) VALUES {values}"

            try:
                conn = cls._connect()
                c = conn.cursor()
                c.execute(query)
                conn.commit()
                c.close()

                cls.update_and({'IdPedido' : id_order}, {'IdCliente' :id_client, "IdPedido":id_order})
                cls.update_and({'Total' : Carrito.get_total(id_client)[0][0]}, {'IdCliente' :id_client, "IdPedido":id_order})
                Carrito.delete({'IdCliente':id_client})
            
            except sqlite3.Error as error:
                print('Error while executing sqlite script', error)

            finally:
                if conn:
                    conn.close()

    @classmethod
    def inner_pedido(cls):
        data = ""
        query = """
            SELECT ord.IdProducto, ord.IdCliente, ord.IdPedido, ord.Unidades, pur.Estado, pur.Total
            FROM pedidos ord
            INNER JOIN empleados emp
            ON ord.IdPedido = pur.ID
        """
        try:
            conn = cls._connect()
            c = conn.cursor()
            c.execute(query)
            data = c.fetchall()
            conn.commit()
            c.close()
        
        except sqlite3.Error as error:
            print('Error while executing sqlite script', error)

        finally:
            if conn:
                conn.close()
            return data
