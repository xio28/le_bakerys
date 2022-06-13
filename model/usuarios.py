from model.tablas import *

class Usuarios(Tablas):
    
    @classmethod
    def check_user(cls, email):
        user = cls.get_select(['Email'], {'Email':email})
        return True if user not in (None, [], ()) else False

    @classmethod
    def get_password(cls, email):
        return ''.join(cls.get_select(['Password'], {'Email':email}))

    @classmethod
    def check_credentials(cls, email, password):
        return True if cls.check_user(email) and password == cls.get_password(email) else False

    @classmethod
    def get_username(cls, email):
        return email.split('@')[0].replace('.', '_')

class Clientes(Usuarios):
    pass

class Empleados(Usuarios):
    pass