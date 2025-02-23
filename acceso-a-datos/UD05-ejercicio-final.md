---
layout: default
title: UD05. Desarrollo de aplicaciones que gestionan bases de datos nativas XML.
permalink: /acceso-a-datos/ud05/ejercicio-final/
author: Teo Rojas
date: Febrero 2025
abstract:
---


# Ejercicio Práctico: Gestión de Base de Datos Nativas XML para la Gestión de Bibliotecas

**Objetivo:**  
Desarrollar una aplicación (por ejemplo, en Java) que gestione información almacenada en una base de datos nativa XML (utilizando, por ejemplo, BaseX o eXist‑DB) y que permita realizar consultas (CRUD), administrar colecciones y manipular documentos XML. Adicionalmente, se deberá incluir un análisis que valore las ventajas e inconvenientes de utilizar una base de datos nativa XML.

**Instrucciones:**
La aplicación a desarrollar deberá cubrir los siguientes puntos, los cuales responden a cada uno de los criterios de evaluación establecidos en el RA5:

1. **Valoración teórica (CEa):**
Elaborar un informe en el que se expliquen y comparen las ventajas e inconvenientes de utilizar una base de datos nativa XML en contraposición a los modelos relacional u objeto‑relacional. Se debe incluir un análisis de aspectos como la flexibilidad en la gestión de datos semiestructurados, la optimización de consultas mediante XQuery/XPath y las posibles limitaciones en rendimiento o consumo de espacio.

2. **Instalación del gestor de base de datos (CEb):**
Seleccionar e instalar un gestor de bases de datos nativas XML (por ejemplo, BaseX). Se deberá documentar el proceso de instalación (incluyendo capturas de pantalla, comandos o pasos realizados) para evidenciar que el gestor se ha instalado correctamente.

3. **Configuración del gestor (CEc):**
Realizar la configuración inicial del gestor instalado. Esto incluye ajustar parámetros básicos (como el puerto de conexión, opciones de almacenamiento o seguridad) según la documentación del sistema. Se debe documentar la configuración aplicada.

4. **Desarrollo de consultas sobre la base de datos (CEd):**
Implementar en la aplicación la capacidad de ejecutar consultas **CRUD** utilizando XQuery o XPath. Para ello, se debe disponer de un conjunto de datos XML (por ejemplo, un catálogo de libros de una biblioteca) y desarrollar funcionalidades que permitan extraer información relevante (como la búsqueda de libros por autor, por género o por año de publicación).

5. **Gestión de colecciones (CEf):**
Incluir en la aplicación funcionalidades para añadir y eliminar colecciones en la base de datos XML. Por ejemplo, se podrá crear una colección para cada sección de la biblioteca (como ficción, no ficción, infantil, etc.) y disponer de opciones para gestionar (crear o borrar) dichas colecciones.

6. **Manipulación de documentos XML (CEg):**
Desarrollar funcionalidades que permitan añadir, modificar y eliminar documentos XML dentro de la base de datos. Por ejemplo, la aplicación deberá posibilitar la incorporación de nuevos registros de libros, la actualización de información existente (como cambios en el título o en el autor) y la eliminación de documentos cuando sea necesario.

7. **Pruebas y documentación:**
Ejecutar pruebas que demuestren el correcto funcionamiento de cada una de las funcionalidades implementadas (consultas, gestión de colecciones y manipulación de documentos). Finalmente, se deberá preparar una presentación o informe final en el que se expliquen el funcionamiento de la aplicación, se resuman los resultados de las pruebas realizadas y se discutan los desafíos encontrados y las soluciones adoptadas.

# Rúbrica

Se recuerda que la puntuación de la defensa/exposición tendrá un peso especial y se considerará el aspecto más importante de la evaluación final (encasillado como parte del CEg). La calificación se expresará en una escala de 1 a 5 para cada criterio, donde 1 es "insuficiente" y 5 "excelente". A continuación se muestra una tabla con la rúbrica por cada criterio evaluado:

| Criterio de Evaluación                                                                                     | Pts (0-5) | Observaciones |
|------------------------------------------------------------------------------------------------------------|------------------|---------------|
| **CEa**: Se han valorado las ventajas e inconvenientes de utilizar una base de datos nativa XML.             |                  |               |
| **CEb**: Se ha instalado el gestor de base de datos.                                                       |                  |               |
| **CEc**: Se ha configurado el gestor de base de datos.                                                     |                  |               |
| **CEd**: Se ha establecido la conexión con la base de datos.                                               |                  |               |
| **CEe**: Se han desarrollado aplicaciones que efectúan consultas sobre el contenido de la base de datos.      |                  |               |
| **CEf**: Se han añadido y eliminado colecciones de la base de datos.                                       |                  |               |
| **CEg**: Se han desarrollado aplicaciones para añadir, modificar y eliminar documentos XML de la base de datos. |                  |               |


**Total: /40 puntos**


> Nota: La entrega final deberá incluir en un único archivo ZIP, nombrado con el nombre del alumno y la coletilla "RA05", tanto las diapositivas en formato PDF como todos los archivos de código que se estimen necesarios para la presentación. La fecha límite de entrega es el miércoles 5 de marzo a las 23:59, y las exposiciones se llevarán a cabo los jueves 6, lunes 10 y martes 11.
