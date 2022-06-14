%include("header.tpl", title = "Carrito")
    <div class="container-resume">
        <div class="card-item">
            <div class="card-title"><h3>Estás a un paso...</h3></div>
            %for data in datas:
            <div class="products">
                <div class="product">
                    <div class="img-product">
                        <img src="{{data[5]}}" alt="img-product"/>
                    </div>
                    <div class="price">{{data[2]}} €</div>
                    <div class="units">
                        <form action="/carrito/{{data[0]}}" method="POST">
                            <button type="submit" name="remove_one" value="remove_one"><i class="fa fa-minus"></i></button>
                            <button type="submit" name="add_one" value="'add_one"><i class="fa fa-plus"></i></button>
                        </form>
                    </div>
                    <div class="total">{{data[3]}} Unidad(es)</div>
                    <div class="total">{{data[4]}}€</div>
                    <div class="del"><a href="#" title="borrar"><i class="fas fa-trash-alt"></i></a></div>
                </div>
            </div>
            %end
            <div class="to-pay">
                <div class="bold-total">
                    <div class="text">TOTAL:</div>
                    <span class="t">{{total if total != None else 0}} €<i class="fas fa-euro-sign"></i></span>
                </div>
                <div class="policy">
                    <input type="checkbox" name="policy"/>
                    <span>Entiendo y acepto las <a href="#">condiciones de envío y facturación.</a></span>
                </div>
                <input type="submit" value="Realizar pedido"/>
            </div>
        </div>
    </div>

%include("footer.tpl")

    <script>
        document.addEventListener("DOMContentLoaded", function(event) { 
            var scrollpos = localStorage.getItem('scrollpos');
            if (scrollpos) window.scrollTo(0, scrollpos);
        });

        window.onbeforeunload = function(e) {
            localStorage.setItem('scrollpos', window.scrollY);
        };
    </script>

</body>
</html>