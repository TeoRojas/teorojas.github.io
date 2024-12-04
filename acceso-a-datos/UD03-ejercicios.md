---
layout: default
title: UD03. Gestión de la persistencia de los datos con herramientas de mapeo objeto relacional (ORM). Ejercicios.
permalink: /acceso-a-datos/ud03/ejercicios/
author: Teo Rojas
date: Noviembre 2024
abstract:
---

# Índice

1. [Ejercicio 1: Inserción Básica de Datos](#ejercicio-1-inserción-básica-de-datos)
2. [Ejercicio 2: Inserción de Múltiples Registros](#ejercicio-2-inserción-de-múltiples-registros)
3. [Ejercicio 3: Inserción con Generación Automática del Identificador](#ejercicio-3-inserción-con-generación-automática-del-identificador)
4. [Ejercicio 4: Actualizar el Nombre de un Estudiante](#ejercicio-4-actualizar-el-nombre-de-un-estudiante)
5. [Ejercicio 5: Actualizar la Edad de un Estudiante](#ejercicio-5-actualizar-la-edad-de-un-estudiante)
6. [Ejercicio 6: Actualizar la Información de un Estudiante por Email](#ejercicio-6-actualizar-la-información-de-un-estudiante-por-email)
7. [Ejercicio 7: Eliminar un Estudiante de la Base de Datos](#ejercicio-7-eliminar-un-estudiante-de-la-base-de-datos)
8. [Ejercicio 8: Eliminar Todos los Estudiantes con Edad Menor a 18](#ejercicio-8-eliminar-todos-los-estudiantes-con-edad-menor-a-18)
9. [Ejercicio 9: Obtener Todos los Registros de la Tabla Estudiante](#ejercicio-9-obtener-todos-los-registros-de-la-tabla-estudiante)
10. [Ejercicio 10: Obtener Estudiante por ID](#ejercicio-10-obtener-estudiante-por-id)
11. [Ejercicio 11: Obtener Estudiantes con Edad Mayor a 25](#ejercicio-11-obtener-estudiantes-con-edad-mayor-a-25)
12. [Ejercicio 12: Obtener el Número de Registros en la Tabla Estudiante](#ejercicio-12-obtener-el-número-de-registros-en-la-tabla-estudiante)
13. [Ejercicio 13: Obtener el Estudiante Más Joven](#ejercicio-13-obtener-el-estudiante-más-joven)
14. [Ejercicio 14: Crear un Repositorio Básico para Estudiantes](#ejercicio-14-crear-un-repositorio-básico-para-estudiantes)
15. [Ejercicio 15: Agregar un Método Personalizado al Repositorio](#ejercicio-15-agregar-un-método-personalizado-al-repositorio)
16. [Ejercicio 16: Crear una Relación 1-N entre Empresa y Estudiante](#ejercicio-16-crear-una-relación-1-n-entre-empresa-y-estudiante)
17. [Ejercicio 17: Consultar Estudiantes por Empresa](#ejercicio-17-consultar-estudiantes-por-empresa)
18. [Ejercicio 18: Eliminar un Estudiante de una Empresa](#ejercicio-18-eliminar-un-estudiante-de-una-empresa)

[BDD de pruebas](/ud03/tablaEstudiante.sql)

# Ejercicio 1: Inserción Básica de Datos

**Enunciado:**
Crea una clase Java llamada `Estudiante` con los siguientes atributos:

- `id` (int, clave primaria)
- `nombre` (String)
- `apellido` (String)
- `email` (String)

1. Configura Hibernate en tu proyecto y asegúrate de que el archivo de configuración (`hibernate.cfg.xml`) esté correctamente configurado para conectarse a una base de datos de tu elección.
2. Crea una clase de prueba donde instancies un objeto de la clase `Estudiante` con los siguientes valores:
   - `nombre`: "Diablo"
   - `apellido`: "Qué Difícil"
   - `email`: "diablo.que.dificil@example.com"
3. Guarda el objeto `Estudiante` en la base de datos utilizando el método `save()` de Hibernate.
4. Verifica en la base de datos que el nuevo registro ha sido insertado correctamente.

**Objetivo del ejercicio:**  
Aprender a realizar una inserción básica de datos utilizando Hibernate y verificar que los datos se hayan guardado correctamente en la base de datos.

# Ejercicio 2: Inserción de Múltiples Registros

**Enunciado:**
Extiende la clase `Estudiante` para agregar un nuevo atributo:
- `edad` (int)

1. Inserta tres registros de estudiantes en la base de datos con los siguientes datos:
   - Estudiante 1: `nombre = "Ana"`, `apellido = "García"`, `email = "ana.garcia@example.com"`, `edad = 20`
   - Estudiante 2: `nombre = "Luis"`, `apellido = "Martínez"`, `email = "luis.martinez@example.com"`, `edad = 22`
   - Estudiante 3: `nombre = "Pedro"`, `apellido = "Sánchez"`, `email = "pedro.sanchez@example.com"`, `edad = 21`
2. Utiliza un solo método `save()` para insertar los tres registros en la base de datos, asegurándote de que los tres se inserten en la misma transacción.
3. Verifica que los tres registros han sido insertados correctamente utilizando consultas SQL o una herramienta de administración de bases de datos.

**Objetivo del ejercicio:**  
Aprender a insertar múltiples registros en una transacción y verificar que todos los registros se hayan insertado correctamente en la base de datos.


# Ejercicio 3: Inserción con Generación Automática del Identificador

**Enunciado:**
Modifica la clase `Estudiante` para que el atributo `id` sea generado automáticamente utilizando la anotación `@GeneratedValue(strategy = GenerationType.IDENTITY)`.

1. Inserta un nuevo registro en la base de datos con los siguientes datos:
   - `nombre = "Antonio"`
   - `apellido = "Lopez"`
   - `email = "antonio.lopez@example.com"`
2. Asegúrate de que el `id` de este nuevo registro sea generado automáticamente por la base de datos.
3. Imprime el valor del `id` asignado al objeto después de la inserción para confirmar que Hibernate ha generado correctamente el identificador.
4. Verifica en la base de datos que el nuevo registro tiene un `id` único asignado.

**Objetivo del ejercicio:**  
Aprender a configurar la generación automática de identificadores en Hibernate y verificar que la base de datos genera correctamente el identificador de la entidad.

# Ejercicio 4: Actualizar el Nombre de un Estudiante

**Enunciado:**  
Actualiza el nombre de un estudiante en la base de datos utilizando Hibernate.

1. Crea una clase de prueba que obtenga el primer registro de la tabla `Estudiante`.
2. Actualiza el atributo `nombre` de este estudiante a "Carlos".
3. Guarda los cambios en la base de datos utilizando `session.update()`.
4. Verifica en la base de datos que el registro ha sido actualizado correctamente.

**Objetivo del ejercicio:**  
Aprender a actualizar registros en la base de datos utilizando Hibernate.

# Ejercicio 5: Actualizar la Edad de un Estudiante

**Enunciado:**  
Actualiza la edad de un estudiante en la base de datos.

1. Crea una clase de prueba que obtenga un estudiante por su `id`.
2. Cambia el valor de `edad` de este estudiante a 30.
3. Utiliza `session.update()` para guardar los cambios.
4. Verifica que el cambio se haya guardado correctamente en la base de datos.

**Objetivo del ejercicio:**  
Aprender a actualizar un registro específico en la base de datos utilizando Hibernate.

# Ejercicio 6: Actualizar la Información de un Estudiante por Email

**Enunciado:**  
Actualiza los datos de un estudiante utilizando su `email`.

1. Crea una clase de prueba que recupere el estudiante cuya dirección de correo electrónico sea `juan.perez@example.com`.
2. Actualiza su `nombre`, `apellido` y `edad`.
3. Guarda los cambios utilizando `session.update()`.
4. Verifica en la base de datos que el estudiante con ese email ha sido actualizado.

**Objetivo del ejercicio:**  
Aprender a realizar actualizaciones en función de una condición en Hibernate.

# Ejercicio 7: Eliminar un Estudiante de la Base de Datos

**Enunciado:**  
Elimina un estudiante de la base de datos por su `id`.

1. Crea una clase de prueba que recupere un estudiante utilizando el `id` de un registro existente.
2. Elimina el objeto de la base de datos utilizando `session.delete()`.
3. Verifica que el estudiante ha sido eliminado correctamente utilizando una herramienta de administración de base de datos.

**Objetivo del ejercicio:**  
Aprender a eliminar registros de la base de datos utilizando Hibernate.

# Ejercicio 8: Eliminar Todos los Estudiantes con Edad Menor a 18

**Enunciado:**  
Elimina todos los estudiantes cuya edad sea menor a 18 años.

1. Crea una clase de prueba que utilice una consulta HQL para seleccionar todos los estudiantes con `edad < 18`.
2. Utiliza `session.delete()` para eliminar estos registros.
3. Verifica en la base de datos que los estudiantes han sido eliminados correctamente.

**Objetivo del ejercicio:**  
Aprender a eliminar registros que cumplan una condición utilizando Hibernate.

# Ejercicio 9: Obtener Todos los Registros de la Tabla Estudiante

**Enunciado:**  
Recupera todos los registros de la tabla `Estudiante` utilizando Hibernate.

1. Crea una consulta HQL que seleccione todos los registros de la tabla `Estudiante`.
2. Ejecuta la consulta y almacena los resultados en una lista de objetos `Estudiante`.
3. Imprime todos los registros en la consola.

**Objetivo del ejercicio:**  
Aprender a recuperar todos los registros de una tabla utilizando HQL.

# Ejercicio 10: Obtener Estudiante por ID

**Enunciado:**  
Obtén los datos de un estudiante por su `id`.

1. Crea una clase de prueba que recupere un estudiante de la base de datos utilizando el `id`.
2. Imprime los detalles del estudiante (nombre, apellido, edad, email) en la consola.

**Objetivo del ejercicio:**  
Aprender a recuperar un registro específico utilizando una clave primaria con Hibernate.

# Ejercicio 11: Obtener Estudiantes con Edad Mayor a 25

**Enunciado:**  
Obtén todos los estudiantes cuya edad sea mayor a 25 años.

1. Crea una consulta HQL que filtre los estudiantes con `edad > 25`.
2. Ejecuta la consulta y almacena los resultados en una lista de objetos `Estudiante`.
3. Imprime los resultados en la consola.

**Objetivo del ejercicio:**  
Aprender a realizar consultas con condiciones específicas utilizando HQL.

# Ejercicio 12: Obtener el Número de Registros en la Tabla Estudiante

**Enunciado:**  
Crea una consulta HQL para contar el número total de registros en la tabla `Estudiante`.

1. Utiliza el método `session.createQuery()` para crear una consulta HQL que cuente el número de registros en la tabla `Estudiante` utilizando la función `count(*)`.
2. Ejecuta la consulta y almacena el resultado.
3. Imprime el número de registros obtenidos en la consola.

**Objetivo del ejercicio:**  
Aprender a realizar consultas de agregación utilizando HQL para obtener el número total de registros en una tabla.

# Ejercicio 13: Obtener el Estudiante Más Joven

**Enunciado:**  
Obtén los datos del estudiante más joven en la tabla `Estudiante`.

1. Crea una consulta HQL que utilice la función `min(edad)` para obtener el estudiante con la edad más baja.
2. Ejecuta la consulta y almacena el resultado.
3. Imprime los detalles del estudiante más joven en la consola.

**Objetivo del ejercicio:**  
Aprender a realizar consultas de agregación utilizando HQL para obtener el registro con el valor mínimo de un atributo.

# Ejercicio 14: Crear un Repositorio Básico para Estudiantes

**Enunciado:**  
Crea una clase `EstudianteRepository` que encapsule las operaciones CRUD para la entidad `Estudiante`.

1. Implementa los métodos `guardarEstudiante`, `obtenerEstudiantePorId`, `actualizarEstudiante` y `eliminarEstudiante` en el repositorio.
2. Asegúrate de que el repositorio utiliza una instancia de `SessionFactory` correctamente configurada.
3. Crea una clase de prueba que:
   - Guarde un nuevo estudiante en la base de datos.
   - Obtenga y actualice el nombre del estudiante.
   - Elimine al estudiante por su `id`.
4. Verifica cada operación en la base de datos utilizando una herramienta de administración de bases de datos.

**Objetivo del ejercicio:**  
Aprender a implementar un repositorio básico para manejar operaciones CRUD y organizar el acceso a la base de datos de manera más estructurada.


# Ejercicio 15: Agregar un Método Personalizado al Repositorio

**Enunciado:**  
Extiende la clase `EstudianteRepository` para incluir un método que obtenga todos los estudiantes con una edad mayor a 20 años.

1. Implementa el método `obtenerEstudiantesConEdadMayorA(int edad)` en el repositorio.
2. Utiliza HQL para realizar la consulta.
3. Crea una clase de prueba que:
   - Inserte tres estudiantes con edades de 18, 21 y 25 años.
   - Obtenga e imprima en la consola los estudiantes con edad mayor a 20 años.
4. Verifica los resultados en la base de datos.

**Objetivo del ejercicio:**  
Aprender a implementar métodos personalizados en un repositorio utilizando HQL.

# Ejercicio 16: Crear una Relación 1-N entre Empresa y Estudiante

**Enunciado:**  
Modela una relación 1-N donde una **Empresa** puede tener varios **Estudiantes** asociados como practicantes.

1. Define la entidad `Empresa` con los siguientes atributos:
   - `id` (clave primaria)
   - `nombre` (nombre de la empresa)
   - Una lista de objetos `Estudiante` como relación 1-N.
2. Modifica la clase `Estudiante` para incluir una referencia a la clase `Empresa` mediante una relación `@ManyToOne`.
3. Inserta una empresa llamada "TechCorp" con tres estudiantes asociados.
4. Verifica que los registros se han insertado correctamente en la base de datos, y que cada estudiante está asociado con la empresa "TechCorp".

**Objetivo del ejercicio:**  
Comprender cómo modelar y persistir relaciones 1-N en Hibernate.

# Ejercicio 17: Consultar Estudiantes por Empresa

**Enunciado:**  
Realiza una consulta para obtener todos los estudiantes asociados a una empresa específica.

1. Agrega un método `obtenerEstudiantesPorEmpresa(String nombreEmpresa)` en una clase `EmpresaRepository`.
2. Utiliza HQL para realizar la consulta basada en el nombre de la empresa.
3. Crea una clase de prueba que:
   - Inserte una empresa con dos estudiantes asociados.
   - Consulte e imprima en la consola los nombres de los estudiantes asociados a esa empresa.
4. Verifica los resultados en la base de datos.

**Objetivo del ejercicio:**  
Aprender a consultar datos relacionados en una relación 1-N utilizando HQL.

# Ejercicio 18: Eliminar un Estudiante de una Empresa

**Enunciado:**  
Elimina un estudiante de una empresa manteniendo la integridad de la relación.

1. Crea un método `eliminarEstudianteDeEmpresa(int empresaId, int estudianteId)` en `EmpresaRepository`.
2. Recupera la empresa y el estudiante, elimina al estudiante de la lista de la empresa y de la base de datos.
3. Crea una clase de prueba que:
   - Inserte una empresa con tres estudiantes asociados.
   - Elimine a uno de los estudiantes.
   - Verifique que el estudiante eliminado ya no está en la base de datos ni en la lista de estudiantes de la empresa.
4. Comprueba que los cambios se han realizado correctamente en la base de datos.

**Objetivo del ejercicio:**  
Aprender a manejar la eliminación de entidades en relaciones 1-N y mantener la consistencia de los datos.

