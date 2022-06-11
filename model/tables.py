import sqlite3
from abc import ABC

from config.config import DATABASE


class Tables(ABC):

    def __init__(self):
        self.database = DATABASE

    @classmethod
    def _connect(cls):
        return sqlite3.connect(cls.database)
    
    @classmethod
    def _get_name(cls):
        return cls.__name__.lower()

    @classmethod
    def create(cls, definitions: str):
        conn = cls._connect()
        cursor = conn.cursor()
        cursor.execute(f'CREATE TABLE IF NOT EXISTS {cls._get_name()} ({definitions})')
        conn.commit()
        conn.close()

    @classmethod
    def select(cls):
        data = ""
        try:
            conn = cls._connect()
            c = conn.cursor()
            c.execute(f'SELECT * FROM {cls._get_name()}')
            data = c.fetchall()
            conn.commit()
            c.close ()
        
        except sqlite3.Error as error:
            print('Error while executing sqlite script', error)

        finally:
            if conn:
                conn.close()
            return data

    @classmethod
    def get(cls, *fields: str, where: str):
        data = ""
        try:
            conn = cls._connect()
            c = conn.cursor()
            c.execute('SELECT {} FROM {} WHERE {}'.format(','.join(fields), cls._get_name(), where))
            data = c.fetchone()
            c.close()
        
        except sqlite3.Error as error:
            print('Error while executing sqlite script', error)

        finally:
            if conn:
                conn.close()
            return data

    @classmethod
    def insert(cls, data: dict):

        atributes = ','.join([key for key in data.keys()])
        values = ','.join([val for val in data.values()])

        try:
            conn = cls._connect()
            c = conn.cursor()
            c.execute(f'INSERT INTO {cls._get_name} ({atributes}) VALUES ({values})')
            conn.commit()
            c.close()

        except sqlite3.Error as error:
            print('Error while executing sqlite script', error)

        finally:
            if conn:
                conn.close()

    @classmethod
    def delete(cls, where: str):
        try:
            conn = cls._connect()
            c = conn.cursor()
            c.execute(f'DELETE FROM {cls._get_name()} WHERE {where}')
            conn.commit()
            c.close()

        except sqlite3.Error as error:
            print('Error while executing sqlite script', error)

        finally:
            if conn:
                conn.close()

    @classmethod
    def update(cls, data: dict, where: str):

        new_values = ','.join([f'{key}={val}' for key, val in data.items()])

        try:
            conn = cls._connect()
            c = conn.cursor()
            c.execute(f'UPDATE {cls._get_name()} SET {new_values} WHERE {where}')
            conn.commit()
            c.close()

        except sqlite3.Error as error:
            print('Error while executing sqlite script', error)

        finally:
            if conn:
                conn.close()