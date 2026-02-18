# Projet SQL - Évaluation Intermédiaire

## 📝 Description

Ce projet SQL consiste à importer le fichier `evaluation.csv` dans une base de données Microsoft SQL Server et à répondre à **40 questions analytiques** sur les ventes.  
Il inclut le **nettoyage des données**, l’**harmonisation des quartiers**, le calcul du **chiffre d’affaires**, des **marges**, et une analyse détaillée par **vendeur**, **article**, **client** et **quartier**.  

L’objectif est de mettre en pratique des concepts SQL avancés tels que les **agrégations**, **filtres**, **groupements**, et analyses temporelles.

---

## 🎯 Objectifs

- Pratiquer les requêtes SQL sur des données réelles.
- Nettoyer et harmoniser les données avec `UPDATE` et `CASE WHEN`.
- Effectuer des **agrégations** (`SUM`, `AVG`) et filtrages (`GROUP BY`, `HAVING`).
- Analyser les ventes selon des dimensions **temporelles** et **catégorielles**.
- Identifier les clients et vendeurs les plus performants.
- Produire un jeu de données prêt pour l’analyse décisionnelle.

---

## 🗂️ Structure du projet

```text
├── data/
│   └── evaluation.csv         # Fichier de données source
├── sql/
│   ├── 01_create_database.sql # Création de la base et de la table ventes
│   ├── 02_data_cleaning.sql   # Harmonisation des quartiers
│   └── 03_queries.sql         # Réponses aux 40 questions analytiques
└── README.md                  # Documentation du projet
```

🛠️ Technologies utilisées

Microsoft SQL Server
T-SQL

⚡ Fonctionnalités clés

Harmonisation des noms de quartiers pour garantir la cohérence des données.
Calcul du chiffre d’affaires total et par dimension (vendeur, article, client, quartier).
Analyse des marges et performances des ventes.
Suivi des clients et vendeurs les plus performants.
Analyse temporelle annuelle et évolution des ventes.
Requêtes SQL avancées incluant GROUP BY, HAVING, CASE WHEN et fonctions d’agrégation.

📊 Résultats

Base de données opérationnelle Evaluation.
Table principale ventes avec données nettoyées et harmonisées.
Scripts SQL prêts à l’emploi pour répondre aux 40 questions analytiques.
Analyses multi-dimensionnelles complètes pour support décisionnel.
Outil pédagogique pour apprendre les bonnes pratiques SQL sur des données réelles.

👤 Auteur

Kodjo Georges AKAKPO
Portfolio : https://github.com/GeorgesProgrammer
