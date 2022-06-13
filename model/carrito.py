from model.tablas import *

class Carrito(Tablas):

    @classmethod
    def product_info(cls, ref: str):
        info = cls.get_select(['', ''], {'':''})
        return info
    
    @classmethod
    def shoplist_check(cls, ref: str):
        datas = cls.get_select(['', ''], {'':''})

        if datas != None:
            cls.update({'':''}, {'':''})
        
        return True if datas != None else False

    @classmethod
    def remove_one(cls, ref: str):
        datas = cls.get_select(['', ''], {'':''})

        if datas != None:
            cls.update({'': datas[0] -1}, {'':''})