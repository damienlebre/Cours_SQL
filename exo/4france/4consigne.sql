--* Quelle requête utiliser pour retrouver la ville qui possède les coordonnées GPS suivantes : 48.66913724637683, 1.87586057971015 ?
SELECT name FROM `cities` WHERE gps_lat = 48.66913724637683 AND gps_lng = 1.87586057971015;
Vieille-Église-en-Yvelines

-- Sans jointure, quelle requête utiliser pour calculer le nombre de villes que compte le département de l'Essonne ?
SELECT COUNT(department_code) FROM cities WHERE department_code = 91;

-- Sans jointure, quelle requête utiliser pour calculer le nombre de villes en Île-de-France se terminant par "-le-Roi" ?
SELECT COUNT(name) FROM cities WHERE name LIKE '%-le-Roi';

-- Combien de villes possèdent le code postal (zip_code) 77320 ? Renommez la colonne de résultat n_cities.
SELECT COUNT(zip_code) AS n_cities FROM cities WHERE zip_code = 77320;
22

-- Sans jointure, quelle requête utiliser pour calculer le nombre de villes commençant par "Saint-" en Seine-et-Marne ?
SELECT COUNT(name) FROM cities WHERE department_code = 77 AND name LIKE 'Saint-%';

-- Quelles villes possèdent un code postal (zip_code) compris entre 77210 et 77810 ?
SELECT name FROM cities WHERE zip_code between 77210 AND  77810;

-- Sans jointure, quelles sont les deux villes de Seine-et-Marne à avoir le code postal (zip_code) le plus grand ?
SELECT zip_code, name FROM cities WHERE department_code = 77 ORDER BY zip_code DESC LIMIT 2;

-- Quel est le code postal (zip_code) le plus grand de la table cities ?


-- Avec un seul WHERE et aucun OR, quelle est la requête permettant d'afficher les départements des régions ayant le code suivant : 75, 27, 53, 84 et 93 ? Le résultat doit afficher le nom du département ainsi que le nom et le slug de la région associée.

-- Quelle requête utiliser pour obtenir en résultat, les noms de la région, du département et de chaque ville du département ayant pour code 77 ?