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


<!--
2. [Ejercicio N2: Registro de Caballeros del Zodiaco con Constelaciones](#ejercicio-n2-registro-de-caballeros-del-zodiaco-con-constelaciones)  
3. [Ejercicio N3: Creación de Base de Datos para Pubs](#ejercicio-n3-creación-de-base-de-datos-para-pubs)  
4. [Ejercicio N4: Base de Datos para Talleres](#ejercicio-n4-base-de-datos-para-talleres)


5. [Ejercicio N5: Base de Datos para Biblioteca](#ejercicio-n6-base-de-datos-para-biblioteca)  
-->

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

1. Goku:
   - `nombre`: Goku
   - `raza`: Saiyan
   - `nivel_poder`: 9000
   - `cantidad_transformaciones`: 6

2. Vegeta:
   - `nombre`: Vegeta
   - `raza`: Saiyan
   - `nivel_poder`: 8500
   - `cantidad_transformaciones`: 4

3. Gohan:
   - `nombre`: Gohan
   - `raza`: Saiyan
   - `nivel_poder`: 8000
   - `cantidad_transformaciones`: 4

4. Piccolo:
   - `nombre`: Piccolo
   - `raza`: Namekiano
   - `nivel_poder`: 7000
   - `cantidad_transformaciones`: 1

5. Trunks:
   - `nombre`: Trunks
   - `raza`: Saiyan
   - `nivel_poder`: 7500
   - `cantidad_transformaciones`: 2

6. Freezer:
   - `nombre`: Freezer
   - `raza`: Emperador del Mal
   - `nivel_poder`: 10000
   - `cantidad_transformaciones`: 5

7. Cell:
   - `nombre`: Cell
   - `raza`: Bio-Androide
   - `nivel_poder`: 8500
   - `cantidad_transformaciones`: 3

8. Majin Buu:
   - `nombre`: Majin Buu
   - `raza`: Majin
   - `nivel_poder`: 8000
   - `cantidad_transformaciones`: 3

9. Goten:
   - `nombre`: Goten
   - `raza`: Saiyan
   - `nivel_poder`: 6000
   - `cantidad_transformaciones`: 1

10. Krilin:
   - `nombre`: Krilin
   - `raza`: Humano
   - `nivel_poder`: 5000
   - `cantidad_transformaciones`: 0
