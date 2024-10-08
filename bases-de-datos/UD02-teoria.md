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
2. [Diseño de Bases de Datos](#2-diseño-de-bases-de-datos)
    1. [Fase de Análisis: Especificación de Requisitos Software (E.R.S.)](#21-fase-de-análisis-especificación-de-requisitos-software-ers)
    2. [Fase 1 del Diseño: Diseño Conceptual – Modelo Entidad/Relación (E/R)](#22-fase-1-del-diseño-diseño-conceptual--modelo-entidadrelación-er)
    3. [Fase 2 del Diseño: Diseño Lógico – Modelo Relacional](#23-fase-2-del-diseño-diseño-lógico--modelo-relacional)
    4. [Fase 3 del Diseño: Diseño Físico – Modelo Físico](#24-fase-3-del-diseño-diseño-físico--modelo-físico)
3. [Entidades](#3-entidades)
    1. [Tipos de Entidades](#tipos-de-entidades)
4. [Atributos](#4-atributos)
    1. [Atributos y su Significado](#41-atributos-y-su-significado)
    2. [Tipos de Atributos](#42-tipos-de-atributos)
        1. [Atributos Identificadores de Entidad (Clave Primaria o Clave Principal)](#421-atributos-identificadores-de-entidad-clave-primaria-o-clave-principal)
        2. [Atributos Descriptores de Entidad](#422-atributos-descriptores-de-entidad)
        3. [Atributos Opcionales](#423-atributos-opcionales)
        4. [Atributos Derivados](#424-atributos-derivados)
        5. [Atributos Multivaluados](#425-atributos-multivaluados)
        6. [Atributos Compuestos](#426-atributos-compuestos)
        7. [Atributos Discriminadores o Discriminantes](#427-atributos-discriminadores-o-discriminantes)
5. [Relaciones](#5-relaciones)
    1. [Representación Gráfica de Relaciones](#representación-gráfica-de-relaciones)
    2. [Grado de una Relación](#51-grado-de-una-relación)
    3. [Cardinalidad en una Relación](#52-cardinalidad-en-una-relación)
    4. [Participación](#participación)


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

![Entidades Fuertes y Débiles](/bases-de-datos/imgs/ud02/ud02_img01_fuertesDebiles.png)

## Ejemplo de Entidad Fuerte y Débil

Para ilustrar la diferencia entre entidades fuertes y débiles, consideremos un ejemplo en el contexto de un banco:

- **Entidad Fuerte (Cliente de Banco)**: Un **Cliente de Banco** es una entidad fuerte. Tiene una existencia independiente y puede ser identificado por sí mismo mediante atributos como el número de identificación, el nombre completo, o un número de cliente único. Cada cliente es una entidad autónoma dentro del sistema, sin depender de ninguna otra entidad para su existencia.
  
- **Entidad Débil (Cuenta Bancaria)**: Una **Cuenta Bancaria** es una entidad débil porque su existencia depende de un **Cliente de Banco**. No puede ser identificada de manera única sin hacer referencia al cliente que la posee. Es decir, una cuenta bancaria solo tiene sentido en el contexto de un cliente específico; sin un cliente asociado, no puede existir ni ser identificada.

Este tipo de relación entre una entidad fuerte y una débil es común en sistemas que modelan situaciones en las que ciertos elementos no pueden existir de forma aislada.

## Resumen

En resumen, la diferencia clave entre una entidad fuerte y una entidad débil es que una **entidad fuerte** tiene una existencia independiente y se puede identificar de forma autónoma. En cambio, una **entidad débil** depende de otra entidad (la **entidad propietaria**) para su existencia y solo se puede identificar en el contexto de esa entidad. Siguiendo el ejemplo, un **Cliente de Banco** es una entidad fuerte, mientras que una **Cuenta Bancaria** es una entidad débil, ya que su existencia depende del cliente al que pertenece.

# 4. Atributos

Los **atributos** son componentes fundamentales en un modelo Entidad-Relación (E/R) y desempeñan un papel esencial en la descripción de las entidades y sus características. Son las propiedades que describen y definen la información relacionada con una entidad dentro de una base de datos.

## 4.1. Atributos y su Significado

- Los atributos son **propiedades** o **características** que describen una entidad en una base de datos.
- Cada entidad tiene sus propios atributos, los cuales representan información específica sobre dicha entidad.

## 4.2. Tipos de Atributos

### 4.2.1. Atributos Identificadores de Entidad (Clave Primaria o Clave Principal)

Los **atributos identificadores** tienen la función de **identificar de manera única** cada instancia u ocurrencia de una entidad en la base de datos. Esto significa que no puede haber dos instancias de la misma entidad con el mismo valor en el atributo identificador. 

Esta clase de atributos se representan con una circunferencia rellena de negro, en el ejemplo a continuación el **atributo identificador** es el que corresponde a `DNI`.

![Atributos](/bases-de-datos/imgs/ud02/ud02_img02_atributos01.svg)

- En un modelo E/R, debe existir **al menos un atributo identificativo** en cada entidad. Esto garantiza que cada instancia de la entidad se pueda identificar de forma única en la base de datos.

### 4.2.2. Atributos Descriptores de Entidad

Los **atributos descriptores** son aquellos que representan características o propiedades de una entidad. Por ejemplo, en una base de datos de empleados:

- Atributos como **"nombre," "apellido," "edad," y "dirección"** son ejemplos de atributos descriptivos.

Aunque proporcionan información detallada sobre la entidad, no se utilizan para **identificar** de forma única las instancias de la entidad.

Esta clase de atributos se representan con una circunferencia transparente, en el ejemplo a continuación el **atributo descriptor** es el que corresponde a `Nombre`.

![Atributos](/bases-de-datos/imgs/ud02/ud02_img02_atributos01.svg)


### 4.2.3. Atributos Opcionales

Los **atributos opcionales** son aquellos cuyo valor no es necesario que esté presente para todas las instancias de una entidad. En otras palabras, no todas las ocurrencias de una entidad deben tener un valor para estos atributos. Se utilizan cuando la información es relevante solo en ciertos casos o situaciones.

- Por ejemplo, en una base de datos de empleados, el atributo **"número de teléfono secundario"** podría ser opcional si no todos los empleados tienen uno.
- Otro ejemplo sería un atributo **"segundo nombre"** para una entidad "Persona", ya que no todas las personas tienen un segundo nombre.

Los atributos opcionales se representan en los diagramas E/R mediante una circunferencia que está unido a la entidad con una **línea discontinua**, lo que indica que su valor no es obligatorio.

![Atributos](/bases-de-datos/imgs/ud02/ud02_img02_atributos02.svg)

### 4.2.4. Atributos Derivados

Los **atributos derivados** son aquellos cuyos valores se calculan a partir de otros atributos en la base de datos. Por ejemplo:
- El atributo **"edad"** de una persona podría calcularse automáticamente a partir de su **"fecha de nacimiento"**.
- El **"precio_total"** de un producto podría derivarse de la suma del **"precio"** y el **"impuesto (%IVA)"**.

Se representan con una **circunferencia discontínua transparente** y con una línea contínua. A continuación el atributo `Edad` sería un atributo derivado.

![Atributos](/bases-de-datos/imgs/ud02/ud02_img02_atributos03.svg)

### 4.2.5. Atributos Multivaluados

Estos atributos pueden contener múltiples valores dentro del mismo dominio. Imagina que estamos hablando de ti y queremos guardar información sobre ti en una base de datos.

Sabemos que tienes **un solo nombre**, **una sola fecha de cumpleaños**, y **una sola dirección**. Para estos datos, usamos lo que llamamos **atributos simples** porque solo tienen un valor. Por ejemplo:

- Nombre: Teo
- Fecha de cumpleaños: 23 de noviembre
- Dirección: Calle Sol, 15

Pero, ¿qué pasa si tienes **más de un número de teléfono**? Digamos que tienes tres números de teléfonos: el móvil, el fijo de casa y el móvil para hablar con tus ligues. Como tienes **varios valores** para "número de teléfono", usaríamos un **atributo multivaluado**. Esto es solo una manera elegante de decir que puedes tener **más de un valor** para ese dato.

Entonces, en lugar de guardar **un solo número de teléfono**, guardamos **varios**. El **atributo multivaluado** es simplemente una cajita en la que podemos meter **más de un valor** de algo. Así que, cuando tengas algo que pueda tener **varios** valores (como correos o teléfonos), usamos un atributo multivaluado.

El atributo multivaluado se representa con una circunferencia doble como se observa a continuación.

![Atributos](/bases-de-datos/imgs/ud02/ud02_img02_atributos04.svg)

### 4.2.6. Atributos Compuestos

Los **atributos compuestos** son aquellos que pueden descomponerse en sub-atributos que pertenecen a diferentes dominios. Un ejemplo clásico es el **"CCC" (Código Cuenta Corriente)**, que podría descomponerse en:
- **Número de Banco**: `n_banco`.
- **Número de Sucursal**: `n_sucurs`.
- **Número de Cuenta**: `n_cuenta`.

![Atributos](/bases-de-datos/imgs/ud02/ud02_img02_atributos05.svg)

Cada uno de estos sub-atributos pertenece a un dominio distinto y en conjunto forman el atributo compuesto.

### 4.2.7. Atributos Discriminadores o Discriminantes

Estos atributos se utilizan en el contexto de **entidades débiles**, que dependen de una entidad fuerte para su identificación. Los atributos discriminadores ayudan a **distinguir entre las diferentes ocurrencias** de la entidad débil dentro de la entidad fuerte. Se representan con un símbolo especial, como un círculo relleno. Un ejemplo en una base de datos bancaria sería:
- **"num_transacción"** como un atributo discriminatorio dentro de la entidad débil "Cuenta Corriente" (CCC), que depende de la entidad fuerte "Cliente".

*Ver más adelante el apartado 5.5. Dependencia e interrelaciones - Debilidad por dependencia en identificación*

## 4.2.8. Tipos de Atributos, resumen

En resumen, los atributos en una base de datos pueden clasificarse en diferentes tipos, según su función y características:

1. **Identificativos**: Identifican de forma única una instancia de una entidad.
3. **Descriptivos**: Proporcionan características o propiedades adicionales.
7. **Opcionales**: No todas las instancias de una entidad deben tener un valor para estos atributos.
4. **Derivados**: Su valor se calcula a partir de otros atributos.
5. **Multivaluados**: Pueden contener varios valores dentro del mismo dominio.
6. **Compuestos**: Se dividen en varios sub-atributos más pequeños.
2. **Discriminantes**: Distinguen entre instancias de entidades débiles.


Cada uno de estos tipos de atributos desempeña un papel esencial en la representación y organización de los datos, ayudando a asegurar la integridad y coherencia de la base de datos.

---

**Ejercicio 4.1: Clasificación de Atributos.** Dada la siguiente entidad "Empleado" con los siguientes atributos: *DNI*, *Nombre*, *Apellidos*, *Dirección*, *Teléfono*, *Edad*, *Años de Servicio* y *Email Alternativo*.
1. Identifica qué tipo de atributo es cada uno (identificativo, descriptivo, opcional, derivado, multivaluado).*
2. Justifica tu elección para cada atributo.

**Ejercicio 4.2: Atributos Derivados.** En una base de datos de una tienda online, tienes la entidad "Pedido" con los siguientes atributos: *Fecha de Pedido*, *Precio Producto*, *Cantidad* y *Precio Total*.
1. Identifica qué atributo es derivado y explica cómo se calcularía a partir de otros atributos.
2. ¿Cómo representarías este atributo derivado en un diagrama E/R?

**Ejercicio 4.3: Atributos Multivaluados.** Imagina que estás diseñando una base de datos para una escuela. La entidad "Estudiante" tiene los atributos *Nombre*, *Apellido*, *Teléfonos de Contacto* y *Asignaturas Matriculadas*.
1. Explica por qué los atributos "Teléfonos de Contacto" y "Asignaturas Matriculadas" serían considerados multivaluados.
2. Dibuja cómo representarías estos atributos multivaluados en un diagrama E/R.

**Ejercicio 4.4: Atributos Opcionales.** Supón que estás diseñando una base de datos para una clínica. La entidad "Paciente" tiene los atributos *Número de Seguro Social*, *Nombre*, *Dirección* y *Correo Electrónico Secundario*.
1. ¿Por qué "Correo Electrónico Secundario" sería un atributo opcional?
2. Modifica el diagrama E/R para incluir este atributo opcional.

**Ejercicio 4.5: Descomposición de Atributos Compuestos.** En una base de datos bancaria, la entidad "Cuenta Bancaria" tiene el atributo compuesto *"CCC" (Código Cuenta Corriente)*, que se descompone en *Número de Banco*, *Número de Sucursal* y *Número de Cuenta*.
1. Explica por qué "CCC" es un atributo compuesto.
2. Dibuja cómo representarías este atributo compuesto en un diagrama E/R, mostrando la descomposición en sub-atributos.



# 5. Relaciones

Las **relaciones** son una parte fundamental en un modelo de base de datos, ya que representan las asociaciones entre dos o más entidades. Una relación es la **conexión** o **asociación** que existe entre dos o más entidades. Cada relación tiene un nombre que describe su función o propósito en el contexto de la base de datos.

## Representación Gráfica de Relaciones

En un **diagrama Entidad-Relación (E/R)**, las relaciones se representan mediante **rombos**. El nombre de la relación se coloca en el interior del rombo. 

Generalmente, el nombre de una relación se elige considerando la primera letra de cada entidad. Por ejemplo, si las entidades son **CLIENTE** y **COCHE**, podríamos nombrar la relación como **"C-CO"**. En este caso, como ambas entidades empiezan por “C”, se añaden algunas letras más para hacer referencia a **COCHE**.

![Atributos](/bases-de-datos/imgs/ud02/ud02_img03_clienteCoche01.svg)


También podríamos haber utilizado un nombre más descriptivo para la relación, como **"Compra"** (donde **CLIENTE** compra **COCHE**). Sin embargo, este tipo de nomenclatura puede conducir a confusión a la hora de determinar la **cardinalidad** de la relación cuando estamos aprendiendo.

![Atributos](/bases-de-datos/imgs/ud02/ud02_img03_clienteCoche02.svg)

## 5.1. Grado de una relación.

El grado de una relación se refiere al **número de entidades participantes en esa relación**. Por ejemplo, si una relación conecta **dos entidades**, como "CLIENTE" y "COCHE," **se considera una relación de grado 2 o binaria**, ya que involucra dos entidades. Sin embargo, las relaciones también pueden ser ternarias (grado 3) o tener más entidades participantes, dependiendo de las necesidades del diseño de la base de datos.

**Ejemplo de Relación Ternaria:** En el siguiente ejemplo la relación PUBLICAR, es de grado 3, ya que involucra las entidades LIBRO, EDITORIAL y AUTOR. 

![Relación Ternaria](/bases-de-datos/imgs/ud02/ud02_img04_ternaria.svg)

Sin embargo, cuando una entidad está relacionada consigo misma, hablamos de relación reflexiva. Las interrelaciones reflexivas son relaciones unitarias y, por tanto, consideran que en el tipo de interrelación se ve involucrado un único tipo de entidad. Por ejemplo, consideraremos el tipo de interrelación presentado en la siguiente figura, que describe la relación existente entre el tipo de entidad Trabajador con ella misma, y que representa que un trabajador es jefe y trabajador.

![Relación Ternaria](/bases-de-datos/imgs/ud02/ud02_img05_reflexiva.svg)

---

**Ejercicio 5.1: Red Social**. Diseña un modelo Entidad-Relación para una red social. Las entidades incluyen *"Usuario"* y *"Publicación"*. Define una relación binaria llamada *"Publica"* que conecta a un usuario con una publicación. Esto permite rastrear qué usuarios han publicado qué contenido en la red social.

**Ejercicio 5.2: Biblioteca (Versión Simplificada)**. Crea un modelo Entidad-Relación para una biblioteca simplificada. Las entidades son *"Libro"* y *"Autor"*. Define una relación binaria llamada *"Escribe"* que relaciona a un autor con un libro. Esto permite registrar qué autores han escrito qué libros.

**Ejercicio 5.3: Tienda de Electrónicos**. Imagina una tienda de electrónicos. Diseña un modelo Entidad-Relación que incluya las entidades *"Cliente"* y *"Producto"*. Define una relación binaria llamada *"Compra"* que relaciona a un cliente con un producto. Esto permite registrar qué productos fueron comprados por qué clientes.

**Ejercicio 5.4: Biblioteca**. Diseña un modelo Entidad-Relación para una biblioteca. Las entidades incluyen *"Libro"*, *"Socio"*, y *"Préstamo"*. Define una relación ternaria llamada *"Préstamo"* que conecta a un libro, un socio y una fecha de préstamo. Esto permite rastrear qué libros han sido prestados a qué socios en qué fechas.

**Ejercicio 5.5: Universidad**. Crea un modelo Entidad-Relación para una universidad. Las entidades son *"Estudiante"*, *"Profesor"*, y *"Curso"*. Define una relación ternaria llamada *"Inscripción"* que conecta a un estudiante, un profesor y un curso. Esto registra cuáles estudiantes están inscritos en qué cursos bajo la supervisión de qué profesor.

**Ejercicio 5.6: Compras en Línea**. Imagina una tienda en línea. Diseña un modelo Entidad-Relación que incluya las entidades *"Cliente"*, *"Producto"*, y *"Pedido"*. Define una relación ternaria llamada *"Compra"* que relaciona a un cliente, un producto y un pedido. Esto permite registrar qué productos fueron comprados por qué clientes en qué pedidos.

## 5.2. Cardinalidad en una relación.

En las relaciones binarias, la cardinalidad se refiere a la cantidad de ocurrencias de una entidad que están asociadas a una ocurrencia de la otra entidad en una relación dada. Comprender estos tipos de cardinalidad es esencial para diseñar una base de datos precisa y eficiente. Aquí exploramos los tres tipos principales de cardinalidad en relaciones binarias:

### Relación uno a uno (1:1)

En una relación uno a uno, cada elemento de la primera entidad se relaciona con no más de un elemento de la segunda entidad, y viceversa. Esto significa que la relación es extremadamente restrictiva en términos de conexiones. Un ejemplo clásico de una relación uno a uno podría ser la relación entre un conductor y un coche. Cada conductor sólo puede conducir simultáneamente un coche y cada coche solo puede ser conducido por un conductor.

**Representación gráfica:** En los diagramas de entidad-relación, una relación uno a uno se muestra con una línea que conecta las entidades, y se coloca el número "1" junto a cada extremo de la línea para indicar que es una relación uno a uno.

![Conductor conduce coche](/bases-de-datos/imgs/ud02/ud02_img06_relacionUnoUno.svg)

### Relación uno a muchos (1:N)

En una relación uno a muchos, cada elemento de la primera entidad se relaciona con cero, uno o más elementos de la segunda entidad, pero cada elemento de la segunda entidad está asociado con un solo elemento de la primera entidad. Esta es la cardinalidad más comúnmente utilizada en bases de datos. Tomemos como ejemplo una relación entre un cliente y sus pedidos en una tienda en línea. Un cliente puede realizar cero, uno o varios pedidos, pero cada pedido pertenece a un solo cliente.

**Representación gráfica:** En un diagrama de entidad-relación, una relación uno a muchos se representa con una línea que conecta las entidades y se coloca el número "1" junto a un extremo de la línea y el símbolo "N" junto al otro extremo para indicar que es una relación uno a muchos.

![Cliente compra productos](/bases-de-datos/imgs/ud02/ud02_img06_relacionUnoMuchos.svg)


### Relación muchos a muchos (N:N) o (N:M)

En una relación muchos a muchos, múltiples elementos de la primera entidad pueden estar relacionados con múltiples elementos de la segunda entidad, y viceversa. Esto significa que no hay restricciones estrictas en la cantidad de conexiones que pueden existir entre las entidades. Un ejemplo típico de una relación muchos a muchos podría ser la relación entre estudiantes y profesores en una universidad. Un estudiante puede tener varios profesores, y un profesor puede tener varios estudiantes inscritos.

Representación gráfica: En un diagrama de entidad-relación, una relación muchos a muchos se representa con una línea que conecta las entidades y se coloca el símbolo "N" junto a ambos extremos de la línea para indicar que es una relación muchos a muchos.

Es importante comprender estos tipos de cardinalidad ya que influyen en cómo se diseñan y estructuran las tablas en una base de datos. La elección correcta de la cardinalidad es esencial para garantizar la integridad y eficiencia de los datos en un sistema de gestión de bases de datos.

![Estidantes tienen profesores](/bases-de-datos/imgs/ud02/ud02_img06_relacionMuchosMuchos.svg)


### Participación.
La participación de una ocurrencia de una entidad, indica, mediante una pareja de números, el mínimo y máximo número de veces que puede aparecer en la relación asociada a otra ocurrencia de entidad. Las posibles participaciones son:

| **Participación** | **Significado**                       |
|-------------------|---------------------------------------|
| (0,1)             | Mínimo cero, máximo uno               |
| (1,1)             | Mínimo uno, máximo uno                |
| (0,n)             | Mínimo cero, máximo n (Muchos)        |
| (1,n)             | Mínimo uno, máximo n (Muchos)         |


Las reglas que definen la participación de una ocurrencia en una relación son **las reglas de negocio**, es decir, se reconocen a través de los requisitos del problema.

La notación que se utiliza para expresar las participaciones en el diagrama entidad relación es poner al lado de la entidad correspondiente, la pareja de números máximo y mínimo de participaciones.

Por ejemplo, los empleados pueden trabajar para varios proyectos, o pueden estar de vacaciones (sin proyecto). Por otro lado, en un proyecto trabajan de 1 a varios trabajadores. En este caso, la participación de proyecto es de (0,n), puesto que un empleado puede tener asignados de 0 a n proyectos. La participación del empleado es de (1,n) puesto que en un proyecto puede haber de 1 a n empleados. De esta manera, se indica al lado de la entidad proyecto, el par (0,n) y al lado de la entidad empleado el par (1,n).

![Participaciones de ocurrencias](/bases-de-datos/imgs/ud02/ud02_img07_participaciones.svg)

### La Cardinalidad a través de las participaciones.

La cardinalidad de una relación se calcula a través de las participaciones de sus ocurrencias en ella. Se toman el número máximo de participaciones en cada una de las entidades en la relación. Por ejemplo, la relación trabaja en de la figura anterior tendría una cardinalidad N:N.

![Cardinalidad según las participaciones](/bases-de-datos/imgs/ud02/ud02_img07_cardinalidadParticipaciones.svg)

---

**Ejercicio 5.7**. En un supermercado hay productos organizados en categorías (frutas, ultramarinos, carnes, pescados, etc.). Cada producto pertenece a una única categoría, y puede haber categorías que todavía no tengan ningún producto asignado, sin embargo, no puede haber productos sin categoría. Calcula las participaciones de cada entidad en la relación *Producto Pertenece a Categoría* sabiendo la siguiente información del dominio del problema.
- Un producto puede y debe pertenecer a una única categoría (mínimo 1 y máximo 1).
- A una categoría pueden pertenecer muchos productos (máximo n), y puede no tener productos (mínimo 0).

**Ejercicio 5.8**. Las páginas web contienen controles de muchos tipos (campos de texto, listas desplegables, etc.). Si se quiere almacenar en una base de datos, cada página web, indica qué tipos de controles tiene, ¿qué participaciones habría que asignar?. Justifica tu respuesta respondiendo a preguntas del tipo ¿un control, (por ejemplo, un cuadro de texto), en cuántas páginas puede estar como máximo y mínimo?.

**Ejercicio 5.9**. Los clientes pueden realizar pedidos a través de sus representantes de ventas. Indica las entidades que hay, relaciones y sus respectivas participaciones.

**Ejercicio 5.10**. Calcula la cardinalidad de las siguientes relaciones binarias:
- Hombre está casado con Mujer, en una sociedad monogámica.
- Hombre está casado con Mujer, en una sociedad machista poligámica.
- Hombre está casado con Mujer, en una sociedad poligámica liberal.
- Pescador pesca Pez.
- Arquitecto diseña Casa.
- Piezas forman Producto.
- Turista viaja Hotel.
- Jugador juega en Equipo.
- Político gobierna en País.

## 5.3. Cardinalidad de relaciones no binarias.

Para calcular la cardinalidad de una relación ternaria se agrupan (conceptualmente) las entidades en grupos de 2 vs 1 y se resuelve la participación del grupo con la entidad restante. El proceso se repite 3 veces, una para cada entidad independiente. Por último, tomando los máximos de las participaciones se generan las cardinalidades. Observa el siguiente ejemplo:

Existe una interrelación *"Profesor-Alumno-Examen"* que representa el hecho de que un *"Profesor"* enseña o imparte docencia a uno o varios alumnos, mientras que a un *"Alumno"* sólo le imparte docencia uno y sólo un *"Profesor"*. Cada uno de estos tipos de entidad viene caracterizado por un conjunto de atributos, siendo los atributos matrícula y dni los atributos identificadores y edad, nombre, cargo y nombre los atributos para las entidades *"Alumno"* y *"Profesor"*, respectivamente. Se considera que se desea representar que cada profesor examina un número variable de veces a cada alumno al que le imparte docencia, y que en cada *"Examen"* se le asigna una calificación a cada uno de los alumnos. Además, se debe representar que, aunque a un alumno sólo le imparte docencia un profesor, existe una serie de calificaciones o notas que el profesor imputa a cada alumno para los exámenes que realiza.

![Cardinalidad en relaciones no binarias](/bases-de-datos/imgs/ud02/ud02_img08_cardinalidadNoBin.svg)

Otra forma de verlo es pensar que para calcular la cardinalidad de una relación ternaria se tomará una de las tres entidades y se combinan las otras dos. A continuación, se calcula la participación de la entidad en la combinación de las otras dos. Posteriormente, se hará lo mismo con las otras dos entidades. Finalmente, tomando los máximos de las participaciones, se generan las cardinalidades.

![Cardinalidad en relaciones no binarias 2](/bases-de-datos/imgs/ud02/ud02_img08_cardinalidadNoBin02.svg)

Por ejemplo, en la figura anterior se distinguen tres participaciones, la que se produce entre empresa y auditora-expediente, la que se distingue entre auditora y empresa-expediente, y por último la de expediente con auditora-empresa:
- Una empresa, ¿Cuántos expedientes puede tener con una auditora? Puede tener un mínimo de 0 y un máximo de n. Participación de Empresa (0,n).
- Una auditora, ¿Cuántos expedientes puede tener con una empresa? Puede tener un mínimo de 0 y un máximo de 1. Participación de Auditora (0,1).
- Un expediente, ¿A cuántas empresas auditadas por la auditora puede pertenecer? Un expediente solo puede pertenecer a una empresa auditada (1,1), por tanto Participación de Expediente (1,1).

---

**Ejercicio 5.11**. Calcula la cardinalidad de la siguiente relación ternaria:
![Cardinalidad en relaciones no binarias 3](/bases-de-datos/imgs/ud02/ud02_img08_cardinalidadNoBin03.svg)

**Ejercicio 5.12**. Calcula la cardinalidad de las siguientes relaciones ternarias:
- Mecánico arregla Vehículo en Taller.
- Alumno cursa Ciclo en Instituto.
- Veterinario administra Medicación al Animal.

## 5.4. Atributos propios de una relación.

Imagina que estás diseñando una base de datos para una tienda en línea. En esta base de datos, tienes una relación llamada *"Compra"* que conecta a los clientes y los productos que compran. Ahora, ¿qué pasa si quieres almacenar información adicional sobre esa compra, como la cantidad de un producto comprado? Ahí es donde entran en juego los **"Atributos propios de una relación"**.

**¿Qué son los atributos propios de una relación?**

Los atributos propios de una relación son características especiales que pertenecen exclusivamente a esa relación en particular. No se relacionan con una entidad específica, como un cliente o un producto, sino que dependen de todas las entidades involucradas en la relación. Para entenderlo mejor, veamos un ejemplo práctico.

![Atributos propios de una relación](/bases-de-datos/imgs/ud02/ud02_img09_atributosRelacion.svg)

**Ejemplo: La Relación "Compra"**

Imaginemos una relación llamada *"Compra"* que conecta a los clientes y los productos que compran. Aquí tienes algunas características clave:

- **Cliente** (*Cod_Cliente, Nombre, Dirección, Edad, Teléfono*): Esta entidad representa a los clientes y sus datos personales, como su nombre y dirección.
- **Producto** (*Cod_Producto, Nombre, Descripción, Precio_Unidad*): Esta entidad describe los productos disponibles en la tienda en línea, incluyendo detalles como el nombre y el precio.

**Atributo Propio: "Cantidad"**

Ahora, llegamos al atributo propio de la relación *"Compra"*: la *"Cantidad"*. ¿Por qué es un atributo propio? Porque no se refiere únicamente a un cliente o a un producto específico, sino que depende de ambos. Veamos por qué:

- Un mismo cliente puede comprar distintas cantidades de diferentes productos. Por ejemplo, puede comprar 3 camisetas y 2 pantalones.
- Un mismo producto puede ser comprado en distintas cantidades por diferentes clientes. Por ejemplo, 5 clientes diferentes pueden comprar 2 auriculares cada uno.

La *"Cantidad"* no se ajusta exclusivamente a un cliente o a un producto, sino que su valor se relaciona con la combinación única de cliente y producto en cada compra. Por lo tanto, es un atributo propio de la relación *"Compra"*.

En resumen, los atributos propios de una relación son como piezas de información especiales que solo tienen sentido dentro de esa relación específica. En este caso, *"Cantidad"* es un ejemplo de un atributo propio que nos permite rastrear cuántos productos de qué tipo compra cada cliente. Estos atributos son esenciales para capturar detalles específicos de las relaciones en una base de datos y facilitan el seguimiento de la información relacionada con múltiples entidades.

## 5.5. Dependencias e Interrelaciones.

Una interrelación representa la asociación, vinculación o correspondencia entre entidades. 

Se denomina tipo de interrelación a la estructura genérica que describe un conjunto de interrelaciones, mientras que interrelación será cada uno de los ejemplares concretos. Por tanto, el tipo de interrelación es el resultado de clasificar un conjunto de interrelaciones.

Ejemplo: El tipo de interrelación *"Dueño_de"* entre el tipo de entidad *"Persona"* y el tipo de entidad *"Coche"*, representa la vinculación existente entre las personas que son dueñas de algún coche. Un ejemplar de este tipo de interrelación, es decir, una interrelación podría vincular a la Sra. Carmen y al vehículo 9876ABC. 

Se representa el tipo de interrelación mediante un rombo etiquetado con el nombre del tipo de la interrelación, unido mediante arcos a los tipos de entidad que asocia.

![Interrelación unitaria](/bases-de-datos/imgs/ud02/ud02_img010_interrelacionUnitaria.svg)

Hay que tener en cuenta que entre dos tipos de entidad puede existir más de un tipo de interrelación. Ejemplo: Entre los tipos de entidad *"Persona"* y *"Coche"* pueden existir los tipos de interrelación *"Dueña_de"* y *"Conduce"*.

![Interrelación binaria](/bases-de-datos/imgs/ud02/ud02_img010_interrelacionBinaria.svg)

Como en el caso de los tipos de entidad, los tipos de interrelación se clasifican también en regulares (si están asociando dos tipos de entidad regulares) y débiles (asocian un tipo de entidad débil con un tipo de entidad regular o débil).

### Dependencia en existencia y en identificación.

Ya vimos cómo los tipos de interrelación (al igual que los tipos de entidad) se clasifican en regulares (asocian dos tipos de entidad regulares) y débiles (asocian un tipo de entidad débil con otra regular o débil). Dentro del tipo de interrelación débil se distingue entre dependencia en identificación (el rombo se etiqueta con *ID*) y la dependencia en existencia (el rombo se etiqueta con una *E* o con una *EX* o no se etiqueta).

**Debilidad por dependencia en existencia:** Se da cuando los ejemplares de un tipo de entidad (entidad débil) no pueden existir si desaparece el ejemplar del tipo de entidad regular del cual dependen. 

Por ejemplo, imagina que deseamos almacenar información sobre los empleados de una empresa y sus familiares mayores de edad que podrían ser elegibles para ciertas ayudas, como becas universitarias o descuentos en productos de la empresa. La entidad *"Empleado"* se considera una entidad regular, ya que su existencia es independiente. 

En cambio, la entidad *"Familiar"* se considera una entidad débil, ya que su existencia depende de la existencia de un empleado. Si eliminamos un empleado de la base de datos, todos sus familiares que estén registrados se eliminarán, a menos que estén relacionados con otro empleado (por ejemplo, si ambos cónyuges son empleados, se conservarán los datos de los hijos). Esta debilidad se debe a la existencia, lo que significa que si no existe la entidad *"Empleado"*, tampoco existirá la entidad *"Familiar"*, pero no se debe a la identificación, ya que cada entidad se puede identificar por su N.I.F. (Número de Identificación Fiscal).

![Debilidad por existencia](/bases-de-datos/imgs/ud02/ud02_img010_debilExistencia.svg)

**Debilidad por dependencia en identificación:** Se da cuando además de cumplirse la condición anterior, los ejemplares del tipo de entidad débil no pueden identificarse por sí mismos, es decir, mediante los propios atributos del tipo de entidad, y exigen añadir el identificador principal del tipo de entidad regular del cual dependen. 

Por ejemplo, imaginemos una empresa con varios centros de trabajo en diferentes ubicaciones de la comunidad, cada uno identificado por un código único (como *CA001*, *CA002*, *SE001*, *MA001*, etc.). Todos estos centros de trabajo tienen los mismos departamentos, como recursos humanos, mantenimiento, contabilidad, entre otros, que se identifican con códigos como *PER* (de personal), *MAN*, *CON*, etc.

Podemos considerar que la entidad *"Centro De Trabajo"* es una entidad fuerte, ya que su existencia es independiente y se puede identificar mediante su propio código. Por otro lado, la entidad *"Departamento"* se considera débil por identificación, porque para identificar un ejemplar de *"Departamento"*, necesitamos hacer referencia tanto al código del centro de trabajo al que pertenece como al código específico de ese departamento. Además, si no existe un ejemplar de la entidad *"Centro De Trabajo"*, tampoco existirán ejemplares de *"Departamento"* asociados a ese centro de trabajo en particular.

![Debilidad por identificación](/bases-de-datos/imgs/ud02/ud02_img010_debilIdentificacion.svg)

En la figura anterior, se representa una dependencia de identificación, lo que significa que el identificador principal de la entidad *"Departamento"* se forma combinando el código del centro de trabajo (Cod_centro) al que está vinculado y el código específico del departamento (Cod_dpto). Esto nos da una serie de posibles identificadores principales para *"Departamento"*, como *CA002PER*, *CA002MAN*, *SE001PER*, y así sucesivamente.

Considera ahora el siguiente ejercicio en el que se intentan representar diferentes ediciones de distintos cursos, cada una de ellas en un lugar y en una fecha determinadas. Cada edición se corresponde con un solo curso y puede ser impartida por varios profesores.

![Debilidad por identificación](/bases-de-datos/imgs/ud02/ud02_img010_debilIdentificacion02.svg)

**Una dependencia en identificación implica una dependencia en existencia, pero no al contrario.**

## 5.6. Redundancia.

Decimos que un elemento de un esquema **es redundante cuando puede ser eliminado sin pérdida de semántica.**

Es preciso, en los esquemas E/R, analizar la existencia de redundancias , por los problemas de inconsistencias a los que pueden dar lugar. 

Existen dos formas principales de redundancia, según el elemento del modelo E/R al que está asociada: **redundancia en los atributos** (atributos derivados o calculados) y **redundancia en las interrelaciones** (denominadas también por algunos autores interrelaciones derivadas).

### Atributos derivados (o calculados).
Son aquellos que se obtienen a partir de otros ya existentes, por lo que, aunque son redundantes, no dan lugar a inconsistencias, siempre que en el esquema se indique su condición de derivados (mediante la etiqueta Di). 
- **Ejemplo 1:** En el tipo de entidad *Persona*, es redundante establecer el atributo fechaNacimiento y el atributo edad; este último puede ser calculado a partir de la fecha de nacimiento. 
- **Ejemplo 2:** En el esquema de la figura siguiente, se puede añadir al tipo de entidad *Centro de Trabajo* el atributo Numero_dptos, el cual puede ser calculado a partir de los ejemplares de *Departamento* mediante la interrelación Tiene. 

![Debilidad por identificación](/bases-de-datos/imgs/ud02/ud02_img010_debilIdentificacion.svg)

Incluir en el esquema conceptual atributos derivados, a pesar de que pueden ser generados a partir de otros ya existentes, tiene a veces interés por razones semánticas. Aunque también se podría hacer por motivos de eficiencia. Un atributo derivado puede ser calculado en dos momentos distintos: 
1. En actualizaciones que pueden provocar cambios en su valor - el atributo derivado se calcula y almacena (es real)-.
2. Cuando se recupera -no está almacenado y se calcula al realizar la consulta (es virtual)-. 

El tomar una u otra decisión es propio del diseño físico, ya que se hace por motivos de eficiencia, y dependerá del número de actualizaciones frente al de recuperaciones. 

Tampoco hay que confundir un atributo derivado, cuyo valor no se introduce nunca -sino que se calcula-, con las restricciones que comprueban la consistencia entre valores que están almacenados en la base de datos, por haberlos introducido el usuario.

### Interrelaciones redundantes.

Se dice que una interrelación es redundante cuando su eliminación no implica pérdida de semántica porque existe la posibilidad de realizar la misma asociación de ejemplares por medio de otras interrelaciones.

Es condición necesaria, aunque no suficiente, para que una interrelación sea redundante que forme parte de un ciclo, por lo que hay que estudiar detenidamente los ciclos en el diagrama E/R.

**Ejemplo 1:** Supongamos que un *Profesor* sólo puede impartir *Cursos* de doctorado que estén adscritos al *Departamento* al que él pertenece; en este caso, si se conocen los *Cursos* de doctorado que imparte un *Profesor* y el departamento al que está adscrito cada curso, se deduce inmediatamente a qué *Departamento* pertenece dicho *Profesor*. 

De forma análoga, dado un *Departamento*, si sabemos qué *Cursos* de doctorado tiene adscritos y los profesores que imparten dichos *Cursos*, conoceremos qué profesores pertenecen a dicho departamento, por lo que la interrelación Pertenece entre las entidades *Profesor* y *Departamento* es redundante: su eliminación no produce pérdida de información.

![Debilidad por identificación](/bases-de-datos/imgs/ud02/ud02_img011_redundancia01.svg)

**Ejemplo 2:** En el esquema reflejado en la figura siguiente, a pesar de que también existe un ciclo, no hay ninguna interrelación redundante. En este ejemplo la semántica es distinta y un *Departamento* puede no tener adscritos *Cursos* de doctorado; además un mismo *Curso* puede estar adscrito a distintos *Departamentos* y puede haber *Profesores* que no impartan ningún *Curso*. 

La interrelación *Pertenece* no puede deducirse en este caso de las otras dos, ya que aunque sepamos los *Cursos* que ha impartido un *Profesor* y los *Departamentos* a los que están adscritos dichos *Cursos*, no podemos saber a qué departamento en concreto *Pertenece* dicho *Profesor*; tampoco se tiene esta información para los profesores que no imparten ningún curso. 

La interrelación Imparte tampoco es redundante, ya que un curso de doctorado puede ser impartido por diversos *Departamentos* a cada uno de los cuales pertenecen varios profesores, por lo que no se puede saber qué *Profesor* en concreto imparte un determinado curso. 

Por último, la interrelación Adscrito tampoco es redundante, ya que un curso impartido por un *Profesor* no tiene por qué estar necesariamente adscrito al *Departamento* al que pertenece dicho *Profesor*: hay *Departamentos* que no tienen *Cursos* adscritos y los *Profesores* de estos *Departamentos* pueden colaborar en *Cursos* adscritos a otros departamentos distintos del suyo.

![Debilidad por identificación](/bases-de-datos/imgs/ud02/ud02_img011_redundancia02.svg)

Existen otros casos en los que la interrelación, a pesar de poder ser deducida a partir de otras presentes en el esquema, no se puede eliminar porque posee atributos. 

Se puede decir, como norma general, que la existencia de un ciclo no implica la existencia de interrelaciones redundantes. Deben estudiarse con mucho detenimiento las cardinalidades mínimas de las entidades, así como la semántica que aportan las interrelaciones, para poder afirmar con seguridad que existen interrelaciones redundantes. 

Habrá que analizar si al eliminar una interrelación es siempre posible el paso, tanto en un sentido como en el inverso, entre las dos entidades unidas por la interrelación que se considera redundante, y habrá que comprobar también que no se pierdan atributos. 

**En resumen**, para que una interrelación pueda ser eliminada por redundante se tiene que cumplir: 
- Que exista un ciclo. 
- Que las interrelaciones que componen el ciclo sean equivalentes semánticamente. 
- Que se puedan asociar los ejemplares de las dos entidades que estaban interrelacionadas, aún habiéndose eliminado la interrelación. 
- Que la interrelación o bien no tenga atributos o bien éstos puedan ser transferidos a otra a fin de no perder su semántica.

# 6. El Modelo E/R Extendido [EER]

El Modelo de Entidad-Relación Extendido (EER en inglés) surge para abordar ciertas limitaciones que se encontraban en el modelo de Entidad-Relación (ER) básico. Estas limitaciones incluían la incapacidad de representar adecuadamente ciertos tipos de relaciones y restricciones complejas en las bases de datos.

Las razones principales para la aparición del modelo EER son las siguientes:
1. **Soporte para herencia y generalización: El modelo EER incluye la capacidad de representar herencia y generalización, lo que es fundamental en situaciones donde existen clases de entidades relacionadas. Esto es especialmente útil para modelar la estructura jerárquica de una base de datos.** Por lo tanto añade la superclase (superentidad), la subclase(subentidad), la especialización y la generalización.
2. Necesidad de representar relaciones más complejas: El modelo ER básico estaba diseñado para tratar relaciones simples y binarias entre entidades. Sin embargo, en la realidad, las relaciones pueden ser más complejas, involucrando múltiples entidades o atributos interrelacionados. El modelo EER introduce características que permiten modelar relaciones ternarias, cuaternarias y relaciones de mayor grado de complejidad.
3. Representación de restricciones adicionales: Las bases de datos suelen tener restricciones y reglas de integridad que no podían ser expresadas de manera efectiva en el modelo ER básico. El EER permite la representación de restricciones de entidad, restricciones de relación y restricciones sobre atributos.
4. Mayor precisión en la representación: El modelo EER proporciona un conjunto más rico de conceptos y notaciones que permiten una representación más precisa y completa de la estructura de la base de datos y sus restricciones.

## 6.1. Superentidad (Supertipo).

Una superentidad, o supertipo, es una entidad que agrupa a varias subentidades que comparten ciertos atributos. Actúa como una categoría general o clase principal que abarca un conjunto de entidades más específicas, manteniendo atributos comunes entre ellas.

En otras palabras, una superentidad representa una categoría amplia que generaliza a otras entidades que se derivan de ella. Los atributos de la superentidad son compartidos por las subentidades, pero estas subentidades pueden tener también atributos propios. Por ejemplo, en un modelo de una tienda en línea, "Producto" podría ser una superentidad que agrupa categorías como "Libros", "Ropa" y "Electrónicos".

## 6.2. Subentidad (Subtipo).

Una subentidad, o subtipo, es una entidad más específica que se deriva de una superentidad. Aunque hereda los atributos comunes de la superentidad, también tiene sus propios atributos y características que la distinguen de otras subentidades dentro de la misma superentidad.

Cada subentidad añade atributos únicos que no están presentes en otras subentidades del mismo supertipo. Usando el ejemplo anterior, "Libros" y "Ropa" serían subentidades que pertenecen a la superentidad "Producto", con atributos propios que los diferencian, como el autor en el caso de los libros o la talla en el caso de la ropa.

## 6.3. Ejemplo.

Observa el ejemplo de la figura anterior. En él, la relación entre una superentidad y sus subentidades podría representarse con una superentidad *Empleado*, que tiene atributos comunes como `id`, `nombre` y `teléfono`. Esta superentidad se divide en dos subentidades: 

- *Por_Horas*, con atributos específicos como `pago por hora` y `horas trabajadas`.
- *Asalariado*, con atributos propios como `sueldo mensual`, `aguinaldo` y `descuentos`.

Este modelo permite que las subentidades hereden los atributos comunes de la superentidad, a la vez que mantienen sus propias características distintivas.

![Ejemplo básico de EER](/bases-de-datos/imgs/ud02/ud02_img12_eer01.svg)

La relación entre superentidades y subentidades se conoce como una jerarquía de entidades. Esta jerarquía permite modelar la diversidad y las relaciones entre diferentes tipos de entidades de manera más estructurada y organizada. Cada subentidad es un subconjunto específico de la superentidad y hereda sus características generales, lo que facilita la gestión y el análisis de datos.

## 6.4. Generalización y Especialización.

![Generalización y Especialización](/bases-de-datos/imgs/ud02/ud02_img12_eer02.svg)

**Generalización**: La generalización es el proceso de crear una superentidad que agrupa múltiples subentidades relacionadas que comparten atributos y características comunes. En este proceso, se identifican las similitudes entre las subentidades para definir una entidad más general. Se utiliza para representar esos elementos comunes que varias subentidades tienen en común. 

Por ejemplo, en un sistema de gestión de recursos humanos, las subentidades **Empleado a tiempo completo** (*Asalariado*) y **Empleado a tiempo parcial** (*Por_Horas*) comparten atributos como `nombre` y `teléfono`. A partir de esas similitudes, se pueden agrupar en una superentidad llamada *Empleado*.

**Especialización**: La especialización es lo opuesto a la generalización. Aquí, se definen subentidades o subtipos específicos dentro de una superentidad, basados en características y atributos únicos que los distinguen. Este proceso se utiliza para representar las diferencias dentro de una categoría general.

Siguiendo el ejemplo anterior, **Empleado a tiempo completo** (*Asalariado*) y **Empleado a tiempo parcial** (*Por_Horas*) son subtipos especializados dentro de la superentidad **Empleado**. Cada uno de estos subtipos podría tener atributos específicos, como `horasTrabajadas` en el caso del empleado *Por_Horas* o `aguinaldo` en el caso del *Asalariado*.

En los diagramas de entidad-relación extendidos (EER), las relaciones entre generalización y especialización se representan mediante líneas que conectan la superentidad con sus subtipos correspondientes. Estos conceptos permiten modelar la jerarquía de entidades de manera más eficiente, destacando las similitudes y diferencias entre subtipos.

## 6.5. Restricciones de generalización y especialización.

Las restricciones definen cómo se organiza la jeraquía de subentidades bajo una superentidad. A continuación aparece una explicación detallada de cada una.

### Especialización TOTAL SIN solapamiento.

En esta restricción, se establece que cada entidad de la superentidad debe ser parte de al menos uno de los subtipos. Esto significa que no puede haber entidades en la superentidad que no estén especializadas en al menos un subtipo. Además, no puede haber solapamiento entre los subtipos, lo que significa que una entidad no puede pertenecer a más de un subtipo simultáneamente. 

Por ejemplo, **en el dominio del siguiente ejemplo**, una *PERSONA* sólo puede ser o un *HOMBRE*, o una *MUJER*, pero no ambos a la vez ni tampoco puede tener otro género distinto.

![Especialización TOTAL SIN solapamiento](/bases-de-datos/imgs/ud02/ud02_img12_totalSinSolapamiento.svg)

- La TOTALidad queda reflejada en el diagrama con el círculo posicionado entre la superentidad PERSONA y el triángulo invertido de relación ES-UN.
- La EXCLUSIVIDAD (sin solapamiento) queda reflejada por la semicircunferencia que existe entre el triángulo invertido y las subentidades HOMBRE y MUJER.

### Especialización PARCIAL SIN solapamiento.

En esta restricción, se permite que algunas entidades de la superentidad no estén especializadas en ningún subtipo. Esto significa que puede haber entidades que pertenezcan a la superentidad pero no se clasifiquen en ninguno de los subtipos. Sin embargo, no se permite el solapamiento entre los subtipos, lo que significa que una entidad no puede pertenecer a más de un subtipo. 

Por ejemplo, **en el dominio del siguiente ejemplo**, la enfermedad cáncer no es ni un virus ni una bacteria, es decir, existen más tipos de enfermedades que los que se reflejan en el diagrama.  

![Especialización PARCIAL SIN solapamiento](/bases-de-datos/imgs/ud02/ud02_img12_parcialSinSolapamiento.svg)

- La PARCIALidad queda reflejada en el diagrama al conectar directamente la superentidad ENFERMEDAD y el triángulo invertido de relación ES-UN.
- La EXCLUSIVIDAD (sin solapamiento) queda reflejada por la semicircunferencia que existe entre el triángulo invertido y las subentidades VÍRICA y BACTERIANA.

### Especialización TOTAL CON solapamiento.

En esta restricción, se establece que cada entidad de la superentidad debe ser parte de al menos uno de los subtipos, pero también se permite el solapamiento. Esto significa que una entidad puede pertenecer a más de un subtipo a la vez. 

Por ejemplo, **en el dominio del siguiente ejemplo**, una EMPRESA puede ser PÚBLICA y PRIVADA a la vez, o sólo PÚBLICA o sólo PRIVADA, pero no puede existir otro tipo de empresa que sea diferente a estos dos subtipos. 

![Especialización TOTAL CON solapamiento](/bases-de-datos/imgs/ud02/ud02_img12_totalConSolapamiento.svg)

- La TOTALidad queda reflejada en el diagrama con el círculo posicionado entre la superentidad EMPRESA y el triángulo invertido de relación ES-UN.
- El SOLAPAMIENTO queda reflejado por la no existencia de la semicircunferencia el triángulo invertido y las subentidades.

### Especialización PARCIAL CON solapamiento.

En esta restricción, se establece que cada entidad de la superentidad debe ser parte de al menos uno de los subtipos, pero también se permite el solapamiento. Esto significa que una entidad puede pertenecer a más de un subtipo a la vez. 

Por ejemplo, **en el dominio del siguiente ejemplo**, una PERSONA puede ser un TRABAJADOR, o puede ser un ESTUDIANTE, pero también puede ser un TRABAJADOR y ESTUDIANTE, o también puede ser algo que no está reflejado en el diagrama, como por ejemplo una PERSONA que ni trabaja ni estudia.

![Especialización PARCIAL CON solapamiento](/bases-de-datos/imgs/ud02/ud02_img12_parcialConSolapamiento.svg)

- La PARCIALidad queda reflejada en el diagrama al conectar directamente la superentidad PERSONA y el triángulo invertido de relación ES-UN.
- El SOLAPAMIENTO queda reflejado por la no existencia de la semicircunferencia el triángulo invertido y las subentidades.

### Tabla Resumen

| **Especialización TOTAL SIN** <br> **solapamiento**    |   |   |   | **Especialización PARCIAL SIN** <br> **solapamiento**  |
| ![Especialización TOTAL SIN solapamiento](/bases-de-datos/imgs/ud02/ud02_img12_totalSinSolapamiento.svg) |   |   |   | ![Especialización PARCIAL SIN solapamiento](/bases-de-datos/imgs/ud02/ud02_img12_parcialSinSolapamiento.svg) |
|-----------------------------------------------|---|---|---|-----------------------------------------------|
|                                               |   |   |   |                                               |
|-----------------------------------------------|---|---|---|-----------------------------------------------|
|                                               |   |   |   |                                               |
|-----------------------------------------------|---|---|---|-----------------------------------------------|
| **Especialización TOTAL CON** <br> **solapamiento**    |   |   |   | **Especialización PARCIAL CON** <br> **solapamiento**  |
| ![Especialización TOTAL CON solapamiento](/bases-de-datos/imgs/ud02/ud02_img12_totalConSolapamiento.svg) |   |   |   | ![Especialización PARCIAL CON solapamiento](/bases-de-datos/imgs/ud02/ud02_img12_parcialConSolapamiento.svg) |


## 6.6. Cardinalidades en las restricciones de especialización.

Al analizar las cardinalidades dentro de los procesos de generalización y especialización, es importante resaltar dos aspectos clave que regulan cómo se relacionan las superentidades y los subtipos en un diagrama de entidad-relación extendido (EER). Estas consideraciones son fundamentales para comprender cómo funcionan las jerarquías de entidades y las restricciones que se aplican en términos de cardinalidad. A continuación, desglosamos estos dos puntos con mayor detalle:

### Participación entre Subtipo y Supertipo

El primer aspecto a considerar es la **participación** que se establece entre un **subtipo** y su **superentidad**. En este caso, se debe tener en cuenta que la **participación** de un subtipo respecto a su superentidad está definida como **(1,1)**. Esto significa que:

- Cada entidad que pertenezca a un **subtipo** también pertenece **obligatoriamente** a la superentidad.
- No existe la posibilidad de que una entidad sea parte de más de un subtipo dentro de la misma jerarquía en el proceso de generalización.
  
Este comportamiento es inherente al proceso de **generalización**, donde cada subtipo es una especialización del supertipo, y por lo tanto, está completamente abarcado por él. Al especificar una relación de **participación** (1,1), indicamos que:
  
- **Mínimamente**, cada entidad que pertenece a un subtipo **debe pertenecer a un supertipo**.
- **Máximamente**, cada entidad del subtipo **solo puede pertenecer a un supertipo**.

En otras palabras, la cardinalidad **(1,1)** refleja la regla de que una entidad de un subtipo no puede existir sin estar vinculada a la superentidad y que solo puede existir en un subtipo a la vez dentro de esa misma jerarquía. Este comportamiento es característico de la generalización y no permite excepciones.

### Participación en Especializaciones con Solapamiento

El segundo punto relevante surge cuando analizamos la **participación** en una **especialización con solapamiento**. En este tipo de especialización, que puede ser **total o parcial**, las cardinalidades se comportan de manera diferente debido a la naturaleza solapada de los subtipos.

Cuando hay **solapamiento**, las **participaciones** desde la superentidad hacia los subtipos (es decir, la participación de una superentidad en sus subtipos) se representan con una cardinalidad de **(0,1)**. Esto significa que:

- En algunos casos, puede ocurrir que una entidad de la superentidad **no pertenezca a ningún subtipo en particular** (mínimo de 0). Esta es la opción de no especialización, es decir, la entidad puede no estar vinculada a ninguna de las subcategorías definidas.
- Sin embargo, también puede ocurrir que la entidad **sí pertenezca a uno o más subtipos** simultáneamente, especialmente cuando se permite el solapamiento (máximo de 1). En esta situación, una entidad puede estar vinculada a múltiples subtipos dentro de la misma jerarquía.

Este comportamiento refleja la flexibilidad del solapamiento en las especializaciones. Por ejemplo, una entidad puede pertenecer a dos subtipos diferentes a la vez, pero en el mínimo de los casos, puede que no pertenezca a ninguno, o solo a uno. Esta capacidad de coexistencia en múltiples subtipos es lo que permite que la especialización sea más versátil y adecuada para representar relaciones complejas donde las entidades no necesariamente siguen una estructura rígida.

En resumen, las cardinalidades en una **especialización con solapamiento** se expresan como **(0,1)** para la participación desde la superentidad hacia los subtipos, indicando que:
  
- **Mínimamente**, una entidad puede no pertenecer a ningún subtipo (0).
- **Máximamente**, una entidad puede pertenecer a uno o más subtipos simultáneamente (1 o más en casos de solapamiento total).

### Conclusión

Comprender estas dos observaciones clave sobre las cardinalidades es crucial para modelar correctamente las relaciones entre superentidades y subentidades. En la **generalización**, la cardinalidad **(1,1)** garantiza que cada subtipo esté completamente abarcado por la superentidad, mientras que en las **especializaciones con solapamiento**, la cardinalidad **(0,1)** proporciona la flexibilidad para que una entidad pertenezca a uno o más subtipos, o a ninguno en algunos casos.
