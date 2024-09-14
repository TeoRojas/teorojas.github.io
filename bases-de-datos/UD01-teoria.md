---
layout: default
title: UD01. Elementos y Utilidad de las Bases de Datos.
permalink: /bases-de-datos/ud01/teoria/
author: Teo Rojas
date: Septiembre 2024
abstract: Sinopsis de la unidad 01
---

# Índice
1. [Introducción](#1-introducción)
2. [Sistemas de Almacenamiento Lógico y sus Características (CEa)](#2-sistemas-de-almacenamiento-lógico-y-sus-características)
3. [Bases de datos. Conceptos, usos y ubicación de la información. (CEb)](#3-bases-de-datos-concepto-usos-y-ubicación-de-la-información)
4. [Modelos de Bases de Datos: Relacionales, No Relacionales y Otros (CEb)](#4-modelos-de-bases-de-datos-relacionales-no-relacionales-y-otros)
5. [La Utilidad de los Sistemas Gestores de Bases de Datos (SGBD) (CEd)](#5-la-utilidad-de-los-sistemas-gestores-de-bases-de-datos-sgbd)
6. [Clasificación de los Sistemas Gestores de Bases de Datos (CEe)](#6-clasificación-de-los-sistemas-gestores-de-bases-de-datos-sgbd)
7. [Elementos de un Sistema Gestor de Bases de Datos y su Función (CEf)](#7-elementos-de-un-sistema-gestor-de-bases-de-datos-y-su-función)
8. [Bases de Datos según la Ubicación de la Información: Locales y Distribuidas (CEc, CEg)](#8-bases-de-datos-según-la-ubicación-de-la-información-locales-y-distribuidas)
9. [Fragmentación de la Información y Políticas de Distribución (CEh)](#9-fragmentación-de-la-información-y-políticas-de-distribución)


# 1. Introducción

En la era de la información, las **bases de datos** se han convertido en el pilar fundamental para la gestión y almacenamiento de grandes volúmenes de datos. Desde aplicaciones empresariales hasta redes sociales, prácticamente todas las tecnologías que utilizamos en nuestro día a día dependen de sistemas eficientes de bases de datos que permiten organizar, consultar y manipular la información de manera precisa y segura.

Una base de datos es mucho más que un simple repositorio de datos; es un sistema diseñado para estructurar, relacionar y gestionar la información de forma que se pueda acceder a ella fácilmente, al tiempo que se garantiza su integridad. Para gestionar eficazmente estos sistemas, se utilizan los **Sistemas Gestores de Bases de Datos (SGBD)**, herramientas que automatizan y optimizan el proceso de manipulación de los datos, ofreciendo a los usuarios y administradores la capacidad de realizar consultas, actualizaciones y modificaciones de manera segura y eficiente.

Antes de implementar una base de datos, es necesario seguir un proceso estructurado que garantice que el sistema final cumpla con los requisitos de los usuarios y que sea eficiente. Este proceso comienza con el **análisis de requisitos**, donde se identifican las necesidades y expectativas del sistema. A partir de esta información, se procede al **diseño conceptual**, que implica la creación de un modelo abstracto de la base de datos que define las entidades y las relaciones entre ellas, sin preocuparse todavía por los detalles técnicos.

Una vez que el diseño conceptual está claro, se transforma en un **diseño lógico**, donde se definen de manera más precisa las estructuras de la base de datos, como las tablas y las claves, siguiendo un modelo de datos específico (como el modelo relacional). Finalmente, el **diseño físico** se centra en cómo los datos se almacenarán físicamente en el sistema, optimizando el acceso y el rendimiento.

Este capítulo se centrará en analizar los **elementos clave de las bases de datos**, desde los modelos de almacenamiento hasta las características de los SGBD, y evaluará su utilidad en distintos contextos. A lo largo de este recorrido, abordaremos temas como los **sistemas lógicos de almacenamiento**, los **modelos de bases de datos** (relacionales y no relacionales), las **bases de datos distribuidas**, y las **políticas de fragmentación de la información**, aspectos todos ellos fundamentales para comprender cómo se estructura y gestiona la información en sistemas complejos.

Además, profundizaremos en las diferencias entre los distintos tipos de bases de datos según su **modelo de datos** y su **ubicación**, y clasificaremos los **Sistemas Gestores de Bases de Datos** en función de su arquitectura y funcionalidad. Esto nos permitirá reconocer la importancia de cada uno de los elementos que componen un SGBD y cómo su correcta implementación puede mejorar el rendimiento y la eficiencia de una base de datos.

En resumen, este capítulo proporcionará una visión completa y detallada sobre las bases de datos, sus componentes, y la importancia de los SGBD en la gestión de la información, con el fin de que el lector sea capaz de analizar, diseñar y gestionar bases de datos de manera efectiva.

---

***Ejercicio 1.1:*** *Debate sobre el papel de los SGBD en la vida cotidiana. Identifica y discute diferentes aplicaciones de bases de datos en la vida diaria (redes sociales, sistemas bancarios, aplicaciones móviles, etc.). Dividirse en grupos y elegir un sistema en particular para analizar cómo las bases de datos juegan un papel crucial en su funcionamiento.*


***Ejercicio 1.2:*** *Comparación entre sistemas de almacenamiento tradicionales y bases de datos modernas. Compara cómo se manejaba la información en las empresas antes del uso masivo de bases de datos (como el almacenamiento físico de archivos en papel) y cómo ha cambiado con la implementación de bases de datos digitales.*

# 2. Sistemas de Almacenamiento Lógico y sus Características

Como se ha mencionado en el apartado anterior, la correcta gestión de los datos no solo depende de los **Sistemas Gestores de Bases de Datos (SGBD)**, sino también de cómo se estructuran y almacenan esos datos. El **almacenamiento lógico** de la información juega un papel clave en este proceso, ya que es la base sobre la que se construyen las operaciones de acceso, modificación y eliminación de los datos. Sin una estructura lógica adecuada, incluso el mejor sistema gestor carecería de eficiencia para manejar grandes volúmenes de datos.

El **sistema de almacenamiento lógico** hace referencia a la forma en que los datos se organizan a nivel conceptual dentro de una base de datos, sin tener en cuenta los detalles físicos del hardware en el que estos se almacenan. Se trata de cómo los datos se dividen en tablas, registros y campos, y cómo estas estructuras permiten un acceso eficiente y rápido a la información. A continuación, analizaremos las principales características de estos sistemas de almacenamiento.

## 2.1. Organización de los Datos en Tablas

El modelo relacional es uno de los sistemas de almacenamiento lógico más utilizados. En este modelo, los datos se organizan en **tablas** (también llamadas relaciones), donde cada fila representa un **registro** y cada columna un **campo** o **atributo**. Esta estructura permite una gran flexibilidad a la hora de gestionar y consultar datos, ya que los registros pueden ser identificados y manipulados de manera individual o en conjunto, utilizando claves primarias y foráneas para establecer relaciones entre diferentes tablas.

La **normalización** es una característica clave de los sistemas lógicos de almacenamiento que garantiza la reducción de redundancias y asegura la consistencia de los datos. La información se descompone en múltiples tablas interrelacionadas, minimizando duplicidades y mejorando la integridad de los datos. Este proceso, sin embargo, debe equilibrarse con la eficiencia de las consultas, ya que un alto nivel de normalización puede dificultar la rapidez de acceso a los datos en sistemas complejos.

## 2.2. Índices para Optimizar el Acceso

Otra característica esencial de los sistemas lógicos de almacenamiento es la utilización de **índices**. Un índice es una estructura que permite acceder a los datos de manera más rápida, similar al índice de un libro que te lleva rápidamente al contenido que buscas. Los **índices** pueden basarse en uno o más campos de una tabla y mejoran significativamente el rendimiento de las consultas de búsqueda.

Sin embargo, los índices también presentan un coste: añaden una sobrecarga adicional a las operaciones de inserción, actualización y eliminación de datos, ya que estos índices deben actualizarse en paralelo con los datos. Por tanto, la correcta planificación y diseño de los índices es fundamental para mantener un equilibrio entre la eficiencia en la lectura de datos y el rendimiento en la escritura.

## 2.3. Almacenamiento Secuencial y Aleatorio

Dependiendo de la naturaleza de los datos y las necesidades de acceso, los sistemas de almacenamiento lógico pueden implementar estrategias de **almacenamiento secuencial** o **almacenamiento aleatorio**. En el almacenamiento secuencial, los datos se almacenan y se acceden en un orden predefinido, lo que resulta eficaz para grandes volúmenes de datos que se consultan en bloque o en series.

Por el contrario, el **almacenamiento aleatorio** permite acceder a los datos de forma individual sin seguir un orden específico. Esto es útil en situaciones donde las consultas aleatorias son frecuentes, como en bases de datos donde los usuarios realizan consultas no secuenciales o acceden a registros específicos de manera regular.

## 2.4. Ventajas y Desventajas de los Sistemas de Almacenamiento Lógico

El **sistema lógico de almacenamiento** ofrece muchas ventajas, como la facilidad de acceso, la organización coherente de la información y la posibilidad de relacionar datos entre tablas. Sin embargo, también tiene desafíos, como el costo en rendimiento cuando se manipulan grandes volúmenes de datos, o la complejidad en la estructuración de bases de datos altamente normalizadas.

A lo largo de este capítulo, hemos empezado a reconocer cómo el almacenamiento lógico se conecta con los **Sistemas Gestores de Bases de Datos (SGBD)**, los cuales dependen de esta estructura lógica para optimizar las consultas, mantener la integridad de los datos y proporcionar la eficiencia que las organizaciones necesitan para gestionar grandes cantidades de información.

Con esto en mente, en los siguientes apartados exploraremos más profundamente cómo estos **SGBD** clasifican, organizan y gestionan los datos, evaluando su utilidad y las diferentes arquitecturas que existen para soportar una gran variedad de aplicaciones empresariales.

---

***Ejercicio 2.1:*** *Diseña un diagrama de almacenamiento lógico en tabla.
Piensa en la base de datos de una tienda online, y diseña un diagrama básico de las tablas que crees que se necesitarían teniendo en cuenta las 3 entidades siguientes: clientes, productos, pedidos. Deberas pensar en cómo organizar los datos lógicamente, si tuvieses que escoger un dato clave de cada entidad, ¿cuál sería?. Si tuvieses que escoger un dato que relacione a las entidades, ¿cuál sería?. ¿Cómo crees que se relacionarían las entidades?. (No te preocupes si no se te ocurre nada, esto se verá con detenimiento en los próximos temas).*

***Ejercicio 2.2:*** *Imagina una tabla de datos ficticia organizada en índices. Luego, imagina consultas (por ejemplo, "buscar todos los pedidos realizados por un cliente") y explica cómo crees que los índices mejoran el tiempo de consulta.*

# 3. Bases de datos. Concepto, usos y ubicación de la información

A finales de los setenta, la aparición de nuevas tecnologías de manejo de datos a través de los sistemas de bases de datos supuso un considerable cambio. Los sistemas basados en ficheros separados dieron paso a la utilización de sistemas gestores de bases de datos, que son sistemas software centralizados o distribuidos que ofrecen facilidades para la definición de bases de datos, selección de estructuras de datos y búsqueda de forma interactiva o mediante lenguajes de programación.

Llegados a este punto, te preguntarás... ¿Qué es una base de datos?

## 3.1. Concepto

**Base de datos:** Es una colección de datos relacionados lógicamente entre sí, con una definición y descripción comunes y que están estructurados de una determinada manera. Es un conjunto estructurado de datos que representa entidades y sus interrelaciones, almacenados con la mínima redundancia y posibilitando el acceso a ellos eficientemente por parte de varias aplicaciones y usuarios.

La base de datos no sólo contiene los datos de la organización, también almacena una descripción de dichos datos. Esta descripción es lo que se denomina **metadatos**, se almacena en el **diccionario de datos o catálogo** y es lo que permite que exista independencia de datos lógica-física.

Una base de datos constará de los siguientes elementos:

- **Entidades:** objeto real o abstracto con características diferenciadoras de otros, del que se almacena información en la base de datos. En una base de datos de una clínica veterinaria, posibles entidades podrían ser: ejemplar, doctor, consulta, etc.
- **Atributos:** son los datos que se almacenan de la entidad. Cualquier propiedad o característica de una entidad puede ser atributo. Continuando con nuestro ejemplo, podrían ser atributos: raza, color, nombre, número de identificación, etc.
- **Registros:** donde se almacena la información de cada entidad. Es un conjunto de atributos que contienen los datos que pertenecen a una misma repetición de entidad. En nuestro ejemplo, un registro podría ser: 2123056, Sultán, Podenco, Gris, 23/03/2009.
- **Campos:** donde se almacenan los atributos de cada registro. Teniendo en cuenta el ejemplo anterior, un campo podría ser el valor Podenco.

## 3.2. Usos

Ya sabemos lo que es una base de datos y sus características principales, pero es necesario conocer quien las usa y para qué.

### ¿Quién utiliza las bases de datos?

Existen cuatro tipos de personas que pueden hacer uso de una base de datos: el administrador, los diseñadores de la base de datos, los programadores de aplicaciones y los usuarios finales.

- **El administrador.** Es la persona encargada de la creación o implementación física de la base de datos. Es quien escoge los tipos de ficheros, los indices que hay que crear, la ubicación de éstos, etc. En general, es quien toma las decisiones relacionadas con el funcionamiento físico del almacenamiento de información. Siempre teniendo en cuenta las posibilidades del sistema de información con el que trabaje. Además el administrador establecerá la política de seguridad y de acceso para garantizar el menor número de problemas.
- **Los diseñadores.** Son las personas encargadas de diseñar cómo será la base de datos. Llevarán a cabo la identificación de los datos, las relaciones entre ellos, sus restricciones, etc. Para ello han de conocer a fondo los datos y procesos a representar en la base de datos. Si estamos hablando de una empresa, será necesario que conozcan las reglas de negocio en la que ésta se mueve. Para obtener un buen resultado, el diseñador de la base de datos debe implicar en el proceso a todos los usuarios de la base de datos, tan pronto como sea posible.
- **Los programadores de aplicaciones.** Una vez diseñada y construida la base de datos, los programadores se encargarán de implementar los programas de aplicación que servirán a los usuarios finales. Estos programas de aplicación ofrecerán la posibilidad de realizar consultas de datos, inserción, actualización o eliminación de los mismos. Para desarrollar estos programas se utilizan lenguajes de tercera o cuarta generación.
- **Los usuarios finales.** Son los clientes finales de la base de datos. Al diseñar, implementar y mantener la base de datos se busca cumplir los requisitos establecidos por el cliente para la gestión de su información.

### ¿Para qué se utilizan las bases de datos?

Enumerar todos y cada uno de los campos donde se utilizan las bases de datos es complejo, aunque seguro que quedarán muchos en el tintero, a continuación se recopilan algunos de los ámbitos donde se aplican.

- Banca: información de clientes, cuentas, transacciones, préstamos, etc.
- Líneas aéreas: información de clientes, horarios, vuelos, destinos, etc.
- Universidades: información de estudiantes, carreras, horarios, materias, etc.
- Transacciones de tarjeta de crédito: para comprar con tarjetas de crédito y la generación de los extractos mensuales.
- Telecomunicaciones: para guardar registros de llamadas realizadas, generar facturas mensuales, mantener el saldo de las tarjetas telefónicas de prepago y almacenar información sobre las redes.
- Medicina: información hospitalaria, biomedicina, genética, etc.
- Justicia y Seguridad: delincuentes, casos, sentencias, investigaciones, etc.
- Legislación: normativa, registros, etc.
- Organismos públicos: datos ciudadanos, certificados, etc.
- Sistemas de posicionamiento geográfico.
- Hostelería y turismo: reservas de hotel, vuelos, excursiones, etc.
- Ocio digital: juegos online, apuestas, etc.
- Cultura: gestión de bibliotecas, museos virtuales, etc.
- Etc.

## 3.3. Ubicación de la información.

Utilizamos a diario las bases de datos, pero ¿Dónde se encuentra realmente almacenada la información?. Las bases de datos pueden tener un tamaño muy reducido (1 MegaByte o menos) o bien, ser muy voluminosas y complejas (del orden de Terabytes). Sin embargo todas las bases de datos normalmente se almacenan y localizan en discos duros y otros dispositivos de almacenamiento, a los que se accede a través de un ordenador. Una gran base de datos puede necesitar servidores en lugares diferentes, y viceversa, pequeñas bases de datos pueden existir como archivos en el disco duro de un único equipo.

A continuación, se exponen los sistemas de almacenamiento de información más utilizados para el despliegue de bases de datos, comenzaremos por aquellos en los que pueden alojarse bases de datos de tamaño pequeño y mediano, para después analizar los sistemas de alta disponibilidad de grandes servidores.

- Discos SATA: Es una interfaz de transferencia de datos entre la placa base y algunos dispositivos de almacenamiento, como puede ser el disco duro, lectores y regrabadores de CD/DVD/BD, Unidades de Estado Sólido u otros dispositivos. SATA proporciona mayores velocidades, mejor aprovechamiento cuando hay varias unidades, mayor longitud del cable de transmisión de datos y capacidad para conectar unidades al instante, es decir, insertar el dispositivo sin tener que apagar el ordenador. La primera generación especifica en transferencias de 150 Megabytes por segundo, también conocida por SATA 150 MB/s o Serial ATA-150. Actualmente se comercializan dispositivos SATA II, a 300 MB/s, también conocida como Serial ATA-300 y los SATA III con tasas de transferencias de hasta 600 MB/s.

- Discos SCSI: Son interfaces preparadas para discos duros de gran capacidad de almacenamiento y velocidad de rotación. Se presentan bajo tres especificaciones: SCSI Estándar (Standard SCSI), SCSI Rápido (Fast SCSI) y SCSI Ancho-Rápido (Fast-Wide SCSI). Su tiempo medio de acceso puede llegar a 7 milisegundos y su velocidad de transmisión secuencial de información puede alcanzar teóricamente los 5 MB/s en los discos SCSI Estándares, los 10 MBps en los discos SCSI Rápidos y los 20 MBps en los discos SCSI Anchos-Rápidos (SCSI-2). Un controlador SCSI puede manejar hasta 7 discos duros SCSI.

- RAID: acrónimo de Redundant Array of Independent Disks o matriz de discos independientes, es un contenedor de almacenamiento redundante. Se basa en el montaje en conjunto de dos o más discos duros, formando un bloque de trabajo, para obtener desde una ampliación de capacidad a mejoras en velocidad y seguridad de almacenamiento. Según las características que queramos primar, se establecen distintos sistemas de RAID.

- Sistemas NAS: Es el acrónimo de Network Attached Storage ó sistema de almacenamiento masivo en red. Estos sistemas de almacenamiento permiten compartir la capacidad de almacenamiento de un computador (Servidor) con ordenadores personales o servidores clientes a través de una red, haciendo uso de un sistema operativo optimizado para dar acceso a los datos a través de protocolos de comunicación específicos. Suelen ser dispositivos para almacenamiento masivo de datos con capacidades muy altas, de varios Terabytes, generalmente superiores a los discos duros externos y además se diferencian de estos al conectar por red.

- Sistemas SAN: Acrónimo de Storage Area Network o red de área de almacenamiento.Se trata de una red concebida para conectar servidores, matrices (arrays) de discos y librerías de soporte. La arquitectura de este tipo de sistemas permite que los recursos de almacenamiento estén disponibles para varios servidores en una red de área local o amplia. Debido a que la información almacenada no reside directamente en ninguno de los servidores de la red, se optimiza el poder de procesamiento para aplicaciones comerciales y la capacidad de almacenamiento se puede proporcionar en el servidor donde más se necesite.

# 4. Modelos de Bases de Datos: Relacionales, No Relacionales y Otros

La clasificación tradicional de las bases de datos establece tres modelos de bases de datos: **jerárquico, en red y relacional.** En la actualidad el modelo de bases de datos más extendido es el relacional. Aunque, hay que tener en cuenta que dos de sus variantes (modelo de bases de datos distribuidas y orientadas a objetos) son las que se más se están utilizando en los últimos tiempos.

## 4.1. Modelo Jerárquico

Un SGBD jerárquico utiliza jerarquías o árboles para la representación lógica de los datos. Los archivos son organizados en jerarquías, y normalmente cada uno de ellos se corresponde con una de las entidades de la base de datos. Los árboles jerárquicos se representan de forma invertida, con la raíz hacia arriba y las hojas hacia abajo:

Estructura de árbol jerárquico

Un SGBD jerárquico recorre los distintos nodos de un árbol en un preorden que requiere tres pasos:

1. Visitar la raíz.
2. Visitar el hijo más a la izquierda, si lo hubiera, que no haya sido visitado.
3. Si todos los descendientes del segmento considerado se han visitado, volver a su padre e ir al punto 1.

Cada nodo del árbol representa un tipo de registro conceptual, es decir, una entidad. A su vez, cada registro o segmento está constituido por un número de campos que los describen – las propiedades o atributos de las entidades. Las relaciones entre entidades están representadas por las ramas. En la Figura 4.8. cada departamento es una entidad que mantiene una relación de uno a muchos con los profesores, que a su vez mantienen una relación de uno a muchos con los cursos que imparten.

A modo de resumen, enumeramos las siguientes características de las bases de datos jerárquicas:

- Los segmentos de un archivo jerárquico están dispuestos en forma de árbol.
- Los segmentos están enlazados mediante relaciones uno a muchos.
- Cada nodo consta de uno o más campos.
- Cada ocurrencia de un registro padre puede tener distinto número de ocurrencias de registros hijos.
- Cuando se elimina un registro padre se deben eliminar todos los registros hijos (integridad de los datos).
- Todo registro hijo debe tener un único registro padre excepto la raíz.
- Las reglas de integridad en el modelo jerárquico prácticamente se reducen a la ya mencionada de eliminación en cadena de arriba a abajo. Las relaciones muchos a muchos no pueden ser implementadas de forma directa. 

## 4.2. Modelo en Red

El modelo de red intenta superar las deficiencias del enfoque jerárquico, permitiendo el tipo de relaciones de muchos a muchos.

Al igual que en la estructura jerárquica, cada nodo puede tener varios hijos pero, a diferencia de ésta, también puede tener varios padres. 

El concepto básico en el enfoque de red es el conjunto (‘set’). Un **conjunto está constituido por dos tipos de registros que mantienen una relación de muchos a muchos.** Para conseguir representar este tipo de relación **es necesario que los dos tipos de registros estén interconectados por medio de un registro conector llamado conjunto conector.** Los conjuntos poseen las siguientes características:

- El registro padre se denomina propietario del conjunto, mientras que el registro hijo se denomina miembro.
- Un conjunto está formado en un solo registro propietario y uno o más registros miembros.
- Una ocurrencia de conjuntos es una colección de registros, uno de ellos es el propietario y los otros los miembros.
- Todos los registros propietarios de ocurrencias del mismo tipo de conjunto deben ser del mismo tipo de registro.
- El tipo de registro propietario de un tipo de conjunto debe ser distinto de los tipos de los registros miembro.
- Sólo se permite que un registro miembro aparezca una vez en las ocurrencias de conjuntos del mismo tipo.
- Un registro miembro puede asociarse con más de un propietario, es decir, puede pertenecer al mismo tiempo a dos o más tipos de conjuntos distintos. 
- Se pueden definir niveles múltiples de jerarquías donde un tipo de registro puede ser miembro en un conjunto y al mismo tiempo propietario en otro conjunto diferente.

## 4.3. El Modelo Relacional

El **modelo relacional** es uno de los más ampliamente utilizados en la industria debido a su capacidad para organizar datos de manera estructurada y normalizada. En este modelo, los datos se organizan en **tablas** (relaciones), donde cada fila es un registro y cada columna es un atributo. Las relaciones entre las tablas se gestionan mediante claves primarias y foráneas, lo que facilita la consistencia y la integridad referencial de los datos.

Por tanto se llamará registro, entidad o tupla a cada fila de la tabla y campo o atributo a cada columna de la tabla. Mira esta información a modo de resumen:

### Tablas y Atributos

- Tabla: Cada tabla representa una entidad o relación en la base de datos y tiene un nombre único. Está compuesta por filas (registros o tuplas) y columnas (atributos).
- Atributo: Cada columna de una tabla se llama atributo y representa una propiedad específica de la entidad. Los atributos también tienen nombres únicos dentro de una tabla.
- Registro (Tupla o Entidad): Un registro, también conocido como tupla o entidad, es una fila en una tabla. Representa una instancia individual de la entidad que la tabla describe. Por ejemplo, si tienes una tabla "Alumnos", cada registro en esa tabla sería un alumno específico con sus propios valores para los atributos, como el nombre, apellido_1, apellido_2 y el dni.

### Requisitos de las Tablas
Las tablas en el modelo relacional deben cumplir con ciertos requisitos:

- Todos los registros son del mismo tipo.
- La tabla contiene un solo tipo de registro.
- No existen campos o atributos repetidos.
- No hay registros duplicados en la tabla.
- No existe un orden específico para el almacenamiento de los registros.
- Cada registro o tupla se identifica de manera única mediante una clave, que puede estar formada por uno o varios campos o atributos.

### Claves y Dominios

- Clave Primaria: Una clave primaria es un atributo o conjunto de atributos que identifica de manera única cada fila en una tabla. Garantiza la unicidad de los registros y es fundamental para establecer relaciones entre tablas.
- Dominio: El conjunto de valores que puede tomar un atributo se llama dominio. Define las restricciones de valores que pueden almacenarse en un atributo.

---

***Ejercicio 4.1:*** *Explica la importancia de la clave primaria en una tabla relacional y proporciona un ejemplo de una situación en la que sería crucial tener una clave primaria bien definida.
Define el término "dominio" en el contexto de una base de datos relacional y proporciona un ejemplo de un dominio válido.
Imagina una base de datos que almacena información sobre libros en una biblioteca. Diseña una tabla que cumpla con los requisitos de las tablas en el modelo relacional para representar esta información.*

***Ejercicio 4.2:*** *Define el término "dominio" en el contexto de una base de datos relacional y proporciona un ejemplo de un dominio válido.*

***Ejercicio 4.3:*** *Imagina una base de datos que almacena información sobre libros en una biblioteca. Diseña una tabla que cumpla con los requisitos de las tablas en el modelo relacional para representar esta información.*

# 5. La Utilidad de los Sistemas Gestores de Bases de Datos (SGBD)

Los **Sistemas Gestores de Bases de Datos (SGBD)** son un conjunto coordinado de programas, procedimientos, lenguajes, etc., que suministra a los usuarios no informáticos, analistas programadores y administradores las herramientas necesarias para describir y manipular los datos almacenados en la base de datos, asegurando su integridad y seguridad.

Éstos han transformado la forma en que las organizaciones gestionan y manipulan grandes cantidades de información. Estos sistemas ofrecen un conjunto de herramientas y servicios que permiten gestionar, consultar y mantener la integridad de los datos de manera eficiente. A lo largo de este apartado, evaluaremos la utilidad de los SGBD y su impacto en diferentes entornos, desde pequeñas aplicaciones hasta complejos sistemas empresariales.

## 5.1. Gestión Centralizada de la Información

Una de las principales utilidades de un **SGBD** es la capacidad de gestionar grandes volúmenes de información de manera **centralizada**. En lugar de tener múltiples sistemas independientes para gestionar datos, los SGBD consolidan todos los datos en una única plataforma. Esto facilita enormemente las tareas de mantenimiento, ya que permite a los administradores gestionar todos los datos desde un solo lugar, garantizando que los datos sean accesibles y estén actualizados en tiempo real.

La centralización también mejora la **coherencia** de los datos, ya que las modificaciones realizadas en una parte del sistema se reflejan de inmediato en todo el conjunto de datos. Esto evita inconsistencias y redundancias, que son comunes en sistemas descentralizados o en aquellos que no utilizan una base de datos central.

## 5.2. Eficiencia en la Consulta y Manipulación de Datos

Los **SGBD** proporcionan mecanismos eficientes para realizar **consultas** y **manipulaciones** de datos. El uso de lenguajes como **SQL** permite que los usuarios accedan rápidamente a grandes cantidades de datos, realicen búsquedas complejas, y extraigan la información relevante en cuestión de segundos. Esta capacidad de consulta eficiente es especialmente útil en entornos empresariales donde se requiere analizar grandes volúmenes de datos para tomar decisiones estratégicas.

Además, los **SGBD** permiten realizar operaciones de manipulación de datos (inserción, actualización y eliminación) de forma controlada y eficiente. Esto asegura que los datos se mantengan coherentes y que las operaciones concurrentes no generen inconsistencias, gracias al uso de mecanismos como **bloqueos** y **transacciones**.

## 5.3. Mantenimiento de la Integridad de los Datos

La **integridad de los datos** es crucial para cualquier sistema que maneje información crítica. Los **SGBD** garantizan la integridad de los datos a través de diversas herramientas y restricciones. Las **claves primarias** y **foráneas** son ejemplos de mecanismos que aseguran que los registros de las tablas se relacionen correctamente y que no existan inconsistencias entre diferentes partes de la base de datos.

Otra característica importante de los SGBD es la capacidad de implementar **reglas de validación**, que permiten garantizar que los datos ingresados cumplan con ciertos criterios predefinidos. Esto ayuda a evitar la entrada de datos erróneos o inválidos, reduciendo los errores en la base de datos.

## 5.4. Seguridad y Control de Acceso

Otro aspecto fundamental en el que los **SGBD** destacan es en la **seguridad** y el **control de acceso**. Los SGBD permiten asignar diferentes niveles de permisos a los usuarios, de modo que solo puedan acceder o modificar la información para la que están autorizados. Esto es particularmente importante en entornos empresariales donde se maneja información sensible o confidencial.

Las herramientas de control de acceso de los SGBD garantizan que los datos solo sean accesibles por las personas adecuadas, lo que reduce significativamente el riesgo de acceso no autorizado o de manipulación de datos. Además, los sistemas gestores ofrecen registros de auditoría que permiten monitorear qué usuarios acceden a qué datos y qué modificaciones se realizan.

## 5.5. Soporte para Transacciones y Recuperación de Fallos

Los **SGBD** también proporcionan soporte para el manejo de **transacciones**, que son secuencias de operaciones que deben ejecutarse de manera conjunta y atómica. Esto significa que si una parte de una transacción falla, todo el conjunto de operaciones se revierte, asegurando que la base de datos no quede en un estado inconsistente.

Este mecanismo es especialmente útil en sistemas financieros o comerciales, donde las operaciones (como transferencias de dinero o actualización de inventarios) deben completarse completamente o no completarse en absoluto. Junto a esto, los SGBD ofrecen capacidades de **recuperación ante fallos**, lo que permite restaurar la base de datos a un estado consistente después de un error del sistema o de hardware.

## 5.6. Escalabilidad y Rendimiento en Diferentes Entornos

Otra gran utilidad de los **SGBD** es su capacidad para escalar según las necesidades del sistema. En entornos empresariales, donde los volúmenes de datos pueden crecer exponencialmente, los SGBD están diseñados para soportar grandes cargas de trabajo sin comprometer el rendimiento. Muchos SGBD modernos ofrecen opciones de **escalabilidad vertical** (mejora de hardware) y **escalabilidad horizontal** (adición de servidores), lo que permite a las organizaciones crecer sin interrupciones.

El rendimiento también es un factor clave, y los **SGBD** permiten optimizar las consultas y operaciones mediante el uso de **índices**, **cachés**, y técnicas avanzadas de **particionamiento de datos**.

## 5.7. Flexibilidad para Integrarse con Otras Tecnologías

Finalmente, los **SGBD** destacan por su **flexibilidad** para integrarse con otras tecnologías. Ya sea mediante API, servicios web o lenguajes de programación, los SGBD permiten que las aplicaciones y sistemas externos interactúen con los datos de manera sencilla y eficiente. Esta flexibilidad es esencial para integrar sistemas empresariales complejos y asegurar que todas las partes de la infraestructura de TI trabajen en conjunto de manera coherente.

# 6. Clasificación de los Sistemas Gestores de Bases de Datos (SGBD)

Los **Sistemas Gestores de Bases de Datos (SGBD)** son fundamentales para la administración eficiente de los datos en una organización. Existen diferentes formas de clasificar estos sistemas, dependiendo de su **arquitectura**, **modelo de datos** y **ámbito de aplicación**. En este apartado, exploraremos las principales categorías de los SGBD, proporcionando una visión clara de las diferencias entre ellos y su idoneidad para distintos tipos de proyectos y entornos.

## 6.1. Clasificación por Arquitectura

La **arquitectura** de los **SGBD** define cómo se organizan y gestionan los recursos del sistema. Los tipos más comunes de arquitecturas en los SGBD incluyen:

- **Centralizados**: En un sistema centralizado, todas las operaciones de la base de datos se realizan en un único servidor o nodo. Este tipo de arquitectura es adecuado para aplicaciones pequeñas o medianas que no requieren una alta escalabilidad. Ejemplos de sistemas centralizados incluyen **MySQL** y **Microsoft SQL Server**.
  
- **Distribuidos**: Los **SGBD distribuidos** almacenan y procesan los datos en múltiples servidores o nodos interconectados. Esto permite que las bases de datos se escalen horizontalmente, lo que mejora la disponibilidad y el rendimiento. Estos sistemas son ideales para grandes organizaciones o aplicaciones que requieren alta disponibilidad y redundancia. Ejemplos de SGBD distribuidos son **Cassandra** y **Amazon Aurora**.

- **En la Nube (Cloud-Based)**: Los **SGBD en la nube** proporcionan servicios gestionados donde el proveedor de la nube administra tanto el hardware como el software. Este modelo reduce la complejidad de la infraestructura y ofrece una alta escalabilidad con costes ajustados a la demanda. Ejemplos de SGBD en la nube incluyen **Google Cloud Spanner** y **Amazon RDS**.

## 6.2. Clasificación por Modelo de Datos

Los **SGBD** también se pueden clasificar según el **modelo de datos** que utilizan para organizar y representar la información. Los principales modelos incluyen:

- **Relacionales**: Los **SGBD relacionales (RDBMS)** son los más utilizados y almacenan los datos en **tablas** relacionadas entre sí mediante claves primarias y foráneas. Las relaciones entre los datos permiten realizar consultas complejas utilizando el lenguaje **SQL**. Ejemplos de RDBMS son **Oracle**, **PostgreSQL**, y **MySQL**.

- **No Relacionales (NoSQL)**: Los **SGBD NoSQL** están diseñados para manejar grandes volúmenes de datos no estructurados o semi-estructurados. Existen diferentes subtipos de bases de datos NoSQL, como las **bases de datos documentales** (ej. **MongoDB**), **de grafos** (ej. **Neo4j**), **de clave-valor** (ej. **Redis**), y **columnares** (ej. **Cassandra**). Estos SGBD son ideales para aplicaciones que requieren escalabilidad horizontal y flexibilidad en el manejo de datos.

- **Orientados a Objetos**: En los **SGBD orientados a objetos**, los datos se almacenan en forma de **objetos**, similar a la programación orientada a objetos. Este tipo de SGBD es útil para aplicaciones que requieren almacenar datos complejos con relaciones intrincadas entre objetos. Ejemplos de estos SGBD son **db4o** y **ObjectDB**.

## 6.3. Clasificación por Ámbito de Aplicación

Dependiendo del entorno en el que se utilizan, los **SGBD** también se pueden clasificar según su **ámbito de aplicación**. Algunos ejemplos incluyen:

- **SGBD de propósito general**: Estos son los SGBD más comunes, diseñados para gestionar una amplia gama de aplicaciones y tipos de datos. Ejemplos incluyen **MySQL**, **PostgreSQL** y **Oracle**.

- **SGBD especializados**: Algunos SGBD están diseñados para aplicaciones específicas, como los sistemas de **almacenamiento de datos** o **data warehouses**, que son optimizados para la consulta de grandes volúmenes de datos históricos. Ejemplos de estos sistemas son **Teradata** y **Amazon Redshift**.

- **SGBD en tiempo real**: Estos SGBD están optimizados para aplicaciones que requieren una baja latencia y una respuesta inmediata a las consultas de datos, como los sistemas financieros o industriales. Ejemplos incluyen **VoltDB** y **MemSQL**.

## 6.4. Clasificación por Tipo de Acceso

Los SGBD también se pueden clasificar en función de la forma en que permiten acceder a los datos:

- **Batch Processing (Procesamiento por lotes)**: En este enfoque, las operaciones de base de datos se realizan en **lotes**, donde las consultas y actualizaciones se ejecutan en bloque en momentos programados. Es ideal para situaciones en las que no se requiere acceso inmediato a los datos.

- **Online Transaction Processing (OLTP)**: Estos sistemas están diseñados para gestionar operaciones de base de datos en tiempo real, permitiendo que los usuarios realicen **transacciones** en línea de manera inmediata. Los SGBD orientados a OLTP, como **SQL Server** y **Oracle**, son muy utilizados en sistemas de ventas, bancos y aplicaciones comerciales.

- **Online Analytical Processing (OLAP)**: Los sistemas OLAP se optimizan para la **consulta y análisis de grandes volúmenes de datos**, permitiendo a los usuarios realizar análisis complejos y tomar decisiones informadas. Se utilizan en entornos de business intelligence, donde el análisis de datos es fundamental para la estrategia empresarial.

## 6.5. Comparativa entre los Diferentes Tipos de SGBD

Cada tipo de **SGBD** tiene sus propias ventajas y desventajas, y la elección del sistema adecuado depende en gran medida de los requisitos del proyecto y del entorno en el que se implementará. A continuación, se presenta una comparativa entre los tipos más comunes:

- **Relacionales vs. No Relacionales**: Mientras que los SGBD relacionales ofrecen una fuerte consistencia y son adecuados para datos estructurados, los SGBD NoSQL proporcionan mayor flexibilidad y escalabilidad, siendo ideales para datos no estructurados y aplicaciones que requieren un rápido crecimiento horizontal.
  
- **Centralizados vs. Distribuidos**: Los SGBD centralizados son más fáciles de administrar pero pueden ser un cuello de botella en términos de escalabilidad. Por otro lado, los SGBD distribuidos son ideales para aplicaciones de gran escala, pero requieren una gestión más compleja de la sincronización y coherencia de los datos.

# 7. Elementos de un Sistema Gestor de Bases de Datos y su Función

Los **Sistemas Gestores de Bases de Datos (SGBD)** están compuestos por varios elementos fundamentales que permiten su funcionamiento eficiente. Cada uno de estos elementos cumple una función específica, desde el almacenamiento de los datos hasta el control de las transacciones y la seguridad. En este apartado, analizaremos los principales componentes de un SGBD y explicaremos cómo contribuyen al manejo y la organización de los datos.

## 7.1. Motor de Almacenamiento

El **motor de almacenamiento** es el componente encargado de la **gestión física** de los datos. Su función principal es administrar cómo se almacenan, organizan y recuperan los datos en los discos o sistemas de almacenamiento. Existen diferentes tipos de motores de almacenamiento que pueden ajustarse a distintas necesidades, como los motores que priorizan la velocidad de escritura, la recuperación de fallos o la compresión de datos.

Algunos SGBD permiten el uso de múltiples motores de almacenamiento, lo que ofrece flexibilidad en la manera de manejar los datos. Por ejemplo, **MySQL** ofrece opciones como **InnoDB** para el procesamiento transaccional y **MyISAM** para consultas rápidas pero sin soporte transaccional.

## 7.2. Procesador de Consultas

El **procesador de consultas** es responsable de interpretar y ejecutar las **consultas SQL** realizadas por los usuarios. Este componente toma las instrucciones dadas por el usuario o la aplicación, optimiza las consultas y las ejecuta de la manera más eficiente posible.

El procesador de consultas se encarga de tareas como la **optimización de consultas**, que busca la mejor forma de acceder a los datos minimizando el tiempo de ejecución y el uso de recursos. También convierte las consultas SQL de alto nivel en instrucciones de bajo nivel que pueden ser ejecutadas por el motor de almacenamiento.

## 7.3. Gestor de Transacciones

El **gestor de transacciones** garantiza que todas las operaciones que ocurren en la base de datos se realicen de manera **atómica**, **consistente**, **aislada** y **duradera** (propiedades ACID). Este elemento es fundamental para asegurar que las bases de datos mantengan su integridad, incluso en situaciones donde ocurren fallos o interrupciones en el sistema.

El gestor de transacciones coordina todas las operaciones involucradas en una transacción para que se ejecuten correctamente. Si alguna parte de una transacción falla, el gestor se asegura de que se reviertan todas las operaciones, dejando la base de datos en un estado consistente.

## 7.4. Gestor de Concurrencia

En los sistemas que permiten múltiples usuarios o procesos trabajando simultáneamente, el **gestor de concurrencia** es clave para coordinar el acceso concurrente a los datos. Su función principal es garantizar que varias transacciones que ocurren al mismo tiempo no entren en conflicto entre sí.

El gestor de concurrencia utiliza técnicas como el **bloqueo de registros** o **versionado multiversión (MVCC)** para asegurar que las transacciones no interfieran entre sí y que cada usuario vea una vista consistente de los datos. Esto es especialmente importante en aplicaciones donde muchos usuarios realizan consultas y actualizaciones simultáneamente, como en sistemas de ventas o banca en línea.

## 7.5. Controlador de Seguridad

El **controlador de seguridad** es responsable de garantizar que solo los **usuarios autorizados** tengan acceso a la base de datos y a determinadas operaciones. Este componente implementa medidas de seguridad como la **autenticación**, que verifica la identidad del usuario, y la **autorización**, que controla qué operaciones puede realizar cada usuario en función de sus permisos.

El controlador de seguridad también asegura que los datos se mantengan **confidenciales** y **protegidos** frente a accesos no autorizados o ataques. Esto incluye la implementación de políticas de **encriptación** y la administración de roles y permisos de los usuarios para limitar el acceso a los datos más sensibles.

## 7.6. Sistema de Recuperación y Copias de Seguridad

El **sistema de recuperación** es un componente crucial que garantiza que, en caso de fallo del sistema o pérdida de datos, la base de datos pueda restaurarse a un estado **consistente** y **funcional**. Esto incluye mecanismos para realizar **copias de seguridad** (backups) periódicas y restaurarlas cuando sea necesario, así como herramientas para la **recuperación ante desastres**.

El sistema de recuperación también gestiona los **registros de transacciones**, que permiten reejecutar las operaciones de la base de datos en caso de que ocurra un fallo durante una transacción crítica. De esta forma, se minimiza el riesgo de pérdida de datos y se garantiza la continuidad del servicio.

## 7.7. Sistema de Gestión de Datos Distribuidos

En un entorno donde los datos están distribuidos en diferentes ubicaciones físicas o lógicas, el **sistema de gestión de datos distribuidos** es el encargado de coordinar las operaciones entre estos distintos nodos. Este sistema asegura que los datos distribuidos se mantengan **coherentes** y **sincronizados**, lo que es esencial para mantener la integridad de la información en bases de datos distribuidas.

Este componente gestiona la **replicación** y **particionamiento** de los datos entre diferentes servidores, lo que permite que los SGBD distribuidos puedan ofrecer mayor escalabilidad, rendimiento y disponibilidad.

# 8. Bases de Datos según la Ubicación de la Información: Locales y Distribuidas

La forma en que se distribuye la información en una base de datos afecta directamente tanto al rendimiento como a la accesibilidad y la disponibilidad de los datos. Las **bases de datos** pueden clasificarse en **locales** o **distribuidas** dependiendo de dónde se almacenen los datos y cómo se accede a ellos. En este apartado, examinaremos ambos tipos y sus características, así como la creciente relevancia de las bases de datos distribuidas en entornos empresariales modernos.

## 8.1. Bases de Datos Locales

Las **bases de datos locales** son aquellas en las que toda la información se encuentra almacenada en un único servidor o ubicación física. Este tipo de bases de datos es común en entornos más pequeños o centralizados, donde no se requiere una distribución geográfica de los datos. Un ejemplo típico de una base de datos local es un sistema que corre en un solo servidor en el centro de datos de una empresa.

### Ventajas de las Bases de Datos Locales

- **Simplicidad**: Las bases de datos locales son más fáciles de gestionar, ya que los datos están centralizados en un único servidor o ubicación, lo que simplifica la administración y el mantenimiento.
- **Velocidad de acceso**: En entornos controlados y centralizados, el acceso a los datos suele ser rápido, ya que no hay latencias derivadas de la distribución geográfica.

### Desventajas de las Bases de Datos Locales

- **Escalabilidad limitada**: A medida que crece el volumen de datos o el número de usuarios, puede ser más difícil escalar una base de datos local debido a las limitaciones de un solo servidor.
- **Falta de redundancia**: Si el servidor local falla, se pierde el acceso a los datos hasta que se restablezca el sistema. Esto genera vulnerabilidad a fallos de hardware y afecta a la disponibilidad de la información.

## 8.2. Bases de Datos Distribuidas

Las **bases de datos distribuidas** almacenan los datos en múltiples servidores o ubicaciones físicas diferentes. Los nodos que componen una base de datos distribuida pueden estar dispersos geográficamente y conectados a través de una red. Este enfoque permite gestionar grandes volúmenes de información de manera más eficiente, además de mejorar la disponibilidad y la redundancia de los datos.

### Ventajas de las Bases de Datos Distribuidas

- **Alta disponibilidad**: Al tener los datos distribuidos en varios nodos, una base de datos distribuida puede seguir funcionando incluso si uno o más nodos fallan, asegurando así la disponibilidad de los datos.
- **Escalabilidad**: Las bases de datos distribuidas permiten una escalabilidad horizontal, lo que significa que es posible agregar más nodos a medida que crece el volumen de datos o la demanda de procesamiento, lo que mejora el rendimiento del sistema.
- **Tolerancia a fallos**: Estas bases de datos suelen ser más resistentes a fallos, ya que los datos están replicados en varios nodos. Si un nodo falla, otro puede asumir su función y evitar interrupciones en el servicio.

### Desafíos de las Bases de Datos Distribuidas

- **Complejidad**: Administrar una base de datos distribuida es más complejo, ya que implica sincronizar y mantener la consistencia entre nodos dispersos. Además, las consultas y transacciones distribuidas pueden requerir más tiempo para completarse debido a la latencia de red.
- **Consistencia**: En algunos casos, para mejorar la disponibilidad, se puede sacrificar algo de consistencia en los datos. Esto sigue el principio **CAP** (Consistencia, Disponibilidad y Tolerancia a Particiones), en el que no se pueden garantizar los tres aspectos al mismo tiempo.

## 8.3. Modelos de Consistencia en Bases de Datos Distribuidas

Una de las cuestiones clave en las **bases de datos distribuidas** es cómo mantener la **consistencia** de los datos a través de múltiples nodos. Existen varios modelos de consistencia:

- **Consistencia Fuerte**: Garantiza que todos los nodos vean los mismos datos en todo momento. Es más costosa en términos de rendimiento, ya que requiere sincronización constante entre los nodos.
- **Consistencia Eventual**: Los datos pueden estar temporalmente inconsistentes, pero eventualmente todos los nodos se sincronizarán. Este modelo es común en aplicaciones que requieren alta disponibilidad y escalabilidad, como las redes sociales.
- **Consistencia Causal**: Basada en la idea de que ciertas operaciones son dependientes de otras. Las actualizaciones solo se propagan cuando tienen sentido lógico hacerlo, lo que reduce la necesidad de sincronización constante.

## 8.4. Utilidad de las Bases de Datos Distribuidas en Entornos Modernos

Las bases de datos distribuidas son cada vez más comunes en **entornos empresariales modernos**, especialmente en aplicaciones que necesitan alta disponibilidad, escalabilidad masiva y tolerancia a fallos. Estas bases de datos permiten que empresas globales, como las de comercio electrónico y redes sociales, operen con eficacia a nivel mundial, ofreciendo a los usuarios acceso a la información de forma rápida y confiable, sin importar su ubicación.

Además, con el auge de los **sistemas en la nube**, muchas organizaciones están adoptando bases de datos distribuidas como parte de su infraestructura. Los proveedores de servicios en la nube, como **Amazon Web Services (AWS)**, **Microsoft Azure**, y **Google Cloud Platform**, ofrecen soluciones distribuidas que permiten almacenar y acceder a datos de manera eficiente en múltiples ubicaciones geográficas, garantizando la continuidad del servicio en caso de fallos regionales.

## 8.5. Comparativa entre Bases de Datos Locales y Distribuidas

A la hora de elegir entre una **base de datos local** o una **base de datos distribuida**, es esencial considerar los requisitos específicos del proyecto. Las bases de datos locales son adecuadas para aplicaciones con bajos volúmenes de datos y donde la simplicidad y el control son primordiales. Sin embargo, a medida que los sistemas crecen y se distribuyen geográficamente, las bases de datos distribuidas ofrecen mayores ventajas en términos de escalabilidad, disponibilidad y tolerancia a fallos.

Las bases de datos distribuidas no solo permiten manejar grandes volúmenes de datos, sino que también garantizan la continuidad del servicio y la redundancia, lo que es crítico en aplicaciones donde la **alta disponibilidad** es prioritaria.

---

***Ejercicio 8.1:*** *Imagina que trabajas en una pequeña empresa local que utiliza una base de datos local para gestionar sus operaciones. Sin embargo, la empresa ha decidido expandirse y abrir nuevas sedes en diferentes ciudades, lo que requerirá que los datos sean accesibles desde varios lugares geográficos.*
1. *Enumera las principales diferencias entre el modelo actual de base de datos local y el modelo de base de datos distribuida que podría implementarse tras la expansión.*
2. *¿Qué ventajas crees que aportaría una base de datos distribuida a la empresa tras su expansión?*
3. *¿Cuáles serían algunos de los retos que podrían surgir al migrar de un sistema local a uno distribuido?*


***Ejercicio 8.2:*** *A continuación, se te presentan tres escenarios en los que se manejan grandes volúmenes de información. Determina si una base de datos distribuida o una base de datos local sería más adecuada en cada uno de ellos, justificando tu respuesta:*

1. *Red Social Global: Una plataforma de red social con millones de usuarios distribuidos por todo el mundo, donde los datos de los perfiles de usuarios y publicaciones deben estar accesibles en tiempo real.*
2. *Sistema de Facturación Local: Una pequeña empresa que gestiona la facturación de sus servicios desde una única sede, y todos los empleados se conectan a la base de datos desde la misma ubicación física.*
3. *Comercio Electrónico Internacional: Una tienda en línea con clientes en todo el mundo, que requiere manejar pedidos y consultas de productos en tiempo real, garantizando una alta disponibilidad en todos los países.*

# 9. Fragmentación de la Información y Políticas de Distribución

En sistemas de bases de datos distribuidos, uno de los mayores desafíos es cómo dividir y distribuir los datos entre diferentes nodos o ubicaciones físicas sin comprometer el rendimiento ni la coherencia. La **fragmentación de la información** y las **políticas de distribución** juegan un papel clave en este proceso, ya que permiten optimizar el acceso a los datos, mejorar la escalabilidad y asegurar la eficiencia en sistemas distribuidos. En este apartado, exploraremos los tipos de fragmentación y las políticas que determinan cómo se distribuyen los datos en bases de datos distribuidas.

## 9.1. Fragmentación Horizontal

La **fragmentación horizontal** consiste en dividir una tabla en subconjuntos de filas, donde cada fragmento contiene un conjunto específico de registros basados en un criterio. Por ejemplo, si tenemos una tabla de clientes, podríamos fragmentarla horizontalmente de acuerdo con el país o la región de los clientes. Cada fragmento se almacena en un nodo o servidor diferente.

- **Ventajas**: La fragmentación horizontal es beneficiosa cuando diferentes aplicaciones o usuarios acceden a subconjuntos específicos de datos. Esto permite que cada nodo almacene solo los registros que necesita, lo que puede mejorar la **eficiencia** y **reducción de latencia** en las consultas.

- **Desafíos**: La principal dificultad es asegurarse de que las consultas que involucren datos de varios fragmentos sean ejecutadas correctamente. Esto requiere coordinación entre los nodos para reunir los resultados de todos los fragmentos.

## 9.2. Fragmentación Vertical

La **fragmentación vertical** divide las tablas en subconjuntos de columnas. Cada fragmento contiene solo un conjunto de atributos específicos de la tabla original, de manera que los registros se distribuyen en varias ubicaciones, pero las claves primarias se replican en cada fragmento para asegurar que los registros puedan ser reconstruidos cuando sea necesario.

Por ejemplo, si tenemos una tabla que contiene información sobre empleados, podríamos almacenar las columnas con información personal en un nodo y las columnas con información de nómina en otro.

- **Ventajas**: La fragmentación vertical es útil cuando diferentes partes de la aplicación acceden solo a ciertas columnas de una tabla. Esto reduce el tamaño de las consultas, mejora el rendimiento y optimiza el almacenamiento.

- **Desafíos**: La complejidad en la reconstitución de los registros completos puede aumentar, y las consultas que requieren datos de múltiples fragmentos verticales pueden resultar más lentas si deben reunirse los datos de varios nodos.

## 9.3. Fragmentación Híbrida

La **fragmentación híbrida** combina elementos de la fragmentación horizontal y vertical. En este enfoque, una tabla puede ser dividida primero horizontalmente, y luego cada fragmento horizontal puede ser dividido verticalmente, o viceversa. Este tipo de fragmentación ofrece una mayor flexibilidad para ajustar la distribución de los datos según las necesidades específicas del sistema.

- **Ventajas**: La fragmentación híbrida permite una mayor personalización y optimización de la distribución de datos, lo que puede mejorar el rendimiento tanto en lectura como en escritura en sistemas distribuidos.

- **Desafíos**: Aumenta la complejidad de la implementación y la administración del sistema, ya que debe coordinarse la combinación de fragmentación horizontal y vertical.

## 9.4. Ventajas de la Fragmentación y Distribución de Datos

La **fragmentación** y **distribución** de los datos ofrecen varias ventajas importantes en sistemas distribuidos:

- **Escalabilidad**: La fragmentación permite que la base de datos se escale horizontalmente agregando más nodos o servidores, lo que mejora el rendimiento y la capacidad de almacenamiento.
  
- **Optimización del Rendimiento**: Al almacenar los fragmentos donde más se necesitan, se pueden reducir significativamente los tiempos de consulta y mejorar el rendimiento general del sistema.

- **Tolerancia a Fallos y Alta Disponibilidad**: La distribución y replicación de los fragmentos permiten que el sistema continúe funcionando incluso si uno o más nodos fallan, mejorando la disponibilidad y confiabilidad de los datos.

## 9.5. Desafíos de la Fragmentación y Distribución de Datos

A pesar de sus beneficios, la fragmentación y la distribución de datos también presentan ciertos desafíos:

- **Complejidad en la Gestión**: Administrar un sistema distribuido con fragmentos implica una mayor complejidad, ya que las consultas y las transacciones deben coordinarse a través de varios nodos para garantizar la coherencia de los datos.

- **Coherencia y Sincronización**: Garantizar que los fragmentos de datos distribuidos se mantengan coherentes y actualizados entre todos los nodos es un desafío importante. Las operaciones distribuidas suelen requerir protocolos de consenso o sincronización, lo que puede afectar el rendimiento.

## 9.6. Consideraciones en la Elección de una Estrategia de Fragmentación

La elección de la estrategia de fragmentación adecuada depende de varios factores:

- **Patrones de Consulta**: Si las consultas suelen acceder a subconjuntos específicos de datos, la fragmentación horizontal o vertical puede ser la mejor opción para optimizar el rendimiento.
  
- **Requisitos de Disponibilidad**: Si la disponibilidad es crítica, la replicación parcial o completa debe considerarse para asegurar que los datos siempre estén accesibles, incluso en caso de fallos.

- **Tamaño de la Base de Datos**: La fragmentación es especialmente útil en bases de datos grandes, donde la distribución de los datos puede aliviar la carga en un solo servidor y mejorar la eficiencia del sistema.




