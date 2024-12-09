-- Archivo: crearEmpresaEstudianteDB.sql
-- Este script crea las tablas necesarias, establece las relaciones y rellena los datos.

-- Crear base de datos
CREATE DATABASE IF NOT EXISTS EmpresaEstudianteDB;
USE EmpresaEstudianteDB;

-- Crear la tabla Estudiante (si no existe)
CREATE TABLE IF NOT EXISTS Estudiante (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    email VARCHAR(100),
    edad INT
);

-- Insertar 50 estudiantes en la base de datos
INSERT INTO Estudiante (nombre, apellido, email, edad) VALUES
('Juan', 'Pérez', 'juan.perez@example.com', 20),
('Ana', 'García', 'ana.garcia@example.com', 22),
('Luis', 'Martínez', 'luis.martinez@example.com', 21),
('Pedro', 'Sánchez', 'pedro.sanchez@example.com', 23),
('Carlos', 'Lopez', 'carlos.lopez@example.com', 24),
('Maria', 'Rodríguez', 'maria.rodriguez@example.com', 25),
('Javier', 'Hernández', 'javier.hernandez@example.com', 20),
('Sofia', 'López', 'sofia.lopez@example.com', 19),
('Rafael', 'González', 'rafael.gonzalez@example.com', 30),
('Laura', 'Martínez', 'laura.martinez@example.com', 28),
('Andrés', 'Torres', 'andres.torres@example.com', 27),
('Marta', 'Ramírez', 'marta.ramirez@example.com', 26),
('Miguel', 'Álvarez', 'miguel.alvarez@example.com', 22),
('Lucía', 'Serrano', 'lucia.serrano@example.com', 21),
('David', 'Cruz', 'david.cruz@example.com', 24),
('Isabel', 'Jiménez', 'isabel.jimenez@example.com', 23),
('Fernando', 'Vázquez', 'fernando.vazquez@example.com', 25),
('Paula', 'González', 'paula.gonzalez@example.com', 26),
('Manuel', 'Pérez', 'manuel.perez@example.com', 29),
('Beatriz', 'Martínez', 'beatriz.martinez@example.com', 22),
('Enrique', 'Gutiérrez', 'enrique.gutierrez@example.com', 30),
('Carmen', 'Fernández', 'carmen.fernandez@example.com', 21),
('Antonio', 'Ríos', 'antonio.rios@example.com', 20),
('Esteban', 'Ruiz', 'esteban.ruiz@example.com', 28),
('Clara', 'Sánchez', 'clara.sanchez@example.com', 22),
('Pedro', 'Gómez', 'pedro.gomez@example.com', 30),
('Eva', 'Ramírez', 'eva.ramirez@example.com', 25),
('Jesús', 'Reyes', 'jesus.reyes@example.com', 24),
('Adriana', 'Sánchez', 'adriana.sanchez@example.com', 21),
('Ricardo', 'Hernández', 'ricardo.hernandez@example.com', 23),
('Sergio', 'Díaz', 'sergio.diaz@example.com', 20),
('Sara', 'Vega', 'sara.vega@example.com', 22),
('Alfredo', 'Morales', 'alfredo.morales@example.com', 26),
('Pedro', 'Santos', 'pedro.santos@example.com', 25),
('José', 'Blanco', 'jose.blanco@example.com', 27),
('Marta', 'Núñez', 'marta.nunez@example.com', 28),
('Luis', 'Herrera', 'luis.herrera@example.com', 30),
('Patricia', 'Córdoba', 'patricia.cordoba@example.com', 24),
('Juan Carlos', 'Navarro', 'juancarlos.navarro@example.com', 22),
('Monica', 'Guerrero', 'monica.guerrero@example.com', 26),
('Raúl', 'Castaño', 'raul.castano@example.com', 23),
('Verónica', 'Pérez', 'veronica.perez@example.com', 21),
('Héctor', 'Castillo', 'hector.castillo@example.com', 29),
('Gustavo', 'Domínguez', 'gustavo.dominguez@example.com', 25),
('Alba', 'Villar', 'alba.villar@example.com', 30),
('Adrián', 'Serrano', 'adrian.serrano@example.com', 22),
('Elena', 'Pinto', 'elena.pinto@example.com', 19),
('Carlos', 'Medina', 'carlos.medina@example.com', 28),
('José Antonio', 'Fernández', 'joseantonio.fernandez@example.com', 24);

-- Crear la tabla Empresa
CREATE TABLE IF NOT EXISTS Empresa (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

-- Insertar datos en la tabla Empresa
INSERT INTO Empresa (nombre) VALUES
('Google'),
('Microsoft'),
('Amazon'),
('Apple'),
('Netflix');

-- Crear la tabla intermedia Empresa_Estudiante
CREATE TABLE IF NOT EXISTS Empresa_Estudiante (
    empresa_id INT NOT NULL,
    estudiante_id INT NOT NULL,
    PRIMARY KEY (empresa_id, estudiante_id),
    FOREIGN KEY (empresa_id) REFERENCES Empresa(id) ON DELETE CASCADE,
    FOREIGN KEY (estudiante_id) REFERENCES Estudiante(id) ON DELETE CASCADE
);

-- Insertar datos en la tabla intermedia Empresa_Estudiante
INSERT INTO Empresa_Estudiante (empresa_id, estudiante_id) VALUES
(1, 1), -- Google y Juan Pérez
(1, 2), -- Google y Ana García
(2, 3), -- Microsoft y Luis Martínez
(2, 4), -- Microsoft y Pedro Sánchez
(3, 5), -- Amazon y Carlos Lopez
(3, 6), -- Amazon y Maria Rodríguez
(4, 7), -- Apple y Javier Hernández
(4, 8), -- Apple y Sofia López
(5, 9), -- Netflix y Rafael González
(5, 10); -- Netflix y Laura Martínez
