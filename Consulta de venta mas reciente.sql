
SELECT TOP 1 c.Nombre AS Categoria
FROM VENTA v
JOIN PRODUCTO p ON v.CodigoProducto = p.CodigoProducto
JOIN CATEGORIA c ON p.CodigoCategoria = c.CodigoCategoria
ORDER BY v.Fecha DESC;