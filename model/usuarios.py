from model.tablas import *

class Usuarios(Tablas):
    
    @classmethod
    def check_user(cls, email):
        user = cls.get_select(['Email'], {'Email':email})
        return True if user not in (None, "", [], ()) else False

    @classmethod
    def get_password(cls, email):
        return ''.join(cls.get_select(['Password'], {'Email':email})[0])

    @classmethod
    def check_credentials(cls, email, password):
        return True if cls.check_user(email) and password == cls.get_password(email) else False

    @classmethod
    def get_username(cls, email):
        return email.split('@')[0].replace('.', '_')

    @classmethod
    def user_log(cls, email):
        type = cls._get_name()
        query = (cls.get_select(['ID', 'Email'], {'Email':email}))[0]
        log = {'user_email' : query[1], 'user_id' : query[0], 'user_type' : type}
        Modules.write_session(log)

    @classmethod
    def user_logged(cls):
        return True if Modules.load_session().get('user_id') != 0 and cls._get_name() == 'clientes' else False
        
class Clientes(Usuarios):
    pass

class Empleados(Usuarios):

    @classmethod
    def inner_empleado(cls):
        data = ""
        query = """
            SELECT emp.ID, emp.Email, user.Nombre, user.Apellido1
            FROM usuarios user
            INNER JOIN empleados emp
            ON emp.Email = user.Email
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
