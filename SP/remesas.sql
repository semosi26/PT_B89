-- **********************************
-- PROCEDIMIENTO DE ALMACENADO (SP)
-- **********************************

-- Este SP recibira los datos de la remesa
-- y los insertara en las tablas correspondientes
-- validando en que paso se encuentra

CREATE PROCEDURE IngresarRemesa
    @MerchantID int,
    @RemitenteID int,
    @BeneficiarioID int,
    @Monto decimal(18,2),
    @Moneda varchar(10),
    @Estado varchar(50)
AS
BEGIN
    INSERT INTO Remesa (MerchantID,RemitenteID,BeneficiarioID,Moneda,Estado)
    VALUES (@MerchantID, @RemitenteID, @BeneficiarioID, @Monto, @Moneda, @Estado);
END;