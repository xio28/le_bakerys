%include("header.tpl", title = "Resumen | Le Bakery's")

    <div class="container-resume">
        <div class="card-item">
            <div class="card-title"><h3>Estás a un paso...</h3></div>
            <div class="products">
                
                <ul class="info">
                    <li>Nombre del producto</li>
                    <li>Precio</li>
                    <li>Cantidad</li>
                    <li>Total</li>
                </ul>
                
                %for data in datas:
                <div class="product">
                    <div class="img-product">
                        <img src="{{data[5]}}" alt="img-product"/>
                    </div>
                    <div class="price">{{data[2]}} €</div>
                    <div class="units">

                        <form action="/carrito/{{data[0]}}" method="POST">
                            <button type="submit" name="remove_one" value="remove_one"><i class="fa fa-minus"></i></button>
                            <span class="unit-text">{{data[3]}}</span>
                            <button type="submit" name="add_one" value="add_one"><i class="fa fa-plus"></i></button>
                        </form>
                    </div>
                    <div class="total">{{data[4]}} €</div>
                </div>
                %end
            </div>
            <div class="to-pay">
                <div class="bold-total">
                    <div class="text">TOTAL:</div>
                    <span class="t">{{total if total != None else 0}} €<i class="fas fa-euro-sign"></i></span>
                </div>
                <div class="policy">
                    <input type="checkbox" name="policy" id="policy"/>
                    <label for="policy"><span>Entiendo y acepto las condiciones de envío y facturación</span></label>
                </div>
                    <form action="/pedido" method="POST">
                    <input type="submit" name="submit-order" value="Realizar pedido"/>
                </form>
            </div>
        </div>
    </div>

%include("footer.tpl")
</body>
</html>

<input type="file" accept="image/png, image/jpg, image/jpeg" name="upload" value="upload">