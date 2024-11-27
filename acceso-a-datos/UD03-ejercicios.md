---
layout: default
title: UD03. Gestión de la persistencia de los datos con herramientas de mapeo objeto relacional (ORM). Ejercicios.
permalink: /acceso-a-datos/ud03/ejercicios/
author: Teo Rojas
date: Noviembre 2024
abstract:
---

# Índice

1. [Ejercicio Práctico 1: Inserción Básica de Datos](#ejercicio-1-inserción-básica-de-datos)
2. [Ejercicio Práctico 2: Inserción de Múltiples Registros](#ejercicio-2-inserción-de-múltiples-registros)
3. [Ejercicio Práctico 3: Inserción con Generación Automática del Identificador](#ejercicio-3-inserción-con-generación-automática-del-identificador)


### Ejercicio 1: Inserción Básica de Datos

**Enunciado:**
Crea una clase Java llamada `Estudiante` con los siguientes atributos:

- `id` (int, clave primaria)
- `nombre` (String)
- `apellido` (String)
- `email` (String)

1. Configura Hibernate en tu proyecto y asegúrate de que el archivo de configuración (`hibernate.cfg.xml`) esté correctamente configurado para conectarse a una base de datos de tu elección.
2. Crea una clase de prueba donde instancies un objeto de la clase `Estudiante` con los siguientes valores:
   - `nombre`: "Juan"
   - `apellido`: "Pérez"
   - `email`: "juan.perez@example.com"
3. Guarda el objeto `Estudiante` en la base de datos utilizando el método `save()` de Hibernate.
4. Verifica en la base de datos que el nuevo registro ha sido insertado correctamente.

**Objetivo del ejercicio:**  
Aprender a realizar una inserción básica de datos utilizando Hibernate y verificar que los datos se hayan guardado correctamente en la base de datos.

### Ejercicio 2: Inserción de Múltiples Registros

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


### Ejercicio 3: Inserción con Generación Automática del Identificador

**Enunciado:**
Modifica la clase `Estudiante` para que el atributo `id` sea generado automáticamente utilizando la anotación `@GeneratedValue(strategy = GenerationType.IDENTITY)`.

1. Inserta un nuevo registro en la base de datos con los siguientes datos:
   - `nombre = "Carlos"`
   - `apellido = "Lopez"`
   - `email = "carlos.lopez@example.com"`
2. Asegúrate de que el `id` de este nuevo registro sea generado automáticamente por la base de datos.
3. Imprime el valor del `id` asignado al objeto después de la inserción para confirmar que Hibernate ha generado correctamente el identificador.
4. Verifica en la base de datos que el nuevo registro tiene un `id` único asignado.

**Objetivo del ejercicio:**  
Aprender a configurar la generación automática de identificadores en Hibernate y verificar que la base de datos genera correctamente el identificador de la entidad.
