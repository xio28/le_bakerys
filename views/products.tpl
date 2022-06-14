%include("header.tpl", title = "Productos")
    <div class="main__container">
        <h2>Nuestros productos</h2>
        %include("nav-menu.tpl")
        <div class="products-nav">
                <ul>
                    <li>Filtrar por:</li>
                    <li>
                        <form action="/productos" method="POST">
                            <label for="tartas">Tartas</label>
                            <input type="submit" name="tartas" id="tartas">
                        </form>
                    </li>
                    <li>
                        <form action="/productos" method="POST">
                            <label for="helados">Helados</label>
                            <input type="submit" name="helados" id="helados">
                        </form>
                    </li>
                    <li>
                        <form action="/productos" method="POST">
                            <label for="dulces">Dulces</label>
                            <input type="submit" name="dulces" id="dulces">
                        </form>
                    </li>
                    <li>
                        <form action="/productos" method="POST">
                            <label for="salados">Salados</label>
                            <input type="submit" name="salados" id="salados">
                        </form>
                    </li>
                    <li>
                        <form action="/productos" method="POST">
                            <label for="todos">Todos</label>
                            <input type="submit" name="todos" id="todos">
                        </form>
                    </li>
                </ul>
        </div>
        <div class="products__container">
        %for product in products_list:
            %if product[-2] > 0:
            <div class="product_card" data-tilt data-tilt-reverse="true">
                <form action="/carrito/{{product[0]}}" method="POST">
                    <button type="submit" value="add_product" name="add_product">
                        <i class="fa fa-solid fa-cart-plus"></i>
                    </button>
                </form>
                    %for i in range(len(product)):
                        %if i == 1:
                        <h3>{{product[i]}}</h3>
                        %elif i == 2:
                        <p>{{product[i]}} €</p>
                        %elif i == 5:
                        <img src="{{product[i]}}" alt="product">
                        %end
                    %end
            </div>
            %end
        %end
        </div>
        <form action="/carrito" method="GET">
            <button class="shop-btn">
                <img src="/static/resources/img/shopping-basket.png" alt="">
            </button>
            <div class="count-info">{{count_products[0][0]}}</div>
        </form>
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
