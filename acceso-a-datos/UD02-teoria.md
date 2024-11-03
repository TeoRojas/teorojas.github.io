---
layout: default
title: UD02. Desarrollo de aplicaciones que gestionan información en bases de datos relacionales.
permalink: /acceso-a-datos/ud02/teoria/
author: Teo Rojas
date: Noviembre 2024
abstract: Sinopsis de la unidad 02
---

# Índice
1. [Introducción](#1-introducción)
   - Importancia de las bases de datos relacionales en el desarrollo de aplicaciones
2. [Desfase Objeto-Relacional](#2-desfase-objeto-relacional)
   - Concepto de desfase objeto-relacional
   - Implicaciones en el diseño de aplicaciones
3. [Gestores de Bases de Datos Embebidos e Independientes](#3-gestores-de-bases-de-datos-embebidos-e-independientes)
   - Definición y características de los gestores de bases de datos embebidos
   - Ventajas y desventajas de los gestores de bases de datos independientes
   - Comparativa entre gestores de bases de datos embebidos e independientes
4. [Protocolos de Acceso a Bases de Datos y Conectores](#4-protocolos-de-acceso-a-bases-de-datos-y-conectores)
   - Tipos de conectores y su funcionamiento
   - Conector JDBC
   - Ventajas e inconvenientes de utilizar conectores (CEa)
   - Selección del conector adecuado para la aplicación (CEc)
5. [Instalación de Gestores de Bases de Datos](#5-instalación-de-gestores-de-bases-de-datos)
   - Instalación de MySQL y H2
   - Instalación con Maven de MySQL y H2

<!--

6. [Establecimiento de Conexiones](#6-establecimiento-de-conexiones)
   - Métodos para establecer conexiones con bases de datos (CEd)
   - Conexión a la base de datos MySQL
   - Conexión a la base de datos H2
   - Ejemplo práctico de conexión a una base de datos
7. [Definición de Objetos para Almacenamiento de Resultados](#7-definición-de-objetos-para-almacenamiento-de-resultados)
   - Estructura de los objetos destinados a almacenar resultados de operaciones (CEg)
   - Eliminación de objetos una vez finalizada su función (CEi)
8. [Ejecución de Sentencias SQL](#8-ejecución-de-sentencias-sql)
   - Crear Statement - repaso Data Definition Language
   - Statement crear tabla
   - Statement buscar datos
   - Ejecución de sentencias de descripción de datos
   - Ejecución de sentencias de modificación de datos (CEf)
   - Ejecución de consultas (CEh)
   - Utilización del resultado de una consulta
   - SQL Injection y cómo prevenirlo
   - PreparedStatement - Solución para SQL Injection
9. [Procedimientos Almacenados](#9-procedimientos-almacenados)
   - Concepto y uso de procedimientos almacenados en bases de datos
   - Ejemplo de ejecución de procedimientos almacenados
10. [Trabajo con Entidades y Repositorios](#10-trabajo-con-entidades-y-repositorios)
    - Entities y repositorio Persona
    - Repositorio Dirección
    - Join entre Persona y Dirección
11. [Gestión de Transacciones](#11-gestión-de-transacciones)
    - Importancia de la gestión de transacciones (CEj)
    - Métodos para manejar transacciones en aplicaciones

-->

# 1. Introducción

Las bases de datos relacionales son fundamentales en el desarrollo de aplicaciones modernas, ya que permiten almacenar, gestionar y recuperar grandes volúmenes de información de manera eficiente y estructurada. Comprender cómo interactuar con estos sistemas es crucial, ya que su correcta utilización puede determinar el éxito de una aplicación.

La estructura de las bases de datos relacionales se basa en tablas, lo que facilita la organización de datos complejos y su relación. Esta modelación permite una representación clara y lógica de la información. Además, a través de restricciones y claves primarias y foráneas, se garantiza la integridad de los datos, evitando la duplicación y asegurando que las relaciones entre diferentes conjuntos de datos se mantengan.

El lenguaje SQL (Structured Query Language) proporciona una forma poderosa y flexible para consultar y manipular datos, permitiendo a los desarrolladores realizar búsquedas complejas, filtrados y combinaciones de datos de manera sencilla. Otro aspecto clave es el manejo de transacciones, que permite agrupar operaciones y ejecutarlas como una unidad atómica. Esto es esencial para mantener los datos en un estado consistente, especialmente en entornos con múltiples usuarios.

Los sistemas de bases de datos relacionales están diseñados para manejar grandes volúmenes de datos y pueden escalar a medida que crece la demanda, lo que los hace ideales para aplicaciones empresariales y web. Gracias a los estándares establecidos, también ofrecen interoperabilidad, permitiendo su uso en diferentes plataformas y lenguajes de programación, lo que facilita la integración de sistemas y el intercambio de información.

En resumen, las bases de datos relacionales son herramientas cruciales en el desarrollo de aplicaciones que requieren una gestión eficiente y efectiva de datos. Comprender sus principios y cómo interactuar con ellas es esencial para cualquier desarrollador que busque construir aplicaciones robustas y escalables.

# 2. Desfase Objeto-Relacional

El **desfase objeto-relacional** se refiere a la **discrepancia** que existe entre la forma en que se representan los datos en un **modelo orientado a objetos** y la forma en que se almacenan en una **base de datos relacional**. Esta diferencia puede presentar **desafíos significativos** al desarrollar aplicaciones que deben interactuar con bases de datos, ya que las estructuras de datos en el código y en la base de datos no siempre coinciden.

En un sistema orientado a objetos, los datos se organizan en **objetos** que encapsulan tanto la **información** como el **comportamiento**. Estos objetos pueden tener **herencia**, **polimorfismo** y otras características que permiten una mayor flexibilidad y reutilización del código. Sin embargo, las bases de datos relacionales están estructuradas en **tablas**, **filas** y **columnas**, lo que no permite directamente la representación de estos conceptos complejos.

Este desfase implica que al diseñar aplicaciones, los desarrolladores deben considerar varias cuestiones importantes. Primero, se necesita un **mapeo claro** entre las clases de objetos y las tablas de la base de datos, lo que puede requerir la creación de **clases de entidad** específicas que reflejen la estructura de la base de datos. Segundo, los desarrolladores deben ser conscientes de las **implicaciones de rendimiento**, ya que las consultas y la manipulación de datos pueden volverse más complejas al tener que traducir entre estos dos paradigmas.

Además, el desfase objeto-relacional puede llevar a problemas de **rendimiento** y **sobrecarga** en las aplicaciones. La conversión entre objetos y registros de la base de datos puede ser costosa en términos de **tiempo de procesamiento**, especialmente en sistemas que requieren interacciones frecuentes con la base de datos. Por lo tanto, es esencial **optimizar** el diseño de la base de datos y el código de la aplicación para minimizar estos impactos.

En conclusión, el desfase objeto-relacional es un aspecto crítico en el desarrollo de aplicaciones que utilizan bases de datos relacionales. **Entender cómo manejar este desfase** y diseñar soluciones efectivas es fundamental para crear aplicaciones **eficientes** y **escalables** que aprovechen al máximo las capacidades de ambos paradigmas.

# 3. Gestores de Bases de Datos Embebidos e Independientes

Los **gestores de bases de datos** son componentes esenciales en el desarrollo de aplicaciones que manejan información de manera efectiva. En este contexto, se distinguen dos tipos principales de gestores: los **embebidos** y los **independientes**.

Un **gestor de base de datos embebido** es aquel que se integra directamente en la aplicación. Esto significa que la base de datos se incluye como parte del **código de la aplicación**, y se ejecuta en el mismo proceso. Esta arquitectura tiene varias ventajas. Por un lado, la **facilidad de instalación** es notable, ya que no se requiere una configuración de servidor separada. Además, se puede lograr un rendimiento óptimo debido a que el acceso a la base de datos es más rápido al estar dentro del mismo contexto de ejecución. Sin embargo, las limitaciones pueden surgir en términos de **escalabilidad**, ya que este enfoque puede no ser adecuado para aplicaciones que requieren acceso concurrente de múltiples usuarios.

Por otro lado, un **gestor de base de datos independiente** opera como un **servidor de bases de datos** separado que puede ser accedido por múltiples aplicaciones y usuarios a través de una **red**. Este modelo permite una mayor **escalabilidad** y **flexibilidad**, ya que varios clientes pueden conectarse al mismo servidor de base de datos simultáneamente. Además, los gestores independientes suelen ofrecer características avanzadas de **gestión** y **seguridad**. Sin embargo, su configuración y mantenimiento pueden ser más complejos y requerir más recursos.

## Ventajas y Desventajas de los Gestores de Bases de Datos Independientes

**Ventajas**:
- **Escalabilidad**: Pueden manejar un gran número de conexiones y transacciones, lo que los hace ideales para aplicaciones con múltiples usuarios.
- **Gestión y Seguridad**: Ofrecen características robustas de gestión, seguridad y respaldo de datos, protegiendo la integridad de la información.
- **Acceso Concurrente**: Permiten que varias aplicaciones y usuarios accedan a los mismos datos simultáneamente.

**Desventajas**:
- **Complejidad**: La instalación y configuración pueden ser más complicadas y requerir conocimientos técnicos avanzados.
- **Requerimientos de Recursos**: Necesitan más recursos del sistema, tanto en términos de hardware como de administración.
- **Latencia**: Puede haber un tiempo de latencia adicional debido a la comunicación a través de la red.

## Comparativa entre Gestores de Bases de Datos Embebidos e Independientes

| Característica                      | Gestores Embebidos                          | Gestores Independientes                     |
|-------------------------------------|--------------------------------------------|--------------------------------------------|
| **Instalación**                     | Sencilla, sin necesidad de configuración adicional | Compleja, requiere configuración de servidor |
| **Rendimiento**                     | Alto, acceso rápido debido a la integración | Variable, depende de la red y la carga    |
| **Escalabilidad**                   | Limitada, adecuada para aplicaciones de un solo usuario | Alta, ideal para aplicaciones multiusuario |
| **Gestión y Seguridad**             | Básica, depende de la aplicación          | Avanzada, con características específicas   |
| **Acceso Concurrente**              | Limitado a una instancia                   | Permite múltiples accesos simultáneos     |

Al elegir entre un gestor de base de datos embebido o independiente, es fundamental considerar las **necesidades específicas** de la aplicación. Factores como el **tamaño** de la base de datos, el número de **usuarios concurrentes** y las **requerimientos de rendimiento** son aspectos clave que influirán en la decisión. También es importante evaluar las características del gestor en términos de **soporte** para transacciones, **seguridad** y facilidad de **integración** con otras tecnologías.

En resumen, los gestores de bases de datos embebidos e independientes desempeñan un papel crucial en la arquitectura de las aplicaciones. Comprender sus diferencias y características permite a los desarrolladores tomar decisiones informadas que se alineen con los objetivos y requisitos del proyecto.

# 4. Protocolos de Acceso a Bases de Datos y Conectores

La interacción con bases de datos relacionales requiere el uso de **protocolos de acceso** y **conectores** que permiten a las aplicaciones comunicarse de manera efectiva con los sistemas de gestión de bases de datos (SGBD). Estos conectores son fundamentales para la ejecución de operaciones CRUD (Crear, Leer, Actualizar, Eliminar) en las bases de datos.

## Tipos de Conectores y su Funcionamiento

Los conectores son interfaces que permiten la comunicación entre una aplicación y un SGBD. Existen diferentes tipos de conectores, cada uno diseñado para facilitar la conexión y el intercambio de información de manera eficiente. Los más comunes incluyen:

- **Conectores nativos**: Diseñados específicamente para un SGBD particular, ofrecen el mejor rendimiento y acceso a características avanzadas del sistema.
- **Conectores universales**: Permiten conectarse a múltiples bases de datos utilizando una sola API, aunque pueden no aprovechar todas las funcionalidades específicas de un SGBD.
- **Conectores de acceso a datos**: Proporcionan una capa de abstracción para interactuar con diferentes fuentes de datos, simplificando el acceso a la información.

## Conector JDBC

El **Java Database Connectivity (JDBC)** es un API fundamental en Java que permite a las aplicaciones conectarse y ejecutar consultas en bases de datos relacionales. JDBC proporciona un conjunto estandarizado de interfaces y clases que los desarrolladores pueden utilizar para interactuar con cualquier SGBD que tenga un controlador JDBC disponible.

### Funcionamiento de JDBC

1. **Cargar el controlador**: El primer paso es cargar el controlador JDBC correspondiente al SGBD.
2. **Establecer la conexión**: Utilizando la clase `DriverManager`, se establece una conexión a la base de datos mediante una URL de conexión.
3. **Crear un objeto Statement**: Para ejecutar consultas SQL, se crea un objeto `Statement` o `PreparedStatement`.
4. **Ejecutar consultas**: Se ejecutan las consultas SQL y se procesan los resultados devueltos.
5. **Cerrar la conexión**: Es fundamental cerrar la conexión y liberar recursos para evitar filtraciones de memoria.

## Ventajas e Inconvenientes de Utilizar Conectores (CEa)

### Ventajas:

- **Interoperabilidad**: Los conectores permiten que las aplicaciones se comuniquen con múltiples bases de datos, facilitando el intercambio de datos.
- **Abstracción**: Ofrecen una capa de abstracción que simplifica el manejo de operaciones con bases de datos, haciendo que el código sea más legible y mantenible.
- **Facilidad de uso**: Muchas bibliotecas y API proporcionan conectores que simplifican la conexión y las operaciones con bases de datos, permitiendo a los desarrolladores centrarse en la lógica de negocio.

### Inconvenientes:

- **Rendimiento**: Dependiendo del conector utilizado, puede haber una sobrecarga de rendimiento en comparación con conexiones nativas.
- **Dependencia de controladores**: La disponibilidad y compatibilidad del conector dependen de los controladores, que deben ser actualizados regularmente para mantenerse al día con las versiones del SGBD.
- **Limitaciones de características**: Algunos conectores pueden no soportar todas las características avanzadas de un SGBD, lo que puede limitar la funcionalidad de la aplicación.

## Selección del Conector Adecuado para la Aplicación (CEc)

Al elegir un conector para una aplicación, es importante considerar varios factores:

1. **Compatibilidad**: Asegúrate de que el conector sea compatible con el SGBD que se utilizará.
2. **Rendimiento**: Evalúa el rendimiento del conector en pruebas de carga para asegurar que satisface las necesidades de la aplicación.
3. **Funcionalidad**: Verifica que el conector soporte las características necesarias, como transacciones, manejo de errores y características específicas del SGBD.
4. **Facilidad de uso**: Considera la simplicidad de integración y uso del conector, así como la calidad de la documentación y el soporte de la comunidad.

La correcta elección del conector es crucial para el éxito de la aplicación, ya que impacta en el rendimiento, la escalabilidad y la facilidad de mantenimiento a largo plazo. 

# 5. Instalación de Gestores de Bases de Datos

La **instalación de gestores de bases de datos** es un paso crucial para el desarrollo de aplicaciones que gestionan información almacenada en bases de datos relacionales. Estos sistemas permiten almacenar, organizar y recuperar datos de manera eficiente, y su correcto funcionamiento es fundamental para el éxito de cualquier aplicación que dependa de datos estructurados.

Existen diferentes tipos de gestores de bases de datos, cada uno con sus propias características, ventajas y desventajas. Entre los más utilizados se encuentran **MySQL** y **H2**, cada uno de los cuales ofrece soluciones adaptadas a diferentes necesidades de desarrollo. 

MySQL es un gestor de bases de datos relacional de código abierto ampliamente utilizado en aplicaciones web y sistemas empresariales. Su popularidad se debe a su robustez, escalabilidad y a la gran cantidad de recursos y soporte disponible. Por otro lado, H2 es un gestor de bases de datos embebido que se destaca por su ligereza y velocidad, lo que lo convierte en una opción ideal para aplicaciones que requieren una integración sencilla y un bajo consumo de recursos.

Este apartado abordará tanto el proceso de **instalación manual** de estos gestores, como la instalación **automática utilizando herramientas de gestión de dependencias como Maven**. Al finalizar esta sección, los estudiantes tendrán un conocimiento práctico de cómo instalar y configurar estos gestores de bases de datos, lo que les permitirá prepararse para las siguientes etapas del desarrollo de aplicaciones que requieren interacción con bases de datos.
