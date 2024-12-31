---
layout: default
title: UD03. Los esquemas relacionales y su transformación.
permalink: /bases-de-datos/ud03/teoria/
author: Teo Rojas
date: Noviembre 2024
abstract: Sinopsis de la unidad 03
---

# Índice
1. [Introducción](#1-introducción)

<!--
# Índice

2. [Diseño de Bases de Datos](#2-diseño-de-bases-de-datos)  
   2.1. [Fase de Análisis: Especificación de Requisitos Software (E.R.S.)](#21-fase-de-análisis-especificación-de-requisitos-software-ers)  
   2.2. [Fase 1 del Diseño: Diseño Conceptual – Modelo Entidad/Relación (E/R)](#22-fase-1-del-diseño-diseño-conceptual--modelo-entidadrelación-er)  
   2.3. [Fase 2 del Diseño: Diseño Lógico – Modelo Relacional](#23-fase-2-del-diseño-diseño-lógico--modelo-relacional)  
   2.4. [Fase 3 del Diseño: Diseño Físico – Modelo Físico](#24-fase-3-del-diseño-diseño-físico--modelo-físico)  
3. [Entidades](#3-entidades)  
   3.1. [Tipos de Entidades](#31-tipos-de-entidades)  
4. [Atributos](#4-atributos)  
    4.1. [Atributos y su Significado](#41-atributos-y-su-significado)  
    4.2. [Tipos de Atributos](#42-tipos-de-atributos)  
    &emsp;&emsp;4.2.1. [Atributos Identificadores de Entidad (Clave Primaria o Clave Principal)](#421-atributos-identificadores-de-entidad-clave-primaria-o-clave-principal)  
    &emsp;&emsp;4.2.2. [Atributos Descriptores de Entidad](#422-atributos-descriptores-de-entidad)  
    &emsp;&emsp;4.2.3. [Atributos Opcionales](#423-atributos-opcionales)  
    &emsp;&emsp;4.2.4. [Atributos Derivados](#424-atributos-derivados)  
    &emsp;&emsp;4.2.5. [Atributos Multivaluados](#425-atributos-multivaluados)  
    &emsp;&emsp;4.2.6. [Atributos Compuestos](#426-atributos-compuestos)  
    &emsp;&emsp;4.2.7. [Atributos Discriminadores o Discriminantes](#427-atributos-discriminadores-o-discriminantes)  
    4.2.8. [Tipos de Atributos, resumen](#428-tipos-de-atributos-resumen)  
5. [Relaciones](#5-relaciones)  
   5.1. [Representación Gráfica de Relaciones](#51-representación-gráfica-de-relaciones)  
   5.2. [Grado de una Relación](#52-grado-de-una-relación)  
   5.3. [Cardinalidad en una Relación](#53-cardinalidad-en-una-relación)  
   5.4. [Participación](#54-participación)  
   5.5. [Cardinalidad de Relaciones no Binarias](#55-cardinalidad-de-relaciones-no-binarias)  
   5.6. [Atributos Propios de una Relación](#56-atributos-propios-de-una-relación)  
   5.7. [Dependencias e Interrelaciones](#57-dependencias-e-interrelaciones)  
6. [Redundancia](#6-redundancia)  
   6.1. [Atributos Derivados (o Calculados)](#61-atributos-derivados-o-calculados)  
   6.2. [Interrelaciones Redundantes](#62-interrelaciones-redundantes)  
7. [El Modelo E/R Extendido (EER)](#7-el-modelo-er-extendido-eer)  
   7.1. [Superentidad (Supertipo)](#71-superentidad-supertipo)  
   7.2. [Subentidad (Subtipo)](#72-subentidad-subtipo)  
   7.3. [Ejemplo](#73-ejemplo)  
   7.4. [Generalización y Especialización](#74-generalización-y-especialización)  
   7.5. [Restricciones de Generalización y Especialización](#75-restricciones-de-generalización-y-especialización)  
   &emsp;&emsp;7.5.1. [Especialización TOTAL SIN Solapamiento](#751-especialización-total-sin-solapamiento)  
   &emsp;&emsp;7.5.2. [Especialización PARCIAL SIN Solapamiento](#752-especialización-parcial-sin-solapamiento)  
   &emsp;&emsp;7.5.3. [Especialización TOTAL CON Solapamiento](#753-especialización-total-con-solapamiento)  
   &emsp;&emsp;7.5.4. [Especialización PARCIAL CON Solapamiento](#754-especialización-parcial-con-solapamiento)  
   7.6. [Cardinalidades en las Restricciones de Especialización](#76-cardinalidades-en-las-restricciones-de-especialización)  
   7.7. [Restricciones de las Relaciones](#77-restricciones-de-las-relaciones)  
   &emsp;&emsp;7.7.1. [Restricción de Exclusividad](#771-restricción-de-exclusividad)  
   &emsp;&emsp;7.7.2. [Restricción de Exclusión](#772-restricción-de-exclusión)  
   &emsp;&emsp;7.7.3. [Restricción de Inclusividad](#773-restricción-de-inclusividad)  
   &emsp;&emsp;7.7.4. [Restricción de Inclusión](#774-restricción-de-inclusión)  
-->


# 1. Introducción a los esquemas relacionales

El **esquema relacional** es la representación formal de la estructura de una base de datos en el modelo relacional. Es el resultado de transformar el modelo conceptual, generalmente expresado en un diagrama Entidad-Relación (E/R), en una estructura que pueda implementarse en un sistema de gestión de bases de datos relacional (SGBDR).

El esquema relacional define cómo se almacenan, organizan y manipulan los datos en la base de datos, estableciendo las tablas, los campos, las relaciones entre ellas y las restricciones de integridad necesarias para garantizar la consistencia y validez de los datos.

## 1.1. ¿Qué es un esquema relacional?

Un **esquema relacional** es la descripción de la estructura de una base de datos en términos de:
- **Tablas** (o relaciones): Representan las entidades o conceptos principales del modelo conceptual.
- **Columnas** (o atributos): Representan las propiedades o características de las tablas.
- **Relaciones** (o asociaciones): Definen las conexiones lógicas entre diferentes tablas.

Cada tabla en un esquema relacional tiene:
- Un nombre único que la identifica.
- Un conjunto de atributos, donde cada atributo tiene un nombre y un dominio (tipo de dato permitido).
- Una o más claves primarias, que identifican de forma única cada fila de la tabla.
- Opcionalmente, claves foráneas, que establecen relaciones con otras tablas.

En términos simples, un esquema relacional actúa como un **mapa estructurado de la base de datos** que define cómo se organizan los datos y cómo interactúan entre sí.

## 1.2. Componentes de un esquema relacional: tablas, campos y relaciones

### **Tablas**
- Son la representación de las entidades principales del modelo conceptual.
- Contienen filas (o tuplas), que representan instancias de la entidad.
- Ejemplo: Una tabla llamada `Empleado` podría tener filas que representen a cada empleado en la empresa.

### **Campos (o columnas)**
- Representan las características o atributos de la entidad.
- Cada columna tiene un nombre único dentro de la tabla y pertenece a un dominio específico.
- Ejemplo: En la tabla `Empleado`, las columnas podrían ser `ID_Empleado`, `Nombre`, `Apellido`, `Departamento`.

### **Relaciones**
- Establecen las conexiones lógicas entre diferentes tablas.
- Se representan mediante claves foráneas, que actúan como un enlace entre las tablas.
- Ejemplo: Una relación entre las tablas `Empleado` y `Departamento` podría indicar en qué departamento trabaja cada empleado.


### Ejemplo práctico:
- **Modelo E/R:** Una entidad llamada `Empleado` tiene atributos como `ID_Empleado`, `Nombre`, `Apellido`, `Cargo`, `Sueldo`, `Nacimiento`, `Sexo`, `Estado Civil`. 
- **Esquema relacional:** Se crea una tabla llamada `Empleado` con columnas `ID_Empleado`, `Nombre`, `Apellido`, `Cargo`, `Sueldo`, `Nacimiento`, `Sexo`, `Estado Civil`.

**Tabla: Empleado**

| **ID_Empleado** | Nombre        | Apellido      | Cargo       | Sueldo  | Nacimiento   | Sexo | Estado Civil |
|-------------|---------------|---------------|-------------|---------|--------------|------|--------------|
| 001         | María         | López         | Gerente     | 45,000€ | 1985-03-12   | F    | Casada       |
| 002         | Juan          | Fernández     | Analista    | 38,000€ | 1990-07-24   | M    | Soltero      |
| 003         | Sofía         | García        | Vendedora   | 32,000€ | 1995-05-16   | F    | Soltera      |

**Descripción:**

1. **ID_Empleado:** Identificador único del empleado.
2. **Nombre:** Nombre del empleado.
3. **Apellido:** Apellido del empleado.
4. **Cargo:** Posición o rol del empleado en la empresa.
5. **Sueldo:** Salario anual del empleado.
6. **Nacimiento:** Fecha de nacimiento del empleado.
7. **Sexo:** Género del empleado (F para Femenino, M para Masculino).
8. **Estado Civil:** Estado civil actual del empleado.

En el **Modelo Relacional**, una **RELACIÓN** se refiere únicamente a la definición de la estructura de una tabla. Esto incluye su **nombre** y la lista de **atributos** que la forman. Una forma de representar esta definición podría ser la siguiente:

![Modelo Relacional](/bases-de-datos/imgs/ud03/ud03_MR_e01.svg)

Para este caso, se obrendrá el siguiente esquema relacional:
- **Empleado** *([ID_Empleado](#), Nombre, Apellido, Cargo, Sueldo, Nacimiento, Sexo, Estado Civil)*

Para identificar de manera única un registro dentro de una tabla, se utiliza la **clave primaria** o **clave principal**. 

Es posible que en una relación existan varias combinaciones de atributos que permitan distinguir de forma unívoca una fila. Estas combinaciones se denominan **claves candidatas**. Sin embargo, de todas las claves candidatas, se seleccionará una para que funcione como **clave primaria**.

Un punto importante es que los atributos que forman parte de la clave primaria no pueden contener valores nulos, lo que garantiza la unicidad y la consistencia de los datos en la tabla.

# 2. Elementos y Propiedades del Modelo Relacional

## Relación (Tabla)

En el modelo relacional, las **relaciones** representan las entidades sobre las que se desea almacenar información en la base de datos. Una relación está compuesta por:

- **Filas**: También llamadas **registros** o **tuplas**, representan cada ocurrencia de la entidad.
- **Columnas**: Conocidas como **atributos** o **campos**, corresponden a las propiedades de la entidad.

Siendo estrictos, una relación incluye únicamente los atributos (columnas) y no las tuplas.

## Propiedades de las Relaciones

Las relaciones tienen las siguientes características clave:

1. Cada relación tiene un **nombre único**, distinto del nombre de cualquier otra relación en la base de datos.
2. En una relación, no puede haber dos atributos con el mismo nombre.
3. El **orden de los atributos** no importa; no están ordenados.
4. Las tuplas son **únicas**; no puede haber tuplas duplicadas. (Al menos deben diferenciarse por la clave principal).
5. El **orden de las tuplas** tampoco importa; no están ordenadas.

## Tipos de Claves

- **Clave Candidata**: Es un atributo (o conjunto de atributos) que identifica de manera única una tupla. Cualquiera de estas claves podría ser elegida como clave principal.
- **Clave Principal**: Es la clave candidata seleccionada para identificar las tuplas de manera única.
- **Clave Alternativa**: Son las claves candidatas que no fueron seleccionadas como clave principal.

## Reglas de Integridad

- Una **clave principal** no puede contener valores nulos, lo que garantiza la **integridad de la entidad**.
- El **dominio de un atributo** define el conjunto de valores que dicho atributo puede asumir.

## Clave Externa o Foránea

La **clave externa** (también llamada clave ajena) es un atributo o conjunto de atributos que forman la clave principal de otra relación. Cumple las siguientes condiciones:

- Los valores en la clave externa deben coincidir con valores existentes en la clave principal correspondiente en otra tabla.
- Esto asegura la **integridad referencial**, es decir, que los datos relacionados entre tablas sean válidos y consistentes.

# 3. Transformación del modelo E/R al modelo relacional

La transformación del modelo Entidad-Relación (E/R) al modelo relacional es un proceso fundamental para implementar una base de datos diseñada conceptualmente en un sistema de gestión de bases de datos. Este proceso consiste en convertir las entidades, atributos, relaciones y restricciones definidas en el modelo E/R en tablas, columnas, claves y reglas que representen correctamente la información en el modelo relacional.

## 3.1. Reglas básicas para transformar entidades

El proceso general de transformación se lleva a cabo siguiendo estos pasos principales:

1. **Identificar las entidades y convertirlas en tablas:** Cada entidad del modelo E/R se transforma en una tabla en el modelo relacional.
2. **Definir los atributos:** Los atributos de cada entidad se convierten en columnas de la tabla correspondiente.
3. **Establecer claves primarias:** Se selecciona un atributo o combinación de atributos como clave primaria para cada tabla.
4. **Transformar las relaciones:** Se crean nuevas tablas o columnas para representar las relaciones entre entidades, dependiendo de su cardinalidad.
5. **Añadir restricciones:** Las restricciones del modelo E/R, como claves foráneas, unicidad y restricciones de integridad, se aplican en el modelo relacional.

## 3.2. Reglas para transformar relaciones Uno a Uno (1:1)

En las relaciones uno a uno, el proceso de transformación **dependerá del valor de la participación mínima** asociada a cada tipo de entidad en la interrelación.

1. **Ambas participaciones mínimas con valor 1**: cuando en una relación binaria ambas entidades tienen una cardinalidad mínima igual a 1, significa que ambas participan de manera obligatoria. En este caso, **no es necesario crear una tabla adicional** aparte de las que ya representan a las entidades. La relación se implementa incorporando la clave primaria de una de las tablas como clave foránea en la otra, permitiendo así mantener la conexión entre ambas entidades.

2. **Una participación mínima tiene valor 0**: cuando en una relación binaria solo una de las entidades tiene una participación mínima igual a 0 (es decir, participa de forma opcional), **no es necesario crear una tabla adicional**. En este caso, la clave primaria de la entidad con participación obligatoria se incorpora como clave foránea en la tabla de la entidad con participación opcional.

3. **Ambas participaciones mínimas con valor 0**: cuando en una relación binaria ambas entidades tienen una cardinalidad mínima igual a 0 (es decir, ambas participan de forma opcional), **sí es necesario crear una tabla adicional**. En esta nueva tabla, las claves primarias de ambas entidades se incluyen como claves foráneas, y una de ellas se designa como clave primaria de la nueva tabla y la otra como clave única (UQ).

## 3.3. Reglas para transformar relaciones Uno a Muchos (1:N)

1. **Participación mínima 0 en el lado 1**: cuando en una relación 1:N la entidad del lado con cardinalidad máxima 1 tiene una participación mínima igual a 0, **sí es necesario crear una tabla adicional**. En esta nueva tabla, las claves primarias de ambas entidades se incluyen como claves foráneas, y **la clave primaria de la entidad del lado N se define como la clave principal** de la nueva tabla.

2. **Participación mínima 1 en el lado 1**: cuando en una relación 1:N la entidad del lado con cardinalidad máxima 1 tiene una participación mínima igual a 1, **no se crea una tabla adicional**. En este caso, la clave primaria de la entidad del lado 1 se incorpora como clave foránea en la tabla de la entidad que participa con cardinalidad máxima muchos (N).

## 3.4. Reglas para transformar relaciones Muchos a Muchos (N:M)

En una relación N:M, **siempre se crea una tabla adicional**. Esta tabla está compuesta por los atributos identificadores de las entidades que participan en la relación, así como por todos los atributos asociados al tipo de interrelación. La clave primaria de esta tabla se define como la combinación de todas las claves primarias de las entidades participantes en la relación.

## 3.5. Reglas para transformar relaciones de dependencia

1. **Débil en existencia**: en el caso de una relación débil por existencia, **no es necesario crear una tabla adicional**. Para implementar esta relación, **la clave primaria de la entidad del lado 1**(la entidad fuerte) **se transfiere como clave foránea a la tabla de la entidad del lado N** (la entidad débil). 

2. **Débil en identificación**: en el caso de una relación débil por identificación, **no es necesario crear una tabla adicional**. Para implementar esta relación en la base de datos, la clave primaria de la entidad del lado 1 (la entidad fuerte) se transfiere a la tabla de la entidad del lado N (débil) como **foránea y principal**. Esto asegura que cada instancia de la entidad débil esté identificada de manera única en el contexto de su asociación con la entidad fuerte.

## 3.6. Reglas para transformar relaciones N-arias

En una relación N-aria, además de las tablas correspondientes a cada entidad participante, **se genera una tabla adicional** para representar la relación. La clave primaria de esta nueva tabla se construye combinando las claves primarias de las entidades que participan con cardinalidad máxima "Muchos". Estas claves primarias también se marcan como claves foráneas para garantizar la integridad referencial. Las claves primarias de las entidades con cardinalidad distinta de "Muchos" se incluyen en la tabla de la relación únicamente como claves foráneas, sin formar parte de la clave primaria.

## 3.7. Reglas para transformar relaciones reflexivas

En las relaciones reflexivas, el proceso de transformación a tabla es similar al de las relaciones binarias. Sin embargo, un aspecto fundamental a tener en cuenta es que no puede haber dos campos con el mismo nombre en una misma tabla. Por ello, al propagar las claves foráneas en relaciones reflexivas, es necesario renombrarlas para evitar conflictos. A continuación, se explica cómo transformar estas relaciones según sus cardinalidades y participaciones.

### 3.7.1. Relaciones reflexivas 1:1 
En las relaciones reflexivas 1:1, si ambas entidades participan con cardinalidad máxima igual a 1, el tratamiento sigue siendo similar a las relaciones binarias 1:1. Si ambas participaciones mínimas son iguales a 1, **no es necesario crear una tabla adicional**. La clave primaria de la entidad se incluye como clave foránea dentro de la misma tabla, renombrada para evitar conflictos. 

### 3.7.2. Relaciones reflexivas 1:N con participación mínima 0 en el lado 1
Cuando la participación mínima es 0 en el lado 1, **se debe generar una tabla adicional** para representar la relación reflexiva. Esta tabla incluirá la clave primaria de la entidad participante en dos campos distintos: uno de ellos actuará como clave primaria y clave foránea simultáneamente, mientras que el otro se utilizará únicamente como clave foránea. Además, la tabla podrá contener cualquier atributo propio de la relación reflexiva, y éste no será foráneo.

### 3.7.3. Relaciones reflexivas 1:N con participación mínima 1 en el lado 1
En una relación reflexiva 1:N con participación mínima igual a 1 en el lado 1, **no se genera una tabla** adicional. En este caso, la clave primaria de la entidad se incluye como clave foránea dentro de la misma tabla para representar la relación reflexiva. Este campo debe ser renombrado, por ejemplo, como `ClaveForanea`, para evitar duplicidades. 

### 3.7.4. Relaciones reflexivas N:M
En las relaciones reflexivas N:M, **siempre es necesario generar una tabla adicional** para representar la relación. Esta tabla incluirá dos claves foráneas que referencian la clave primaria de la entidad participante. Estas claves deben ser renombradas, por ejemplo, como `Clave1` y `Clave2`, para evitar conflictos dentro de la tabla. Además, la tabla puede contener los atributos propios de la relación reflexiva, si los hubiera. La clave primaria de esta tabla será la combinación de las dos claves foráneas, lo que garantiza que cada par de relaciones reflexivas se represente de forma única.

## 3.8. Reglas para transformar relaciones jerárquicas

- En el caso de jerarquías, se debe crear una tabla para la entidad supertipo, salvo que tenga tan pocos atributos que resulte más práctico no representarla como una tabla independiente. 
- Si una entidad subtipo no tiene atributos propios ni está relacionada con ninguna otra entidad, desaparece del modelo. Sin embargo, si la entidad subtipo tiene algún atributo, se creará una tabla para ella. Si no posee una clave primaria propia, heredará la clave de la entidad supertipo.
- Cuando la relación es exclusiva, el atributo que define la jerarquía se incorpora en la tabla de la entidad supertipo. No obstante, si se ha optado por crear una tabla independiente para cada una de las entidades subtipo, no es necesario incluir este atributo en la tabla de la entidad supertipo.