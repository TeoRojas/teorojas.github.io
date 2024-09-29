---
layout: default
title: UD02. Diseño de Bases de Datos, el modelo conceptual.
permalink: /bases-de-datos/ud02/teoria/
author: Teo Rojas
date: Septiembre 2024
abstract: Sinopsis de la unidad 02
---

# Índice
1. [Introducción](#1-introducción)


# 1. Introducción

El diseño de bases de datos es una disciplina fundamental en el desarrollo de sistemas de información, y uno de los pilares clave para asegurar que una base de datos sea eficiente, escalable y funcional. Antes de implementar una base de datos, es necesario crear un diseño conceptual que permita entender y estructurar la información que será gestionada. En este tema, nos adentraremos en el **modelo Entidad-Relación (E/R)**, una herramienta ampliamente utilizada para diseñar la estructura lógica de una base de datos.

El **modelo E/R** proporciona una representación visual y abstracta de los datos mediante entidades, atributos y relaciones, lo que facilita la comprensión de cómo se conectan y organizan los diferentes elementos dentro del sistema. A través de este modelo, se pueden identificar claramente las entidades principales de un dominio de información, sus propiedades (**atributos**) y cómo se interrelacionan entre sí mediante diferentes tipos de **relaciones**.

Este tema no solo cubrirá los conceptos básicos del modelo E/R, sino que también explorará con profundidad la naturaleza de las relaciones, desde su **grado** hasta su **cardinalidad**, y cómo se representan y gestionan las **relaciones no binarias**. Además, abordaremos los **atributos propios de las relaciones**, los conceptos de **dependencia** e **interrelación**, y la importancia de evitar la **redundancia** en los datos, un aspecto crucial para mantener la eficiencia y coherencia en el sistema.

A medida que avancemos, también exploraremos el **modelo E/R Extendido (EER)**, que añade nuevas capacidades al modelo básico, permitiendo representar estructuras más complejas y restricciones adicionales. Este modelo es especialmente útil cuando se trabaja con dominios más sofisticados que requieren mayor precisión y detalle en la estructura de la información.

Finalmente, el tema concluirá con una **guía práctica** para la construcción de diagramas E/R, una herramienta esencial para cualquier diseñador de bases de datos, y varios **ejercicios** que ayudarán a consolidar los conocimientos adquiridos. Con todo ello, los estudiantes estarán equipados para diseñar modelos conceptuales robustos y sólidos que sirvan como la base de futuras implementaciones en bases de datos relacionales.


# 2. Diseño de Bases de Datos

El diseño de una base de datos es un proceso fundamental para estructurar la información de manera eficiente y asegurar que responda a las necesidades de los usuarios. Este proceso implica identificar todos los datos importantes relacionados con un problema específico a través de un análisis exhaustivo que permita determinar qué datos son esenciales y cuáles no lo son. Una vez identificados los datos clave, se crea un **esquema** que describe con precisión toda la información necesaria, similar a un plano que se elabora antes de construir un edificio.

El diseño de una base de datos suele seguir un proceso estructurado que va desde una etapa conceptual, en la que se modela la información de forma abstracta, hasta una fase física, en la que el diseño se implementa utilizando un Sistema Gestor de Bases de Datos (SGBD). A lo largo de este capítulo, exploraremos estas fases, entendiendo cómo cada una contribuye a crear una base de datos eficiente, organizada y sin redundancias.

## 2.1. Fase de Análisis: Especificación de Requisitos Software (E.R.S.)

Antes de comenzar con el diseño de la base de datos, es crucial entender las **necesidades** y **requisitos** del sistema. En esta etapa, los informáticos se reúnen con los usuarios y otras partes interesadas para recopilar la información necesaria, lo que resulta en un documento clave conocido como **Especificación de Requisitos Software (E.R.S.)**. Este documento describe de manera detallada qué información debe gestionar el sistema, cómo debe interactuar con los usuarios y qué reglas deben seguirse para asegurar que los datos sean precisos y consistentes.

El E.R.S. es la base sobre la cual se desarrollará el diseño de la base de datos, ya que define los requisitos de alto nivel que deben cumplirse. Este paso es crítico porque cualquier error o malentendido en esta etapa puede llevar a problemas durante las fases de diseño e implementación. Es aquí donde se definen las **entidades**, los **atributos** y las **relaciones** clave que formarán el esqueleto del modelo conceptual.

## 2.2. Fase 1 del Diseño: Diseño Conceptual – Modelo Entidad/Relación (E/R)

El **diseño conceptual** es la primera fase del diseño de la base de datos y se centra en representar la información de una manera que sea comprensible para usuarios no técnicos. En esta etapa, el objetivo es crear un **modelo abstracto** de la base de datos, que refleje los datos y las relaciones entre ellos sin entrar en detalles técnicos.

Para ello, se utiliza el **Modelo Entidad/Relación (E/R)**, que permite representar las entidades (objetos o conceptos que queremos modelar), sus atributos (propiedades o características) y las relaciones entre ellas. Este modelo es una herramienta visual que facilita la comprensión y permite a los diseñadores y usuarios asegurarse de que todos los datos necesarios están correctamente representados.

El modelo E/R se presenta en forma de diagramas, donde las entidades se representan como rectángulos, los atributos como óvalos, y las relaciones como líneas que conectan las entidades. Esta fase es crucial porque una buena representación conceptual reduce los problemas en las fases posteriores.

## 2.3. Fase 2 del Diseño: Diseño Lógico – Modelo Relacional

El **diseño lógico** es la segunda fase del proceso y aquí se traduce el diseño conceptual en un formato más técnico y orientado a la implementación. En este curso, utilizaremos el **Modelo Relacional**, que organiza la información en **tablas** (relaciones), donde cada columna representa un atributo de los datos y cada fila un registro.

El modelo lógico es más técnico que el diseño conceptual y está diseñado para que pueda ser implementado en un Sistema Gestor de Bases de Datos (SGBD). A través de esta etapa, los datos representados en el modelo E/R se convierten en tablas que pueden ser gestionadas por el SGBD, asegurando que todas las **entidades**, **atributos** y **relaciones** definidas se preserven correctamente.

El modelo relacional también introduce el concepto de **normalización**, un proceso que elimina la redundancia de datos y asegura la integridad referencial entre las tablas. La normalización es esencial para garantizar que la base de datos funcione de manera eficiente y sin inconsistencias.

## 2.4. Fase 3 del Diseño: Diseño Físico – Modelo Físico

El **diseño físico** es la última fase del proceso de diseño de bases de datos, y aquí se traduce el diseño lógico en un formato que puede ser implementado directamente en un SGBD. Esto implica decidir cómo se almacenarán los datos en el hardware, optimizar el acceso a los datos y seleccionar las estructuras de almacenamiento más adecuadas.

El diseño físico se implementa generalmente utilizando lenguajes de programación de bases de datos, como **SQL (Structured Query Language)**, que permite definir las tablas, establecer relaciones entre ellas, y manipular los datos mediante consultas, inserciones y actualizaciones. En este curso, aprenderemos a convertir el **Modelo Relacional** en un **Modelo Físico** utilizando SQL, lo que permitirá gestionar y manipular los datos de manera eficiente.

# 3. Entidades

Una **entidad** es cualquier cosa sobre la cual queremos almacenar información en la base de datos. Las entidades pueden ser personas, objetos, eventos o cualquier elemento relevante para el sistema. En un **diagrama Entidad/Relación (E/R)**, las entidades se representan gráficamente como **rectángulos** con un nombre en su interior. Cada entidad debe nombrarse solo una vez en el esquema conceptual, asegurando que no haya duplicación ni ambigüedad en la definición.

## Tipos de Entidades

Existen dos tipos principales de entidades: **entidades fuertes** y **entidades débiles**. La distinción entre estos dos tipos es fundamental para el diseño de bases de datos.

- **Entidades fuertes**: Son aquellas cuya existencia es **independiente** de otras entidades. Se representan gráficamente con un **rectángulo de borde simple**. Estas entidades tienen un identificador único, lo que permite diferenciarlas de otras entidades sin la necesidad de apoyarse en ninguna otra entidad.
- **Entidades débiles**: Son aquellas cuya existencia depende de la existencia de otra entidad, conocida como la **entidad propietaria**. Se representan con un **rectángulo de doble borde**. Las entidades débiles no tienen un identificador propio único y necesitan de una entidad fuerte para poder ser identificadas de manera única.

![Entidades Fuertes y Débiles](/bases-de-datos/imgs/ud02/ud02_img01_FuertesDebiles.png)

## Ejemplo de Entidad Fuerte y Débil

Para ilustrar la diferencia entre entidades fuertes y débiles, consideremos un ejemplo en el contexto de un banco:

- **Entidad Fuerte (Cliente de Banco)**: Un **Cliente de Banco** es una entidad fuerte. Tiene una existencia independiente y puede ser identificado por sí mismo mediante atributos como el número de identificación, el nombre completo, o un número de cliente único. Cada cliente es una entidad autónoma dentro del sistema, sin depender de ninguna otra entidad para su existencia.
  
- **Entidad Débil (Cuenta Bancaria)**: Una **Cuenta Bancaria** es una entidad débil porque su existencia depende de un **Cliente de Banco**. No puede ser identificada de manera única sin hacer referencia al cliente que la posee. Es decir, una cuenta bancaria solo tiene sentido en el contexto de un cliente específico; sin un cliente asociado, no puede existir ni ser identificada.

Este tipo de relación entre una entidad fuerte y una débil es común en sistemas que modelan situaciones en las que ciertos elementos no pueden existir de forma aislada.

## Resumen

En resumen, la diferencia clave entre una entidad fuerte y una entidad débil es que una **entidad fuerte** tiene una existencia independiente y se puede identificar de forma autónoma. En cambio, una **entidad débil** depende de otra entidad (la **entidad propietaria**) para su existencia y solo se puede identificar en el contexto de esa entidad. Siguiendo el ejemplo, un **Cliente de Banco** es una entidad fuerte, mientras que una **Cuenta Bancaria** es una entidad débil, ya que su existencia depende del cliente al que pertenece.


