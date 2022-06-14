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
        <script>
            function btn() {        
                if($(".menu-items").css("display") == "none") {
                    $(".menu-items").css("display", "flex")
                                    .css("flex-direction", "column")
                                    .css("animation", "menu-in 1.5s forwards")
                    
                    $(".menu-btn div").css("animation-name", "open-menu")
                                        .css("animation-duration", "0.5s")
                                        .css("animation-fill-mode", "forwards");
                    $(".menu-items li a").css("opacity", "1");

                    setTimeout(function() {
                        $(".menu-btn").css("transform", "rotate(90deg)")
                    }, 1);
                    
                } else {
                    $(".menu-items").css("animation-name", "menu-off")
                                    .css("animation-fill-mode", "none");
                    $(".menu-items li").css("animation", "fade-in 1.5s 1.2s forwards;");

                    $(".menu-items li a").css("opacity", "0");
                    setTimeout(function() {
                        $(".menu-items").css("display", "none")
                    }, 1500);
                    
                    $(".menu-btn div").css("animation-name", "close-menu")
                                        .css("animation-duration", "0.5s")
                                        .css("animation-fill-mode", "forwards");
                    
                    setTimeout(function() {
                        $(".menu-btn").css("transform", "rotate(0deg)")
                    }, 15);
                };
            };
        </script>
    </body>
</html>
