from bottle import route, run
import os

def clear():
    return os.system('cls') if os.name == 'nt' else os.system('clear')

clear()



@route('/hello')
def hello():
    return "Hello World"


@route('/goodbye')
def goodbye():
    return "Goodbye World"

run(host='localhost', port=8080, debug=True)
