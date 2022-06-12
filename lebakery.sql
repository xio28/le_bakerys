insert into empleados (Email, Nombre, Apellido1, Apellido2) values
    ('lcaser1@slideshare.net','Dafnée', 'Lacoste', 'Penas'),
    ('clorkingsd@dell.com', 'Gaïa', 'Cannam', 'Cicutto'),
    ('ajerrold5@house.gov', 'Angèle', 'Duncombe', 'McKinna'),
    ('bcallinan2@virginia.edu', 'Adèle', 'Draper', 'Kornes');


insert into empleados (Email, UserPassword) values 
    ('tfladgate0@chronoengine.com', '3bqOowtU7z'),
    ('lcaser1@slideshare.net', 'kXOnd3dnSdL'),
    ('bcallinan2@virginia.edu', 'wdOgex7tF'),
    ('alighterness3@facebook.com', 'iFfw9sXfg9y'),
    ('cjannasch4@people.com.cn', 'jLMsQWA'),
    ('ajerrold5@house.gov', 'aGQu3IzC'),
    ('slamberto6@timesonline.co.uk', 'b0kEtD8l'),
    ('csprigging7@cisco.com', 'fH7HWCc4qB6'),
    ('npikhno8@4shared.com', 'bQ6F7eGKV'),
    ('cdurning9@meetup.com', 'KDtXLEsAbq'),
    ('loganiana@army.mil', 'SbnXE5xUo'),
    ('lglencroscheb@time.com', 'a6gUz4qOI'),
    ('kprantonic@archive.org', 'BGheFQZP'),
    ('clorkingsd@dell.com', 'RisXNyImrhqU'),
    ('pralline@cbc.ca', 'rokd40Jy'),
    ('cmckintoshf@umn.edu', 'ZAPvuKgH'),
    ('jperlg@cocolog-nifty.com', 'u0I98H2tgFno'),
    ('woverburyh@squidoo.com', 'PQh9tzOg'),
    ('bdoorbari@nba.com', 'U30pG9K'),
    ('wbredesj@weibo.com', 'tdHUk2');


insert into clientes (Email, DNI, Nombre, Apellido1, Apellido2, Telefono, Direccion, CodigoPostal, Ciudad, PoliticaDePriv) values
    ('tfladgate0@chronoengine.com', "65189837V", 'Noëlla', 'Sheldon', 'Lauritsen', '434583333', 'Canio n23', 27705, 'Durham', TRUE),
    ('alighterness3@facebook.com', "80016033E", 'Angélique', 'Wayne', 'Fasson', '238783991', 'Bellavista n25', 32083, 'Balice', TRUE),
    ('cjannasch4@people.com.cn', "05338968R", 'Loïs', 'Dulake', 'Mersh', '306922417', 'Inglaterra n34', 94242, 'Nueva Esperanza', TRUE),
    ('slamberto6@timesonline.co.uk', "75418262C", 'Björn', 'Feighney', 'Covotti', '926993642', 'Hernan Cortes n96', 44015, 'Qiting', TRUE),
    ('csprigging7@cisco.com', "98495126H", 'Björn', 'Logie', 'Ferraraccio', '608772985', 'Arana n32', 33189, 'Áthyra', TRUE),
    ('npikhno8@4shared.com', "81439849T", 'Åke', 'Gonin', 'Jubert', '3268333723', "Cadiz n46", 6811, 'Giporlos', TRUE),
    ('cdurning9@meetup.com', "95177999C", 'Anaïs', 'Blagdon', 'Quinney', '3092147958', 'Carretera 68', 33480, 'Ylöjärvi', TRUE),
    ('loganiana@army.mil', "92373302N", 'Maëlann', 'Clixby', 'Olliar', '1533379451', 'Domingo Beltran n12', 21325, 'Tučepi', TRUE),
    ('lglencroscheb@time.com', "05021722V", 'Annotée', 'Vaneschi', 'Devinn', '9947988942', 'Paraguary n46', 53374, 'Horní Jelení', TRUE),
    ('pralline@cbc.ca', "89613164N", 'Aurélie', 'Burnhams', 'Gaule', '3105800184', 'Zumalakarregi Etorbidea n45', 1066, 'Taypano', TRUE),
    ('cmckintoshf@umn.edu', "73556181L", 'Mélodie', 'Wathen', 'Gobourn', '2145604640', 'Paraguay n41', 75062, 'Irving', TRUE),
    ('jperlg@cocolog-nifty.com', "98644666N", 'André', 'Spens', 'Betty', '2905488226', 'Rua Olmos n86', 94463, 'Buenavista', TRUE),
    ('woverburyh@squidoo.com', "66608008P", 'Rachèle', 'Feechum', 'Georgievski', '1548349955', 'Benito Guinea n84', 38-324, 'Siedliska', TRUE),
    ('bdoorbari@nba.com', "91836336G", 'Anaé', 'Fairburne', 'Eves', '1949431898', 'La Fontanilla n20', 34432, 'Ostrowsko', TRUE),
    ('wbredesj@weibo.com', "47016860F", 'Kallisté', 'Deavin', 'Bome', '5373845119', 'Salamanca n13', 1275, 'Baculongan', TRUE),
    ('rosculley0@chron.com', "53956522V", 'Vérane', 'Monini', 'Kiehl', '6321248790', 'Carril de la Fuente n32', 937814, 'Ishigaki', TRUE);


INSERT INTO pedidos (Subtotal, Descuento, Total) VALUES
(60.98, 5, ((60.98 * 0.20) + 60.98) - (60.98 * 0.05)),
(60.98, 5, ((60.98 * 0.20) + 60.98) - (60.98 * 0.05)),
(14.25, 0, ((14.25 * 0.20) + 14.25) - (14.25 * 0)),
(19.56, 0, ((19.56 * 0.20) + 19.56) - (19.56 * 0)),
(36.70, 10, ((36.70 * 0.20) + 36.70) - (36.70 * 0.10)),
(36.72, 10, ((36.72 * 0.20) + 36.72) - (36.72 * 0.10)),
(130.50, 22, ((130.50 * 0.20) + 130.50) - (130.50 * 0.22));


INSERT INTO clientes_productos VALUES 
    (1, 1, "La mejor tarta de red velvet. Vale su precio y mas", "2022-11-06"),
    (1, 2, "Deiliciosos como todo lo de la carta", "2022-11-06"),
    (1, 3, "Calidad-precio inmejorable", "2022-11-06"),
    (3, 9, NULL, "2022-11-06"),
    (5, 20, NULL, "2022-11-06"),
    (5, 26, "Tan frescos como de costumbre", "2022-11-06"),
    (7, 16, "Se nota la calidad de los alimentos", "2022-11-06"),
    (7, 28, "Muy buena la calidad de los productos", "2022-11-06"),
    (11, 18, "Gran postre asiático que recuerda a los originales", "2022-11-06"),
    (11, 7, "Cremoso y fresco. Ideal para el verano", "2022-11-06"),
    (14, 22, NULL, "2022-11-06");
--Cli Prod Com Fec

INSERT INTO carrito (IDProducto, IDPedido, Precioventa, Unidades) VALUES
(1, 2, 35, 1),
(2, 2, 22, 1),
(4, 2, 3.98, 1),

(9, 3, 4.75, 3),

(20, 4, 0.45, 20),
(26, 4, 1.32, 8),

(16, 5, 18.97, 1),
(28, 5, 5.7, 3),

(18, 6, 2.35, 8),
(7, 6, 4.48, 4),

(22, 7, 14.50, 9);


INSERT INTO productos (Nombre, PrecioDeCoste, Categoria, Stock) VALUES 
("Red Velvet", 35, "Tartas", 15),
("Tarta Vianner", 22, "Tartas", 8),
("Gelato", 7.59, "Helados", 35),
("Tiramisu", 3.98, "Dulces", 20),
("Panna Cotta", 3.29, "Dulces", 11),
("Pavlola", 28.99, "Tartas", 5),
("Crema de papaya", 4.48, "Cremosos", 9),
("Buñuelos de viento", 0.98, "Dulces", 50),
("Milhojas", 4.75, "Dulces", 23),
("Crepe", 2.85, "Dulces", 12),
("Mousse de fresa", 2.91, "Cremosos", 15),
("Mousse de chocolate", 2.95, "Cremosos", 19),
("Mousse de cholate blanco", 2.91, "Cremosos", 15),
("Caballeros Pobres", 1.20, "Dulces", 8),
("Alfajores", 1.75, "Dulces", 20),
("Tarta Saint Honore", 18.97, "Tartas", 5),
("Baklava", 2.45, "Dulces", 11),
("Dragon Beard Candy", 2.35, "Dulces", 18),
("Beijinhos", 3.20, "Dulces", 21),
("Churros", 0.45, "Salados", 40),
("Suspiro limeño", 5.90, "Cremosos", 6),
("Crema catalana", 4.78, "Cremosos", 3),
("Cheesecake", 14.50, "Tartas", 25),
("Cheesecake 'Le Bakerys'", 14.50, "Tartas", 25),
("Fondant au chocolat", 5.10, "Dulces", 9),
("Macarons", 1.32, "Dulces", 15),
("Tarta  del Principe Regente", 19.98, "Dulces", 7),
("Sandwich 'Le Bakerys'", 5.70, "Salados", 5),
("Croissant", 1.45, "Dulces", 20),
("Croissant 'Le Bakerys'", 1.45, "Dulces", 20);


INSERT INTO pedidos_empleados VALUES
(1, 2, "2022-11-06"),
(2, 2, "2022-11-06"),
(3, 5, "2022-11-06"),
(4, 4, "2022-11-06"),
(5, 3, "2022-11-06"),
(6, 5, "2022-11-06"),
(7, 4, "2022-11-06"),
(8, 3, "2022-11-06");
-- IDPed IDEmp Fec


INSERT INTO pedidos_clientes_empleados VALUES
(1, 1, 2, "2022-11-06"),
(2, 3, 5, "2022-11-06"),
(3, 5, 4, "2022-11-06"),
(4, 7, 3, "2022-11-06"),
(5, 11, 4, "2022-11-06"),
(6, 14, 3, "2022-11-06");
-- IDPed IDCLi IDEmp Fech


INSERT INTO facturas VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7);
