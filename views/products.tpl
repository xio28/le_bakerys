%include("header.tpl", title = "Productos")
    <div class="main__container">
        <h2>Nuestros productos</h2>
        %include("nav-menu.tpl")
        <div class="products-nav">
                <ul>
                    <li>Filtrar por:</li>
                    <li>
                        <form action="/products" method="POST">
                            <label for="tartas">Tartas</label>
                            <input type="submit" name="tartas" id="tartas">
                        </form>
                    </li>
                    <li>
                        <form action="/products" method="POST">
                            <label for="helados">Helados</label>
                            <input type="submit" name="helados" id="helados">
                        </form>
                    </li>
                    <li>
                        <form action="/products" method="POST">
                            <label for="dulces">Dulces</label>
                            <input type="submit" name="dulces" id="dulces">
                        </form>
                    </li>
                    <li>
                        <form action="/products" method="POST">
                            <label for="salados">Salados</label>
                            <input type="submit" name="salados" id="salados">
                        </form>
                    </li>
                    <li>
                        <form action="/products" method="POST">
                            <label for="todos">Todos</label>
                            <input type="submit" name="todos" id="todos">
                        </form>
                    </li>
                </ul>
        </div>
        <div class="products__container">
            %for product in products_list:
            <div class="product_card" data-tilt data-tilt-reverse="true">
                <form action="" method="POST">
                    <button type="submit" name="add-to-cart">
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
        </div>
        <button class="shop-btn">
            <img src="/static/resources/img/shopping-basket.png" alt="">
        </button>
    </div>
%include("footer.tpl")

    <script>
        $(window).scroll(() => {
            console.log($(window).scrollTop());

            if($(this).scrollTop() > $(".products__container").scrollTop() + 100) {
                $(".shop-btn").css("background", "#FF9F1C");

            } else {
                $(".shop-btn").css("background", "#2EC4B6");
            };
        });
    </script>
