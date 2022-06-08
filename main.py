import os
import sys
sys.path.append('model') # add the models directory to the path
sys.path.append('controller')

import sqlite3
from bottle import route, run, template, request, get, post, redirect, static_file, error, debug
from model.clients import Clients
from controller.register import RegistrationForm

# Creating an instance of the Clients class.
clients = Clients()

@get('/registration')
def register():
    form = RegistrationForm(request.POST)
    return template('registration', form=form)

@post('/registration')
def post_registration():
    form = RegistrationForm(request.POST) 
    if form.save.data:
        form_data = {
            'username' : form.username.data,
            'password' : form.password.data,
            'email' : form.email.data,
            'c_name' : form.c_name.data,
            'surname1' : form.surname1.data,
            'surname2' : form.surname2.data,
            'nid' : form.nid.data,
            'contact' : form.contact.data,
            'street' : form.street.data,
            's_num' : form.s_num.data,
            's_story' : form.s_story.data,
            'postal_code' : form.postal_code.data,
            'city' : form.city.data,
            'privacy_policy' : form.privacy_policy.data
        }
        keys = tuple(form_data.keys())
        values = tuple(form_data.values())
        clients.insert(values, keys)

        print(form_data)
        redirect('/')
    print(form.errors)
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
