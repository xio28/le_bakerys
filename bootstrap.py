import sqlite3
from model.users import Users
from config.config import DATABASE
from os.path import exists

def create_connection(db):
    conn = None
    try:
        conn = sqlite3.connect(db)

    except sqlite3.Error as error:
        print(error)

    finally:
        if conn:
            conn.close()


if __name__ == '__main__':

    user = Users()

    if not exists(DATABASE):
        create_connection(DATABASE)