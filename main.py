import os
import sys
sys.path.append('model') # add the models directory to the path
sys.path.append('controller')

import sqlite3
from bottle import route, run, template, request, get, post, redirect, static_file, error, debug
from controller.register import RegistrationForm

@get('/registration')
def register():
    form = RegistrationForm(request.POST)
    return template('registration', form=form)

@get('/')
def index():
    return template('index')

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


# Static Routes
@get("/static/styles/<filepath:re:.*\.css>")
def css(filepath):
    return static_file(filepath, root="static/styles")

@get("/static/fonts/<filepath:re:.*\.(eot|otf|svg|ttf|woff|woff2?)>")
def font(filepath):
    return static_file(filepath, root="static/fonts")

@get("/static/resources/img/<filepath:re:.*\.(jpg|png|gif|ico|svg)>")
def img(filepath):
    return static_file(filepath, root="static/resources/img")

@get("/static/resources/video/<filepath:re:.*\.mp4>")
def video(filepath):
    return static_file(filepath, root="static/resources/video")

@get("/static/js/<filepath:re:.*\.js>")
def js(filepath):
    return static_file(filepath, root="static/js")



if __name__ == '__main__':
    run(host='localhost', port=8080, debug=True, reloader=True)
