%include("header.tpl", title = "Panel de administrador")
        <div id="modal" style="display: none">
            <div id="mod-add-prod">
                
            </div>
            <div id="mod-add-emp">
                
            </div>
            <div id="mod-see-order">

            </div>
        </div>
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
                        <a class="nav-button-section" href="#manage-orders">
                            <span class="icon i-orders"></span>
                            <span class="title">
                                Gestionar Pedidos
                            </span>
                        </a>
                    </li>
                    <li>
                        <a class="nav-button-section"  href="#add-employees">
                            <span class="icon i-employees"></span>
                            <span class="title">
                                Añadir empleados
                            </span>
                        </a>
                    </li>
                    <li>
                        <a class="nav-button-section"  href="#add-products">
                            <span class="icon i-products"></span>
                            <span class="title">
                                Añadir productos
                            </span>
                        </a>
                    </li>
                    <li>
                        <a class="nav-button-section"  href="#see-clients">
                            <span class="icon i-products"></span>
                            <span class="title">
                                Ver clientes
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
                    <div id="manage-orders" class="boxes manage-table show">
                        <table>
                            <tr>
                                <th>ID pedido</th>
                                <th>Unidades productos</th>
                                <th>Total</th>
                                <th>Estado</th>
                                <th></th>
                            </tr>
                            %for 
                            <tr>
                                <td>1</td>
                                <td>5</td>
                                <td>25.67<span class="euro">€</span></td>
                                <td class="status-td">
                                    <span class="status-span">Sin preparar</span>
                                </td>
                                <td class="manage">
                                    <a class="eye-color" href="#mod-see-order">
                                        <i class="fa fa-solid fa-eye"></i>
                                    </a>
                                    <form class="actions-form" action="/eliminar/" method="POST">
                                        <a class="trash-color" href="#" name="delete_ord">
                                            <i class="fa fa-solid fa-trash"></i>
                                        </a>
                                    </form>
                                    <!-- <form action="/status/" method="POST"> -->
                                        <a class="thumb thumb-color" href="#" onclick="changeStatus();">
                                            <i class="i-thumb fa fa-solid fa-thumbs-up"></i>
                                        </a>
                                    <!-- </form> -->
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div id="add-employees" class="boxes form form-add manage-table">
                        <h2>Añadir empleados</h2>
                        <form action="/panel/admin" method="POST"  autocomplete="off">
                            <label for="pass">Email</label>
                            {{ formEmp.email }}
                            <label for="pass">Contraseña</label>
                            {{ formEmp.password }}
                            <label for="pass">Repetir contraseña</label>
                            {{ formEmp.password_confirm }}
                            <label for="pass">Nombre</label>
                            {{ formEmp.e_name }}
                            <label for="pass">Primer apellido</label>
                            {{ formEmp.surname1 }}
                            <label for="pass">Segundo apellido</label>
                            {{ formEmp.surname2 }}
                            <div class="input-cont">
                                <input id='file-reg' data-multiple-caption='{count} files selected' type="file" accept="image/png, image/jpg, image/jpeg" name="upload" value="upload">
                                <label for="file-reg"><i class="file-icon fa-color fa fa-solid fa-upload"></i><span>Subir imagen</span></label>
                            </div>
                            {{ formEmp.save_emp }}
                        </form>
                        <table>
                            <tr>
                                <th>ID empleado</th>
                                <th>Email</th>
                                <th>Nombre</th>
                                <th>Apellido</th>
                                <th></th>
                            </tr>

                            %for inerow in inerows:
                            <tr>
                                <td>{{ inerow[0] }}</td>
                                <td>{{ inerow[1] }}</td>
                                <td>{{ inerow[2] }}</td>
                                <td>{{ inerow[3] }}</td>
                                <td class="manage">
                                    <form class="actions-form" action="/eliminar/" method="POST">
                                        <a class="trash-color" href="#">
                                            <i class="fa fa-solid fa-trash"></i>
                                        </a>
                                    </form>
                                </td>
                            </tr>
                            %end
                        </table>
                    </div>
                    <div id="add-products" class="boxes form form-add manage-table">
                        <h2>Añadir productos</h2>
                        <form action="/add" method="POST"  autocomplete="off">
                            <label for="pass">Nombre</label>
                            {{ formPro.pro_name }}
                            <label for="pass">Precio</label>
                            {{ formPro.price }}
                            {{ formPro.category }}
                            <label for="pass">Stock</label>
                            {{ formPro.stock }}
                            <div class="input-cont">
                                <input id='file-reg' data-multiple-caption='{count} files selected' type="file" accept="image/png, image/jpg, image/jpeg" name="upload" value="upload">
                                <label for="file-reg"><i class="file-icon fa-color fa fa-solid fa-upload"></i><span>Subir imagen</span></label>
                            </div>
                            {{ formPro.save_pro }}
                        </form>
                        <table>
                            <tr>
                                <th>ID producto</th>
                                <th>Nombre</th>
                                <th>Precio</th>
                                <th>Categoría</th>
                                <th>Stock</th>
                                <th></th>
                            </tr>
                            
                            %for prow in prows:
                            <tr>
                                <td>{{ prow[0] }}</td>
                                <td>{{ prow[1] }}</td>
                                <td>{{ prow[2] }}<span class="euro">€</span></td>
                                <td>{{ prow[3] }}</td>
                                <td>{{ prow[4] }}</td>
                                <td class="manage">
                                    <form class="actions-form" action="/eliminar/{{prow[0]}}" method="POST">
                                        <a class="trash-color" href="#" name="delete_pro">
                                            <i class="fa fa-solid fa-trash"></i>
                                        </a>
                                    </form>
                                </td>
                            </tr>
                            %end
                        </table>
                    </div>
                    <div id="see-clients" class="boxes manage-table">
                        <table>
                            <tr>
                                <th>ID cliente</th>
                                <th>Email</th>
                                <th>Nombre</th>
                                <th>Apellido</th>
                                <th>DNI</th>
                                <th>Dirección</th>
                                <th>Código Postal</th>
                                <th>Ciudad</th>
                                <th></th>
                            </tr>
                            
                            %for incrow in incrows:
                            <tr>
                                <td>{{ incrow[0] }}</td>
                                <td>{{ incrow[1] }}</td>
                                <td>{{ incrow[2] }}</td>
                                <td>{{ incrow[3] }}</td>
                                <td>{{ incrow[4] }}</td>
                                <td>{{ incrow[5] }}</td>
                                <td>{{ incrow[6] }}</td>
                                <td>{{ incrow[7] }}</td>
                                <td class="manage">
                                    <a class="eye-color" href="#mod-see-order">
                                        <i class="fa fa-solid fa-eye"></i>
                                    </a>
                                    <form class="actions-form" action="/eliminar/" method="POST">
                                        <a class="trash-color" href="#" name="delete_ord">
                                            <i class="fa fa-solid fa-trash"></i>
                                        </a>
                                    </form>
                                </td>
                            </tr>
                            %end
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <script>


            $('#open').on('click', function(){
                $('#popup').fadeIn('slow');         
                $('.popup-overlay').fadeIn('slow');         
                $('.popup-overlay').height($(window).height());         
                return false;     
            });      
            $('#close').on('click', function(){
                $('#popup').fadeOut('slow');         
                $('.popup-overlay').fadeOut('slow');         
                return false;
            }); 

            function toggleMenu(){
                let nav = $('.nav-panel');
                let span = $('.title');
                let content = $('.content-panel');
                nav.toggleClass('active');
                span.toggleClass('hidden');
                content.toggleClass('active');
            }

            function changeStatus(){
                let statusTD = $('.status-td');
                let statusSpan = $('.status-span');
                let thumb = $('.i-thumb');
                let color = $('.i-thumb');
                
                if (statusSpan.text() == 'Sin preparar'){
                    statusTD.addClass('prepared');
                    statusSpan.text('Preparado');
                    thumb.removeClass('fa-thumbs-up');
                    thumb.addClass('fa-thumbs-down');
                    color.addClass('thumb-red');
                } else {
                    statusTD.removeClass('prepared');
                    statusSpan.text('Sin preparar');
                    thumb.removeClass('fa-thumbs-down');
                    thumb.addClass('fa-thumbs-up');
                    color.removeClass('thumb-red');
                }
            }

            $('.nav-button-section').on('click', function(e){
                e.preventDefault();

                $(".boxes").removeClass("show");
                $($(this).attr('href')).addClass("show");	
            });
        </script>
    </body>
</html>
