
-- ===============================================
-- Q2 à Q40 : Requêtes analytiques
-- ===============================================

-- Q2 : Toutes les ventes de l'article 'ciment'
SELECT * FROM ventes WHERE article = 'ciment';
GO

-- Q3 : Ventes réalisées par le vendeur 'Ana'
SELECT * FROM ventes WHERE vendeur = 'Ana';
GO

-- Q4 : Ventes dont la quantité > 500
SELECT * FROM ventes WHERE quantite > 500;
GO

-- Q5 : Ventes effectuées par des clients de type 'Entrepreneur'
SELECT * FROM ventes WHERE type_client = 'Entrepreneur';
GO

-- Q6 : Ventes réalisées dans le quartier 'Agbalépédogan'
SELECT * FROM ventes WHERE quartier = 'Agbalépédogan';
GO

-- Q7 : Chiffre d’affaires total
SELECT ROUND(SUM(prix_vente * quantite), 2) AS chiffre_affaires_total
FROM ventes;
GO

-- Q8 : Chiffre d’affaires total par article
SELECT article, ROUND(SUM(prix_vente * quantite), 2) AS chiffre_affaires
FROM ventes
GROUP BY article;
GO

-- Q9 : Chiffre d’affaires total par vendeur (arrondi à 3 chiffres)
SELECT vendeur, ROUND(SUM(prix_vente * quantite), 3) AS chiffre_affaires
FROM ventes
GROUP BY vendeur;
GO

-- Q10 : Quantité totale vendue par article
SELECT article, SUM(quantite) AS quantite_totale
FROM ventes
GROUP BY article;
GO

-- Q11 : Prix de vente moyen par article (arrondi à 2 chiffres)
SELECT article, ROUND(AVG(prix_vente), 2) AS prix_moyen
FROM ventes
GROUP BY article;
GO

-- Q12 : Nombre de ventes par vendeur
SELECT vendeur, COUNT(*) AS nb_ventes
FROM ventes
GROUP BY vendeur;
GO

-- Q13 : Vendeurs ayant réalisé plus de 170 ventes
SELECT vendeur, COUNT(*) AS nb_ventes
FROM ventes
GROUP BY vendeur
HAVING COUNT(*) > 170;
GO

-- Q14 : Chiffre d’affaires par quartier
SELECT quartier, ROUND(SUM(prix_vente * quantite), 2) AS chiffre_affaires
FROM ventes
GROUP BY quartier;
GO

-- Q15 : Chiffre d’affaires du vendeur 'Colette'
SELECT vendeur, ROUND(SUM(prix_vente * quantite), 2) AS chiffre_affaires
FROM ventes
WHERE vendeur = 'Colette'
GROUP BY vendeur;
GO

-- Q16 : Ventes réalisées en 2019
SELECT * FROM ventes WHERE YEAR(dates) = 2019;
GO

-- Q17 : Classement des vendeurs par chiffre d’affaires en 2020
SELECT vendeur, SUM(prix_vente * quantite) AS chiffre_affaires
FROM ventes
WHERE YEAR(dates) = 2020
GROUP BY vendeur
ORDER BY chiffre_affaires DESC;
GO

-- Q18 : Ventes dont le prix de vente > 200
SELECT * FROM ventes WHERE prix_vente > 200;
GO

-- Q19 : Marge par vente
SELECT *, (prix_vente - prix_achat) AS marge
FROM ventes;
GO

-- Q20 : Marge moyenne par article
SELECT article, ROUND(AVG(prix_vente - prix_achat), 2) AS marge_moyenne
FROM ventes
GROUP BY article;
GO

-- Q21 : Chiffre d’affaires par client
SELECT client, SUM(prix_vente * quantite) AS chiffre_affaires
FROM ventes
GROUP BY client;
GO

-- Q22 : Clients ayant acheté plus de 1000 unités
SELECT client, SUM(quantite) AS total_unites
FROM ventes
GROUP BY client
HAVING SUM(quantite) > 1000;
GO

-- Q23 : Nombre total de clients distincts
SELECT COUNT(DISTINCT client) AS nb_clients
FROM ventes;
GO

-- Q24 : Nombre total d’articles distincts
SELECT COUNT(DISTINCT article) AS nb_articles
FROM ventes;
GO

-- Q25 : Vente avec la quantité maximale
SELECT TOP 1 * FROM ventes
ORDER BY quantite DESC;
GO

-- Q26 : Vente avec le prix de vente minimal
SELECT TOP 1 * FROM ventes
ORDER BY prix_vente ASC;
GO

-- Q27 : Ventes triées par date croissante
SELECT * FROM ventes
ORDER BY dates ASC;
GO

-- Q28 : Ventes triées par chiffre d’affaires décroissant
SELECT *, (prix_vente * quantite) AS chiffre_affaires
FROM ventes
ORDER BY chiffre_affaires DESC;
GO

-- Q29 : Ventes du vendeur 'Ana' pour l'article 'acier'
SELECT * FROM ventes
WHERE vendeur = 'Ana' AND article = 'acier';
GO

-- Q30 : Quantité moyenne vendue par vendeur
SELECT vendeur, AVG(quantite) AS quantite_moyenne
FROM ventes
GROUP BY vendeur;
GO

-- Q31 : Quartiers avec chiffre d’affaires > 1 000 000
SELECT quartier, ROUND(SUM(prix_vente * quantite), 2) AS chiffre_affaires
FROM ventes
GROUP BY quartier
HAVING SUM(prix_vente * quantite) > 1000000;
GO

-- Q32 : Ventes entre deux dates
SELECT * FROM ventes
WHERE dates BETWEEN '2017-03-04' AND '2020-07-09'
ORDER BY dates ASC;
GO

-- Q33 : Vendeur avec le panier moyen le plus élevé
SELECT TOP 1 vendeur, AVG(quantite) AS panier_moyen
FROM ventes
GROUP BY vendeur
ORDER BY panier_moyen DESC;
GO

-- Q34 : Année avec le chiffre d’affaires le plus élevé
SELECT TOP 1 YEAR(dates) AS annee, SUM(prix_vente * quantite) AS chiffre_affaires
FROM ventes
GROUP BY YEAR(dates)
ORDER BY chiffre_affaires DESC;
GO

-- Q35 : Chiffre d’affaires par article et par année
SELECT YEAR(dates) AS annee, article, SUM(prix_vente * quantite) AS chiffre_affaires
FROM ventes
GROUP BY YEAR(dates), article
ORDER BY annee ASC;
GO

-- Q36 : Chiffre d’affaires annuel par quartier
SELECT YEAR(dates) AS annee, quartier, SUM(prix_vente * quantite) AS chiffre_affaires
FROM ventes
GROUP BY YEAR(dates), quartier
ORDER BY annee ASC;
GO

-- Q37 : Produits à bas prix d’achat (<20) générant le plus de marge
SELECT article, SUM((prix_vente - prix_achat) * quantite) AS marge_totale
FROM ventes
WHERE prix_achat < 20
GROUP BY article
ORDER BY marge_totale DESC;
GO

-- Q38 : Vendeurs vendant le plus d’articles à prix d’achat <20
SELECT vendeur, SUM(quantite) AS total_unites
FROM ventes
WHERE prix_achat < 20
GROUP BY vendeur
ORDER BY total_unites DESC;
GO

-- Q39 : Vendeurs ayant vendu au moins 1 000 unités
SELECT vendeur, SUM(quantite) AS total_unites
FROM ventes
GROUP BY vendeur
HAVING SUM(quantite) >= 1000;
GO

-- Q40 : Évolution quantité moyenne et nombre de ventes par vendeur par année
SELECT YEAR(dates) AS annee, vendeur,
       AVG(quantite) AS quantite_moyenne,
       COUNT(*) AS nombre_ventes
FROM ventes
GROUP BY vendeur, YEAR(dates)
ORDER BY annee ASC;
GO
