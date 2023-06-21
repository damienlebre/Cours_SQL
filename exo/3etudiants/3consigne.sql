-- Consignes -------------------------------------------------------------------------------------

-- Executer le script permettant la création des tables

-- Qestions ----------------------------------------------------------------------------------------

--?1 afficher l'id des étudiants qui ont participés à au moins un examen ?
    SELECT DISTINCT id_etudiant FROM `examens`;

--?2 Quelle requête utiliser pour compter le nombre d'étudiants qui ont participés à au moins un examen ?
    SELECT COUNT(DISTINCT id_etudiant ) FROM examens;

--?3 Quelle requête utiliser pour calculer la moyenne de l'examen portant l'id : 45 ?
    SELECT AVG(note) FROM `examens` WHERE id_examen = 45;

--?4 Quelle requête utiliser pour récupérer la meilleure note de l'examen portant l'id : 87 ?
    SELECT MAX(note) FROM examens WHERE id_examen = 87;

--?5 afficher l'id des étudiants qui ont eu plus de 11 à l'examen 45 ou plus de 12 à l'examen 87 ?
    SELECT id_etudiant FROM examens WHERE id_examen = 45 AND note > 11 OR id_examen = 87 AND note > 12;

--?6 afficher tous les enregistrement de la table examens avec en plus, si c'est possible, le prenom et le nom de l'étudiant ?
    SELECT * FROM examens LEFT JOIN etudiants ON examens.id_etudiant = etudiants.id_etudiant;

--?7 afficher les enregistrement de la table examens avec le prenom et le nom de l'étudiant, uniquement quand les étudiants sont présents dans la table etudiants ?
    SELECT * FROM examens INNER JOIN etudiants ON examens.id_etudiant = etudiants.id_etudiant;

--?8 afficher uniquement le nom et le prenom de l'étudiant avec l'id : 30 avec la moyenne de ses deux examens dans une colonne moyenne ?
    SELECT nom, prenom, AVG(note) AS moyenne FROM examens INNER JOIN etudiants ON examens.id_etudiant = etudiants.id_etudiant WHERE examens.id_etudiant = 30;

--?9 afficher les 3 meilleures notes, du meilleur au moins bon, avec prenom et nom de l'étudiant associé ?
    SELECT nom, prenom, matiere ,note FROM examens INNER JOIN etudiants ON examens.id_etudiant = etudiants.id_etudiant ORDER BY note DESC LIMIT 3;


















