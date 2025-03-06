-- Crear la base de datos PUBS si no existe
CREATE DATABASE IF NOT EXISTS PUBS;
USE PUBS;

-- Crear la tabla LOCALIDAD primero, ya que otras tablas dependen de ella
CREATE TABLE LOCALIDAD (
    COD_LOCALIDAD INT PRIMARY KEY,
    NOMBRE VARCHAR(100) NOT NULL
);

-- Crear la tabla PUB
CREATE TABLE PUB (
    COD_PUB INT PRIMARY KEY,
    NOMBRE VARCHAR(100) NOT NULL,
    LICENCIA_FISCAL VARCHAR(50) NOT NULL,
    DOMICILIO VARCHAR(255),
    FECHA_APERTURA DATE NOT NULL,
    HORARIO ENUM('HOR1', 'HOR2', 'HOR3') NOT NULL,
    COD_LOCALIDAD INT,
    FOREIGN KEY (COD_LOCALIDAD) REFERENCES LOCALIDAD(COD_LOCALIDAD) ON DELETE SET NULL ON UPDATE CASCADE
);

-- Crear la tabla TITULAR
CREATE TABLE TITULAR (
    DNI_TITULAR VARCHAR(20) PRIMARY KEY,
    NOMBRE VARCHAR(100) NOT NULL,
    DOMICILIO VARCHAR(255),
    COD_PUB INT,
    FOREIGN KEY (COD_PUB) REFERENCES PUB(COD_PUB) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Crear la tabla EMPLEADO
CREATE TABLE EMPLEADO (
    DNI_EMPLEADO VARCHAR(20) PRIMARY KEY,
    NOMBRE VARCHAR(100) NOT NULL,
    DOMICILIO VARCHAR(255)
);

-- Crear la tabla EXISTENCIAS
CREATE TABLE EXISTENCIAS (
    COD_ARTICULO INT PRIMARY KEY,
    NOMBRE VARCHAR(100) NOT NULL,
    CANTIDAD INT NOT NULL CHECK (CANTIDAD > 0),
    PRECIO DECIMAL(10,2) NOT NULL CHECK (PRECIO > 0),
    COD_PUB INT,
    FOREIGN KEY (COD_PUB) REFERENCES PUB(COD_PUB) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Crear la tabla PUB_EMPLEADO
CREATE TABLE PUB_EMPLEADO (
    COD_PUB INT,
    DNI_EMPLEADO VARCHAR(20),
    FUNCION ENUM('CAMARERO', 'SEGURIDAD', 'LIMPIEZA') NOT NULL,
    PRIMARY KEY (COD_PUB, DNI_EMPLEADO),
    FOREIGN KEY (COD_PUB) REFERENCES PUB(COD_PUB) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (DNI_EMPLEADO) REFERENCES EMPLEADO(DNI_EMPLEADO) ON DELETE CASCADE ON UPDATE CASCADE
);
