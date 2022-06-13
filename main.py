from fileinput import filename
from bottle import (auth_basic, debug, error, route, get, post, redirect, request,
                    route, run, static_file, template)

from controller.register import RegistrationForm
from controller.contact import ContactForm
from model.productos import *
from model.usuarios import *
from model.modules import *
from model.carrito import *


@route('/')
@route('/index')
def index():
    return static_file("index.html", root ="static")

@get('/admin')
@auth_basic(Modules.auth_admin)
def admin():
    return template('index')

@get('/registro')
def register():
    form = RegistrationForm(request.POST)
    return template('registration', form=form)

@post('/registro')
def post_registration():
    form = RegistrationForm(request.POST) 
    if form.save.data:
        f = request.files['user_image']
        f_path = f'/static/resources/users/{f.filename}'
        f.save(f_path)
    return template('registration', form=form)

@get('/contacto')
def register():
    form = ContactForm(request.POST)
    return template('contact', form=form)

@get('/clientes')
def clients():
    pass

@get('/empleados')
def employee():
    pass

@get("/social")
def social():
    return template("socialmedia")

@get('/productos')
def products():
    products_list = Productos.select()
    count_products = 0
    return template("products", products_list=products_list, count_products=count_products)

@post('/productos')
def filter():
    if request.POST.get('todos'):
        return redirect('/productos')

    else:
        if request.POST.get('tartas'):
            category = 'Tartas'

        if request.POST.get('helados'):
            category = 'Helados'

        if request.POST.get('dulces'):
            category = 'Dulces'

        if request.POST.get('salados'):
                category = 'Salados'

        products_list = Productos.get_select(['*'], {'Categoria' : category})
        return template("products", products_list = products_list)

@get('/carrito')
def carrito():
    return f'Clicked'

@post('/add_carrito/<id_product>')
def add_carrito(id_product):

    client_id = Modules.load_session().get('user_id')

    if not Carrito.shoplist_check(id_product, client_id):
        data = {
            'IdProducto' : id_product,
            'IdCliente' : client_id
        }

        Carrito.insert(data)

        return f'{Carrito.select()}'
    return f'{Carrito.select()}'


@post('/login')
def login():

    if "usuario registrado todo ok":
        Clientes.client_log('email')

@get('/pedido')
def order():
    pass

@error(404)
def error404(error):
    return static_file('404.html', root='static/src')
    
# Static Routes
@get("/static/styles/<filepath:re:.*\.css>")
def css(filepath):
    return static_file(filepath, root="static/styles")

@get("/static/fonts/<filepath:re:.*\.(eot|otf|svg|ttf|woff|woff2?)>")
def font(filepath):
    return static_file(filepath, root="static/fonts")

@get("/static/resources/img/<filepath:re:.*\.(jpg|png|gif|ico|svg|jpeg|webp)>")
def img(filepath):
    return static_file(filepath, root="static/resources/img")

@get("/static/resources/video/<filepath:re:.*\.mp4>")
def video(filepath):
    return static_file(filepath, root="static/resources/video")

@get("/static/js/<filepath:re:.*\.js>")
def js(filepath):
    return static_file(filepath, root="static/js")


if __name__ == '__main__':
    run(host='localhost', port=8081, debug=True, reloader=True)