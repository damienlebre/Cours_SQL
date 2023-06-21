//*------------------------------------ intro ------------------------------------
//! structured query language

//? on utilise le SQL dans les systemes de bdd relationnel
// relationnel car on peut relier les tables les unes aux autres via des clefs étrangères 
//! foreign key

//? differents SGBD (Service de  Gestion de BDD) 
// microsoft sql server, postGreSql, MySql, MariaDB, SQLite

//? differents clients de SGBDs
// dbeaver, PHPmyadmin, adminer, SQL Server Management Studio SSMS,

//!principe: on envoie une requte textutelle vers une bdd
//BDD : tables(tableaux) contenenant des enregistrements avec différents champs


//*type de commande SQL

//! DDL Data definition Language (défini la structure de la bdd)
// CREATE DROP ALTER TRUNCATE

//!DML : Data manipulation language
// INSERT UPDATE DELETE MERGE

//! DCL : Data control Language
// GRANT REVOKE

//! TCL : Transaction Control Language
// COMMIT ROLLBACK SAVEPOINT

//! DQL : Data Query Language
// SELECT

//* Types de donnees
//? CHAR VARCHAR DATE INT Float BOOLEAN

//* Dans PHPmyadmin (client pour mySql et MariaDB sous la forme d'une application web en php)
//* Convention : les mots en SQL s'écrivent en MAJUSCULE

//* BDD
//! --------- CREATE DROP USE DATABASE
//? CREATE DATABASE database_name

//? DROP DATABASE database_name

//permet au gestionnaire de savoir dans quelle BDD les requetes vont etre executées
//? USE database_name


//* ------------------------------------ TABLES ------------------------------------
//! ------------ CREATE TABLE
//? CREATE TABLE table_name(
    first_column INT NOT NULL,
    Second_column VARCHAR(255)
);

//! ----------- ALTER TABLE
//? ALTER TABLE table_name ADD another_column VARCHAR(255)
//? ALTER TABLE table_name DROP COLUMN another_column


//! ----------- TRUNCATE TABLE
//supprimer toutes les données d'une table
//? TRUNCATE TABLE table_name


//* //*------------------------------------ clefs ------------------------------------
//! ------------ PRIMARY KEY (auto increment)
//? Primary key : identifiant unique qui permet d'identifier de façon unique chaque 
enregistrement de la table
//?AUTO-INCREMENTER : Ajoute automatiquement 1 a chaque nouvel enregistrement

//? CREATE TABLE table_name(
    id INT PRIMARY KEY AUTO_INCREMENT
);
//?AJOUTER UNE CLE PRIMAIRE PRIMARY KEY
ALTER TABLE books ADD PRIMARY KEY (id_book);

//! --------- FOREIGN KEY --------------
// clé qui fait référence à une clé primaire d'une autre table. Permet de mettre en place des relations
//? CREATE TABLE table_name(
    first_column INT NOT NULL,
    Second_column VARCHAR(255),
    FOREIGN KEY(second_column) REFERNCE another_table_name(column_with_primary_key) 
);



//*------------------------------------ CRUD -------------------------------------
//! ------------------------ CREATE : INSERT INTO
//? INSERT INTO table_name (first_column) VALUES (value) ;
//? INSERT INTO table_name (first_column, another_column) VALUES (value, value);
//? INSERT INTO table_name (first_column) VALUES (value), (value), (value),;


//! ------------------------  READ : SELECT column FROM
//? SELECT * FROM nom_table
//? SELECT first_column, another_column FROM nom_table;


//! ------------------------  UPDATE : UPDATE table SET col WHERE
//ATTENTION ATTENTION : sans la condition WHERE ça upadte TOUTE LA COLONE ATTENTION ATTENTION
//? UPDATE table_name SET first_column = value WHERE another_column=value;


//! ------------------------  DELETE : DELETE FROM
//ATTENTION ATTENTION : sans la condition WHERE ça upadte TOUTE LA COLONE ATTENTION ATTENTION
//? DELETE FROM table_name WHERE a_column = value;

