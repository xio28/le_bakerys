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
        Carrito.get_select(['*'], {'IdCliente':id_client})[0]
        if len(Carrito.get_select(['*'], {'IdCliente':id_client})) != 0:
            carrito = Carrito.get_select(['*'], {'IdCliente':id_client})
            id_order = cls.get_order_id()
            date = Modules.set_time()
            Compras.insert({'Estado' : 0})
            try:
                conn = cls._connect()
                c = conn.cursor()
                for values in carrito:
                    c.execute(f"INSERT INTO pedidos (IdProducto, IdCliente, Unidades) VALUES {values}")
                    conn.commit()
                c.close()

                cls.update_date(id_client)
                cls.set_order_id(id_client, date)
                Compras.update_total(id_client)
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
            SELECT ord.IdProducto, ord.IdCliente, ord.IdPedido, ord.Unidades, pur.Total, pur.Estado 
            FROM pedidos ord
            INNER JOIN compras pur
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
            
                @classmethod
    def update_date(cls, id_client):
        query = f"UPDATE {cls._get_name()} SET FECHA = {Modules.set_time()} WHERE IdCliente = {id_client} AND Fecha is NULL"
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


    @classmethod
    def set_order_id(cls, id_client, date):
        query = f"UPDATE {cls._get_name()} SET IdPedido = {cls.get_order_id()} WHERE IdCliente = {id_client} AND Fecha = {date}"
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
