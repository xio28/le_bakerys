import sqlite3

class TableInherate:

    def __init__(self, database):
        self.database = database

    def _connect(self):
        conn = sqlite3.connect(self.database)
        return conn
    
    def _get_table_name(self):
        # Returns the name of the class (matches the name of the table)
        return type(self).__name__.lower()

    def select(self):
        data = None
        try:
            conn = self._connect()
            c = conn.cursor()
            c.execute('SELECT * FROM ?', (self._get_table_name()))
            data = c.fetchall()
            conn.commit()
            c.close()

        except sqlite3.Error as error:
            print('Error while executing sqlite script', error)

        finally:
            if conn:
                conn.close()
            return data

    def delete(self, id):
        try:
            conn = self._connect()
            c = conn.cursor()
            c.execute('DELETE FROM ? WHERE id LIKE ?', (self._get_table_name, id))
            conn.commit()
            c.close()
        
        except sqlite3.Error as error:
            print('Error while executing sqlite script', error)

        finally:
            if conn:
                conn.close()
            return True

    def insert(self, values, attr=""):
        try:
            conn = self._connect()
            c = conn.cursor()
            c.execute('INSERT INTO {} {} VALUES {}'.format(self._get_table_name(), str(attr), str(values)))
            conn.commit()
            c.close()
        
        except sqlite3.Error as error:
            print('Error while executing sqlite script', error)
        
        finally:
            if conn:
                conn.close()
            return True