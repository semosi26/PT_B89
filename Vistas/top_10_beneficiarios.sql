
-- una vista que muestre la informacion 
-- de los 10 clientes que recibieron mas remesas el ultimo mes

CREATE VIEW ClientesTopRemesas AS
SELECT BeneficiarioID, COUNT(RemesaID) AS CantidadRemesas
FROM Remesa
WHERE Estado = 'Entregado' AND FechaCreacion >= DATEADD(MONTH, -1, GETDATE())
GROUP BY BeneficiarioID
ORDER BY CantidadRemesas DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;