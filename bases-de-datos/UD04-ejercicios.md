---
layout: default
title: UD04. Definición, Manipulación y Control de Datos. Ejercicios
permalink: /bases-de-datos/ud04/ejercicios/
author: Teo Rojas
date: Marzo 2025
abstract: Sinopsis de la unidad 04
---

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

<!--

# Ejercicio N3: Detección de Errores en SQL

Dado el siguiente [archivo](/ud04/ud04.ej3.sql) sql con errores, cárgalo en tu MySQL, e identifica cuántos y cuáles errores hay y sus posibles soluciones y arréglalo.

-->

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
| DOMICILIO        |          | FUNCION          |
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

# Ejercicio N5: Base de Datos para Talleres


1. Crea las siguientes tablas:


Tabla COCHES:
Esta tabla almacenará información sobre los coches que llegan al taller.

mat: Matrícula del coche, una cadena de 8 caracteres, será la clave primaria de esta tabla.
marca: Marca del coche, una cadena de hasta 15 caracteres.
an_fab: Año de fabricación del coche, un número de 4 dígitos.
modelo: Modelo del coche, una cadena de hasta 15 caracteres.
Tabla MECANICOS:
Esta tabla almacenará información sobre los mecánicos que trabajan en el taller.

dni: Número de identificación del mecánico, una cadena de 9 caracteres, será la clave primaria de esta tabla.
nombre: Nombre del mecánico, una cadena de hasta 15 caracteres.
puesto: Puesto del mecánico en el taller, una cadena de hasta 15 caracteres.
parcial: Indicador de si el mecánico trabaja a tiempo parcial, un solo carácter.
Tabla TRABAJOS:
Esta tabla registrará los trabajos realizados en los coches.

mat: Matrícula del coche, será una clave externa que hace referencia a la tabla COCHES.
dni: Número de identificación del mecánico, será una clave externa que hace referencia a la tabla MECANICOS.
horas: Número de horas empleadas en el trabajo, debe ser mayor de 0.5.
fecha_rep: Fecha en que se realizó el trabajo.
Tabla CLIENTES:
Esta tabla almacenará información sobre los clientes del taller.

id_cliente: Identificador del cliente, una cadena de 10 caracteres, será la clave primaria de esta tabla.
nombre: Nombre del cliente, una cadena de hasta 50 caracteres.
telefono: Número de teléfono del cliente, una cadena de hasta 15 caracteres.
Tabla PIEZAS:
Esta tabla almacenará información sobre las piezas utilizadas en los trabajos del taller.

id_pieza: Identificador de la pieza, una cadena de 10 caracteres, será la clave primaria de esta tabla.
nombre: Nombre de la pieza, una cadena de hasta 50 caracteres.
precio: Precio de la pieza, un valor decimal.
Tabla FACTURAS:
Esta tabla registrará información sobre las facturas emitidas a los clientes del taller.

id_factura: Identificador de la factura, una cadena de 10 caracteres, será la clave primaria de esta tabla.
id_cliente: Identificador del cliente, una clave externa que hace referencia a la tabla CLIENTES.
fecha_emision: Fecha de emisión de la factura.
total: Total de la factura, un valor decimal.


2. Realiza las siguientes modificaciones sobre las tablas...

Una vez que las tablas básicas estén creadas, necesitaremos realizar algunas modificaciones adicionales para mejorar la estructura de la base de datos.

Añadir atributo modelo a la tabla COCHES:
Agregaremos un atributo modelo a la tabla COCHES para registrar el modelo de cada coche.

Establecer mat y dni como llaves primarias de TRABAJOS:
Haremos que las columnas mat y dni en la tabla TRABAJOS formen una clave primaria compuesta, lo que asegurará que cada combinación de matrícula y número de identificación del mecánico sea única en la tabla.

Establecer dni de TRABAJOS como llave ajena respecto a MECANICOS:
Estableceremos la columna dni en la tabla TRABAJOS como una clave ajena que hace referencia a la columna dni en la tabla MECANICOS. Esto garantizará que solo se puedan asignar trabajos a mecánicos que estén registrados en la base de datos.

Reducir a 2 la longitud del atributo an_fab de la tabla COCHES:
Reducir la longitud del atributo an_fab en la tabla COCHES de 4 a 2 caracteres para permitir el almacenamiento de años con mayor precisión.