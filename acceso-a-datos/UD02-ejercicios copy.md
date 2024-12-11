---
layout: default
title: UD02. Desarrollo de aplicaciones que gestionan información en bases de datos relacionales. Ejercicios.
permalink: /acceso-a-datos/ud02/ejercicios/
author: Teo Rojas
date: Noviembre 2024
abstract:
---

# Índice

1. [Ejercicio Práctico 1: Gestión de Información de Personas y Direcciones en una Base de Datos Relacional](#ejercicio-práctico-1-gestión-de-información-de-personas-y-direcciones-en-una-base-de-datos-relacional)
2. [Ejercicio Práctico 2: Gestión de Productos y Categorías en una Base de Datos Relacional](#ejercicio-práctico-2-gestión-de-productos-y-categorías-en-una-base-de-datos-relacional)
3. [Ejercicio Práctico 3: Gestión de Empleados y Proyectos en una Base de Datos Relacional](#ejercicio-práctico-3-gestión-de-empleados-y-proyectos-en-una-base-de-datos-relacional)


# Ejercicio Práctico 1: Gestión de Información de Personas y Direcciones en una Base de Datos Relacional

**Objetivo:**  
Desarrollar una aplicación Java que se conecte a una base de datos MySQL o H2, cree las tablas necesarias, inserte datos, realice consultas y gestione transacciones.

**Requisitos del ejercicio:**

Primero, los estudiantes deberán establecer una conexión con una base de datos MySQL o H2. Si se utiliza MySQL, el servidor debe estar en ejecución y accesible. Si se utiliza H2, el sistema puede ejecutarse en modo embebido. Se debe crear una base de datos y definir dos tablas: `Persona` y `Direccion`. La tabla `Persona` debe tener los siguientes campos: `id (INT, clave primaria)`, `nombre (VARCHAR(100))`, `edad (INT)`. La tabla `Direccion` debe incluir los campos: `id (INT, clave primaria)`, `calle (VARCHAR(100))`, `ciudad (VARCHAR(50))`, `codigo_postal (VARCHAR(10))`, y `persona_id (INT, clave foránea que hace referencia a Persona)`.

A continuación, se debe insertar al menos tres registros en la tabla `Persona` con diferentes nombres y edades, y al menos dos registros en la tabla `Direccion`, asegurándose de que los datos en la tabla `Direccion` estén relacionados con las personas de la tabla `Persona` a través del campo `persona_id`.

El siguiente paso es realizar una consulta que muestre todos los registros de la tabla `Persona` y sus direcciones correspondientes, y otra consulta que busque todas las personas mayores de 25 años.

Para manejar transacciones, los estudiantes deberán usar transacciones para insertar un nuevo registro en `Persona` y otro en `Direccion`. Es importante que, si ocurre un error durante la inserción, se realice un `rollback` para deshacer todos los cambios realizados en la transacción.

Finalmente, los estudiantes deben asegurarse de cerrar la conexión a la base de datos, así como los `Statement` y `ResultSet` utilizados, utilizando el método `close()` cuando ya no sean necesarios.

**Instrucciones:**

1. Configura tu entorno de trabajo y asegúrate de tener las dependencias necesarias para conectarte a MySQL o H2, ya sea mediante Maven o añadiendo los JARs manualmente.
2. Establece la conexión a la base de datos utilizando JDBC, ya sea para MySQL o H2, siguiendo las indicaciones de la documentación.
3. Crea las tablas `Persona` y `Direccion` en la base de datos, ejecutando las sentencias SQL correspondientes a través de JDBC.
4. Inserta los datos solicitados en las tablas correspondientes, asegurándote de que las direcciones estén asociadas correctamente a las personas.
5. Realiza las consultas para obtener los registros de la tabla `Persona` junto con sus direcciones y las personas mayores de 25 años.
6. Utiliza transacciones para insertar un nuevo registro en `Persona` y otro en `Direccion`. Si ocurre algún error, asegúrate de utilizar `rollback()` para revertir los cambios.
7. Asegúrate de cerrar correctamente todos los recursos como la conexión a la base de datos, `Statement` y `ResultSet` al finalizar.
8. Una vez completado el ejercicio, guarda tu código y envíalo a la plataforma correspondiente.

**Evaluación:**  
Este ejercicio (no) será evaluado, pero ten en cuenta que solo dominarás el tema si dominas los siguientes aspectos:  
- La correcta conexión a la base de datos y establecimiento de la estructura de la base de datos.  
- La inserción correcta de datos y la ejecución de consultas SQL adecuadas.  
- El uso adecuado de transacciones y manejo de errores.  
- La correcta gestión de recursos (cierre de conexiones, `Statement`, y `ResultSet`).

Este ejercicio tiene como objetivo aplicar los conceptos de conexión a bases de datos, ejecución de consultas y gestión de transacciones en un entorno práctico, fortaleciendo los conocimientos sobre el acceso a datos en aplicaciones Java.


# Ejercicio Práctico 2: Gestión de Productos y Categorías en una Base de Datos Relacional

**Objetivo:**  
Desarrollar una aplicación Java que se conecte a una base de datos MySQL o H2, cree las tablas necesarias para gestionar productos y categorías, inserte datos, realice consultas y gestione transacciones.

**Requisitos del ejercicio:**

En este ejercicio, los estudiantes deberán establecer una conexión con una base de datos MySQL o H2. Se debe crear una base de datos y definir dos tablas: `Producto` y `Categoria`. La tabla `Producto` debe contener los campos: `id (INT, clave primaria)`, `nombre (VARCHAR(100))`, `precio (DECIMAL(10,2))`, `categoria_id (INT, clave foránea que hace referencia a la tabla `Categoria`)`. La tabla `Categoria` debe incluir los campos: `id (INT, clave primaria)`, `nombre (VARCHAR(50))`.

A continuación, los estudiantes deberán insertar al menos tres productos con diferentes nombres y precios, y al menos dos categorías, asegurándose de que cada producto pertenezca a una categoría específica.

El siguiente paso consiste en realizar una consulta para mostrar todos los productos con su categoría correspondiente, y otra consulta que busque todos los productos con un precio mayor a 100.

Para manejar transacciones, los estudiantes deben usar transacciones para insertar un nuevo producto y asociarlo a una categoría. Si ocurre un error durante la inserción, deben realizar un `rollback` para deshacer todos los cambios realizados en la transacción.

Finalmente, deben asegurarse de cerrar la conexión a la base de datos, así como los `Statement` y `ResultSet` utilizados, utilizando el método `close()` cuando ya no sean necesarios.

**Instrucciones:**

1. Configura tu entorno de trabajo y asegúrate de tener las dependencias necesarias para conectarte a MySQL o H2, ya sea mediante Maven o añadiendo los JARs manualmente.
2. Establece la conexión a la base de datos utilizando JDBC, ya sea para MySQL o H2, siguiendo las indicaciones de la documentación.
3. Crea las tablas `Producto` y `Categoria` en la base de datos, ejecutando las sentencias SQL correspondientes a través de JDBC.
4. Inserta los datos solicitados en las tablas correspondientes, asegurándote de que los productos estén correctamente asociados a una categoría.
5. Realiza las consultas para obtener los productos junto con sus categorías y los productos con un precio mayor a 100.
6. Utiliza transacciones para insertar un nuevo producto y asociarlo a una categoría. Si ocurre algún error, asegúrate de utilizar `rollback()` para revertir los cambios.
7. Asegúrate de cerrar correctamente todos los recursos como la conexión a la base de datos, `Statement`, y `ResultSet` al finalizar.
8. Una vez completado el ejercicio, guarda tu código y envíalo a la plataforma correspondiente.

**Evaluación:**  
Este ejercicio (no) será evaluado, pero ten en cuenta que solo dominarás el tema si dominas los siguientes aspectos:  
- La correcta conexión a la base de datos y establecimiento de la estructura de la base de datos.  
- La inserción correcta de datos y la ejecución de consultas SQL adecuadas.  
- El uso adecuado de transacciones y manejo de errores.  
- La correcta gestión de recursos (cierre de conexiones, `Statement`, y `ResultSet`).

Este ejercicio tiene como objetivo aplicar los conceptos de conexión a bases de datos, ejecución de consultas y gestión de transacciones en un entorno práctico, fortaleciendo los conocimientos sobre el acceso a datos en aplicaciones Java.

# Ejercicio Práctico 3: Gestión de Empleados y Proyectos en una Base de Datos Relacional

**Objetivo:**  
Desarrollar una aplicación Java que se conecte a una base de datos MySQL o H2, cree las tablas necesarias para gestionar empleados y proyectos, inserte datos, realice consultas y gestione transacciones.

**Requisitos del ejercicio:**
Los estudiantes deben establecer una conexión con una base de datos MySQL o H2. Se debe crear una base de datos y definir dos tablas: `Empleado` y `Proyecto`. La tabla `Empleado` debe incluir los campos: `id (INT, clave primaria)`, `nombre (VARCHAR(100))`, `puesto (VARCHAR(100))`, `salario (DECIMAL(10,2))`. La tabla `Proyecto` debe incluir los campos: `id (INT, clave primaria)`, `nombre (VARCHAR(100))`, `fecha_inicio (DATE)`, `empleado_id (INT, clave foránea que hace referencia a la tabla `Empleado`)`.

Los estudiantes deberán insertar al menos tres empleados con diferentes nombres y salarios, y al menos dos proyectos. Cada proyecto debe estar asociado a un empleado específico mediante el campo `empleado_id`.

El siguiente paso consiste en realizar una consulta que muestre todos los proyectos junto con el nombre del empleado asignado a cada uno, y otra consulta que muestre todos los empleados cuyo salario sea superior a 3000.

Para manejar transacciones, los estudiantes deben usar transacciones para insertar un nuevo empleado y asignarlo a un proyecto. En caso de error, deben realizar un `rollback()` para revertir todos los cambios realizados en la transacción.

Finalmente, deben asegurarse de cerrar la conexión a la base de datos, así como los `Statement` y `ResultSet` utilizados, utilizando el método `close()` cuando ya no sean necesarios.

**Instrucciones para los estudiantes:**
1. Configura tu entorno de trabajo y asegúrate de tener las dependencias necesarias para conectarte a MySQL o H2, ya sea mediante Maven o añadiendo los JARs manualmente.
2. Establece la conexión a la base de datos utilizando JDBC, ya sea para MySQL o H2, siguiendo las indicaciones de la documentación.
3. Crea las tablas `Empleado` y `Proyecto` en la base de datos, ejecutando las sentencias SQL correspondientes a través de JDBC.
4. Inserta los datos solicitados en las tablas correspondientes, asegurándote de que los proyectos estén correctamente asociados a un empleado.
5. Realiza las consultas para obtener los proyectos con los empleados asignados y los empleados con un salario superior a 3000.
6. Utiliza transacciones para insertar un nuevo empleado y asignarlo a un proyecto. Si ocurre algún error, asegúrate de utilizar `rollback()` para revertir los cambios.
7. Asegúrate de cerrar correctamente todos los recursos como la conexión a la base de datos, `Statement`, y `ResultSet` al finalizar.
8. Una vez completado el ejercicio, guarda tu código y envíalo a la plataforma correspondiente.

**Evaluación:**  
Este ejercicio (no) será evaluado, pero ten en cuenta que solo dominarás el tema si dominas los siguientes aspectos:  
- La correcta conexión a la base de datos y establecimiento de la estructura de la base de datos.  
- La inserción correcta de datos y la ejecución de consultas SQL adecuadas.  
- El uso adecuado de transacciones y manejo de errores.  
- La correcta gestión de recursos (cierre de conexiones, `Statement`, y `ResultSet`).

Este ejercicio tiene como objetivo aplicar los conceptos de conexión a bases de datos, ejecución de consultas y gestión de transacciones en un entorno práctico, fortaleciendo los conocimientos sobre el acceso a datos en aplicaciones Java.