---
layout: default
title: UD05. 
permalink: /bases-de-datos/ud05/ejercicios/
author: Teo Rojas
date: Marzo 2025
abstract: Sinopsis de la unidad 05
---

# Índice

1. [Ejercicio N1: Cálculos aritméticos](#ejercicio-n1-cálculos-aritméticos)  
2. [Ejercicio N2: Gestión de Inventario con cláusulas IS NULL, LIKE, IN y BETWEEN](#ejercicio-n2-gestión-de-inventario-con-cláusulas-is-null-like-in-y-between)  
3. [Ejercicio N3: DragonBall Subconsultas](#ejercicio-n3-dragonball-subconsultas)  

# Ejercicio N1: Cálculos aritméticos

En este ejercicio, se deberá crear una base de datos para almacenar y calcular información. Para ello, se deberán utilizar las cláusulas `CASE WHEN ELSE`.

## Descripción:

1. Crea una base de datos llamada `DBZ_Ejercicio_Calculos`.
2. Dentro de la base de datos, crea una tabla llamada `Guerreros` con las siguientes columnas:
   - `id_guerrero`: Entero, clave primaria autoincremental.
   - `nombre`: Cadena de caracteres.
   - `raza`: Cadena de caracteres.
   - `nivel_poder`: Entero.
   - `cantidad_transformaciones`: Entero.
3. Inserta los 10 registros (que tienes al finalizar este enunciado) en la tabla `Guerreros`. 
4. Realiza las siguientes consultas utilizando operadores aritméticos, lógicos y relacionales: 
   - Selecciona el nombre y el nivel de poder de los guerreros cuyo nivel de poder sea mayor que 9000. 
   - Selecciona el nombre y la cantidad de transformaciones de los guerreros cuya cantidad de transformaciones sea menor o igual a 3. 
   - Calcula el poder total multiplicando el nivel de poder por la cantidad de transformaciones para cada guerrero. 
   - Selecciona el nombre, el nivel de poder y la cantidad de transformaciones, y añade una columna adicional llamada estado_transformacion, que muestre "¡Super Saiyan!" si la cantidad de transformaciones es mayor que 0 y son de raza Saiyan y "Sin Transformaciones" si la cantidad de transformaciones es igual a 0.
5. Utiliza la cláusula `CASE WHEN ELSE` para realizar la consulta d) y mostrar en la nueva columna el estado de transformación de todos los guerreros. Por ejemplo si es Piccolo, debe aparecer 'Orange_Piccolo', si es Freezer  debe aparecer 'Black_Freezer'.
6. Experimenta con diferentes valores y condiciones en las consultas para familiarizarte con el uso de los operadores.

## Listado de Guerreros:

| id_guerrero | nombre    | raza              | nivel_poder | cantidad_transformaciones |
|-------------|-----------|-------------------|-------------|---------------------------|
| 1           | Goku      | Saiyan            | 9500        | 6                         |
| 2           | Vegeta    | Saiyan            | 9200        | 4                         |
| 3           | Gohan     | Saiyan            | 8700        | 4                         |
| 4           | Piccolo   | Namekiano         | 7500        | 1                         |
| 5           | Trunks    | Saiyan            | 8600        | 2                         |
| 6           | Freezer   | Emperador del Mal | 9400        | 5                         |
| 7           | Cell      | Bio-Androide      | 9100        | 3                         |
| 8           | Majin Buu | Majin             | 9300        | 3                         |
| 9           | Goten     | Saiyan            | 8200        | 1                         |
| 10          | Krilin    | Humano            | 4000        | 0                         |


# Ejercicio N2: Gestión de Inventario con cláusulas IS NULL, LIKE, IN y BETWEEN

En este ejercicio se trabajará con diferentes cláusulas SQL para consultar información de un inventario de productos. Las cláusulas utilizadas serán `IS NULL`, `IS NOT NULL`, `LIKE`, `IN` y `BETWEEN`.

## Descripción:

Imagina que estás trabajando en una empresa de logística y te han asignado la tarea de gestionar el inventario de productos en un almacén. Debes realizar consultas SQL para obtener información específica sobre los productos.

### Estructura de la tabla `productos`:

- `id_producto`: Identificador único del producto (entero).
- `nombre_producto`: Nombre del producto.
- `categoria`: Categoría del producto (Electrónica, Ropa, Alimentos, Herramientas, etc.).
- `stock`: Cantidad de unidades en stock (valores enteros).
- `precio_unitario`: Precio unitario del producto (valores decimales).

### Instrucciones:

1. Encuentra todos los productos cuyo stock es menor a 10 unidades.  
2. Encuentra todos los productos cuya categoría es Electrónica o Ropa.  
3. Encuentra todos los productos cuyo precio unitario es mayor a 100 euros.  
4. Encuentra el producto con el precio unitario más alto.  
5. Encuentra la categoría con el mayor valor total de stock.  
6. Encuentra el promedio del precio unitario de todos los productos.  
7. Encuentra todos los productos cuyo nombre comienza con "A" y su stock es mayor a 0.  
8. Encuentra todos los productos que no pertenecen a la categoría Alimentos y su precio unitario es inferior a 50 euros.  
9. Encuentra todos los productos cuya cantidad en stock es un número par.  
10. Encuentra todos los productos cuya categoría no contiene la palabra "Herramientas".  
11. Encuentra todos los productos cuyo precio unitario está dentro del rango de 50 a 100 euros.  
12. Encuentra el producto con la cantidad de stock más baja.  
13. Encuentra la categoría con el menor valor total de stock.  
14. Encuentra el número total de productos en cada categoría.  
15. Encuentra todos los productos que tienen el mismo precio unitario que otro producto.  
16. Encuentra todos los productos cuyo nombre contiene al menos tres vocales.  
17. Encuentra todos los productos que tienen el mismo nombre de categoría que otro producto.  
18. Encuentra todos los productos cuyo nombre es más largo que su categoría.  
19. Encuentra todos los productos cuyo precio unitario es un número entero.  
20. Encuentra el producto con el mayor valor total (`stock * precio_unitario`).  

## Listado de productos:

```sql
INSERT INTO productos VALUES
(1, 'Smartphone', 'Electrónica', 25, 399.99),
(2, 'Camiseta', 'Ropa', 50, 19.99),
(3, 'Leche', 'Alimentos', 100, 1.50),
(4, 'Destornillador', 'Herramientas', 15, 9.99),
(5, 'Portátil', 'Electrónica', 10, 899.99),
(6, 'Pantalones', 'Ropa', 30, 29.99),
(7, 'Manzanas', 'Alimentos', 75, 0.50),
(8, 'Martillo', 'Herramientas', 20, 12.99),
(9, 'Tablet', 'Electrónica', 8, 299.99),
(10, 'Chaqueta', 'Ropa', 20, 49.99),
(11, 'Queso', 'Alimentos', 50, 2.99),
(12, 'Taladro', 'Herramientas', 12, 39.99),
(13, 'Altavoces', 'Electrónica', 18, 149.99),
(14, 'Bufanda', 'Ropa', 40, 14.99),
(15, 'Arroz', 'Alimentos', 90, 1.20),
(16, 'Destapacañerías', 'Herramientas', 5, 7.99),
(17, 'Televisor', 'Electrónica', 6, 699.99),
(18, 'Zapatos', 'Ropa', 35, 39.99),
(19, 'Pan', 'Alimentos', 120, 0.80),
(20, 'Cinta métrica', 'Herramientas', 10, 5.99),
(21, 'Auriculares', 'Electrónica', 22, 79.99),
(22, 'Vestido', 'Ropa', 15, 59.99),
(23, 'Cerveza', 'Alimentos', 65, 1.99),
(24, 'Llave inglesa', 'Herramientas', 8, 8.99),
(25, 'Monitor', 'Electrónica', 9, 199.99),
(26, 'Jersey', 'Ropa', 25, 34.99),
(27, 'Pasta', 'Alimentos', 80, 1.30),
(28, 'Destornillador eléctrico', 'Herramientas', 18, 24.99),
(29, 'Cámara', 'Electrónica', 7, 449.99),
(30, 'Gorra', 'Ropa', 50, 9.99);
```

# Ejercicio N3: DragonBall Subconsultas

En este ejercicio se trabajará con la base de datos `DragonBallSubconsultas`, la cual incluye dos tablas principales: `Guerreros` y `Tecnicas`. Estas tablas están diseñadas para representar a los personajes y sus habilidades en el universo de Dragon Ball, permitiendo realizar consultas complejas mediante subconsultas.

El ejercicio consiste en desarrollar la consulta SQL correspondiente para cada uno de los 10 enunciados propuestos en la sección de Consultas propuestas, utilizando subconsultas en los casos necesarios.

Al final del ejercicio se proporciona un script completo que permite crear la base de datos, las tablas necesarias e insertar todos los registros para poder trabajar directamente con el entorno preparado.

## Estructura de las tablas

<div class="two-columns">
  <div markdown="1"> <!-- Columna izquierda  -->

   **1. Tabla `Guerreros`**
   - `id`: Entero, clave primaria.
   - `nombre`: Cadena de caracteres.
   - `raza`: Cadena de caracteres.
   - `poder`: Entero.

  </div> 
  <div markdown="1"> <!-- Columna derecha  -->
    
   **2. Tabla `Tecnicas`**
   - `id`: Entero, clave primaria.
   - `nombre`: Cadena de caracteres.
   - `tipo`: Cadena de caracteres. Puede ser: ataque, defensa o apoyo.
   - `id_guerrero`: Entero. Clave foránea que referencia a `Guerreros`.

  </div>
</div>

## Registros iniciales

<div class="two-columns">
  <div markdown="1"> <!-- Columna izquierda  -->

   **1. Guerreros**

   1. Goku, Saiyajin, 9000  
   2. Vegeta, Saiyajin, 8500  
   3. Piccolo, Namekiano, 5000  
   4. Gohan, Saiyajin, 7000  
   5. Krilin, Humano, 4000  
   6. Trunks, Saiyajin, 8000  
   7. Cell, Androide, 8500  
   8. Freezer, Extraterrestre, 10000  
   9. Majin Boo, Monstruo, 8500  
   10. Gotenks, Saiyajin, 8500  
   11. Yamcha, Humano, 3000  

  </div> 
  <div markdown="1"> <!-- Columna derecha  -->
    
   **2. Técnicas**

   1. Kamehameha, Ataque, 1  
   2. Masenko, Ataque, 3  
   3. Big Bang Attack, Ataque, 2  
   4. Final Flash, Ataque, 2  
   5. Special Beam Cannon, Ataque, 3  
   6. Solar Flare, Apoyo, 1  
   7. Spirit Bomb, Ataque, 1  
   8. Destructo Disk, Ataque, 5  
   9. Death Ball, Ataque, 8  
   10. Instant Transmission, Apoyo, 1  

  </div>
</div>


## Consultas propuestas

1. Encuentra el nombre y el poder del guerrero más poderoso.  
2. Muestra el nombre de todos los guerreros que tienen un poder superior al promedio de todos los guerreros.  
3. Calcula el poder total de todos los guerreros Saiyajin.  
4. Calcula el poder total de cada raza de guerreros.  
5. Calcula el poder total de cada raza y ordena el resultado de mayor a menor.  
6. Muestra el poder del guerrero más poderoso de cada raza.  
7. Muestra el poder del guerrero más poderoso de cada raza, ordenado de mayor a menor.  
8. Encuentra el nombre del guerrero con mayor número de técnicas.  
9. Calcula el promedio de poder de los guerreros Namekianos.  
10. Encuentra los guerreros que tienen una técnica de ataque con "Beam" en el nombre.

## Script de creación

```sql
DROP DATABASE IF EXISTS DragonBallSubconsultas;
CREATE DATABASE DragonBallSubconsultas;
USE DragonBallSubconsultas;

-- Crear la tabla Guerreros
CREATE TABLE IF NOT EXISTS Guerreros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    raza VARCHAR(20) NOT NULL,
    poder INT NOT NULL
);

-- Insertar datos en la tabla Guerreros
INSERT INTO Guerreros (nombre, raza, poder) VALUES
('Goku', 'Saiyajin', 9000),
('Vegeta', 'Saiyajin', 8500),
('Piccolo', 'Namekiano', 5000),
('Gohan', 'Saiyajin', 6000),
('Trunks', 'Saiyajin', 6000),
('Cell', 'Monstruo', 8000),
('Freezer', 'Monstruo', 10000),
('Majin Boo', 'Monstruo', 9000),
('Gotenks', 'Saiyajin', 7000),
('Yamcha', 'Humano', 5000);

-- Crear la tabla Tecnicas
CREATE TABLE IF NOT EXISTS Tecnicas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    poder INT NOT NULL,
    id_guerrero INT,
    FOREIGN KEY (id_guerrero) REFERENCES Guerreros(id)
);

-- Insertar datos en la tabla Tecnicas
INSERT INTO Tecnicas (nombre, tipo, poder, id_guerrero) VALUES
('Kamehameha', 'Ataque', 8000, 1),
('Solar Flare', 'Defensa', 6000, 1),
('Final Flash', 'Ataque', 9000, 2),
('Special Beam Cannon', 'Ataque', 7000, 3),
('Death Ball', 'Ataque', 8000, 3),
('Spirit Bomb', 'Ataque', 10000, 4),
('Big Bang Attack', 'Ataque', 7000, 5),
('Cell Jr.', 'Ataque', 5000, 6),
('Death Beam', 'Ataque', 8000, 7),
('Kamehameha', 'Ataque', 8000, 8),
('Death Ball', 'Ataque', 9000, 9),
('Kamehameha', 'Ataque', 7000, 10);

-- Mostrar las tablas creadas
SHOW TABLES;
SELECT * FROM Guerreros;
SELECT * FROM Tecnicas;
```



