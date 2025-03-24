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
