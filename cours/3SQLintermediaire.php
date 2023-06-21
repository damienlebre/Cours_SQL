//* FILTER ET CONDITION
//! LIMIT
Limiter le nb d'enregistremment a selectionner
//? SELECT * FROM nom_table LIMIT 2

//! ALIAS DE COLUMN
// renommer une col a l'affichage
//? SELECT first_col AS 'alias', second_col AS 'another alias' FROM nom_table

//! ORDER BY
// changer l'ordre d'affichage des enregistrements selectionnnés
// ordre numerique ou alphabetique
//? SELECT * FROM table_name ORDER BY first_column

// ordre ascendant celui par default
//? SELECT * FROM table_name ORDER BY first_column ASC

// ordre descendant
//? SELECT * FROM table_name ORDER BY first_column DESC

//! DISTINCT
// selectionne les enregistrerments  en omettant les enregistrements identiques pour le champ DISTINCT
// evite les doublons
// selectionne que la première apparition dans la table et omet les autres

//? SELECT DISTINCT first_col FROM table_name

//! Filtre LIKE
// permet de chercher une correspondance : % = n'importe quel chaine de carac
//? SELECT * FROM table_name WHERE first_col LIKE '%string%'

//! OU 
//? SELECT * FROM table_name WHERE first_col LIKE '%string%' OR second_col = value

//! ET 
//? SELECT * FROM table_name WHERE first_col LIKE '%string%' AND second_col = value

//! ENTRE 
//? SELECT * FROM table_name WHERE first_col BETWEEN value AND value

//! EST NULL
//? SELECT * FROM table_name WHERE first_col IS NULL

//! ALIAS de table
//renommer une table : utile lors des jointures car les requetes sont longues
//? SELECT nt.first_column FROM nom_table AS nt

//* ========================== JOINTURES ==========================
// requete qui tire avantage des relations entre les tables 
// source (https://sql.sh/cours/jointures)

//! JOIN == INNER JOIN
//? SELECT * FROM table_name JOIN another_table_name ON table_name.first_col = another_table_name.first_col
//? SELECT * FROM table_name INNER JOIN another_table_name ON table_name.first_col = another_table_name.first_col

//! LEFT JOIN
// table_name est à gauche de l'expression 'LEFT JOIN' donc tous ses enregistremnts dans la selection
// même si ils ne matchent pas avec un enregistrement de la table à droite de l'expression LEFT JOIN
//? SELECT * FROM table_name LEFT JOIN another_table_name ON table_name.first_col = another_table_name.first_col

//! RIGHT JOIN
// table_name est à gauche de l'expression 'RIGHT JOIN' donc tous ses enregistremnts dans la selection
// même si ils ne matchent pas avec un enregistrement de la table à gauche de l'expression RIGHT JOIN
//? SELECT * FROM table_name RIGHT JOIN another_table_name ON table_name.first_col = another_table_name.first_col

//! OUTTER JOIN


//* ===================== FONCTIONS d'aggregation =====================
// applique une fonction sur la requete afin de retourner le résultat du traitement
// effectué par la fonction
// source (https://sql.sh/fonctions/agregation)

//! AVG
retourne une seule ligne qui correspond à la moyenne des données first_column
//? SELECT AVG(first_column) FROM table_name

//! SUM
retourne une seule ligne qui correspond à la somme des données first_column
//? SELECT SUM(first_column) FROM table_name




