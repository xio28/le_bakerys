<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/static/styles/styles.css">
    %if title == "Registro de usuario":
    <link rel="stylesheet" href="/static/styles/register.css">
    %end
    <link rel="stylesheet" href="/static/styles/products.css">
    <link rel="stylesheet" href="/static/styles/footer.css">
    <link rel="stylesheet" href="/static/styles/nav-menu.css">
    %if title == "Contacto":
        <link rel="stylesheet" href="/static/styles/contact.css">
    %end
    <script src="/static/js/jquery-3.6.0.min.js"></script>
    <script src="/static/js/tabs.js"></script>
    <title>{{title}}</title>
</head>
<body>
