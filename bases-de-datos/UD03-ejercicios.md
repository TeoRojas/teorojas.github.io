---
layout: default
title: UD03. Los esquemas relacionales y su transformación. Ejercicios
permalink: /bases-de-datos/ud03/ejercicios/
author: Teo Rojas
date: Enero 2025
abstract: Sinopsis de la unidad 03
---

# Índice

1. [Ejercicio N1: Identificación de Formas Normales y Transformación](#ejercicio-n1-identificación-de-formas-normales-y-transformación)  
2. [Ejercicio N2: Normalización de Datos en Tablas Relacionales](#ejercicio-n2-normalización-de-datos-en-tablas-relacionales)  
3. [Ejercicio N3: Normalización de Datos en Tablas Relacionales](#ejercicio-n3-normalización-de-datos-en-tablas-relacionales)  
4. [Ejercicio N4: Normalización de Datos en Tablas Relacionales](#ejercicio-n4-normalización-de-datos-en-tablas-relacionales)  
5. [Ejercicio N5: Normalización de una Tabla de Órdenes](#ejercicio-n5-normalización-de-una-tabla-de-órdenes)  
6. [Ejercicio N6: Normalización de una Tabla de Usuarios](#ejercicio-n6-normalización-de-una-tabla-de-usuarios)  
7. [Ejercicio N7: Normalización de una Tabla de Facturas](#ejercicio-n7-normalización-de-una-tabla-de-facturas)  
8. [Ejercicio N8: Normalización de una Tabla de Citas Dentales](#ejercicio-n8-normalización-de-una-tabla-de-citas-dentales)  
9. [Ejercicio N9: Normalización de una Tabla de Órdenes](#ejercicio-n9-normalización-de-una-tabla-de-órdenes)  



# Ejercicio N1: Identificación de Formas Normales y Transformación

Este ejercicio consiste en analizar una tabla que almacena información sobre libros, sus autores y las direcciones de los autores. La clave primaria de la tabla es el campo `ISBN`, que identifica de forma única cada libro. Además, en el caso de que un campo como `Dirección` contenga el número y el nombre de la calle, se considera que ambos elementos forman parte del mismo valor y no pueden descomponerse más. El objetivo es determinar si la tabla cumple con las primeras tres reglas de la Normalización.

 > **Pista:** Es necesario verificar si todos los atributos no clave (`Título`, `Autor` y `Dirección`) cumplen con las reglas de la **Primera Forma Normal (1FN)**, comprobando si cada campo es atómico y no contiene valores compuestos, listas o conjuntos. También debe analizarse si existen **redundancias** en los datos, como información repetida que pueda dividirse en tablas adicionales. Después de verificar la 1FN, hay que comprobar si todos los atributos no clave dependen únicamente de la clave primaria (`ISBN`) para asegurar el cumplimiento de la **Segunda Forma Normal (2FN)**. Por último, deben identificarse posibles dependencias transitivas entre atributos no clave para determinar si la tabla está en la **Tercera Forma Normal (3FN)**. Si no se cumple alguna de estas formas normales, será necesario realizar las transformaciones oportunas, dividiendo la tabla en relaciones normalizadas que eliminen redundancias y dependencias indebidas.

A continuación, se presenta la tabla a analizar:

| [**ISBN**](#)          | **Título**                   | **Autor**           | **Dirección**          |
|--------------------|------------------------------|---------------------|------------------------|
| 1234567890123      | Introducción a SQL           | Laura Pérez         | Calle del Sol, 12      |
| 2345678901234      | Fundamentos de PostgreSQL    | José Martín         | Avenida Central, 45    |
| 3456789012345      | Dominando MySQL              | María Gómez         | Plaza Mayor, 18        |
| 4567890123456      | Aprende Oracle en 30 Días    | Carlos López        | Calle Luna, 7          |
| 5678901234567      | Diseño de Bases de Datos     | Laura Pérez         | Calle del Sol, 12      |
| 6789012345678      | Modelado E/R Avanzado        | Ana Torres          | Avenida Norte, 33      |
| 7890123456789      | Optimización de Consultas    | José Martín         | Avenida Central, 45    |
| 8901234567890      | Técnicas Avanzadas en SQL    | Carlos López        | Calle Luna, 7          |


# Ejercicio N2: Normalización de Datos en Tablas Relacionales

Este ejercicio propone trabajar con una tabla que almacena información sobre libros prestados, sus autores, editoriales y los datos de los lectores. Dependiendo del caso planteado, la clave primaria de la tabla variará, afectando la forma de analizar las dependencias y aplicar las reglas de normalización. En este caso, se analizará el escenario en el que la clave primaria está compuesta por los campos `CodLibro` y `DNILector`. La combinación de número de calle y nombre de la calle en una dirección se considera un valor atómico y no debe separarse.

 > **Pista:** En primer lugar, comprueba si la tabla cumple con las reglas de la **Primera Forma Normal (1FN)**, asegurándote de que cada celda contiene un único valor atómico y que no hay listas o valores compuestos. En segundo lugar, verifica si todos los atributos no clave (`Título`, `Autor`, `Editorial`, `NomLector`, `Teléfonos`, `FechaDev`) dependen completamente de la clave primaria compuesta (`CodLibro` y `DNILector`) para garantizar el cumplimiento de la **Segunda Forma Normal (2FN)**. Por último, identifica posibles dependencias transitivas, como si `NomLector` depende de `DNILector`, para determinar si la tabla cumple con la **Tercera Forma Normal (3FN)**. Si detectas que no se cumple alguna de estas formas normales, realiza las transformaciones necesarias para normalizar la tabla completamente.

A continuación, se presenta la tabla a analizar para este caso:

| [**CodLibro**](#) | **Título**                 | **Autor**         | **Editorial**        | [**DNILector**](#) | **NomLector**     | **Teléfonos**           | **FechaDev**  |
|--------------------|----------------------------|-------------------|----------------------|--------------------|-------------------|-------------------------|---------------|
| 2001              | Programación Avanzada      | Laura Torres      | Editorial Central    | 75879634Q         | Marcos García     | 600123456, 600654321    | 25/05/2023    |
| 2002              | Introducción a Java        | Juan López        | Ediciones Modernas   | 87965432L         | Ana Fernández     | 697654321               | 30/05/2023    |
| 2003              | Diseño de Algoritmos       | María Sánchez     | Libros Técnicos      | 75879634Q         | Marcos García     | 600123456, 600654321    | 15/06/2023    |
| 2004              | SQL desde Cero             | Carlos Martínez   | Bases y Datos        | 45678901H         | Laura Pérez       | 622987654               | 10/06/2023    |
| 2005              | Big Data para Principiantes| Ana López         | DataBooks            | 87965432L         | Ana Fernández     | 697654321               | 20/06/2023    |

# Ejercicio N3: Normalización de Datos en Tablas Relacionales

En este ejercicio se trabajará con la misma tabla que en el caso anterior, pero considerando ahora que la clave primaria de la tabla es únicamente el campo `CodLibro`. Esto afectará el análisis de las dependencias y las transformaciones necesarias para cumplir con las reglas de normalización. La combinación de número de calle y nombre de la calle en una dirección sigue considerándose un valor atómico y no debe separarse.

 > **Pista:** Comienza verificando si la tabla cumple con las reglas de la **Primera Forma Normal (1FN)**, asegurándote de que cada celda contiene un único valor atómico, sin listas o valores compuestos. A continuación, analiza si los atributos no clave (`Título`, `Autor`, `Editorial`, `DNILector`, `NomLector`, `Teléfonos`, `FechaDev`) dependen directamente de la clave primaria (`CodLibro`) para garantizar el cumplimiento de la **Segunda Forma Normal (2FN)**. Finalmente, identifica posibles dependencias transitivas entre los atributos no clave, como si `NomLector` depende de `DNILector`, para determinar si la tabla está en la **Tercera Forma Normal (3FN)**. Si encuentras que no se cumple alguna de estas formas normales, realiza las transformaciones necesarias para normalizar la tabla completamente.

A continuación, se presenta la tabla a analizar para este caso:

| [**CodLibro**](#) | **Título**                 | **Autor**         | **Editorial**        | **DNILector**     | **NomLector**     | **Teléfonos**           | **FechaDev**  |
|--------------------|----------------------------|-------------------|----------------------|-------------------|-------------------|-------------------------|---------------|
| 2001              | Programación Avanzada      | Laura Torres      | Editorial Central    | 75879634Q        | Marcos García     | 600123456, 600654321    | 25/05/2023    |
| 2002              | Introducción a Java        | Juan López        | Ediciones Modernas   | 87965432L        | Ana Fernández     | 697654321               | 30/05/2023    |
| 2003              | Diseño de Algoritmos       | María Sánchez     | Libros Técnicos      | 75879634Q        | Marcos García     | 600123456, 600654321    | 15/06/2023    |
| 2004              | SQL desde Cero             | Carlos Martínez   | Bases y Datos        | 45678901H        | Laura Pérez       | 622987654               | 10/06/2023    |
| 2005              | Big Data para Principiantes| Ana López         | DataBooks            | 87965432L        | Ana Fernández     | 697654321               | 20/06/2023    |

# Ejercicio N4: Normalización de Datos en Tablas Relacionales

En este ejercicio se trabajará con la misma tabla utilizada en los ejercicios anteriores, pero considerando ahora que la clave primaria de la tabla es el campo `DNILector`. Esto cambia el enfoque del análisis, ya que los datos de los lectores tendrán un peso central en la estructura de la tabla y en la evaluación de las dependencias. La combinación de número de calle y nombre de la calle en una dirección sigue considerándose un valor atómico y no debe separarse.

 > **Pista:** En primer lugar, verifica si la tabla cumple con las reglas de la **Primera Forma Normal (1FN)**, asegurándote de que cada celda contiene un único valor atómico, como en la columna `Teléfonos`, donde los valores múltiples deben separarse en filas individuales. Luego, analiza si los atributos no clave (`CodLibro`, `Título`, `Autor`, `Editorial`, `NomLector`, `Teléfonos`, `FechaDev`) dependen directamente de la clave primaria (`DNILector`) para determinar si se cumple la **Segunda Forma Normal (2FN)**. Por último, identifica si existen dependencias transitivas entre los atributos no clave, como si `Título` depende de `CodLibro`, para evaluar si la tabla cumple con la **Tercera Forma Normal (3FN)**. Si detectas que la tabla no cumple con alguna de estas formas normales, realiza las transformaciones necesarias para normalizarla completamente.

A continuación, se presenta la tabla a analizar para este caso:

| **CodLibro**     | **Título**                 | **Autor**         | **Editorial**        | [**DNILector**](#) | **NomLector**     | **Teléfonos**           | **FechaDev**  |
|--------------------|----------------------------|-------------------|----------------------|--------------------|-------------------|-------------------------|---------------|
| 2001              | Programación Avanzada      | Laura Torres      | Editorial Central    | 75879634Q         | Marcos García     | 600123456, 600654321    | 25/05/2023    |
| 2002              | Introducción a Java        | Juan López        | Ediciones Modernas   | 87965432L         | Ana Fernández     | 697654321               | 30/05/2023    |
| 2003              | Diseño de Algoritmos       | María Sánchez     | Libros Técnicos      | 75879634Q         | Marcos García     | 600123456, 600654321    | 15/06/2023    |
| 2004              | SQL desde Cero             | Carlos Martínez   | Bases y Datos        | 45678901H         | Laura Pérez       | 622987654               | 10/06/2023    |
| 2005              | Big Data para Principiantes| Ana López         | DataBooks            | 87965432L         | Ana Fernández     | 697654321               | 20/06/2023    |

# Ejercicio N5: Normalización de una Tabla de Órdenes

En este ejercicio se trabajará con una tabla que almacena información sobre órdenes de compra, incluyendo los datos de los clientes, los artículos solicitados, y las cantidades y precios de cada artículo. La clave primaria de la tabla es el campo `id_orden`, que identifica de forma única cada orden. El objetivo es analizar la estructura de la tabla para determinar si cumple con las reglas de normalización y, en caso contrario, aplicar las transformaciones necesarias para eliminar redundancias y dependencias indebidas.

 > **Pista:** Para comenzar, verifica si la tabla cumple con las reglas de la **Primera Forma Normal (1FN)**. Asegúrate de que cada celda contenga un único valor atómico y que no existan listas o valores compuestos. Luego, analiza si todos los atributos no clave (`Fecha`, `Id_Cliente`, `Cliente`, `Provincia`, `Id_Artículo`, `Artículo`, `Uds`, `Precio`) dependen únicamente de la clave primaria (`id_orden`) para garantizar el cumplimiento de la **Segunda Forma Normal (2FN)**. Por último, evalúa si existen dependencias transitivas entre atributos no clave, como si `Cliente` depende de `Id_Cliente` o si `Artículo` depende de `Id_Artículo`, para determinar si la tabla cumple con la **Tercera Forma Normal (3FN)**. Si identificas que la tabla no cumple con alguna de estas formas normales, realiza las transformaciones necesarias para dividirla en relaciones normalizadas que eliminen redundancias y dependencias indebidas.

A continuación, se presenta la tabla inicial para analizar:

| [**Id_orden**](#) | **Fecha**    | **Id_Cliente** | **Cliente** | **Provincia** | **Id_Artículo** | **Artículo** | **Uds** | **Precio** |
|--------------------|-------------|----------------|-------------------|---------------|--------------------|--------------------|------------------|------------|
| 2301              | 23/02/11    | 101            | Pablo             | Cádiz         | 3786              | Pendrive           | 3                | 35,00      |
| 2301              | 23/02/11    | 101            | Pablo             | Cádiz         | 4011              | Disco SSD          | 6                | 65,00      |
| 2301              | 23/02/11    | 101            | Pablo             | Cádiz         | 9132              | RAM DDR 8GB        | 8                | 34,75      |
| 2302              | 25/02/11    | 107            | Marta             | Madrid        | 5794              | Fuente             | 4                | 5,00       |
| 2303              | 27/02/11    | 110            | Pedro             | Sevilla       | 4011              | Disco SSD          | 2                | 65,00      |
| 2303              | 27/02/11    | 110            | Pedro             | Sevilla       | 3141              | Funda              | 2                | 10,00      |

# Ejercicio N6: Normalización de una Tabla de Usuarios

En este ejercicio se trabajará con una tabla que almacena información sobre usuarios y sus datos de contacto. La clave primaria de la tabla es el campo `CodUsuario`, que identifica de forma única a cada usuario. El objetivo es analizar la estructura de la tabla para determinar si cumple con las reglas de normalización, asegurándose de eliminar redundancias y dependencias indebidas.

A continuación, se presenta la tabla inicial para analizar:

| [**CodUsuario**](#) | **Email**                     | **Nombre**      | **Apellido**    | **Ciudad**     | **Provincia**  | **CP**     |
|----------------------|-------------------------------|-----------------|----------------|----------------|----------------|-----------|
| Usr001              | josemadrid@gmail.com          | José            | Madrid          | Cádiz          | Cádiz          | 11001     |
| Usr002              | sofiamartin@gmail.com         | Sofía           | Martín          | Sevilla        | Sevilla        | 41001     |
| Usr003              | juancastro@gmail.com          | Juan            | Castro          | Málaga         | Málaga         | 29001     |
| Usr004              | lauragarcia@gmail.com         | Laura           | García          | Cádiz          | Cádiz          | 11001     |
| Usr005              | carlosrodriguez@gmail.com     | Carlos          | Rodríguez       | Huelva         | Huelva         | 21001     |
| Usr006              | anagarcia@gmail.com           | Ana             | García          | Barbate        | Cádiz          | 11150     |




# Ejercicio N7: Normalización de una Tabla de Facturas

En este ejercicio se trabajará con una tabla que almacena información sobre facturas, los datos de los clientes que las generaron y los productos vendidos. La clave primaria de la tabla es el campo `Fac`, que identifica de forma única cada factura. El objetivo es analizar la estructura de la tabla para determinar si cumple con las reglas de normalización y, en caso contrario, aplicar las transformaciones necesarias para eliminar redundancias y dependencias indebidas. 

A continuación, se presenta la tabla inicial para analizar:

| [**Fac**](#) | **Fecha**    | **Cli** | **Nombre**       | **Dirección**          | **Ciudad**   | **Cod** | **Descripción** | **Cat**   | **PVP** | **Uds** |
|--------------|-------------|-----------|------------------|------------------------|--------------|---------|-----------------|-----------|---------|---------|
| F01          | 01/05/2023  | 101       | Laura Pérez      | Calle Sol, 15          | Cádiz        | 101     | Aspiradora      | Hogar     | 100     | 2       |
| F02          | 03/05/2023  | 102       | Juan López       | Calle Luna, 7          | Sevilla      | 102     | Smartphone      | Tecn.     | 800     | 1       |
| F03          | 04/05/2023  | 103       | María Sánchez    | Avenida Norte, 33      | Málaga       | 103     | Impresora       | Ofic.     | 150     | 3       |
| F04          | 04/05/2023  | 101       | Laura Pérez      | Calle Sol, 15          | Cádiz        | 104     | Plancha         | Hogar     | 50      | 1       |
| F05          | 06/05/2023  | 104       | Ana Torres       | Calle Mayor, 20        | Huelva       | 105     | Cafetera        | Hogar     | 70      | 2       |
| F06          | 07/05/2023  | 102       | Juan López       | Calle Luna, 7          | Sevilla      | 106     | Tablet          | Tecn.     | 500     | 1       |

# Ejercicio N8: Normalización de una Tabla de Citas Dentales

En este ejercicio se trabajará con una tabla que almacena información sobre citas en una clínica dental, incluyendo los datos de los empleados, dentistas, pacientes y las salas asignadas. La clave primaria de la tabla es el campo `CodEmpleado`, que identifica de forma única al empleado que atiende cada cita. Además, se establece que cada dentista puede estar en una sala diferente cada día, pero no cambia de sala durante el mismo día. El objetivo es analizar la estructura de la tabla para determinar si cumple con las reglas de normalización y, en caso contrario, aplicar las transformaciones necesarias para eliminar redundancias y dependencias indebidas. 

A continuación, se presenta la tabla inicial para analizar:


| [**CodEmpleado**](#) | **NombreDentista** | **CodPaciente** | **NombrePaciente** | **FechaCita** | **HoraCita** | **CodSala** |
|-----------------------|--------------------|-----------------|--------------------|---------------|-------------|-------------|
| E001                 | Dr. López         | P001            | Laura Pérez        | 01/12/2023    | 09:00       | S01         |
| E002                 | Dra. García       | P002            | Marcos Gómez       | 01/12/2023    | 10:00       | S02         |
| E001                 | Dr. López         | P003            | Ana Torres         | 01/12/2023    | 11:00       | S01         |
| E003                 | Dr. Martínez      | P004            | Juan Fernández     | 02/12/2023    | 09:30       | S03         |
| E004                 | Dra. Sánchez      | P005            | María García       | 02/12/2023    | 11:00       | S04         |
| E002                 | Dra. García       | P006            | Pedro Castillo     | 02/12/2023    | 12:30       | S02         |

# Ejercicio N9: Normalización de una Tabla de Órdenes

En este ejercicio se trabajará con una tabla que almacena información sobre órdenes de compra, incluyendo los datos de los clientes, los artículos solicitados, y las cantidades y precios de cada artículo. La clave primaria de la tabla es el campo `id_orden`, que identifica de forma única cada orden. El objetivo es analizar la estructura de la tabla para determinar si cumple con las reglas de normalización y, en caso contrario, aplicar las transformaciones necesarias para eliminar redundancias y dependencias indebidas.

A continuación, se presenta la tabla inicial para analizar:

| [**Id_orden**](#) | **Fecha**    | **Id_Cliente** | **Cliente** | **Provincia** | **Id_Artículo** | **Artículo** | **Uds** | **Precio** |
|--------------------|-------------|----------------|-------------------|---------------|--------------------|--------------------|------------------|------------|
| 2301              | 23/02/11    | 101            | Pablo             | Cádiz         | 3786              | Pendrive           | 3                | 35,00      |
| 2301              | 23/02/11    | 101            | Pablo             | Cádiz         | 4011              | Disco SSD          | 6                | 65,00      |
| 2301              | 23/02/11    | 101            | Pablo             | Cádiz         | 9132              | RAM DDR 8GB        | 8                | 34,75      |
| 2302              | 25/02/11    | 107            | Marta             | Madrid        | 5794              | Fuente             | 4                | 5,00       |
| 2303              | 27/02/11    | 110            | Pedro             | Sevilla       | 4011              | Disco SSD          | 2                | 65,00      |
| 2303              | 27/02/11    | 110            | Pedro             | Sevilla       | 3141              | Funda              | 2                | 10,00      |

