---
layout: default
title: UD04. Definición, Manipulación y Control de Datos. Ejercicios
permalink: /bases-de-datos/ud04/ejercicios/
author: Teo Rojas
date: Marzo 2025
abstract: Sinopsis de la unidad 04
---

# Índice

# Índice

1. [Ejercicio N1: Restricciones en Base de Datos](#ejercicio-n1-restricciones-en-base-de-datos)  
2. [Ejercicio N2: Registro de Caballeros del Zodiaco con Constelaciones](#ejercicio-n2-registro-de-caballeros-del-zodiaco-con-constelaciones)  
3. [Ejercicio N3: Detección de Errores en SQL](#ejercicio-n3-detección-de-errores-en-sql)  
4. [Ejercicio N4: Creación de Base de Datos para Pubs](#ejercicio-n4-creación-de-base-de-datos-para-pubs)  

<!--
5. [Ejercicio N5: Base de Datos para Talleres](#ejercicio-n5-base-de-datos-para-talleres)  
6. [Ejercicio N6: Base de Datos para Biblioteca](#ejercicio-n6-base-de-datos-para-biblioteca)  

-->

# Ejercicio N1: Restricciones en Base de Datos

En este ejercicio, se deberá crear una base de datos para almacenar información sobre los torneos de **Dragon Ball**. Se aplicarán diferentes tipos de restricciones para garantizar la integridad y coherencia de los datos.

## Pasos:

1. **Creación de la Base de Datos**: Crear una base de datos llamada `TorneosDragonBall`.
2. **Creación de la tabla `Torneos`** con los campos:
   - `id_torneo` (clave primaria, entero autoincremental).
   - `nombre` (cadena de 100, único).
   - `ubicacion` (cadena de 100).
   - `fecha_inicio` (tipo fecha).
   - `fecha_fin` (tipo fecha, por defecto `NULL`).
3. **Creación de la tabla `Participantes`** con los campos:
   - `id_participante` (clave primaria, entero autoincremental).
   - `nombre` (cadena de 100).
   - `edad` (entero, con restricción `CHECK` mayor que 18 y menor que 150).
   - `raza` (cadena de 30).
   - `id_torneo` (entero, clave foránea con `ON DELETE CASCADE`, `ON UPDATE CASCADE`).
4. **Inserción de datos de prueba**:
   - Insertar al menos tres torneos en la tabla Torneos y tres participantes en la tabla Participantes, asegurándose de que las restricciones `UNIQUE` y `CHECK` se respeten.
   - Asignar algunos participantes a los torneos existentes, asegurándose de que se respeten las restricciones `FOREIGN KEY`.
5. **Pruebas**:
   - Realizar consultas `SELECT` para verificar datos.
   - Actualizar ubicaciones de torneos y verificar `ON UPDATE CASCADE`.
   - Eliminar torneos y verificar `ON DELETE CASCADE`.

# Ejercicio N2: Registro de Caballeros del Zodiaco con Constelaciones

Crear una base de datos simple para almacenar información sobre los **Caballeros del Zodiaco**, incluyendo sus nombres, signos zodiacales, constelaciones asociadas y detalles de las constelaciones.

## Pasos:

1. **Creación de la Base de Datos**: Utiliza la instrucción `CREATE DATABASE` para crear una nueva base de datos llamada `CaballerosDelZodiaco`.
2. **Creación de la tabla `Caballeros_del_Zodiaco`** con los campos:
   - `ID` (clave primaria).
   - `Nombre` (no nulo).
   - `SignoZodiacal`: Signo zodiacal del Caballero (por ejemplo, Aries, Tauro, Géminis, etc.).
   - `ConstelacionID`: Clave foránea que hace referencia al `ID` de la constelación asociada (FK).
3. **Creación de la tabla `Constelaciones`** con los campos:
   - `ID` (clave primaria).
   - `Nombre`.
   - `Descripcion`.
4. **Inserción de registros**:
   - Inserta al menos cinco registros de Caballeros del Zodiaco en la tabla `Caballeros`, incluyendo información sobre su nombre, signo zodiacal y el ID de la constelación asociada.
   - Inserta al menos cinco registros de constelaciones en la tabla `Constelaciones`, incluyendo información sobre el nombre y una breve descripción de cada constelación.
5. **Modificaciones**:
   - Actualización del campo `SignoZodiacal` a `Zodiaco`. Cambia el campo `Signo Zodiacal` en la tabla de Caballeros para reflejar la última actualización de los signos zodiacales según la astrología moderna.
   - Agregar un nuevo campo llamado `Estrella_Principal` a `Constelaciones` para indicar la estrella más brillante dentro de cada constelación.
   - Cambiar el nombre de la tabla `Caballeros` a `Caballeros_del_Zodiaco`.
   - Restricción `NOT NULL` en `Nombre`. Asegúrate de que el campo `Nombre` en la tabla de `Caballeros` no pueda contener valores nulos para garantizar la integridad de los datos.
   - Actualizar descripción de `Andrómeda`. Actualiza la descripción de la constelación 'Andrómeda' en la tabla de Constelaciones para incluir más detalles sobre su mitología y posición en el cielo, añade este texto: "Andrómeda es una constelación del hemisferio norte, cerca del Polo Norte Celeste, conocida por su vínculo con la mitología griega y la galaxia de Andrómeda (M31), una de las más grandes y brillantes observables desde la Tierra."
6. **Registros a insertar en tablas**:

```bash
mysql> SELECT * FROM Caballeros_del_Zodiaco;
+----+--------+---------------+----------------+
| ID | Nombre | SignoZodiacal | ConstelacionID |
+----+--------+---------------+----------------+
|  1 | Seiya  | Sagitario     |              1 |
|  2 | Shiryu | Capricornio   |              2 |
|  3 | Hyoga  | Acuario       |              3 |
|  4 | Ikki   | Escorpio      |              4 |
|  5 | Shun   | Piscis        |              5 |
+----+--------+---------------+----------------+

mysql> SELECT * FROM Constelaciones;
+----+------------+----------------------------------------------------------------------------------------------------------------+
| ID | Nombre     | Descripcion                                                                                                    |
+----+------------+----------------------------------------------------------------------------------------------------------------+
|  1 | Pegaso     | Una Constelación celestial en forma de caballo alado.                                                          |
|  2 | Dragón     | Una de las constelaciones más grandes y prominentes del cielo nocturno.                                        |
|  3 | Cisne      | Representa a un cisne que vuela a lo largo de la Vía Láctea.                                                   |
|  4 | Fénix      | Un ave mítica que renace de sus propias cenizas.                                                               |
|  5 | Andrómeda  | Una constelación que representa a la princesa de la mitología griega, encadenada a una roca como sacrificio.   |
+----+------------+----------------------------------------------------------------------------------------------------------------+
```


# Ejercicio N3: Detección de Errores en SQL

Dado el siguiente [archivo](/ud04/ud04.ej3.sql) sql con errores, cárgalo en tu MySQL, e identifica cuántos y cuáles errores hay y sus posibles soluciones y arréglalo.


# Ejercicio N4: Creación de Base de Datos para Pubs

Se dispone de la siguiente Base de Datos para gestionar la información de los pubs de una determinada provincia.

```bash
mysql> show tables;
+----------------+
| Tables_in_pubs |
+----------------+
| EMPLEADO       |
| EXISTENCIAS    |
| LOCALIDAD      |
| PUB            |
| PUB_EMPLEADO   |
| TITULAR        |
+----------------+
```

```bash
+------------------+          +------------------+
| EMPLEADO         |          | PUB_EMPLEADO     |
+------------------+          +------------------+
| (PK)DNI_EMPLEADO |          | (PK)COD_PUB      |
| NOMBRE           |          | (PK)DNI_EMPLEADO |
| DOMICILIO        |          | (PK)FUNCION      |
+------------------+          +------------------+

+------------------+          +-----------------+
| EXISTENCIAS      |          | PUB             |
+------------------+          +-----------------+
| (PK)COD_ARTICULO |          | (PK)COD_PUB     |
| NOMBRE           |          | NOMBRE          |
| CANTIDAD         |          | LICENCIA_FISCAL |
| PRECIO           |          | DOMICILIO       |
| COD_PUB          |          | FECHA_APERTURA  |
+------------------+          | HORARIO         |
                              | COD_LOCALIDAD   |
                              +-----------------+

+-----------------+           +-------------------+
| TITULAR         |           | LOCALIDAD         |
+-----------------+           +-------------------+
| (PK)DNI_TITULAR |           | (PK)COD_LOCALIDAD |
| NOMBRE          |           | NOMBRE            |
| DOMICILIO       |           +-------------------+
| COD_PUB         |              
+-----------------+              
```

Se pide escribir los comandos SQL que permitan la creación de las tablas anteriores teniendo en cuenta las siguientes restricciones:

Todos los valores son de tipo carácter excepto los campos `FECHA_APERTURA` (fecha), `CANTIDAD`, `PRECIO` y `COD_LOCALIDAD` (numéricos).
Los únicos campos que no son obligatorios son los campos DOMICILIO.
Los valores del campo horario sólo pueden ser `HOR1`, `HOR2` y `HOR3`.
No es posible dar de alta `EXISTENCIAS` a precio 0.
El campo función de la tabla `PUB_EMPLEADO` sólo puede tener los valores `CAMARERO`, `SEGURIDAD`, `LIMPIEZA`.
Se ha de mantener la integridad referencial entre las tablas.
Las claves primarias vienen marcadas con el símbolo `(PK)`.

<!--

# Ejercicio N5: Base de Datos para Talleres

1. **Crear tablas**: `COCHES`, `MECANICOS`, `TRABAJOS`, `CLIENTES`, `PIEZAS`, `FACTURAS`.
2. **Aplicar modificaciones**:
   - Agregar `modelo` en `COCHES`.
   - Establecer clave primaria compuesta en `TRABAJOS` (`mat`, `dni`).
   - `dni` en `TRABAJOS` como clave foránea de `MECANICOS`.
   - Reducir `an_fab` en `COCHES` a dos caracteres.

# Ejercicio N6: Base de Datos para Biblioteca

1. **Crear tablas**: `Libro`, `Usuario`, `Clase`, `Préstamo`.
2. **Modificaciones**:
   - Agregar `sexo` en `Usuario`.
   - Agregar `índice` en `Libro`.
   - `prestado` en `Libro` por defecto en `1`.
   - `fecha_inicio` en `Préstamo` con restricción `NOT NULL`.

-->