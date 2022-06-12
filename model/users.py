from model.tables import Tablas

class Usuarios(Tablas):
    
    @classmethod
    def check_user(cls, username):
        user = cls.get_select(['username'], {'username':username})
        return True if user != None else False

    @classmethod
    def get_password(cls, username):
        return ''.join(cls.get_select(['password'], {'username':username}))

    @classmethod
    def check_credentials(cls, username, password):
        return True if cls.check_user(username) and password == cls.get_password(username) else False

class Clientes(Usuarios):
    pass

class Empleados(Usuarios):
    pass
