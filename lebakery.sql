INSERT INTO usuarios (Email, Password, Nombre, Apellido1, Apellido2, Imagen) VALUES 
    ('cliente_1@email.com', '1234', 'Dafnée', 'Lacoste', 'Penas', 'static/resources/img/upload/users/default.avatar.png'),
    ('cliente_2@email.com', '1234', 'Gaïa', 'Cannam', 'Cicutto', 'static/resources/img/upload/users/default.avatar.png'),
    ('cliente_3@email.com', '1234', 'Angèle', 'Duncombe', 'McKinna', 'static/resources/img/upload/users/default.avatar.png'),
    ('cliente_4@email.com', '1234', 'Noëlla', 'Sheldon', 'Lauritsen', 'static/resources/img/upload/users/default.avatar.png'),
    ('empleado_1@email.com', '1234', 'Loïs', 'Dulake', 'Mersh', 'static/resources/img/upload/users/default.avatar.png'),
    ('empleado_2@email.com', '1234', 'Björn', 'Feighney', 'Covotti', 'static/resources/img/upload/users/default.avatar.png');

INSERT INTO clientes (Email, Nif, Contacto, Calle, Codigo_Postal, Ciudad) VALUES
    ('cliente_1@email.com' , "65189837V", '434583333', 'Canio n23', 27705, 'Durham'),
    ('cliente_2@email.com' , "65112837A", '124583333', 'Canio n24', 27705, 'Durham'),
    ('cliente_3@email.com' , "12189837C", '134123333', 'Canio n25', 27705, 'Durham'),
    ('cliente_4@email.com' , "45189837X", '453583333', 'Canio n26', 27705, 'Durham');

INSERT INTO empleados (Email) VALUES
    ('empleado_1@email.com'),
    ('empleado_2@email.com');

INSERT INTO productos (Producto, Precio, Categoria, Stock, Imagen) VALUES 
("Red Velvet", 35, "Tartas", 15, 'static/resources/img/upload/products/red_velvet.png'),
("Tarta Vianner", 22, "Tartas", 8, 'static/resources/img/upload/products/tarta_vianner.png'),
("Gelato", 7.59, "Helados", 35, 'static/resources/img/upload/products/gelato.png'),
("Tiramisu", 3.98, "Dulces", 20, 'static/resources/img/upload/products/tiramisu.png'),
("Panna Cotta", 3.29, "Dulces", 11, 'static/resources/img/upload/products/panna_cotta.png'),
("Pavlola", 28.99, "Tartas", 5, 'static/resources/img/upload/products/pavlola.png'),
("Crema de papaya", 4.48, "Cremosos", 9, 'static/resources/img/upload/products/crema_de_papaya.png'),
("Buñuelos de viento", 0.98, "Dulces", 50, 'static/resources/img/upload/products/buñuelos_de_viento.png'),
("Milhojas", 4.75, "Dulces", 23, 'static/resources/img/upload/products/milhojas.png'),
("Crepe", 2.85, "Dulces", 12, 'static/resources/img/upload/products/crepe.png'),
("Mousse de fresa", 2.91, "Cremosos", 15, 'static/resources/img/upload/products/mousse_de_fresa.png'),
("Mousse de chocolate", 2.95, "Cremosos", 19, 'static/resources/img/upload/products/mousse_de_chocolate.png'),
("Mousse de cholate blanco", 2.91, "Cremosos", 15, 'static/resources/img/upload/products/mousse_de_cholate_blanco.png'),
("Caballeros Pobres", 1.20, "Dulces", 8, 'static/resources/img/upload/products/caballeros_pobres.png'),
("Alfajores", 1.75, "Dulces", 20, 'static/resources/img/upload/products/alfajores.png'),
("Tarta Saint Honore", 18.97, "Tartas", 5, 'static/resources/img/upload/products/tarta_saint_honore.png'),
("Baklava", 2.45, "Dulces", 11, 'static/resources/img/upload/products/baklava.png'),
("Dragon Beard Candy", 2.35, "Dulces", 18, 'static/resources/img/upload/products/dragon_beard_candy.png'),
("Beijinhos", 3.20, "Dulces", 21, 'static/resources/img/upload/products/beijinhos.png'),
("Churros", 0.45, "Salados", 40, 'static/resources/img/upload/products/churros.png'),
("Suspiro limeño", 5.90, "Cremosos", 6, 'static/resources/img/upload/products/suspiro_limeño.png'),
("Crema catalana", 4.78, "Cremosos", 3, 'static/resources/img/upload/products/crema_catalana.png'),
("Cheesecake", 14.50, "Tartas", 25, 'static/resources/img/upload/products/cheesecake.png'),
("Cheesecake 'Le Bakerys'", 14.50, "Tartas", 25, "static/resources/img/upload/products/cheesecake_'le_bakerys'.png"),
("Fondant au chocolat", 5.10, "Dulces", 9, 'static/resources/img/upload/products/fondant_au_chocolat.png'),
("Macarons", 1.32, "Dulces", 15, 'static/resources/img/upload/products/macarons.png'),
("Tarta  del Principe Regente", 19.98, "Dulces", 7, 'static/resources/img/upload/products/tarta__del_principe_regente.png'),
("Sandwich 'Le Bakerys'", 5.70, "Salados", 5, "static/resources/img/upload/products/sandwich_'le_bakerys'.png"),
("Croissant", 1.45, "Dulces", 20, 'static/resources/img/upload/products/croissant.png'),
("Croissant 'Le Bakerys'", 1.45, "Dulces", 20, "static/resources/img/upload/products/croissant_'le_bakerys'.png");