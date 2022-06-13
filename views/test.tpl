<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Testing</title>

    <style>

        .tables {
            display: flex;
            align-items: flex-start;
        }

        table {
            margin-left: 1rem;
            border-left: 2px solid black;
        }

        .spacer {
            margin: 1rem auto;
            width: 99vw;
            border-bottom: 2px solid black;
        }

        img {
            width: 60px;
            height: 60px;
            border-radius: 50%;
        }

        .products {
            width: 95vw;
            margin: 2rem auto;
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(min(17rem, 100%), 1fr));
        }

        .product {
            background-color: rgba(116, 186, 223, 0.532);
            width: 15rem;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            position: relative;
            border-radius: 10px;
            margin: 1rem;
            padding: .3rem;
            position: relative;
        }

        .btn {
            position: absolute;
            border-radius: 25px;
            font-size: 1rem;
        }

        .buy_btn{
            top: 10px;
            right: 15px;
        }

        .count {
            background-color: black;
            border-radius: 50%;
            color: white;
            width: 40px;
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 2rem;
        }

    </style>
</head>
<body>

    <div class="tables">
        <table>
            <form action="/test/clientes" method="POST" enctype="multipart/form-data">
            <tr>
                <td colspan="2"><h2>Registro de Clientes</h2></td>
            </tr>
            <tr>
                <td><label for="email">Email</label></td>
                <td><input type="text" name="email"></td>
            </tr>
            <tr>
                <td><label for="password">password</label></td>
                <td><input type="text" name="password"></td>
            </tr>
            <tr>
                <td><label for="nombre">nombre</label></td>
                <td><input type="text" name="nombre"></td>
            </tr>
            <tr>
                <td><label for="apellido1">apellido1</label></td>
                <td><input type="text" name="apellido1"></td>
            </tr>
            <tr>
                <td><label for="apellido2">apellido2</label></td>
                <td><input type="text" name="apellido2"></td>
            </tr>
            <tr>
                <td><label for="nif">nif</label></td>
                <td><input type="text" name="nif"></td>
            </tr>
            <tr>
                <td><label for="contacto">contacto</label></td>
                <td><input type="text" name="contacto"></td>
            </tr>
            <tr>
                <td><label for="calle">calle</label></td>
                <td><input type="text" name="calle"></td>
            </tr>
            <tr>
                <td><label for="portal">portal</label></td>
                <td><input type="text" name="portal"></td>
            </tr>
            <tr>
                <td><label for="piso">piso</label></td>
                <td><input type="text" name="piso"></td>
            </tr>
            <tr>
                <td><label for="codigo_postal">codigo_postal</label></td>
                <td><input type="text" name="codigo_postal"></td>
            </tr>
            <tr>
                <td><label for="ciudad">ciudad</label></td>
                <td><input type="text" name="ciudad"></td>
            </tr>
            <tr>
                <td><label for="upload">upload</label></td>
                <td><input type="file" name="upload" accept="image/png, image/jpg, image/jpeg"></td>
            </tr>
            <tr>
                <td><input type="submit" name="new_client" value="New_client"></td>
                <td><input type="submit" name="show_client" value="show_client"></td>
            </tr>
            </form>
        </table>

        <table>
            <form action="/test/empleados" method="POST" enctype="multipart/form-data">
            <tr>
                <td colspan="2"><h2>Registro Empleados</h2></td>
            </tr>
            <tr>
                <td><label for="email">email</label></td>
                <td><input type="text" name="email"></td>
            </tr>
            <tr>
                <td><label for="password">password</label></td>
                <td><input type="text" name="password"></td>
            </tr>
            <tr>
                <td><label for="nombre">nombre</label></td>
                <td><input type="text" name="nombre"></td>
            </tr>
            <tr>
                <td><label for="apellido1">apellido1</label></td>
                <td><input type="text" name="apellido1"></td>
            </tr>
            <tr>
                <td><label for="apellido2">apellido2</label></td>
                <td><input type="text" name="apellido2"></td>
            </tr>
            <tr>
                <td><label for="upload">upload</label></td>
                <td><input type="file" name="upload" accept="image/png, image/jpg, image/jpeg"></td>
            </tr>
            <tr>
                <td><input type="submit" name="new_employee" value="New_employee"></td>
                <td><input type="submit" name="show_employee" value="show_employee"></td>
            </tr>
            </form>
        </table>
        
        <table>
            <form action="/test/productos" method="POST" enctype="multipart/form-data">
            <tr>
                <td colspan="2"><h2>Registro Producto</h2></td>
            </tr>
            <tr>
                <td><label for="producto">producto</label></td>
                <td><input type="text" name="producto"></td>
            </tr>
            <tr>
                <td><label for="precio">precio</label></td>
                <td><input type="text" name="precio"></td>
            </tr>
            <tr>
                <td><label for="categoria">categoria</label></td>
                <td>
                    <select name="categoria" id="categoria">
                        <option value="tartas" selected>Tartas</option>
                        <option value="dulces">Dulces</option>
                        <option value="saludos">Salados</option>
                        <option value="helados">Helados</option>
                        <option value="helados">Cremosos</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td><label for="stock">stock</label></td>
                <td><input type="text" name="stock"></td>
            </tr>
            <tr>
                <td><label for="upload">upload</label></td>
                <td><input type="file" name="upload" accept="image/png, image/jpg, image/jpeg"></td>
            </tr>
            <tr>
                <td><input type="submit" name="new_product" value="New_product"></td>
                <td><input type="submit" name="show_product" value="show_product"></td>
            </tr>
            </form>
        </table>

        <table>
            <form action="/test/login" method="POST">
                <tr>
                    <td colspan="2"><h2>Comprobar usuarios</h2></td>
                </tr>
                <tr>
                    <td><label for="email">Email</label></td>
                    <td><input type="text" name="email"></td>
                </tr>
                <tr>
                    <td><label for="password">password</label></td>
                    <td><input type="text" name="password"></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" name="comprobar" value="comprobar"></td>
                </tr>
            </form>
        </table>
    </div>

    <div class="spacer"></div>

<!--------------------------------------------------------------------------------------------------------------------------->

    <h2>Productos</h2>
    <div class="products">
        %for prod in products:
        <div class="product">
            %for i in range(len(prod)):
                %if i == 1:
                    <h3>{{prod[i]}}</h3>
                %elif i == 5:
                    <img src={{prod[i]}} alt="product">
                %end
            %end
            <form action="/test/carrito/{{prod[0]}}" method="POST">
                <input type="submit" name="add_product" value="+" class="btn buy_btn">
            </form>
        </div>
        %end
    </div>
    
    <div class="spacer"></div>

    <h2>Carrito</h2>
    <div class="shop_cart">
        <div class="count">0</div>
    </div>

</body>
</html>