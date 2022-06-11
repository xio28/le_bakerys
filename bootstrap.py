import sqlite3
from os.path import exists

from model.modules import Modules
from model.users import Users


def create_connection(db):
    try:
        conn = sqlite3.connect(db)

    except sqlite3.Error as error:
        print(error)

    finally:
        if conn:
            conn.close()


if __name__ == '__main__':

    DATABASE = Modules.load_config().get('database')

    Users.create(Modules.load_config().get('users_db'))

    if not exists(DATABASE):
        create_connection(DATABASE)