%include('header.tpl', title='Log In')
<div class="container-login">
        <div class="login-item">
            <div class="print-f">
                <h3>Identificarse</h3>
            </div>
            <form action="/login" method="POST">
                <div class="user">
                    {{ form.email }}
                    {{ form.password }}
                </div>
                <div class="buttons-item">
                    <div class="check-item">
                        <input type="checkbox" name="cookies" id="cookies"/> <span>Recuérdame</span>
                    </div>
                    {{ form.save }}
                </div>
            </form>
            <div class="register-i">
                <p>¿No tienes cuenta?</p>
                <a href="register.html">Créate una</a>
            </div>
        </div>
    </div>
    <script>
        function btn() {        
            if($(".menu-items").css("display") == "none") {
                $(".menu-items").css("display", "grid")
                                .css("animation", "menu-in 1.5s forwards")
                
                $(".menu-btn div").css("animation-name", "open-menu")
                                    .css("animation-duration", "0.5s")
                                    .css("animation-fill-mode", "forwards");
                
                setTimeout(function() {
                    $(".menu-btn").css("transform", "rotate(90deg)")
                }, 1);
                
            } else {
                $(".menu-items").css("animation-name", "menu-off")
                                .css("animation-fill-mode", "none");
                $("menu-items li").css("animation", "fade-in 1.5s 1.2s forwards;");

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
