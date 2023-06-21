//* Fonction d'agregation
//! COUNT et GROUP BY 
// GROUP BY regroupe les enregistrement par id avant de lancer la fonction
// retourne autant de ligne que de id different en indiquant le nombre de fois ou ils apparaissent

//? SELECT COUNT(id_col) FROM table_name GROUP BY id_col

//! HAVING
// HAVING et WHERE ont le meme role cependant la condition WHERE s'execute avant GROUP BY
// Alors que HAVING s'éxécute après
//? SELECT b.first_column AS alias, COUNT(a.id_column) AS another_alias
//? FROM table_name AS b
//? LEFT JOIN another_table_name AS a ON b.id_column = a.second_column
//? GROUP BY b.id_column 
//? HAVING another_alias=1;

