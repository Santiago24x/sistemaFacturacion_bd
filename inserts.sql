/* -- Inserts para tiposProveedor */
INSERT INTO tiposProveedor (id, categoria)
VALUES 
(1, 'Mayorista'),
(2, 'Minorista'),
(3, 'Preferido');


/* -- Inserts para proveedores */
INSERT INTO proveedores (id, nombre, direccion, correoElectronico, tiposProveedor_id)
VALUES
(1, 'ElectroMundo', 'Carrera 45 #123-56', 'info@electromundo.com', 1),
(2, 'ModaStyle', 'Calle 78 #234-90', 'ventas@modastyle.com', 1),
(3, 'SuperAlimentos', 'Av. Principal #567', 'pedidos@superalimentos.com', 2),
(4, 'CasaHogar', 'Carrera 12 #34-56', 'contacto@casahogar.com', 2),
(5, 'Juguetelandia', 'Diagonal 90 #12-34', 'info@juguetelandia.com', 1),
(6, 'Tecnología Avanzada', 'Calle 56 #789', 'ventas@tecnologiaavanzada.com', 1),
(7, 'Ropa y Accesorios', 'Av. Central #567', 'info@ropayaccesorios.com', 2),
(8, 'Suministros Industriales', 'Carrera 78 #234-90', 'ventas@suministrosindustriales.com', 1),
(9, 'Electrónica Innovadora', 'Diagonal 34 #123-56', 'info@electronica.com', 2),
(10, 'Herramientas de Calidad', 'Av. Principal #234', 'ventas@herramientasdecalidad.com', 1),
(11, 'Muebles Elegantes', 'Calle 90 #789', 'info@muebleselegantes.com', 2),
(12, 'Artículos de Oficina', 'Diagonal 56 #234-90', 'ventas@oficina.com', 2),
(13, 'ElectroRetail', 'Carrera 67 #12-34', 'info@electroretail.com', 2),
(14, 'ModaCasual', 'Av. 10 #45-67', 'ventas@modacasual.com', 2),
(15, 'AlimentosExpress', 'Calle 23 #56-78', 'pedidos@alimentosexpress.com', 2),
(16, 'CasaDecor', 'Av. 8 #90-12', 'contacto@casadecor.com', 2),
(17, 'JuguetesPequeños', 'Carrera 78 #23-45', 'info@juguetespequenos.com', 2),
(18, 'TecnoStore', 'Av. 7 #89-01', 'ventas@tecnostore.com', 2),
(19, 'Fashion Trends', 'Diagonal 12 #34-56', 'info@fashiontrends.com', 2),
(20, 'SuministrosPrácticos', 'Calle 45 #78-90', 'ventas@suministrospracticos.com', 2),
(21, 'ElectrónicaFácil', 'Av. 6 #12-34', 'info@electronicaFacil.com', 2),
(22, 'HerramientasEconómicas', 'Carrera 34 #78-90', 'ventas@herramientaseconomicas.com', 2),
(23, 'MueblesEconómicos', 'Calle 23 #12-34', 'info@muebleseconomicos.com', 2),
(24, 'ArtículosVariados', 'Diagonal 78 #56-78', 'ventas@articulosvariados.com', 2);

UPDATE proveedores
SET tiposProveedor_id = 3
WHERE id IN (3, 4, 7, 9, 11, 12);


/* -- Inserts para telefonosProveedor */
INSERT INTO telefonosProveedor (proveedores_id, telefono)
VALUES
(1, '3212345678'),
(1, '3109876543'),
(2, '3156789012'),
(3, '3187654321'),
(3, '3112345678'),
(4, '3219876543'),
(5, '3176789012'),
(5, '3137654321'),
(6, '3192345678'),
(6, '3129876543'),
(7, '3109876543'),
(8, '3219876543'),
(8, '3176789012'),
(9, '3187654321'),
(9, '3112345678'),
(10, '3156789012'),
(10, '3137654321'),
(11, '3129876543'),
(11, '3192345678'),
(12, '3109876543'),
(12, '3219876543'),
(13, '3112345678'),
(13, '3109876543'),
(14, '3129876543'),
(14, '3112345678'),
(15, '3156789012'),
(15, '3187654321'),
(16, '3176789012'),
(16, '3137654321'),
(17, '3192345678'),
(17, '3129876543'),
(18, '3109876543'),
(18, '3129876543'),
(19, '3176789012'),
(19, '3187654321'),
(20, '3112345678'),
(20, '3109876543'),
(21, '3129876543'),
(21, '3187654321'),
(22, '3156789012'),
(22, '3176789012'),
(23, '3192345678'),
(23, '3137654321'),
(24, '3187654321'),
(24, '3129876543');


/* -- Inserts para niveles */
INSERT INTO niveles (id, tipo)
VALUES
(1, 'Bajo'),
(2, 'Medio'),
(3, 'Alto');


/* -- Inserts para productos */
INSERT INTO productos (id, nombre, precio, cantidad, detalles, proveedores_id, niveles_id)
VALUES
(1, 'Televisor LED 32 pulgadas', 899.99, 15, 'Resolución Full HD, Smart TV', 1, 1),
(2, 'Camiseta deportiva Nike', 29.99, 30, 'Material transpirable, Tallas S-XL', 2, 2),
(3, 'Arroz Doble Carolina 5kg', 12.99, 100, 'Tipo extra, Grano largo', 3, 3),
(4, 'Juego de ollas T-fal', 59.99, 10, 'Antiadherentes, 10 piezas', 4, 1),
(5, 'Set de construcción LEGO', 49.99, 20, 'Incluye 500 piezas', 5, 2),
(6, 'Laptop HP Pavilion', 1299.99, 5, 'Procesador Intel Core i7, 16GB RAM, SSD 512GB', 6, 3),
(7, 'Zapatos de vestir Clarks', 79.99, 25, 'Tallas 8-12, Cuero genuino', 7, 1),
(8, 'Aceite de oliva virgen extra', 9.99, 50, 'Botella de 1 litro, Origen España', 8, 2),
(9, 'Aspiradora Dyson V11', 499.99, 8, 'Sin cable, Tecnología ciclónica', 9, 3),
(10, 'Juego de mesa Catan', 39.99, 12, 'Para 3-4 jugadores, Estrategia', 10, 2),
(11, 'Monitor Dell 27 pulgadas', 399.99, 10, 'Resolución 4K, Pantalla IPS', 11, 3),
(12, 'Auriculares Sony WH-1000XM4', 299.99, 15, 'Cancelación de ruido, Bluetooth', 12, 1),
(13, 'Refrigerador de Doble Puerta', 1199.99, 5, 'Capacidad de 500 litros, Ahorro de energía', 6, 3),
(14, 'Cámaras de Seguridad HD (Paquete de 4)', 399.99, 12, 'Visión nocturna, Monitoreo remoto', 7, 3),
(15, 'Paquete de 12 Botellas de Vino Tinto', 89.99, 20, 'Variedades selectas, Origen España', 8, 3),
(16, 'Set de Herramientas Eléctricas', 499.99, 8, 'Incluye taladro, sierra, etc.', 9, 3),
(17, 'Consola de Videojuegos Xbox Series X', 599.99, 10, 'Resolución 4K, Capacidad de 1TB', 10, 3),
(18, 'Lavadora de Carga Frontal', 799.99, 6, 'Capacidad de 10kg, Tecnología de ahorro de agua', 6, 3),
(19, 'Sistema de Sonido Envolvente 5.1', 299.99, 15, 'Altavoces de alta fidelidad', 7, 3),
(20, 'Licuadora de Alta Potencia', 129.99, 25, 'Vaso de vidrio, Potencia de 1000W', 8, 3),
(21, 'Juego de Llaves de Vaso', 49.99, 30, 'Diferentes medidas, Acero resistente', 9, 3),
(22, 'PlayStation 5', 649.99, 8, 'Disco SSD de 825GB, Gráficos de última generación', 10, 3),
(23, 'Horno de Convección Empotrable', 899.99, 5, 'Tecnología de calor uniforme', 6, 3),
(24, 'Televisor OLED 65 pulgadas', 1499.99, 3, 'Resolución 4K, HDR, Smart TV', 7, 3),
(25, 'Smartphone Android', 399.99, 20, 'Pantalla 6", 128GB de almacenamiento', 13, 2),
(26, 'Zapatos Deportivos', 59.99, 50, 'Tallas 7-12, Varios colores disponibles', 14, 2),
(27, 'Arroz Doble Carolina 2kg', 5.99, 200, 'Tipo extra, Grano largo', 15, 2),
(28, 'Sofá de Cuero Sintético', 299.99, 10, 'Color negro, 3 plazas', 16, 2),
(29, 'Juguetes Educativos', 19.99, 30, 'Para niños de 3 a 6 años', 17, 2),
(30, 'Tablet 10 pulgadas', 149.99, 15, 'Android, 64GB de almacenamiento', 18, 2),
(31, 'Vestido Casual', 39.99, 40, 'Tallas S-XL, Varios estilos disponibles', 19, 2),
(32, 'Material de Oficina Básico', 9.99, 100, 'Incluye bolígrafos, lápices y cuadernos', 20, 2),
(33, 'Auriculares Inalámbricos', 29.99, 25, 'Bluetooth, Cancelación de ruido', 21, 2),
(34, 'Herramientas Manuales Variadas', 24.99, 50, 'Destornilladores, alicates, etc.', 22, 2),
(35, 'Mesa de Centro Moderna', 79.99, 10, 'Madera y metal, Color nogal', 23, 2),
(36, 'Juego de Sartenes Antiadherentes', 34.99, 15, 'Incluye 3 sartenes de diferentes tamaños', 24, 2);



/* -- Inserts para estadoPedido */
INSERT INTO estadoPedido (id, tipo)
VALUES
(1, 'Pendiente'),
(2, 'En proceso'),
(3, 'Completado'),
(4, 'Cancelado'),
(5, 'Devuelto');


/* -- Inserts para clientes */
INSERT INTO clientes (id, nombre, direccion, correoElectronico)
VALUES
(1, 'Juan Pérez', 'Carrera 12 #34-56', 'juanperez@gmail.com'),
(2, 'María Gómez', 'Av. 5 #78-90', 'mariagomez@hotmail.com'),
(3, 'Carlos Martínez', 'Calle 78 #45-67', 'carlosmartinez@yahoo.com'),
(4, 'Laura Rodríguez', 'Diagonal 23 #56-78', 'larodriguez@gmail.com'),
(5, 'Pedro López', 'Av. Central #90-12', 'pedrolopez@hotmail.com');


/* -- Inserts para pedidos */
INSERT INTO pedidos (id, fecha, clientes_id)
VALUES
(1, '2023-11-06', 1),
(2, '2023-11-07', 2),
(3, '2023-11-08', 3),
(4, '2023-11-09', 4),
(5, '2023-11-10', 5),
(6, '2023-11-11', 1),
(7, '2023-11-12', 2),
(8, '2023-11-13', 3),
(9, '2023-11-14', 4),
(10, '2023-11-15', 5),
(11, '2023-11-16', 1),
(12, '2023-11-17', 2);


/* -- Inserts para detalleProducto */
INSERT INTO detalleProducto (productos_id, cantidadSolicitada, pedidos_id, estadoPedido_id)
VALUES
(1, 10, 1, 1),
(2, 20, 2, 2),
(3, 5, 3, 3),
(4, 15, 4, 4),
(5, 8, 5, 5),
(6, 12, 6, 1),
(7, 18, 7, 2),
(8, 8, 8, 3),
(9, 10, 9, 4),
(10, 6, 10, 5),
(11, 3, 11, 1),
(12, 5, 12, 2);


/* -- Inserts para tipoPago */
INSERT INTO tipoPago (id, nombre)
VALUES
(1, 'Tarjeta de crédito'),
(2, 'Transferencia bancaria'),
(3, 'Efectivo'),
(4, 'Cheque'),
(5, 'Pago en línea');


/* -- Inserts para estadoFactura */
INSERT INTO estadoFactura (id, tipo)
VALUES
(1, 'Pendiente'),
(2, 'Pagada'),
(3, 'Anulada'),
(4, 'Reembolsada'),
(5, 'Vencida');


/* -- Inserts para factura */
INSERT INTO factura (id, fechaEmision, tipoPago_id, pedidos_id, total, estadoFactura_id)
VALUES
(1, '2023-11-06', 1, 1, 105.0, 1),
(2, '2023-11-07', 2, 2, 414.0, 2),
(3, '2023-11-08', 3, 3, 75.0, 1),
(4, '2023-11-09', 4, 4, 82.5, 3),
(5, '2023-11-10', 5, 5, 241.6, 2),
(6, '2023-11-11', 1, 6, 192.0, 2),
(7, '2023-11-12', 2, 7, 368.0, 1),
(8, '2023-11-13', 3, 8, 80.0, 1),
(9, '2023-11-14', 4, 9, 120.0, 2),
(10, '2023-11-15', 5, 10, 239.2, 1),
(11, '2023-11-16', 1, 11, 119.7, 3),
(12, '2023-11-17', 2, 12, 149.5, 2);


/* -- Inserts para pagos */
INSERT INTO pagos (id, monto, factura_id, sobrante)
VALUES
(1, 50.0, 1, 0.0),
(2, 100.0, 1, 50.0),
(3, 200.0, 2, 0.0),
(4, 82.5, 4, 0.0),
(5, 120.8, 5, 0.0),
(6, 96.0, 6, 96.0),
(7, 184.0, 7, 184.0),
(8, 40.0, 8, 0.0),
(9, 60.0, 9, 60.0),
(10, 119.6, 10, 0.0),
(11, 59.9, 11, 59.9),
(12, 74.75, 12, 74.75);


/* -- Consultas para tiposProveedor */
SELECT * FROM tiposProveedor;

/* -- Consultas para proveedores */
SELECT * FROM proveedores;

/* -- Consultas para telefonosProveedor */
SELECT * FROM telefonosProveedor;

/* -- Consultas para niveles */
SELECT * FROM niveles;

/* -- Consultas para productos */
SELECT * FROM productos;

/* -- Consultas para estadoPedido */
SELECT * FROM estadoPedido;

/* -- Consultas para clientes */
SELECT * FROM clientes;

/* -- Consultas para pedidos */
SELECT * FROM pedidos;

/* -- Consultas para detalleProducto */
SELECT * FROM detalleProducto;

/* -- Consultas para tipoPago */
SELECT * FROM tipoPago;

/* -- Consultas para estadoFactura */
SELECT * FROM estadoFactura;

/* -- Consultas para factura */
SELECT * FROM factura;

/* -- Consultas para pagos */
SELECT * FROM pagos;

