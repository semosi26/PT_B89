-- Creacion de la tabla Merchant

CREATE TABLE Merchant (
    MerchantID int primary key,
    Nombre varchar(200),
    Email varchar(200),
    telefono varchar(50)
);

-- Creacion de la tabla Remitente
CREATE TABLE Remitente (
    RemitenteID int primary key,
    TipoDocumento varchar(50),
    NumeroDocumento varchar(50),
    Nombres varchar(200),
    Email varchar(200),
    Telefono varchar(50)
);

CREATE TABLE Beneficiario (
    BeneficiarioID int primary key,
    TipoDocumento varchar(50),
    NumeroDocumento varchar(50),
    Nombres varchar(200),
    Email varchar(200),
    Telefono varchar(50),
    CuentaBancaria varchar(50)
);


CREATE TABLE Remesa (
    RemesasID int primary key,
    MerchantID int,
    RemitenteID int,
    BeneficiarioID int,
    Monto decimal(18,2),
    Moneda varchar(10),
    Estado varchar(50), -- PARA SABER EN QUE ETAPA DEL PROCESO NOS ENCONTRAMOS
    FechaCreacion DATETIME DEFAULT GETDATE(),
    FechaModificacion DATETIME,
    FOREIGN KEY (MerchantID) REFERENCES Merchant(MerchantID),
    FOREIGN KEY (RemitenteID) REFERENCES Remitente(RemitenteID),
    FOREIGN KEY (BeneficiarioID) REFERENCES Beneficiario(BeneficiarioID),
);

CREATE TABLE Proveedor (
    ProveedorID int primary key,
    Nombre varchar(200),
    Servicio varchar(200)
);