<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/static/styles/styles.css">
    <link rel="stylesheet" href="/static/styles/footer.css">
    <link rel="stylesheet" href="/static/styles/nav-menu.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    %if title == "Registro de usuario":
        <link rel="stylesheet" href="/static/styles/register.css">
    %elif title == "Contacto":
        <link rel="stylesheet" href="/static/styles/contact.css">
    %elif title == "Productos":
        <link rel="stylesheet" href="/static/styles/products.css">
    %elif title == "Panel de admin":
        <link rel="stylesheet" href="/static/styles/admin_panel.css">
    %elif title == "Carrito de compra":
        <link rel="stylesheet" href="/static/styles/cart.css">
    %elif title == "Log In":
        <link rel="stylesheet" href="/static/styles/login.css">
    %elif title == "Panel de cliente" or title == "Panel de administrador":
        <link rel="stylesheet" href="/static/styles/admin_panel.css">
    %end
    <script src="/static/js/jquery-3.6.0.min.js"></script>
    <script src="/static/js/forms.js"></script>
    <script src="/static/js/vanilla-tilt.js"></script>
    <title>{{title}}</title>
</head>
<body>
    %if title != "Panel de administrador" and title != "Panel de cliente" and title != "Productos":
    <button class="menu-btn" onclick="btn()">
        <div></div>
        <div></div>
        <div></div>
    </button>
    <nav>
        <ul class="menu-items">
            <li class="nav-item"><a href='/' data-item='Inicio'>Inicio</a></li>
            <li class="nav-item"><a href='/products' data-item='Productos'>Productos</a></li>
            <li class="nav-item"><a href='#' data-item='Conócenos'>Conócenos</a></li>
            <li class="nav-item"><a href='#' data-item='Redes'>Redes</a></li>
            <li class="nav-item"><a href='#' data-item='Blog'>Blog</a></li>
            <li class="nav-item"><a href='#' data-item='Contacto'>Contacto</a></li>
          </ul>
    </nav>
    %end
