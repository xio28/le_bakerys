from model.tablas import Tablas

class Productos(Tablas):

    @classmethod
    def format_name(cls, name):
        return name.replace('.', '').replace('_','').replace(' ', '_')
    
    @classmethod
    def check_product(cls, product):
        prod = cls.get_select(['Producto'], {'Producto': product})
        return True if prod not in (None, [], ()) else False

    @classmethod
    def get_stock(cls, id_product):
        stock = cls.get_select(['Stock'], {'ID': id_product})
        return stock[0][0]