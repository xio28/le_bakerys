from model.productos import Productos
from model.tablas import *

class Carrito(Tablas):

    @classmethod
    def product_info(cls, ref: str):
        info = cls.get_select(['', ''], {'':''})
        return info
    
    @classmethod
    def shoplist_check(cls, id_product, id_client):
        datas = cls.get_select_and(['Unidades'], {'IdProducto' : id_product, 'IdCliente' : id_client})

        if len(datas) != 0:
            ref = datas[0][-1]
            cls.update_and({'Unidades': ref +1}, {'IdProducto' : id_product, 'IdCliente' : id_client})    
            return True

        return False

    @classmethod
    def check_unity(cls, id_product, id_client):
        datas = cls.get_select_and(['Unidades'], {'IdProducto':id_product, 'IdCliente' : id_client})
        if datas[0][0] <= 0:
            Carrito.delete_and({'IdProducto':id_product, 'IdCliente' : id_client})

    @classmethod
    def edit_unity(cls, id_product, id_client, operation):
        datas = cls.get_select_and(['Unidades'], {'IdProducto':id_product, 'IdCliente' : id_client})
        stock = Productos.get_select(['Stock'], {'ID':id_product})[0][0]
        units = datas[0][0]

        if len(datas) != 0:
            if units < Productos.get_stock(id_product) and operation == 'add':
                cls.update({'Unidades': units +1}, {'IdProducto':id_product})
                Productos.update({'Stock': stock -1}, {'ID':id_product})
            elif operation == "remove":
                cls.update({'Unidades': units -1}, {'IdProducto':id_product})
                Productos.update({'Stock': stock +1}, {'ID':id_product})
                cls.check_unity(id_product, id_client)


    @classmethod
    def inner_carrito(cls, id_client):
        data = ""
        query = f"""
            SELECT prod.ID, prod.Producto, prod.Precio, car.Unidades, ROUND((prod.Precio * car.Unidades),2), prod.Imagen
            FROM carrito car
            INNER JOIN clientes cli
            ON IdCliente = cli.ID
            INNER JOIN productos prod
            ON IdProducto = prod.ID
            WHERE IdCliente = {id_client}
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
    def get_total(cls, id_client):
        data = ""
        query = f"""
            SELECT ROUND(SUM(prod.Precio * car.Unidades),2)
            FROM carrito car
            INNER JOIN clientes cli
            ON IdCliente = cli.ID
            INNER JOIN productos prod
            ON IdProducto = prod.ID
            WHERE IdCliente = {id_client}
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