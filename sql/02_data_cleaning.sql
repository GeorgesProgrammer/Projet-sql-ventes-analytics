-- ===============================================
-- Q1 : Harmonisation des noms de quartiers
-- ===============================================
UPDATE ventes
SET quartier = CASE 
    WHEN quartier LIKE '%Agbaleped%' THEN 'Agbalépédogan'
    WHEN quartier = 'Be Klikame' THEN 'Bè'
    WHEN quartier = 'Aflao Gakli' THEN 'Djidjolé'
    ELSE quartier
END;
GO

-- Vérification
SELECT DISTINCT quartier FROM ventes;
GO
