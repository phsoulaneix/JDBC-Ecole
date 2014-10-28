CREATE TABLE IF NOT EXISTS eleve( 
	id INT PRIMARY KEY NOT NULL,
	nom VARCHAR(100),
	prenom VARCHAR(100),
	classe_k int
);

CREATE TABLE IF NOT EXISTS classe( 
	id INT PRIMARY KEY NOT NULL,
	nom VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS professeur( 
	id INT PRIMARY KEY NOT NULL,
	nom VARCHAR(100),
	prenom VARCHAR(100),
);

CREATE TABLE IF NOT EXISTS matiere( 
	id INT PRIMARY KEY NOT NULL,
	nom VARCHAR(100),
);

CREATE TABLE IF NOT EXISTS classe_matiere_professeur( 
	matiere_k int ,
	classe_k int,
	professeur_k int
	
);

INSERT INTO eleve(id, nom, prenom, classe_k) VALUES (1,	'Masset',	'Julien',	1);
INSERT INTO eleve(id, nom, prenom, classe_k) VALUES (2,	'Saphores',	'Florian',	1);
INSERT INTO eleve(id, nom, prenom, classe_k) VALUES (10, '',		'Omar',	1);
INSERT INTO eleve(id, nom, prenom, classe_k) VALUES (9,	'Mazzouji',	'Yamina',	1);
INSERT INTO eleve(id, nom, prenom, classe_k) VALUES (8,	'Alli',		'Mohammed',	1);
INSERT INTO eleve(id, nom, prenom, classe_k) VALUES (7,	'Desfrancois',	'Renaud',	1);
INSERT INTO eleve(id, nom, prenom, classe_k) VALUES (6,	'Lutz',		'Lindsay',	1);
INSERT INTO eleve(id, nom, prenom, classe_k) VALUES (5,	'Rodrigues',	'Dimitri',	1);
INSERT INTO eleve(id, nom, prenom, classe_k) VALUES (4,	'Klein',		'Gaétan',	1);
INSERT INTO eleve(id, nom, prenom, classe_k) VALUES (3,	'Ducroux',	'Olivier',	1);

INSERT INTO classe(id, nom) VALUES (1,	'Groupe 1');

INSERT INTO professeur(id, nom, prenom) VALUES (1,	'Soulaneix', 'Pierre henry');
INSERT INTO professeur(id, nom, prenom) VALUES (2,	'Woodrow', 'Chris');

INSERT INTO matiere(id, nom) VALUES (1,	'Patterm');
INSERT INTO matiere(id, nom) VALUES (2,	'JAVASE');

INSERT INTO classe_matiere_professeur(matiere_k, classe_k, professeur_k) VALUES (1,	1, 2);
INSERT INTO classe_matiere_professeur(matiere_k, classe_k, professeur_k) VALUES (2,	1, 1);

