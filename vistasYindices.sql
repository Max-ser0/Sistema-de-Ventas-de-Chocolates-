-- =============================================
-- CREACIÓN DE VISTAS
-- =============================================

-- Vista: Productos con sus categorías
CREATE OR REPLACE VIEW vista_productos_categorias AS 
SELECT 
    c.chocolate_id AS id_producto,
    c.nombre AS nombre_producto,
    c.descripcion AS descripcion,
    c.precio AS precio,
    c.stock AS stock,
    cat.nombre_categoria AS categoria
FROM chocolates c
INNER JOIN categorias cat ON c.categoria_id = cat.categoria_id;

-- Vista: Ventas con datos de clientes
CREATE OR REPLACE VIEW vista_ventas_clientes AS 
SELECT 
    v.venta_id AS id_venta,
    v.fecha_venta,
    v.total_venta,
    cli.cliente_id,
    cli.nombre_completo,
    cli.email,
    cli.telefono
FROM ventas v
INNER JOIN clientes cli ON v.cliente_id = cli.cliente_id
ORDER BY v.fecha_venta DESC;

-- Vista: Detalle de ventas con información de productos
CREATE OR REPLACE VIEW vista_detalle_ventas_productos AS 
SELECT 
    dv.detalle_id,
    dv.venta_id,
    c.nombre AS producto,
    dv.cantidad,
    dv.precio_unitario,
    (dv.cantidad * dv.precio_unitario) AS subtotal
FROM detalle_ventas dv
INNER JOIN chocolates c ON dv.chocolate_id = c.chocolate_id;

-- Vista: Inventario disponible
CREATE OR REPLACE VIEW vista_inventario_disponible AS 
SELECT 
    chocolate_id,
    nombre,
    descripcion,
    precio,
    stock,
    categoria_id
FROM chocolates
WHERE stock > 0
ORDER BY stock DESC;

-- Vista: Resumen de ventas por fecha
CREATE OR REPLACE VIEW vista_ventas_totales AS 
SELECT 
    DATE(fecha_venta) AS fecha,
    COUNT(venta_id) AS cantidad_ventas,
    SUM(total_venta) AS total_ganancias
FROM ventas
GROUP BY DATE(fecha_venta)
ORDER BY fecha DESC;


-- =============================================
-- CREACIÓN DE ÍNDICES
-- =============================================

-- Índices para tabla categorias
CREATE INDEX idx_categorias_nombre ON categorias(nombre_categoria);

-- Índices para tabla chocolates
CREATE INDEX idx_chocolates_nombre ON chocolates(nombre);
CREATE INDEX idx_chocolates_categoria ON chocolates(categoria_id);

-- Índices para tabla clientes
CREATE INDEX idx_clientes_email ON clientes(email);

-- Índices para tabla ventas
CREATE INDEX idx_ventas_fecha ON ventas(fecha_venta);
CREATE INDEX idx_ventas_cliente ON ventas(cliente_id);

-- Índices para tabla detalle_ventas
CREATE INDEX idx_detalle_ventas_venta ON detalle_ventas(venta_id);
CREATE INDEX idx_detalle_ventas_chocolate ON detalle_ventas(chocolate_id);