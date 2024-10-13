
-- Vista que muestra la cantidad de remesas
-- por merchant que no puedieron ser procesadas en el ultimo mes

CREATE VIEW RemesasNoProcesadasMes
AS
SELECT MerchantID, COUNT(*) AS CantidadNoProcesadas
FROM Remesa
WHERE Estado <> 'Entregada' AND FechaModificacion > DATEADD(MONTH, -1, GETDATE())
GROUP BY MerchantID;