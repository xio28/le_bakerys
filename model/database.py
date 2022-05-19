import sqlite3

class Database:

    def __init__(self, database):
        self.database = database

    def _connect(self):
        return sqlite3.connect(self.database)

    def select(self):
        pass

    def delete(self):
        pass
