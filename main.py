import sqlite3
from bottle import route, get, post, run, template, request, redirect

@get('/')
def get_index_tpl():
    conn = sqlite3.connect('todo.db')
    c = conn.cursor()
    c.execute("SELECT * FROM todo")
    result = c.fetchall()
    c.close()
    output = template('index', rows=result)
    return output

if __name__ == '__main__':
    run(host='localhost', port=8080, debug=True, reloader=True)
