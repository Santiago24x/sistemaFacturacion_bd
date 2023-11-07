
use facturacion_abc;

CREATE TABLE IF NOT EXISTS tiposProveedor (
  id INT NOT NULL,
  categoria VARCHAR(20) NOT NULL
);

ALTER TABLE tiposProveedor
ADD CONSTRAINT PK_tiposProveedor PRIMARY KEY (id);

CREATE TABLE IF NOT EXISTS proveedores (
  id INT NOT NULL,
  nombre VARCHAR(50) NULL,
  direccion VARCHAR(100) NOT NULL,
  correoElectronico VARCHAR(50) NOT NULL,
  tiposProveedor_id INT NOT NULL
);

ALTER TABLE proveedores
ADD CONSTRAINT PK_proveedores PRIMARY KEY (id),
ADD CONSTRAINT FK_proveedores_tiposProveedor FOREIGN KEY (tiposProveedor_id) REFERENCES tiposProveedor(id);


CREATE TABLE IF NOT EXISTS telefonosProveedor (
  proveedores_id INT NOT NULL,
  telefono VARCHAR(13) NOT NULL
);

ALTER TABLE telefonosProveedor
ADD CONSTRAINT FK_telefonosProveedor_proveedor FOREIGN KEY (proveedores_id) REFERENCES proveedores(id);

CREATE TABLE IF NOT EXISTS niveles (
  id INT NOT NULL,
  tipo VARCHAR(15) NOT NULL
);

ALTER TABLE niveles
ADD CONSTRAINT PK_niveles PRIMARY KEY (id);

CREATE TABLE IF NOT EXISTS productos (
  id INT NOT NULL,
  nombre VARCHAR(50) NOT NULL,
  precio FLOAT NOT NULL,
  cantidad INT NOT NULL,
  detalles VARCHAR(100) NOT NULL,
  proveedores_id INT NOT NULL,
  niveles_id INT NOT NULL
);

ALTER TABLE productos
ADD CONSTRAINT PK_productos PRIMARY KEY (id),
ADD CONSTRAINT FK_productos_proveedores FOREIGN KEY (proveedores_id) REFERENCES proveedores(id),
ADD CONSTRAINT FK_productos_niveles FOREIGN KEY (niveles_id) REFERENCES niveles(id);


CREATE TABLE IF NOT EXISTS estadoPedido (
  id INT NOT NULL,
  tipo VARCHAR(12) NOT NULL
);

ALTER TABLE estadoPedido
ADD CONSTRAINT PK_estadoPedidos PRIMARY KEY (id);

CREATE TABLE IF NOT EXISTS clientes (
  id INT NOT NULL,
  nombre VARCHAR(50) NOT NULL,
  direccion VARCHAR(100) NOT NULL,
  correoElectronico VARCHAR(100) NOT NULL
);

ALTER TABLE clientes
ADD CONSTRAINT PK_clientes PRIMARY KEY (id);

CREATE TABLE IF NOT EXISTS pedidos (
  id INT NOT NULL,
  fecha DATE NOT NULL,
  clientes_id INT NOT NULL
);

ALTER TABLE pedidos
ADD CONSTRAINT PK_pedidos PRIMARY KEY (id),
ADD CONSTRAINT FK_pedidos_clientes FOREIGN KEY (clientes_id) REFERENCES clientes(id);

CREATE TABLE IF NOT EXISTS detalleProducto (
  productos_id INT NOT NULL,
  cantidadSolicitada BIGINT NOT NULL,
  pedidos_id INT NOT NULL,
  estadoPedido_id INT NOT NULL
);

ALTER TABLE detalleProducto
ADD CONSTRAINT FK_detalleProducto_productos FOREIGN KEY (productos_id) REFERENCES productos(id),
ADD CONSTRAINT FK_detalleProducto_pedidos FOREIGN KEY (pedidos_id) REFERENCES pedidos(id),
ADD CONSTRAINT FK_detalleProducto_estadoPedidos FOREIGN KEY (estadoPedido_id) REFERENCES estadoPedido(id);

CREATE TABLE IF NOT EXISTS tipoPago (
  id INT NOT NULL,
  nombre VARCHAR(45) NOT NULL
);

ALTER TABLE tipoPago
ADD CONSTRAINT PK_tipoPago PRIMARY KEY (id);

CREATE TABLE IF NOT EXISTS estadoFactura (
  id INT NOT NULL,
  tipo VARCHAR(12) NOT NULL
);

ALTER TABLE estadoFactura
ADD CONSTRAINT PK_estadoFactura PRIMARY KEY (id);

CREATE TABLE IF NOT EXISTS factura (
  id INT NOT NULL,
  fechaEmision DATE NOT NULL,
  tipoPago_id INT NOT NULL,
  pedidos_id INT NOT NULL,
  total FLOAT NOT NULL,
  estadoFactura_id INT NOT NULL
);

ALTER TABLE factura
ADD CONSTRAINT PK_factura PRIMARY KEY (id),
ADD CONSTRAINT FK_factura_tipoPago FOREIGN KEY (tipoPago_id) REFERENCES tipoPago(id),
ADD CONSTRAINT FK_factura_pedidos FOREIGN KEY (pedidos_id) REFERENCES pedidos(id),
ADD CONSTRAINT FK_factura_estadoFactura FOREIGN KEY (estadoFactura_id) REFERENCES estadoFactura(id);

CREATE TABLE IF NOT EXISTS pagos (
  id INT NOT NULL,
  monto FLOAT NOT NULL,
  factura_id INT NOT NULL,
  sobrante FLOAT NULL
);

ALTER TABLE pagos
ADD CONSTRAINT PK_pagos PRIMARY KEY (id),
ADD CONSTRAINT FK_pagos_factura FOREIGN KEY (factura_id) REFERENCES factura(id);
