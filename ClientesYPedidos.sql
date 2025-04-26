INSERT INTO clientes(nombre, direccion, telefono)
VALUES("Crash", "Isla Wumpa 301", 555777),
	  ("Coco", "Isla Wumpa 302", 777555),
      ("Tawna", "Isla Wumpa 303", 775577),
      ("AkuAku", "Isla Wumpa 301", 557755),
      ("Pura", "Isla Wumpa 302", 777755);

INSERT INTO pedidos(id_cliente, fecha, total)
VALUES(1, "2025-04-24", 1500),
	  (1, "2025-04-25", 3000),
      (1, "2025-04-26", 3000),
      (2, "2025-04-26", 5000),
      (3, "2025-04-21", 1000),
      (3, "2025-04-23", 1500),
      (4, "2025-04-26", 3000),
      (4, "2025-04-20", 10000),
      (5, "2025-04-21", 1000),
      (5, "2025-04-25", 2500);
      
SELECT *
FROM clientes
INNER JOIN pedidos
	ON clientes.id_cliente = pedidos.id_cliente
ORDER BY clientes.id_cliente ASC;

SELECT *
FROM clientes
INNER JOIN pedidos
	ON clientes.id_cliente = pedidos.id_cliente
WHERE clientes.id_cliente = 1
ORDER BY total DESC;

SELECT nombre, SUM(total) AS total_gastado
FROM clientes
INNER JOIN pedidos
	ON clientes.id_cliente = pedidos.id_cliente
GROUP BY nombre
ORDER BY total_gastado DESC;

DELETE FROM pedidos
WHERE id_cliente = 3;

DELETE FROM clientes
WHERE id_cliente = 3;

SELECT *
FROM clientes;

SELECT nombre, COUNT(nombre) AS numero_pedidos
FROM clientes
INNER JOIN pedidos
	ON clientes.id_cliente = pedidos.id_cliente
GROUP BY nombre
ORDER BY numero_pedidos DESC
LIMIT 3;




