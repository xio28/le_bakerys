%include("header.tpl", title = "Panel de cliente")
        <div class="apanel-container">
            <div class="nav-panel">
                <ul>
                    <li>
                        <a href="/">
                            <span class="icon-title icon i-cake"></span>
                            <span class="title">
                                <h2>Le Bakery's</h2>
                            </span>
                        </a>
                    </li>
                    <li>
                        <a class="nav-button-section"  href="#see-orders">
                            <span class="icon i-see"></span>
                            <span class="title">
                                Ver Pedidos
                            </span>
                        </a>
                    </li>
                    <li>
                        <a class="nav-button-section"  href="#change-pass">
                            <span class="icon i-pass"></span>
                            <span class="title">
                                Cambiar contraseña
                            </span>
                        </a>
                    </li>
                    <li>
                        <a class="nav-button-section"  href="#">
                            <span class="icon i-logout"></span>
                            <span class="title">
                                Log Out
                            </span>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="content-panel">
                <div class="topbar">
                    <div class="toggle" onclick="toggleMenu();"></div>
                        <div class="user">
                            <img src="/static/resources/img/user.jpg" alt="user">
                        </div>
                </div>
                <div class="main-box">
                    <div id="see-orders" class="boxes manage-table show">
                        <table>
                            <tr>
                                <th>ID pedido</th>
                                <th>Unidades productos</th>
                                <th>Total</th>
                                <th>Estado</th>
                                <th></th>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>5</td>
                                <td>25.67<span class="euro">€</span></td>
                                <td class="status-see-orders">
                                    <span class="status-see-orders-span">Sin preparar</span>
                                </td>
                                <td class="manage">
                                    <a class="eye-color" href="#">
                                        <i class="fa fa-solid fa-eye"></i>
                                    </a>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div id="change-pass" class="boxes form">
                        <form action="/changepass" method="POST"  autocomplete="off">
                            <label for="pass">Nueva contraseña</label>
                            <input type="text">
                            <label for="pass">Repetir contraseña</label>
                            <input type="text">
                            <input type="submit" value="Cambiar"/>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script>
            function toggleMenu(){
                let nav = $('.nav-panel');
                let span = $('.title');
                let content = $('.content-panel');
                nav.toggleClass('active');
                span.toggleClass('hidden');
                content.toggleClass('active');
            }

            $('.nav-button-section').on('click', function(e){
                e.preventDefault();

                $(".boxes").removeClass("show");
                $($(this).attr('href')).addClass("show");	
            });
        </script>
    </body>
</html>
