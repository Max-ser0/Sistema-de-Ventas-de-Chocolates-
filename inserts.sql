-- CATEGORIAS
INSERT INTO categorias (nombre_categoria) VALUES
('Amargo'),
('Con Leche'),
('Blanco'),
('Rellenos'),
('Premium');

-- CHOCOLATES (20)
INSERT INTO chocolates (nombre, descripcion, precio, stock, categoria_id) VALUES
('Barra 70%', 'Chocolate amargo', 5.50, 50, 1),
('Barra 80%', 'Chocolate intenso', 6.00, 40, 1),
('Chocolate Leche Clásico', 'Suave', 4.50, 60, 2),
('Chocolate Blanco Oreo', 'Con galleta', 4.00, 30, 3),
('Bombón Avellana', 'Relleno', 1.20, 100, 4),
('Trufa Chocolate', 'Premium', 2.50, 80, 5),
('Chocolate Caramelo', 'Dulce', 3.80, 70, 2),
('Chocolate Almendra', 'Crujiente', 4.20, 55, 2),
('Chocolate Fresa', 'Frutal', 3.50, 65, 3),
('Chocolate Menta', 'Refrescante', 3.90, 40, 1),
('Chocolate Café', 'Intenso', 4.80, 35, 1),
('Chocolate Coco', 'Tropical', 3.70, 50, 3),
('Chocolate Naranja', 'Cítrico', 3.60, 45, 1),
('Chocolate Pistacho', 'Premium', 5.80, 25, 5),
('Chocolate Frambuesa', 'Ácido dulce', 4.10, 30, 3),
('Chocolate Dulce', 'Clásico', 3.00, 80, 2),
('Chocolate Extra', 'Fuerte', 6.50, 20, 1),
('Chocolate Kids', 'Para niños', 2.50, 100, 2),
('Chocolate Mix', 'Variedad', 5.00, 60, 4),
('Chocolate Deluxe', 'Alta gama', 7.50, 15, 5);

-- CLIENTES (25)
INSERT INTO clientes (nombre_completo, email, telefono) VALUES
('Carlos Perez','c1@mail.com','70000001'),
('Maria Lopez','c2@mail.com','70000002'),
('Juan Torres','c3@mail.com','70000003'),
('Ana Rojas','c4@mail.com','70000004'),
('Luis Gomez','c5@mail.com','70000005'),
('Pedro Diaz','c6@mail.com','70000006'),
('Lucia Vargas','c7@mail.com','70000007'),
('Sofia Ramos','c8@mail.com','70000008'),
('Miguel Castro','c9@mail.com','70000009'),
('Andrea Ruiz','c10@mail.com','70000010'),
('Jorge Flores','c11@mail.com','70000011'),
('Elena Soto','c12@mail.com','70000012'),
('Raul Ortiz','c13@mail.com','70000013'),
('Paula Mendez','c14@mail.com','70000014'),
('Diego Silva','c15@mail.com','70000015'),
('Camila Vega','c16@mail.com','70000016'),
('Fernando Cruz','c17@mail.com','70000017'),
('Valeria Paredes','c18@mail.com','70000018'),
('Mario Rios','c19@mail.com','70000019'),
('Natalia Campos','c20@mail.com','70000020'),
('Ricardo Salas','c21@mail.com','70000021'),
('Daniela Quispe','c22@mail.com','70000022'),
('Jose Mamani','c23@mail.com','70000023'),
('Patricia Choque','c24@mail.com','70000024'),
('Roberto Nina','c25@mail.com','70000025');

-- VENTAS (30)
INSERT INTO ventas (cliente_id, total_venta) VALUES
(1,20),(2,15),(3,30),(4,25),(5,18),
(6,22),(7,40),(8,12),(9,28),(10,35),
(11,19),(12,27),(13,16),(14,21),(15,33),
(16,45),(17,50),(18,14),(19,23),(20,38),
(21,29),(22,31),(23,26),(24,17),(25,24),
(1,30),(2,22),(3,18),(4,27),(5,36);

-- DETALLE VENTAS (50+)
INSERT INTO detalle_ventas (venta_id, chocolate_id, cantidad, precio_unitario) VALUES
(1,1,2,5.5),(1,2,3,6.0),(2,3,2,4.5),(2,4,1,4.0),
(3,5,5,1.2),(3,6,2,2.5),(4,7,3,3.8),(4,8,2,4.2),
(5,9,4,3.5),(5,10,2,3.9),(6,11,3,4.8),(6,12,2,3.7),
(7,13,4,3.6),(7,14,1,5.8),(8,15,2,4.1),(8,16,3,3.0),
(9,17,2,6.5),(9,18,5,2.5),(10,19,3,5.0),(10,20,1,7.5),
(11,1,2,5.5),(12,2,2,6.0),(13,3,1,4.5),(14,4,3,4.0),
(15,5,4,1.2),(16,6,2,2.5),(17,7,3,3.8),(18,8,2,4.2),
(19,9,4,3.5),(20,10,2,3.9),(21,11,3,4.8),(22,12,2,3.7),
(23,13,4,3.6),(24,14,1,5.8),(25,15,2,4.1),(26,16,3,3.0),
(27,17,2,6.5),(28,18,5,2.5),(29,19,3,5.0),(30,20,1,7.5);
