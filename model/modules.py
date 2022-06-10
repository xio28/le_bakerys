
class Modules:

    @classmethod
    def auth_admin(cls, user, password):
        return True if user.lower() == 'admin' and password == "admin1234" else False