
-- una vista que muestre la informacion 
-- de los 10 clientes que recibieron mas remesas el ultimo mes

CREATE VIEW Top10Beneficiarios
AS
SELECT TOP 10 BeneficiarioID, COUNT(*) AS CantidadRemesas
FROM Remesa
WHERE FechaModificacion > DATEADD(MONTH, -1, GETDATE())
GROUP BY BeneficiarioID
ORDER BY CantidadRemesas DESC;