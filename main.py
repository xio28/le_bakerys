import sqlite3
from bottle import *

@get('/')
def index():
    pass

@get('/users/clients')
def clients():
    pass

@get('/users/employee')
def employee():
    pass

@get('/users/admin')
def admin():
    pass

@get('/products')
def products():
    pass

@get('/order')
def order():
    pass

if __name__ == '__main__':
    run(host='localhost', port=8080, debug=True, reloader=True)
