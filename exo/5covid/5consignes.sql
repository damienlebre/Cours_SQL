-- Partie 1 -----------------------------------------------------------------------------------------------------
--1 afficher toutes les données de vaccination uniquement pour le 1er avril 2021 ?
SELECT * FROM covid WHERE jour = '2021-04-01';
--2 toutes les données de vaccination uniquement pour le 1er avril 2021 par région concernée ?
SELECT * FROM `covid` JOIN regions ON covid.id_region = regions.code WHERE jour = '2021-04-01';
--3 afficher le nombre au cumulé de vaccination première dose toutes régions en 2020 ? 
SELECT SUM(n_dose1) FROM covid WHERE jour LIKE '2020%' 
rep : SUM(ndose_1) = 374
    -->Proposez également une solution pour les vaccination deuxième dose.
    SELECT SUM(n_dose2) FROM covid WHERE jour LIKE '2020%' 
    rep : 0
--4 afficher le nombre au cumulé de vaccination première dose pour la région avec le code 93 uniquement pour le mois de mars 2021 ?
SELECT SUM(n_dose1) FROM covid WHERE jour LIKE '2021-03%' AND id_region = 93;
SUM(n_dose1)
485 530

--5 afficher le nombre au cumulé de vaccination 2e dose pour la région 11 uniquement pour le mois de mars 2021 ?
SELECT SUM(n_dose2) FROM covid WHERE jour LIKE '2021-03%' AND id_region = 11
SUM(n_dose2)
149 931

--6 afficher le record de vaccination 1e dose en une seule journée ? 
SELECT MAX(n_dose1) AS max FROM covid
MAX(n_dose1)
56 661


    --Avec une deuxième requête, afficher les informations de la région concernée, dont son nom, ainsi que le jour du record.
    SELECT  name, MAX(n_dose1), jour FROM covid JOIN regions on covid.id_region = regions.code
    Guadeloupe 56661 2020-12-27


--7 connaitre quelle région possède la plus grande couverture de vaccination 
avec une dose et deux doses ? 
Vous aurez besoin de 1 requête par questions. 


-- Quelle requête utiliser pour afficher le nom de la région qui a le plus faible taux de couverture de vaccination avec une dose ? Vous aurez besoin de 2 requêtes pour répondre à la question.

-- Quelle requête utiliser pour calculer la couverture moyenne entre les différentes régions à la date la plus récente, pour les vaccinations une et deux doses ? Vous renommez les colonnes de résultats : couverture_dose1_avg et couverture_dose2_avg.

-- Quelle requête utiliser pour afficher les données de vaccination des régions (avec leur nom) qui possèdent une couveture vaccinale supérieure à 15 % pour la première dose et supérieure à 5 % pour la deuxième dose ?

-- Partie 2 -------------------------------------------------------------------------------------------------------------------

-- Sans jointure, quelle requête SQL utiliser pour afficher toutes les données de vaccination du 14 février 2021 uniquement, pour le département de Seine-et-Marne (77) ?

-- Sans jointure, quelle requête SQL utiliser pour afficher le cumul de toutes les données de vaccination pour tous les vaccins du 14 février 2021 uniquement, pour les départements de l'Essonne (91) et de la Seine-et-Marne (77) ?

-- Sans jointure, quelle requête utiliser pour afficher la somme des vaccinations première dose réalisées uniquement avec le vaccin AstraZeneka pour le mois de février 2021 pour le département de la Seine-et-Marne (77) ?

-- Sans jointure, quelle requête utiliser pour afficher la somme des vaccinations deuxième dose réalisées avec le vaccin AstraZeneka ou Moderna pour le mois de mars 2021 pour le département de la Seine-et-Marne (77) ?

-- Sans jointure, quelle requête utiliser pour afficher le record de vaccination première dose avec un type de vaccin en une seule journée ? Avec une deuxième requête qui exploitera une jointure, afficher toutes les informations possibles pour cette journée record et sur le type de vaccin.

-- Sans jointure, quelle requête utiliser pour afficher le record de vaccination deuxième dose avec un type de vaccin en une seule journée ? Avec une deuxième requête qui exploitera deux jointures, afficher toutes les informations possibles pour cette journée record, sur le type de vaccin et sur le département.

-- Quelle requête permet de savoir quel département possède le plus grand nombre d'injections première dose pour le vaccin AstraZeneka ? 

-- Quelle requête permet de savoir quel département a eu le moins de vaccinations première dose avec le vaccin COMIRNATY Pfizer/BioNTech ? 

-- Quelle requête permet de connaître la moyenne de vaccinations première dose dans tous les départements pour le vaccin Moderna ? Renommer la colonne de résultat avec avg_moderna.

-- Quelle requête utiliser pour afficher les départements (avec leur nom) qui possèdent un nombre d'injections deuxième dose avec le vaccin Moderna supérieur à 9000 ou un nombre d'injections première dose avec le vaccin COMIRNATY Pfizer/BioNTech supérieur à 120000 ? Vous aurez besoin de deux jointures.

-- Partie 3 ------------------------------------------------------------------------------------------------------------------

-- Quelle requête SQL utiliser pour compter, sans doublons, le nombre de professionnels de santé en Seine-et-Marne (77) ?

-- Quelle requête SQL utiliser pour afficher pour tous les professionnels de santé avec le code postal 77300 les colonnes suivantes : id_pp_nat, prenom, nom, code_postal, ville, departement et région. Vous aurez besoin de plusieurs jointures.