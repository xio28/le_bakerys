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
    def remove_one(cls, ref: str):
        datas = cls.get_select(['', ''], {'':''})

        if datas != None:
            cls.update({'': datas[0] -1}, {'':''})