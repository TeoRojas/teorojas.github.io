---
layout: default
title: UD01. Gestión de la información almacenada en Ficheros. Ejercicios.
permalink: /acceso-a-datos/ud01/ejercicios/
author: Teo Rojas
date: Septiembre 2024
abstract: Sinopsis de la unidad 01
---

# Índice

1. [Ejercicio: Gestión de Información en Ficheros XML](#1-ejercicio-gestión-de-información-en-ficheros-xml)
   - [1.1. Descripción del Ejercicio](#11-descripción-del-ejercicio)
      - [Requisitos Generales](#requisitos-generales)
      - [Estructura del Fichero XML](#estructura-del-fichero-xml)
2. [Ejercicio: Sistema de Gestión de Contactos en Ficheros XML](#2-ejercicio-sistema-de-gestión-de-contactos-en-ficheros-xml)
   - [2.1. Descripción del Ejercicio](#21-descripción-del-ejercicio)
      - [Requisitos Generales](#requisitos-generales-1)
      - [Estructura del Fichero XML](#estructura-del-fichero-xml-1)
3. [Ejercicio: Sistema de Gestión de Productos en Ficheros XML](#3-ejercicio-sistema-de-gestión-de-productos-en-ficheros-xml)
   - [3.1. Descripción del Ejercicio](#31-descripción-del-ejercicio)
      - [Requisitos Generales](#requisitos-generales-2)
      - [Estructura del Fichero XML](#estructura-del-fichero-xml-2)
4. [Rúbrica](#4-rúbrica)
   - [4.1. Criterios de Evaluación](#41-criterios-de-evaluación)
   - [4.2. Rúbrica de Evaluación](#42-rúbrica-de-evaluación)
   - [4.3. Notas para la Defensa](#43-notas-para-la-defensa)
   - [4.4. Instrucciones Adicionales](#44-instrucciones-adicionales)


# 1. Ejercicio: Gestión de Información en Ficheros XML

**Objetivo:** Desarrollar una aplicación en Java que gestione información almacenada en ficheros XML, permitiendo la lectura, escritura y conversión de datos. Los alumnos deberán defender su trabajo y la funcionalidad de la aplicación en clase.

## 1.1. Descripción del Ejercicio

1. **Requisitos Generales:**
   - Crear un programa que permita gestionar una lista de libros en un fichero XML.
   - La aplicación deberá permitir al usuario realizar las siguientes operaciones:
     - **Agregar un nuevo libro**: El usuario debe ingresar el título, autor y año de publicación de un libro, que se almacenará en un fichero XML.
     - **Listar todos los libros**: La aplicación deberá leer el fichero XML y mostrar todos los libros almacenados en la consola.
     - **Modificar un libro**: El usuario podrá seleccionar un libro de la lista y modificar su información (título, autor o año de publicación).
     - **Eliminar un libro**: Permitir al usuario eliminar un libro de la lista.
     - **Exportar a otro formato**: Ofrecer la opción de exportar la lista de libros a un formato de texto plano (por ejemplo, CSV).
   - La aplicación deberá manejar adecuadamente las excepciones y proporcionar mensajes de error claros.

2. **Estructura del Fichero XML:**
   - La estructura del fichero XML deberá ser la siguiente:

   ```xml
   <libros>
      <libro>
            <titulo>Título del libro</titulo>
            <autor>Autor del libro</autor>
            <año>2024</año>
      </libro>
      <!-- Más libros -->
   </libros>
   ```

# 2. Ejercicio: Sistema de Gestión de Contactos en Ficheros XML

**Objetivo:** Desarrollar una aplicación en Java que gestione información de contactos almacenada en un fichero XML. La aplicación permitirá al usuario realizar operaciones de adición, búsqueda, modificación y eliminación de contactos, así como exportar los datos a otros formatos.

## 2.1. Descripción del Ejercicio

1. **Requisitos Generales:**
   - Crear un programa que permita gestionar una lista de contactos en un fichero XML.
   - La aplicación deberá permitir al usuario realizar las siguientes operaciones:
     - **Agregar un nuevo contacto**: El usuario debe ingresar el nombre, número de teléfono y dirección de un contacto, que se almacenará en un fichero XML.
     - **Buscar un contacto**: Permitir al usuario buscar un contacto por nombre y mostrar su información (número de teléfono y dirección).
     - **Modificar un contacto**: El usuario podrá seleccionar un contacto de la lista y modificar su información (nombre, teléfono o dirección).
     - **Eliminar un contacto**: Permitir al usuario eliminar un contacto de la lista.
     - **Exportar a otro formato**: Ofrecer la opción de exportar la lista de contactos a un formato de texto plano (por ejemplo, CSV).
   - La aplicación deberá manejar adecuadamente las excepciones y proporcionar mensajes de error claros.

2. **Estructura del Fichero XML:**
   - La estructura del fichero XML deberá ser la siguiente:

   ```xml
   <contactos>
      <contacto>
            <nombre>Nombre del contacto</nombre>
            <telefono>123456789</telefono>
            <direccion>Dirección del contacto</direccion>
      </contacto>
      <!-- Más contactos -->
   </contactos>
   ```

# 3. Ejercicio: Sistema de Gestión de Productos en Ficheros XML

**Objetivo:** Desarrollar una aplicación en Java que gestione información de productos almacenada en un fichero XML. La aplicación permitirá al usuario realizar operaciones de adición, búsqueda, modificación y eliminación de productos, así como exportar los datos a otros formatos.

## 3.1. Descripción del Ejercicio

1. **Requisitos Generales:**
   - Crear un programa que permita gestionar una lista de productos en un fichero XML.
   - La aplicación deberá permitir al usuario realizar las siguientes operaciones:
     - **Agregar un nuevo producto**: El usuario debe ingresar el nombre del producto, precio y cantidad en stock, que se almacenará en un fichero XML.
     - **Buscar un producto**: Permitir al usuario buscar un producto por nombre y mostrar su información (precio y cantidad en stock).
     - **Modificar un producto**: El usuario podrá seleccionar un producto de la lista y modificar su información (precio o cantidad en stock).
     - **Eliminar un producto**: Permitir al usuario eliminar un producto de la lista.
     - **Exportar a otro formato**: Ofrecer la opción de exportar la lista de productos a un formato de texto plano (por ejemplo, CSV).
   - La aplicación deberá manejar adecuadamente las excepciones y proporcionar mensajes de error claros.

2. **Estructura del Fichero XML:**
   - La estructura del fichero XML deberá ser la siguiente:

   ```xml
   <productos>
      <producto>
            <nombre>Nombre del producto</nombre>
            <precio>19.99</precio>
            <cantidad>50</cantidad>
      </producto>
      <!-- Más productos -->
   </productos>
   ```

# 4. Rúbrica
- **CEa**: Se han utilizado clases para la gestión de ficheros y directorios.
- **CEb**: Se han valorado las ventajas y los inconvenientes de las distintas formas de acceso.
- **CEc**: Se han utilizado clases para recuperar información almacenada en un fichero XML.
- **CEd**: Se han utilizado clases para almacenar información en un fichero XML.
- **CEe**: Se han utilizado clases para convertir a otro formato información contenida en un fichero XML.
- **CEf**: Se han previsto y gestionado las excepciones.
- **CEg**: Se han probado y documentado las aplicaciones desarrolladas.

**El criterio CEg inluye la defensa, presentación y documentación y valdrá un 35% de la nota final de este RA,** el resto de puntuación se repartirá equitativamente entre los CEs restantes.

**Documentación:**
   - Incluir comentarios en el código para explicar la lógica y las decisiones de diseño.
   - Crear un documento de diseño que describa la estructura de la aplicación, cómo interactúa con el fichero XML y cualquier decisión importante que se haya tomado.

## 4.1. Rúbrica de Evaluación

| Criterio de Evaluación       | Puntuación (0-5) | Observaciones |
|------------------------------|-------------------|---------------|
| **CEa**: Clases de gestión de ficheros |                   |               |
| **CEb**: Evaluación de formas de acceso |                   |               |
| **CEc**: Recuperación de información XML |                   |               |
| **CEd**: Almacenamiento de información XML |                   |               |
| **CEe**: Conversión de formato XML |                   |               |
| **CEf**: Manejo de excepciones |                   |               |
| **CEg**: Pruebas y documentación |                   |               |

**Total: /40 puntos**

## 4.2. Notas para la Defensa
- Cada alumno deberá presentar su trabajo, explicando la funcionalidad de la aplicación, la estructura del código y las decisiones de diseño.
- Se evaluará la claridad y organización de la presentación, así como la capacidad para responder preguntas y defender su enfoque.

## 4.3. Instrucciones Adicionales
- Los estudiantes deben entregar su código fuente y la documentación en pdf de **un solo ejercicio** en la tarea de Moodle habilitada a tal efecto.
- La defensa del ejercicio tendrá lugar en clase, donde cada alumno dispondrá de 5 minutos para presentar su trabajo y 5 minutos aproximadamente para responder preguntas.

