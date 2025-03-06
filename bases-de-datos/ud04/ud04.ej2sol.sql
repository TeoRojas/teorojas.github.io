-- Eliminar base de datos si existe para poder cargar el archivo sin problemas.
DROP DATABASE IF EXISTS CaballerosDelZodiaco;

CREATE DATABASE CaballerosDelZodiaco;

USE CaballerosDelZodiaco;

CREATE TABLE Constelaciones(
	ID INT AUTO_INCREMENT PRIMARY KEY,
	Nombre VARCHAR(20),
	Descripcion TEXT
);

CREATE TABLE Caballeros(
	ID INT AUTO_INCREMENT PRIMARY KEY,
	Nombre VARCHAR(20),
	SignoZodiacal VARCHAR(20),
	ConstelacionID INT,
	FOREIGN KEY (ConstelacionID) REFERENCES Constelaciones(ID)
);

INSERT INTO Constelaciones (Nombre, Descripcion) VALUES
	('Pegaso','Una Constelación celestial en forma de caballo alado.'),
	('Dragón','Una de las constelaciones más grandes y prominentes del cielo nocturno.'),
	('Cisne','Representa a un cisne que vuela a lo largo de la Vía Láctea.'),
	('Fénix','Un ave mítica que renace de sus propias cenizas.'),
	('Andrómeda','Una constelación que representa a la princesa de la mitología griega, encadenada a una roca como sacrificio.');


INSERT INTO Caballeros (Nombre, SignoZodiacal,ConstelacionID) VALUES
	('Seiya','Sagitario',1),
	('Shiryu','Capricornio',2),
	('Hyoga','Acuario',3),
	('Ikki','Escorpio',4),
	('Shun','Piscis',5);

-- EJERCICIOS DE MODIFICACIONES.

/*
-- EJERCICIO 1.
ALTER TABLE Caballeros
CHANGE COLUMN SignoZodiacal Zodiaco VARCHAR(20);

-- EJERCICIO 2.
ALTER TABLE Constelaciones
ADD COLUMN `Estrella Principal` VARCHAR(20) DEFAULT NULL;

-- EJERCICIO 3.
ALTER TABLE Caballeros
RENAME TO Caballeros_del_Zodiaco;

-- EJERCICIO 4.
UPDATE Constelaciones
SET Descripcion = 'Andrómeda es una constelación del hemisferio norte, cerca del Polo Norte Celeste, conocida por su vínculo con la mitología griega y la galaxia de Andrómeda (M31), una de las más grandes y brillantes observables desde la Tierra.'
WHERE Nombre = 'Andrómeda';

*/