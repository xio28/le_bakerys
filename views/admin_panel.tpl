%include("header.tpl", title = "Panel de ")
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
                %if title == "Panel de usuario":
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
                <!-- Empleados -->
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
                <div id="see-orders" class="boxes manage-table">
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
                <div id="manage-orders" class="boxes manage-table show">
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
                            <td class="status-td">
                                <span class="status-span">Sin preparar</span>
                            </td>
                            <td class="manage">
                                <a class="eye-color" href="#">
                                    <i class="fa fa-solid fa-eye"></i>
                                </a>
                                <a class="trash-color" href="#">
                                    <i class="fa fa-solid fa-trash-can"></i>
                                </a>
                                <a class="thumb thumb-color" href="#" onclick="changeStatus();">
                                    <i class="i-thumb fa fa-solid fa-thumbs-up"></i>
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
                <div id="add-employees" class="boxes form form-add manage-table">
                    <h2>Añadir empleados</h2>
                    <form action="/addemp" method="POST"  autocomplete="off">
                        <label for="pass">Email</label>
                        <input type="text">
                        <label for="pass">Contraseña</label>
                        <input type="text">
                        <label for="pass">Repetir contraseña</label>
                        <input type="text">
                        <label for="pass">Nombre</label>
                        <input type="text">
                        <label for="pass">Primer apellido</label>
                        <input type="text">
                        <label for="pass">Segundo apellido</label>
                        <input type="text">
                        <div class="input-cont">
                            <input type="file" id="file-reg"
                            data-multiple-caption="{count} files selected">
                            <label for="file-reg"><i class="file-icon fa-color fa fa-solid fa-upload"></i><span>Subir imagen</span></label>
                        </div>
                        <input type="submit" value="Añadir empleado"/>
                    </form>
                    <table>
                        <tr>
                            <th>ID empleado</th>
                            <th>Email</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th></th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>jerobel@lebakerys.com</td>
                            <td>Jerobel</td>
                            <td>Rodríguez</td>
                            <td class="manage">
                                <a class="trash-color" href="#">
                                    <i class="fa fa-solid fa-trash-can"></i>
                                </a>
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="add-products" class="boxes form form-add manage-table">
                    <h2>Añadir productos</h2>
                    <form action="/addprod" method="POST"  autocomplete="off">
                        <label for="pass">Nombre</label>
                        <input type="text">
                        <label for="pass">Precio</label>
                        <input type="text">
                        <label for="pass">Categoría</label>
                        <input type="text">
                        <label for="pass">Stock</label>
                        <input type="text">
                        <div class="input-cont">
                            <input type="file" id="file-reg"
                            data-multiple-caption="{count} files selected">
                            <label for="file-reg"><i class="file-icon fa-color fa fa-solid fa-upload"></i><span>Subir imagen</span></label>
                        </div>
                        <input type="submit" value="Añadir producto"/>
                    </form>
                    <table>
                        <tr>
                            <th>ID empleado</th>
                            <th>Email</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th></th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>jerobel@lebakerys.com</td>
                            <td>Jerobel</td>
                            <td>Rodríguez</td>
                            <td class="manage">
                                <a class="trash-color" href="#">
                                    <i class="fa fa-solid fa-trash-can"></i>
                                </a>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
%include("footer.tpl")
