CREATE DATABASE fabricante;
USE fabricante;
CREATE TABLE fabricante(
id_fab INTEGER PRIMARY KEY,
nombre VARCHAR(50),
pais
VARCHAR(30)
);
CREATE TABLE programa(
codigo INTEGER PRIMARY KEY,
nombre VARCHAR(50),
version VARCHAR(50)
);
CREATE TABLE comercio(
cif INTEGER PRIMARY KEY,
nombre VARCHAR(50),
ciudad VARCHAR(50)
);
CREATE TABLE cliente(
dni INTEGER PRIMARY KEY,
nombre VARCHAR(50),
edad INTEGER
);
CREATE TABLE desarrolla(
id_fab INTEGER,
codigo INTEGER,
PRIMARY KEY (id_fab, codigo),
FOREIGN KEY (id_fab) REFERENCES fabricante(id_fab),
FOREIGN KEY (codigo) REFERENCES programa(codigo)
);
CREATE TABLE distribuye(
cif INTEGER,
codigo INTEGER,
cantidad INTEGER,
PRIMARY KEY (cif, codigo),
FOREIGN KEY (cif) REFERENCES comercio(cif),
FOREIGN KEY (codigo) REFERENCES programa(codigo)
);
CREATE TABLE registra(
cif INTEGER,
dni INTEGER,
codigo INTEGER,
medio VARCHAR(20),
PRIMARY KEY (cif, dni, codigo),
FOREIGN KEY (cif) REFERENCES comercio(cif),
FOREIGN KEY (dni) REFERENCES cliente(dni),
FOREIGN KEY (codigo) REFERENCES programa(codigo)
);
INSERT INTO fabricante VALUES (1,'Oracle','Estados Unidos');
INSERT INTO fabricante VALUES (2,'Microsoft','Estados Unidos');
INSERT INTO fabricante VALUES (3,'IBM','Estados Unidos');
INSERT INTO fabricante VALUES (4,'Dinamic','España');
INSERT INTO fabricante VALUES (5,'Borland','Estados Unidos');
INSERT INTO fabricante VALUES (6,'Symantec','Estados Unidos');
INSERT INTO programa VALUES (1,'Application Server','9i');
INSERT INTO programa VALUES (2,'Oracle Database','8i');
INSERT INTO programa VALUES (3,'Database','9i');
INSERT INTO programa VALUES (4,'Database','10g');
INSERT INTO programa VALUES (5,'Developer','6i');
INSERT INTO programa VALUES (6,'Access','97');
INSERT INTO programa VALUES (7,'Access','2000');
INSERT INTO programa VALUES (8,'Access','XP');
INSERT INTO programa VALUES (9,'Windows','98');
INSERT INTO programa VALUES (10,'Windows','XP Professional');
INSERT INTO programa VALUES (11,'Windows','XP Home Edition');
INSERT INTO programa VALUES (12,'Windows','2003 Server');
INSERT INTO programa VALUES (13,'Norton Internet Security','2004');
INSERT INTO programa VALUES (14,'Freddy Hardest',NULL);
INSERT INTO programa VALUES (15,'Paradox','2');
INSERT INTO programa VALUES (16,'C++ Builder','5.5');
INSERT INTO programa VALUES (17,'DB/2','2.0');
INSERT INTO programa VALUES (18,'OS/2','1.0');
INSERT INTO programa VALUES (19,'JBuilder','X');
INSERT INTO programa VALUES (20,'La prisión','1.0');
INSERT INTO comercio VALUES (1,'El Corte Inglés','Sevilla');
INSERT INTO comercio VALUES (2,'El Corte Inglés','Madrid');
INSERT INTO comercio VALUES (3,'Jump','Valencia');
INSERT INTO comercio VALUES (4,'Centro Mail','Sevilla');
INSERT INTO comercio VALUES (5,'FNAC','Barcelona');
INSERT INTO cliente VALUES (1,'Pepe Pérez',45);
INSERT INTO cliente VALUES (2,'Juan González',45);
INSERT INTO cliente VALUES (3,'María Gómez',33);
INSERT INTO cliente VALUES (4,'Javier Casado',18);
INSERT INTO cliente VALUES (5,'Nuria Sánchez',29);
INSERT INTO cliente VALUES (6,'Antonio Navarro',58);
INSERT INTO desarrolla VALUES (1,1);
INSERT INTO desarrolla VALUES (1,2);
INSERT INTO desarrolla VALUES (1,3);
INSERT INTO desarrolla VALUES (1,4);
INSERT INTO desarrolla VALUES (1,5);
INSERT INTO desarrolla VALUES (2,6);
INSERT INTO desarrolla VALUES (2,7);
INSERT INTO desarrolla VALUES (2,8);
INSERT INTO desarrolla VALUES (2,9);
INSERT INTO desarrolla VALUES (2,10);
INSERT INTO desarrolla VALUES (2,11);
INSERT INTO desarrolla VALUES (2,12);
INSERT INTO desarrolla VALUES (6,13);
INSERT INTO desarrolla VALUES (4,14);
INSERT INTO desarrolla VALUES (5,15);
INSERT INTO desarrolla VALUES (5,16);
INSERT INTO desarrolla VALUES (3,17);
INSERT INTO desarrolla VALUES (3,18);
INSERT INTO desarrolla VALUES (5,19);
INSERT INTO desarrolla VALUES (4,20);
INSERT INTO distribuye VALUES (1,1,10);
INSERT INTO distribuye VALUES (1,2,11);
INSERT INTO distribuye VALUES (1,6,5);
INSERT INTO distribuye VALUES (1,7,3);
INSERT INTO distribuye VALUES (1,10,5);
INSERT INTO distribuye VALUES (1,13,7);
INSERT INTO distribuye VALUES (2,1,6);
INSERT INTO distribuye VALUES (2,2,6);
INSERT INTO distribuye VALUES (2,6,4);
INSERT INTO distribuye VALUES (2,7,7);
INSERT INTO distribuye VALUES (3,10,8);
INSERT INTO distribuye VALUES (3,13,5);
INSERT INTO distribuye VALUES (4,14,3);
INSERT INTO distribuye VALUES (4,20,6);
INSERT INTO distribuye VALUES (5,15,8);
INSERT INTO distribuye VALUES (5,16,2);
INSERT INTO distribuye VALUES (5,17,3);
INSERT INTO distribuye VALUES (5,19,6);
INSERT INTO distribuye VALUES (5,8,8);
INSERT INTO registra VALUES (1,1,1,'Internet');
INSERT INTO registra VALUES (1,3,4,'Tarjeta postal');
INSERT INTO registra VALUES (4,2,10,'Teléfono');
INSERT INTO registra VALUES (4,1,10,'Tarjeta postal');
INSERT INTO registra VALUES (5,2,12,'Internet');
INSERT INTO registra VALUES (2,4,15,'Internet');