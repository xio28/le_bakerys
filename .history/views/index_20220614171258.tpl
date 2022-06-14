<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="/static/styles/styles.css">
        <link rel="stylesheet" href="/static/styles/index.css">
        <link rel="stylesheet" href="/static/styles/nav-menu.css">
        <link rel="stylesheet" href="/static/styles/footer.css">
        <link rel="stylesheet" href="/static/styles/@media/index.css">
        <script src="/static/js/jquery-3.6.0.min.js"></script>
        <script src="/static/js/scripts.js"></script>
        <script src="/static/js/vanilla-tilt.js"></script>
        <script src="/static/js/menu.js"></script>
</head>
<body>
    <header>
        <button class="menu-btn">
            <div></div>
            <div></div>
            <div></div>
        </button>
        <nav>
            <ul class="menu-items-desk">
                <li><a href='/products' data-item='Productos'>Productos</a></li>
                <li><a href='/conocenos' data-item='Conócenos'>Conócenos</a></li>
                <li><a href='/social' data-item='Redes'>Redes</a></li>
                <li><a href='/static/src/blog.html' data-item='Blog'>Blog</a></li>
                <li><a href='/contacto' data-item='Contacto'>Contacto</a></li>
            </ul>
            <ul class="menu-items">
                <li><a href='/products' data-item='Productos'>Productos</a></li>
                <li><a href='/conocenos' data-item='Conócenos'>Conócenos</a></li>
                <li><a href='/social' data-item='Redes'>Redes</a></li>
                <li><a href='/static/src/blog.html' data-item='Blog'>Blog</a></li>
                <li><a href='/contacto' data-item='Contacto'>Contacto</a></li>
            </ul>
        </nav>
        <a class="account" href="/login"><img class=".acc-icon" src="/static/resources/img/ICON-account.png" alt=""></a>
        <h1>Le Bakery's</h1>
        <div class="logo"></div>
        <h2>Because not every day is sweet enough</h2>
        <a href="#" class="arrow-icon" onclick="scrollToSection()">
            <img src="/static/resources/img/in.svg" alt="">     
        </a>
    </header>
    <section class="about-us_section">
        <div class="about-us_slider">
            <div class="slider-item">
                <div class="slider-bg"></div>
                <div class="slider-info">
                    <h3>Sobre Le Bakery's</h3>
                    <p>Cat gets stuck in tree firefighters try to get cat down firefighters get stuck in tree cat eats firefighters' slippers cattt catt cattty cat being a cat. Sleep all day whilst slave is at work, play all night whilst slave is sleeping need to chase tail catching very fast laser pointer eat all the power cords.</p>
                </div>
            </div>
            <div class="slider-item">
                <div class="slider-bg"></div>
                <div class="slider-info">
                    <h3>¿Qué ofrecemos?</h3>
                    <p>Lick the plastic bag i will be pet i will be pet and then i will hiss. Stare out the window gnaw the corn cob stare at guinea pigs. Scamper trip owner up in kitchen i want food sit by the fire get scared by doggo also cucumerro.</p>
                </div>
            </div>
            <div class="slider-item">
                <div class="slider-bg"></div>
                <div class="slider-info">
                    <h3>Título de relleno</h3>
                    <p>Cat gets stuck in tree firefighters try to get cat down firefighters get stuck in tree cat eats firefighters' slippers cattt catt cattty cat being a cat. Sleep all day whilst slave is at work, play all night whilst slave is sleeping need to chase tail catching very fast laser pointer eat all the power cords.</p>
                </div>
            </div>
        </div>
        <div class="sel-slide-btn__container">
            <button class="slide1 slide-active"></button>
            <button class="slide2"></button>
            <button class="slide3"></button>
        </div>
    </section>
    <section class="delivery_section">
        <h2>Pide lo que quieras y cuando quieras, que <span>nosotros lo llevamos</span></h2>
        <div class="bubbles__container">
            <div class="bubble"><img src="/static/resources/img/icon-booking.png" alt=""></div>
            <div class="bubble"><img src="/static/resources/img/icon-clock.png" alt=""></div>
            <div class="bubble"><img src="/static/resources/img/icon-motorbike.png" alt=""></div>
        </div>
    </section>
    <div class="video__container">
        <video autoplay loop muted src="/static/resources/video/video-BG-Index_1-1.mp4">
        </video>
    </div>
    <section id="products_section">
        <h2 class="popular-products-h">Productos destacados</h2>
        <div class="popular-products">
            <div data-tilt data-tilt-reverse="true" data-tilt-scale="1.1" class="product_card">
                <img class="card-img" src="static/resources/img/upload/products/red_velvet.png" alt="">
                <h4>Red Velvet</h4>
                <p>Nuestra especialidad y producto estrella. Mejores valoraciones y reseñas de los clientes</p>
            </div>
            <div data-tilt data-tilt-reverse="true" data-tilt-scale="1.1" class="product_card">
                <img class="card-img" src="static/resources/img/upload/products/sandwich_'le_bakerys'.png" alt="">
                <h4>'Le Bakery's'</h4>
                <p>Auténtico sándwich vegetal: sin atún; sin pollo. Sólo productos veggies. 100% gluten free</p>
            </div>
            <div data-tilt data-tilt-reverse="true" data-tilt-scale="1.1" class="product_card">
                <img class="card-img" src="static/resources/img/upload/products/mousse_de_chocolate.png" alt="">
                <h4>Mousse</h4>
                <p>Mousse de chocolate con avellanas y ferreo, acompañado de una deliciosa crema de praliné</p>
            </div>
            <div data-tilt data-tilt-reverse="true" data-tilt-scale="1.1" class="product_card">
                <img class="card-img" src="static/resources/img/upload/products/cheesecake.png" alt="">
                <h4>Cheescake</h4>
                <p>Tarta de queso mascarpone con una mermelada casera de frutas del bosque y fresa y una base de crumbleé</p>
            </div>
            <div data-tilt data-tilt-reverse="true" data-tilt-scale="1.1" class="product_card">
                <img class="card-img" src="static/resources/img/upload/products/croissant.png" alt="">
                <h4>Croissants</h4>
                <p>Le Bakery's tiene un gran secreto: la receta tradicional de los auténticos croissants franceses</p>
            </div>
        </div>
    </section>
    <div class="bakery-food">
        <div class="bf-element1"></div>
        <div class="bf-element2"></div>
        <div class="bf-element3"></div>
        <div class="bf-element4"></div>
        <div class="bf-element5"></div>
    </div>

    <footer>
        <div class="waves"></div>
        <div class="footer__container">
            <div class="collaborate">
                <ul>
                    <li><h4>Colabora con Le Bakery's</h4></li>
                    <li><a href="#">Trabaja con nosotros</a></li>
                    <li><a href="#">Le Bakery's para todos</a></li>
                    <li><a href="#">Repartidores</a></li>
                    <li><a href="#">Business</a></li>
                </ul>
            </div>
            <div class="interest-links">
                <ul>
                    <li><h4>Enlaces de interés</h4></li>
                    <li><a href="#">Acerca de nosotros</a></li>
                    <li><a href="#">Preguntas frecuentes</a></li>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">Contacto</a></li>
                    <li><a href="#">Seguridad</a></li>
                </ul>
            </div>
            <div class="policies">
                <ul>
                    <li><a href="#">Condiciones de uso</a></li>
                    <li><a href="#">Política de privacidad</a></li>
                    <li><a href="#">Política de cookies</a></li>
                </ul>
            </div>
        </div>
        <div class="social-network">
            <ul>
                <li class="icon-footer"><a href="#"><img src="/static/resources/img/facebook.png" alt="icono facebook"></a></li>
                <li class="icon-footer"><a href="#"><img src="/static/resources/img/instagram.png" alt="icono instagram"></a></li>
                <li class="icon-footer"><a href="#"><img src="/static/resources/img/twitter.png" alt="icono twitter"></a></li>
                <li class="icon-footer"><a href="#"><img src="/static/resources/img/tiktok.png" alt="icono tiktok"></a></li>
                <li class="icon-footer"><a href="#"><img src="/static/resources/img/linkedin.png" alt="icono linkedin"></a></li>
            </ul>
        </div>
    </footer>
</body>
</html>
