-- consigne

-- en utilisant uniquement le SQL 

--creer la bdd sql_training

-- creer la table books qui contient 5 colonnes 
id_book
title
isbn_10
author
price

-- faire en sorte que id_book soit la clé primaire

-- 
--Ajouter les informations suivantes
-- 1, 'Forteresse digitale', 2709626306, 'Dan Brown', 20.5
-- 2, 'La jeune fille et la nuit    ', 2253237620, 'Guillaume Musso', 21.9
-- 3, 'T'choupi se brosse les dents', 2092589547, 'Thierry Courtin', 5.7
-- 4, 'La Dernière Chasse', 2226439412, 'Jean-Christophe Grangé', 22.9
-- 5, 'Le Signal', 2226319484, 'Maxime Chattam', 23.9

--! QUESTIONS
-- quelles requetes utilisé pour afficher l'ensemble des enregistrements de la table ?
SELECT * FROM books

-- requetes : livres dont le prix > 20 ?

SELECT * FROM `books` WHERE price > 20;

-- requetes : livres  prix le + elevé au -
SELECT price FROM books ORDER BY price DESC;

-- 20 < price <22
SELECT * FROM `books` WHERE price >=20 AND price <= 22;
SELECT * FROM `books` WHERE price BETWEEN 20 AND 22;

--on veut tous les livres sauf celui : isbn_10:2092589547
SELECT * FROM `books` WHERE isbn_10 != 2092589547;

-- recuperer le prix du livre le moins cher et renommer la colonne dans les resultats par minus
les alias
SELECT MIN(price) AS minus from books;

-- les 3 premiers sans le premier de la table
SELECT * FROM books LIMIT 1,3
SELECT * FROM books LIMIT 3 OFFSET 1



