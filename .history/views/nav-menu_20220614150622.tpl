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

<script>
        function btn() {        
            if($(".menu-items").css("display") == "none") {
                $(".menu-items").css("display", "flex")
                                .css()
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
