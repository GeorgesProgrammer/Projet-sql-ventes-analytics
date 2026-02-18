-- =============================================
-- Projet : Ventes analytics
-- Base : evaluation
-- Table : ventes
-- =============================================

-- Création de la base
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'evaluation')
BEGIN
    CREATE DATABASE evaluation;
END
GO

USE evaluation;
GO

-- Suppression si existe
DROP TABLE IF EXISTS ventes;
GO

-- Création table ventes
CREATE TABLE ventes (
    id INT IDENTITY(1,1) PRIMARY KEY,
    date_vente DATE,
    article NVARCHAR(100),
    quantite INT,
    prix_achat FLOAT,
    prix_vente FLOAT,
    vendeur NVARCHAR(100),
    client NVARCHAR(100),
    type_client NVARCHAR(100),
    quartier NVARCHAR(100)
);
GO
