import sqlite3
from abc import ABC

from model.modules import Modules

class Tablas(ABC):

    DATABASE = Modules.load_config().get('database')

    @classmethod
    def _connect(cls):
        return sqlite3.connect(cls.DATABASE)
    
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
    def get_select(cls, fields: list, where: str):
        where_clause = '{} LIKE ?'.format(list(where)[0])
        value = list(where.values())[0]
        query = 'SELECT {} FROM {} WHERE {}'.format(','.join(fields), cls._get_name(), where_clause)

        try:
            conn = cls._connect()
            c = conn.cursor()
            c.execute(query, (value,))
            data = c.fetchall()

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
        subs = ','.join(['?'] * len(data))

        try:
            conn = cls._connect()
            c = conn.cursor()
            c.execute(f'INSERT INTO {cls._get_name} ({atributes}) VALUES ({subs})', (values))
            conn.commit()
            c.close()

        except sqlite3.Error as error:
            print('Error while executing sqlite script', error)

        finally:
            if conn:
                conn.close()

    @classmethod
    def delete(cls, where: dict):
        where_clause = '{} LIKE ?'.format(list(where)[0])
        value = list(where.values())[0]
        query = f'DELETE FROM {cls._get_name()} WHERE {where_clause}'

        try:
            conn = cls._connect()
            c = conn.cursor()
            c.execute(query, (value,))
            conn.commit()
            c.close()

        except sqlite3.Error as error:
            print('Error while executing sqlite script', error)

        finally:
            if conn:
                conn.close()

    @classmethod
    def update(cls, data: dict, where: dict):
        where_clause = '{} LIKE ?'.format(list(where)[0])
        new_values = ','.join([f'{key} = ?' for key in data.keys()])
        values = [val for val in data.values()]
        query = f'UPDATE {cls._get_name()} SET {new_values} WHERE {where_clause}'


        values.append(list(where.values())[0])

        try:
            conn = cls._connect()
            c = conn.cursor()
            c.execute(query, (values))
            conn.commit()
            c.close()

        except sqlite3.Error as error:
            print('Error while executing sqlite script', error)

        finally:
            if conn:
                conn.close()
