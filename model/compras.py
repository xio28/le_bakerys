from model.tablas import *
from model.carrito import *

class Compras(Tablas):
    
    @classmethod
    def update_total(cls, id_client):
        total = Carrito.get_total(id_client)[0][0]

        query = f"""
        UPDATE {cls._get_name()}
        SET TOTAL = ROUND({total},2)
        WHERE Id IN (
            SELECT IdPedido FROM pedidos
            WHERE IdCliente = {id_client}
        )
        """

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