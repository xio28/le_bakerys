import sys
sys.path.append('/home/cfgs1/Documentos/repo/le_bakerys')

import sqlite3
from abc import ABC
from config.config import DATABASE

class TableInherate(ABC):

    def __init__(self):
        self.database = DATABASE

    def get_name(self):
        return type(self).__name__.lower()

    def _connect(self):
        return sqlite3.connect(self.database)

    def create(self, definitions):
        conn = self._connect()
        cursor = conn.cursor()
        cursor.execute(f'CREATE TABLE IF NOT EXISTS {self.get_name()} ({definitions})')
        conn.commit()
        conn.close()

    def select(self):
        data = ""
        try:
            conn = self._connect()
            c = conn.cursor()
            c.execute(f'SELECT * FROM {self.get_name()}')
            data = c.fetchall()
            conn.commit()
            c.close()

        except sqlite3.Error as error:
            print('Error while executing sqlite script', error)

        finally:
            if conn:
                conn.close()
            return data

    def insert(self, values, attr=""):
        try:
            conn = self._connect()
            c = conn.cursor()
            c.execute(f'INSERT INTO {self.get_name()} {str(attr)} VALUES {str(values)}')
            conn.commit()
            c.close()

        except sqlite3.Error as error:
            print('Error while executing sqlite script', error)

        finally:
            if conn:
                conn.close()
            return True

    def delete(self, where):
        try:
            conn = self._connect()
            c = conn.cursor()
            c.execute(f'DELETE FROM {self.get_name()} WHERE {where}')
            conn.commit()
            c.close()
        
        except sqlite3.Error as error:
            print('Error while executing sqlite script', error)

        finally:
            if conn:
                conn.close()
            return True
