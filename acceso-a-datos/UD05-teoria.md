---
layout: default
title: UD05. Desarrollo de aplicaciones que gestionan bases de datos nativas XML.
permalink: /acceso-a-datos/ud05/teoria/
author: Teo Rojas
date: Febrero 2025
abstract: Sinopsis de la unidad 05
---

# Índice
1. [Introducción y diferencias con bases de datos relacionales y objeto-relacionales](#1-introducción-y-diferencias-con-bases-de-datos-relacionales-y-objeto-relacionales)  
   1.1. [Concepto de bases de datos nativas XML](#11-concepto-de-bases-de-datos-nativas-xml)  
   1.2. [Diferencias con bases de datos relacionales y objeto-relacionales](#12-diferencias-con-bases-de-datos-relacionales-y-objeto-relacionales)  
   1.3. [Ventajas e inconvenientes de las bases de datos XML](#13-ventajas-e-inconvenientes-de-las-bases-de-datos-xml)  
2. [Instalación y configuración del gestor de base de datos XML](#2-instalación-y-configuración-del-gestor-de-base-de-datos-xml)  
   2.1. [Gestores comerciales y libres](#21-gestores-comerciales-y-libres)  
   2.2. [Instalación y configuración de BaseX](#22-instalación-y-configuración-de-basex)  
   2.3. [Administración y gestión de usuarios](#23-administración-y-gestión-de-usuarios)  
   2.4. [Estrategias de almacenamiento y rendimiento](#24-estrategias-de-almacenamiento-y-rendimiento)  
3. [Modelado de datos en bases de datos XML](#3-modelado-de-datos-en-bases-de-datos-xml)  
   3.1. [Estructura de documentos XML en bases de datos nativas](#31-estructura-de-documentos-xml-en-bases-de-datos-nativas)  
   3.2. [Uso de colecciones y documentos](#32-uso-de-colecciones-y-documentos)  
   3.3. [Identificadores únicos e indexación](#33-identificadores-únicos-e-indexación)  
4. [Manipulación de datos en bases de datos XML](#4-manipulación-de-datos-en-bases-de-datos-xml)  
   4.1. [Gestión de documentos en bases de datos XML](#41-gestión-de-documentos-en-bases-de-datos-xml)  
   4.2. [Modificar y eliminar documentos XML en BaseX](#42-modificar-y-eliminar-documentos-xml-en-basex)  
   4.3. [Clases y métodos en Java para bases de datos XML](#43-clases-y-métodos-en-java-para-bases-de-datos-xml)  
   4.4. [Tratamiento de excepciones en operaciones con bases de datos XML](#44-tratamiento-de-excepciones-en-operaciones-con-bases-de-datos-xml)  
5. [Consultas en bases de datos XML](#5-consultas-en-bases-de-datos-xml)  
   5.1. [Introducción a XPath y XQuery](#51-introducción-a-xpath-y-xquery)  
   5.2. [Uso de XQuery en bases de datos XML](#52-uso-de-xquery-en-bases-de-datos-xml)  
   5.3. [Consultas desde Java con XPath y XQuery](#53-consultas-desde-java-con-xpath-y-xquery)  

<!-- 
6. [Integración con aplicaciones Java](#6-integración-con-aplicaciones-java)  
   6.1. [Establecimiento y cierre de conexiones](#61-establecimiento-y-cierre-de-conexiones)  
   6.2. [Acceso a bases de datos XML desde Java](#62-acceso-a-bases-de-datos-xml-desde-java)  
   6.3. [Transformación de XML a otros formatos (JSON, CSV, HTML)](#63-transformación-de-xml-a-otros-formatos-json-csv-html)  
7. [Gestión de transacciones en bases de datos XML](#7-gestión-de-transacciones-en-bases-de-datos-xml)  
   7.1. [Concepto de transacción en bases de datos XML](#71-concepto-de-transacción-en-bases-de-datos-xml)  
   7.2. [Control de concurrencia y consistencia](#72-control-de-concurrencia-y-consistencia)  
   7.3. [Implementación de transacciones en Java](#73-implementación-de-transacciones-en-java)  
8. [Casos prácticos y ejercicios](#8-casos-prácticos-y-ejercicios)  
   8.1. [Implementación de una base de datos XML para gestión de bibliotecas](#81-implementación-de-una-base-de-datos-xml-para-gestión-de-bibliotecas)  
   8.2. [Desarrollo de una aplicación de facturación basada en XML](#82-desarrollo-de-una-aplicación-de-facturación-basada-en-xml)  
   8.3. [Ejercicios de optimización y rendimiento](#83-ejercicios-de-optimización-y-rendimiento)  
9. [Pruebas y documentación de las aplicaciones desarrolladas](#9-pruebas-y-documentación-de-las-aplicaciones-desarrolladas)  
   9.1. [Estrategias de prueba para bases de datos XML](#91-estrategias-de-prueba-para-bases-de-datos-xml)  
   9.2. [Documentación y mantenimiento](#92-documentación-y-mantenimiento)  
-->

# 1. Introducción y diferencias con bases de datos relacionales y objeto-relacionales

Las bases de datos juegan un papel fundamental en el almacenamiento y gestión de la información en aplicaciones modernas. Tradicionalmente, los sistemas de gestión de bases de datos han seguido dos modelos principales: el relacional y el objeto-relacional. Sin embargo, con la creciente adopción de tecnologías basadas en documentos y datos semiestructurados, han surgido alternativas como las **bases de datos nativas XML**, diseñadas específicamente para almacenar y procesar datos en formato XML de manera eficiente.

Las bases de datos **relacionales** se estructuran en tablas con filas y columnas, aplicando un esquema rígido y bien definido para la organización de los datos. Este modelo es ideal para aplicaciones con estructuras de datos predecibles y altamente normalizadas. Por otro lado, las bases de datos **objeto-relacionales** buscan combinar las ventajas del modelo relacional con el paradigma de la programación orientada a objetos, permitiendo almacenar estructuras de datos más complejas mediante la definición de tipos y relaciones avanzadas.

En contraste, las **bases de datos nativas XML** están diseñadas para manejar documentos XML como unidades de almacenamiento primarias, en lugar de dividir los datos en tablas y columnas. Este enfoque permite una mayor flexibilidad en el almacenamiento de información jerárquica y semiestructurada, lo que resulta especialmente útil en entornos donde la estructura de los datos no está completamente definida o varía con el tiempo.

A continuación, se explorará en detalle qué son las bases de datos nativas XML y cómo se diferencian de los modelos tradicionales.

## 1.1. Concepto de bases de datos nativas XML

Las **bases de datos nativas XML (Native XML Databases, NXDBs)** son sistemas diseñados específicamente para almacenar, recuperar y manipular datos en formato XML sin necesidad de convertirlos a estructuras tabulares. En estos sistemas, los documentos XML se tratan como entidades de primer nivel, y las consultas y manipulaciones se realizan utilizando lenguajes específicos como **XPath**, **XQuery** o **XSLT**.

A diferencia de las bases de datos relacionales, que requieren que los datos se ajusten a un esquema fijo de tablas y columnas, una base de datos nativa XML permite almacenar documentos XML completos con su estructura jerárquica intacta. Esto es ideal para aplicaciones en las que los datos tienen una naturaleza **flexible y altamente anidada**, como en el caso de:
- Documentos legales y normativas.
- Datos científicos y bioinformáticos.
- Configuraciones de software en XML.
- Datos de catálogos y comercio electrónico con estructuras cambiantes.

### Características principales de las bases de datos nativas XML:
1. **Almacenamiento basado en documentos**: En lugar de registros en tablas, los datos se almacenan como documentos XML completos.
2. **Consultas especializadas**: Se utilizan lenguajes como **XQuery** y **XPath** en lugar de SQL para recuperar y manipular información.
3. **Estructura jerárquica**: Los datos mantienen su organización original en forma de árbol, lo que facilita la representación de relaciones complejas.
4. **Indexación optimizada para XML**: Se emplean índices especializados para mejorar el rendimiento en la búsqueda y manipulación de elementos dentro de documentos XML.
5. **Validación flexible**: Se pueden definir esquemas XML (DTD o XML Schema) para validar la estructura de los documentos, pero no es obligatorio.
6. **Interoperabilidad con aplicaciones web y servicios**: XML es un estándar ampliamente utilizado en integración de sistemas y servicios web, lo que facilita la comunicación entre diferentes aplicaciones.

Las bases de datos nativas XML se diferencian de los sistemas **relacionales** y **objeto-relacionales** en que **no fuerzan la conversión de los datos XML a un formato tabular**, evitando así problemas de rendimiento y complejidad en la conversión de estructuras anidadas. Esto las convierte en una excelente opción para escenarios donde el uso de XML es predominante y se requiere una alta flexibilidad en la estructura de los datos.

En la siguiente sección, se analizarán más a fondo las diferencias entre las bases de datos nativas XML y otros modelos de bases de datos, identificando sus ventajas y desventajas en distintos contextos de aplicación.

## 1.2. Diferencias con bases de datos relacionales y objeto-relacionales

Las bases de datos nativas XML presentan diferencias clave en comparación con las bases de datos **relacionales** y **objeto-relacionales**, tanto en la estructura de almacenamiento como en la manera en que los datos son consultados y manipulados. A continuación, se analizan estas diferencias en términos de arquitectura, modelo de datos, rendimiento y casos de uso.

### Modelo de Datos

| Característica | Bases de Datos Relacionales | Bases de Datos Objeto-Relacionales | Bases de Datos Nativas XML |
|--------------|-----------------------------|----------------------------------|-----------------------------|
| **Estructura** | Tablas, filas y columnas con esquemas rígidos | Modelo relacional extendido con objetos | Documentos XML con estructura jerárquica y flexible |
| **Almacenamiento** | Basado en registros y relaciones entre tablas | Uso de objetos y tipos personalizados | Documentos XML almacenados en su formato original |
| **Normalización** | Alta normalización para evitar redundancia | Soporta normalización, pero con estructuras más complejas | No requiere normalización; mantiene la estructura de los documentos |
| **Relaciones** | Basadas en claves primarias y foráneas | Relaciones entre objetos y clases | Relaciones implícitas en la estructura jerárquica del XML |

### Lenguajes de Consulta

| Característica | Bases de Datos Relacionales | Bases de Datos Objeto-Relacionales | Bases de Datos Nativas XML |
|--------------|-----------------------------|----------------------------------|-----------------------------|
| **Lenguaje de consulta** | SQL (Structured Query Language) | SQL con extensiones para objetos | XPath y XQuery |
| **Flexibilidad en consultas** | Basado en combinaciones de tablas y filtros | Compatible con SQL y extensiones OO | Orientado a la navegación de documentos XML |
| **Optimización** | Optimización de consultas con índices y claves | Similar al relacional, pero con soporte para objetos | Optimización basada en indexación de nodos y estructuras XML |

Ejemplo de consulta en SQL:
```sql
SELECT nombre, edad FROM empleados WHERE departamento = 'TI';
```

Ejemplo de consulta en XQuery:
```xquery
for $empleado in //empleados/empleado[departamento = 'TI']
return <resultado>{$empleado/nombre, $empleado/edad}</resultado>
```

### Rendimiento y Escalabilidad

| Característica | Bases de Datos Relacionales | Bases de Datos Objeto-Relacionales | Bases de Datos Nativas XML |
|--------------|-----------------------------|----------------------------------|-----------------------------|
| **Velocidad en consultas estructuradas** | Alta, gracias a índices y relaciones optimizadas | Similar al modelo relacional | Menor en consultas complejas sin indexación adecuada |
| **Manejo de datos dinámicos** | Poco flexible; requiere cambios en el esquema | Más flexible que el relacional, pero con restricciones | Alta flexibilidad; permite documentos de estructura variable |
| **Escalabilidad** | Alta escalabilidad horizontal | Similar al modelo relacional | Escalabilidad variable, depende del motor de base de datos |

### Casos de Uso

| Escenario | Bases de Datos Relacionales | Bases de Datos Objeto-Relacionales | Bases de Datos Nativas XML |
|----------|-----------------------------|----------------------------------|-----------------------------|
| **Aplicaciones empresariales** | ✓ | ✓ | ✕ |
| **Sistemas de información estructurada** | ✓ | ✓ | ✕ |
| **Sistemas con datos semiestructurados (XML, JSON, etc.)** | ✕ | ✕ | ✓ |
| **Gestión de documentos y archivos legales** | ✕ | ✕ | ✓ |
| **Interoperabilidad con aplicaciones web y servicios REST** | ✕ | ✕ | ✓ |

Las bases de datos **relacionales y objeto-relacionales** son la mejor opción para **aplicaciones empresariales tradicionales**, como sistemas de gestión de clientes, inventarios o contabilidad, donde los datos están altamente estructurados.

Por otro lado, las bases de datos **nativas XML** son más adecuadas para **almacenar y procesar documentos**, como:
- Datos en formato XML intercambiados entre aplicaciones.
- Documentos legales o normativas con estructura jerárquica.
- Configuraciones de software almacenadas en XML.
- Almacenamiento de registros médicos o científicos en XML.

En conclusión, las bases de datos nativas XML **no reemplazan** a las bases de datos relacionales, sino que son una alternativa especializada para manejar información con una estructura dinámica o semiestructurada.

## 1.3. Ventajas e inconvenientes de las bases de datos XML

Las bases de datos nativas XML ofrecen diversas ventajas que las hacen adecuadas para ciertos tipos de aplicaciones, pero también presentan desafíos que deben considerarse al decidir su implementación. A continuación, se analizan sus principales beneficios y limitaciones.

### Ventajas de las bases de datos nativas XML

1. **Flexibilidad en la estructura de los datos**: Las bases de datos XML permiten almacenar información sin necesidad de adherirse a un esquema rígido, lo que facilita la gestión de datos con estructuras jerárquicas y cambiantes.
2. **Optimización para datos semiestructurados**: Son ideales para almacenar información semiestructurada que no se ajusta bien al modelo relacional, como documentos legales, configuraciones de software y datos científicos.
3. **Uso de estándares abiertos**: XML es un estándar ampliamente utilizado en aplicaciones web y en la interoperabilidad entre sistemas, lo que facilita la integración con otras tecnologías y plataformas.
4. **Lenguajes de consulta especializados**: Lenguajes como **XPath** y **XQuery** permiten realizar búsquedas avanzadas dentro de documentos XML de manera eficiente, sin necesidad de transformar la información a una estructura tabular.
5. **Almacenamiento y recuperación eficiente de documentos completos**: A diferencia de las bases de datos relacionales, que fragmentan la información en múltiples tablas, una base de datos XML permite recuperar documentos enteros sin necesidad de reconstrucciones complejas.
6. **Interoperabilidad con servicios web**: Muchos servicios web utilizan XML como formato de intercambio de datos (SOAP, REST), lo que hace que las bases de datos nativas XML sean una opción natural para el almacenamiento de estos datos.

### Inconvenientes de las bases de datos nativas XML

1. **Menor eficiencia en consultas complejas**: Las consultas que requieren operaciones avanzadas como agregaciones y joins pueden ser más lentas en comparación con bases de datos relacionales, especialmente si no se implementan índices adecuados.
2. **Consumo de almacenamiento superior**: El formato XML suele ocupar más espacio que las estructuras optimizadas de bases de datos relacionales, debido a su naturaleza basada en texto y la redundancia de etiquetas.
3. **Falta de estandarización en implementaciones**: Aunque XML es un estándar, los distintos gestores de bases de datos XML pueden tener diferencias en su implementación, lo que puede dificultar la portabilidad entre sistemas.
4. **Coste de aprendizaje y adaptación**: El uso de lenguajes como **XQuery** y **XPath** requiere conocimientos específicos que pueden no ser familiares para desarrolladores acostumbrados a SQL.
5. **Escalabilidad limitada en grandes volúmenes de datos**: Si bien pueden manejar documentos XML de tamaño moderado de manera eficiente, el rendimiento puede verse afectado cuando se trata de grandes volúmenes de información sin una indexación adecuada.

### Comparación con bases de datos relacionales

| Característica | Bases de Datos Relacionales | Bases de Datos Nativas XML |
|--------------|-----------------------------|-----------------------------|
| **Estructura de datos** | Tablas con filas y columnas | Documentos XML jerárquicos |
| **Flexibilidad del esquema** | Rígido, necesita modificaciones para cambios | Flexible, permite cambios dinámicos |
| **Consultas** | SQL optimizado para consultas estructuradas | XPath/XQuery optimizados para navegación de documentos |
| **Eficiencia en búsquedas** | Alta con índices y optimización de consultas | Depende de la indexación de nodos XML |
| **Uso típico** | Aplicaciones transaccionales, ERP, CRM | Almacenamiento de documentos, integración de datos en XML |

Por lo tanto las bases de datos nativas XML son una excelente opción cuando se requiere flexibilidad y almacenamiento de documentos semiestructurados, pero presentan desafíos en rendimiento y consumo de recursos que deben considerarse al diseñar una solución de almacenamiento de datos.

# 2. Instalación y configuración del gestor de base de datos XML

El uso de bases de datos nativas XML requiere la instalación y configuración de un sistema gestor especializado que permita almacenar, recuperar y manipular documentos XML de manera eficiente. Existen múltiples opciones en el mercado, tanto comerciales como de código abierto, que ofrecen diversas características para adaptarse a diferentes necesidades.

A diferencia de los gestores de bases de datos relacionales, que requieren la conversión de los datos XML en estructuras tabulares, los gestores de bases de datos XML almacenan los documentos en su formato original, optimizando las consultas y operaciones sobre datos jerárquicos.

A continuación, se describen los principales gestores de bases de datos XML y se detallan los pasos para la instalación y configuración de **BaseX**, una de las opciones más ligeras y optimizadas en términos de rendimiento.

## 2.1. Gestores comerciales y libres

Las bases de datos nativas XML pueden ser implementadas utilizando tanto **gestores comerciales** como **gestores de código abierto**. La elección del gestor adecuado depende de las necesidades del proyecto, el presupuesto y los requisitos de escalabilidad.

### 2.1.1. Gestores Comerciales
Estos gestores ofrecen soporte técnico y funcionalidades avanzadas para entornos empresariales, aunque requieren una licencia de pago.

a) **MarkLogic**
   - Soporte completo para XML, JSON y RDF.
   - Motor de búsqueda optimizado para consultas XQuery.
   - Integración con Big Data y Machine Learning.
   - Seguridad avanzada con control de acceso y cifrado.   

b) **Oracle Berkeley DB XML**
   - Permite almacenamiento de XML nativo con alto rendimiento.
   - Integración con bases de datos relacionales de Oracle.
   - Compatible con XQuery y XPath para consultas avanzadas.
   - Optimización mediante índices específicos para XML.

c) **IBM DB2 XML Extender**
   - Extiende la funcionalidad de IBM DB2 para manejar documentos XML.
   - Permite combinar XML con datos relacionales.
   - Soporte para XQuery y SQL/XML.
   - Opciones avanzadas de seguridad y transacciones.

### 2.1.2. Gestores Libres y de Código Abierto
Los gestores de código abierto permiten mayor flexibilidad y son una opción accesible para proyectos que requieren bases de datos XML sin costos de licencia.

a) **BaseX**
   - Ligero y de alto rendimiento.
   - Compatible con XQuery y XPath.
   - API REST y soporte para aplicaciones web.
   - Soporta múltiples usuarios y consultas concurrentes.

b) **eXist-DB**
   - Base de datos XML con una interfaz web integrada.
   - Soporte completo para XQuery, XPath y XSLT.
   - Integración con aplicaciones Java y RESTful APIs.

c) **Sedna**
   - Base de datos XML nativa optimizada para consultas de alto rendimiento.
   - Soporte para transacciones ACID.
   - Compatible con XQuery y XML Schema.

d) **Zorba**
   - Implementación ligera de una base de datos XML con soporte para XQuery.
   - Utilizada en aplicaciones embebidas y de procesamiento de datos XML.

La elección del gestor dependerá de los requisitos del proyecto, como el volumen de datos, la necesidad de soporte empresarial y la integración con otros sistemas.

En la siguiente sección, se abordará la instalación y configuración de **BaseX**, una de las opciones más ligeras y eficientes dentro del ámbito de las bases de datos nativas XML.

## 2.2. Instalación y configuración de BaseX

BaseX es un sistema de gestión de bases de datos nativas XML de código abierto que ofrece un alto rendimiento en consultas y manipulación de datos XML. Es ampliamente utilizado por su ligereza, eficiencia y soporte para XQuery y XPath, lo que lo hace ideal para aplicaciones que manejan grandes volúmenes de datos XML.

A continuación, se presentan los pasos para la instalación y configuración de BaseX en distintos entornos.

### 2.2.1. Requisitos previos

Antes de instalar BaseX, es necesario contar con los siguientes requisitos en el sistema:

- **Java Runtime Environment (JRE) 8 o superior**: BaseX requiere Java para ejecutarse. Se recomienda la versión más reciente de OpenJDK o JDK de Oracle.
- **Acceso a línea de comandos o terminal**: Para ejecutar BaseX en modo servidor o cliente.
- **Conexión a Internet** (opcional): Para descargar BaseX desde su página oficial.

**Verificación de Java**: Para comprobar si Java está instalado, abre una terminal o línea de comandos y ejecuta:

```sh
java -version
```

Si Java no está instalado, descárgalo e instálalo desde [OpenJDK](https://openjdk.org/) o [Oracle JDK](https://www.oracle.com/java/technologies/javase-downloads.html).

---

### 2.2.2. Descarga e instalación

**Instalación en Windows**

1. Descarga BaseX desde su sitio web oficial: [https://basex.org/download](https://basex.org/download)
2. Extrae el archivo ZIP en una ubicación deseada.
3. Accede a la carpeta descomprimida y ejecuta `basex.bat` para iniciar la interfaz gráfica o `basexserver.bat` para ejecutarlo en modo servidor.

**Instalación en Linux y macOS**

1. Abre una terminal y ejecuta:

```sh
sudo apt update
sudo apt install basex
```

2. Para iniciar BaseX en modo gráfico:

```sh
basexgui
```

3. Para iniciar BaseX en modo servidor:

```sh
basexserver
```

4. Para acceder al cliente de BaseX desde la terminal:

```sh
basex
```


### 2.2.3. Configuración inicial

Después de instalar BaseX, es recomendable realizar algunos ajustes para optimizar su uso:

- **Configurar el puerto del servidor**: Por defecto, BaseX usa el puerto `1984`. Si se desea cambiarlo, edita el archivo `etc/basex.conf`.
- **Crear un usuario administrador**: BaseX permite configurar usuarios y permisos a través de comandos de administración.
- **Habilitar la API REST**: Si se quiere acceder a la base de datos desde aplicaciones web, se debe activar la API REST ejecutando `basexhttp`.

### 2.2.4. Creación de una base de datos XML en BaseX

Para crear una base de datos en BaseX, sigue estos pasos:

1. Inicia BaseX en modo gráfico (`basexgui`).
2. Haz clic en `Database → New`.
3. Especifica un nombre para la base de datos.
4. Carga un archivo XML o introduce datos manualmente.
5. Guarda la base de datos y ejecuta consultas XQuery para verificar su contenido.

También se puede crear una base de datos desde la terminal:

```sh
CREATE DATABASE MiBase "ruta/datos.xml"
```

Para listar todas las bases de datos disponibles:

```sh
LIST
```

Con estos pasos, BaseX estará listo para su uso en la gestión de bases de datos XML. En la siguiente sección, se abordará la administración de usuarios y estrategias de almacenamiento para optimizar su rendimiento.

## 2.3. Administración y gestión de usuarios

Una parte esencial en la configuración de **BaseX** es la administración de usuarios y la gestión de permisos de acceso a las bases de datos. BaseX proporciona un sistema de autenticación que permite definir distintos roles y niveles de acceso para garantizar la seguridad de los datos almacenados.

En este apartado, se abordarán los conceptos de administración de usuarios en BaseX, incluyendo la creación de cuentas, asignación de roles y configuración de permisos.

**Sistema de autenticación en BaseX**

BaseX gestiona los accesos mediante un sistema de autenticación que permite a los administradores definir qué usuarios pueden acceder a cada base de datos y qué operaciones pueden realizar. Por defecto, BaseX incluye un usuario **admin** con privilegios completos.

Los permisos pueden otorgarse a nivel de:
- **Base de datos**: Permisos específicos para cada base de datos.
- **Comandos y operaciones**: Control de qué comandos pueden ejecutar los usuarios.
- **Recursos**: Acceso a archivos y estructuras XML dentro de la base de datos.

Los archivos de configuración de usuarios se encuentran en la carpeta `data/.users`, donde BaseX almacena credenciales y roles.

**Creación y gestión de usuarios**

Para crear un nuevo usuario en BaseX, se utiliza el siguiente comando en la terminal o consola de BaseX:

```sh
CREATE USER usuario_nuevo contraseña_segura
```

Para listar todos los usuarios del sistema:

```sh
SHOW USERS
```

Para eliminar un usuario:

```sh
DROP USER usuario_nuevo
```

Es importante utilizar contraseñas seguras y almacenar de forma adecuada las credenciales de acceso.

**Asignación de roles y permisos**

BaseX permite asignar distintos roles a los usuarios según sus necesidades. Los roles predefinidos incluyen:

| **Rol**  | **Permisos** |
|----------|-------------|
| **admin** | Acceso total al sistema, configuración y bases de datos. |
| **user**  | Permiso para leer y modificar bases de datos. |
| **read**  | Solo permite la lectura de bases de datos. |
| **none**  | No tiene acceso a ninguna base de datos. |

Para asignar un rol a un usuario:

```sh
GRANT admin TO usuario_nuevo
```

Para revocar un rol:

```sh
REVOKE user FROM usuario_nuevo
```

**Configuración de permisos en bases de datos específicas**

Los permisos pueden ser configurados para bases de datos individuales en BaseX. Para otorgar acceso a una base de datos específica:

```sh
GRANT READ ON MiBase TO usuario_nuevo
```

Para permitir modificaciones en una base de datos:

```sh
GRANT WRITE ON MiBase TO usuario_nuevo
```

Para eliminar todos los permisos de un usuario sobre una base de datos:

```sh
REVOKE ALL ON MiBase FROM usuario_nuevo
```

**Gestión de sesiones y conexiones activas**

Es posible ver todas las conexiones activas en BaseX utilizando el comando:

```sh
SHOW SESSIONS
```

Para cerrar la sesión de un usuario en caso de actividad sospechosa o mantenimiento del sistema:

```sh
KILL usuario_nuevo
```

Con esta configuración, la administración de usuarios en BaseX permite gestionar la seguridad de los datos y controlar el acceso a las bases de datos XML. En la siguiente sección, se abordarán las estrategias de almacenamiento y optimización del rendimiento en BaseX.

## 2.4. Estrategias de almacenamiento y rendimiento

El almacenamiento eficiente y la optimización del rendimiento son aspectos clave en la gestión de bases de datos nativas XML. **BaseX** ofrece diversas estrategias para mejorar el acceso a los datos y garantizar un rendimiento óptimo en consultas complejas.

En este apartado, se explorarán las técnicas más efectivas para estructurar, indexar y almacenar documentos XML en BaseX, maximizando la eficiencia del sistema.


## 2.4.1. Modelo de almacenamiento en BaseX

BaseX almacena los documentos XML en un formato binario interno optimizado, lo que permite acceder a los datos de manera eficiente sin necesidad de transformar la estructura XML. Las principales características de su modelo de almacenamiento incluyen:

- **Almacenamiento basado en nodos**: Cada elemento, atributo y texto dentro del XML se almacena como un nodo con identificadores únicos.
- **Codificación binaria compacta**: Reduce el espacio de almacenamiento y mejora el acceso a los datos.
- **Compresión de texto y estructuras**: Minimiza el uso de memoria y mejora la velocidad de procesamiento.

## 2.4.2. Indexación para optimizar consultas

Para acelerar la ejecución de consultas XPath y XQuery, BaseX permite la creación de diversos tipos de índices:

**Índice de texto**

Optimiza la búsqueda de texto dentro de los documentos XML. Se puede habilitar con:

```sh
CREATE TEXT INDEX
```

**Índice de atributos**

Permite una búsqueda más rápida de atributos dentro de los documentos XML. Se activa con:

```sh
CREATE ATTRIBUTE INDEX
```

**Índice de nombres de nodos**

Facilita la localización de elementos específicos dentro de la base de datos:

```sh
CREATE NAME INDEX
```

**Índice de valores completos (Full-Text Index)**

Para búsquedas avanzadas dentro del contenido XML, se puede habilitar con:

```sh
CREATE FULLTEXT INDEX
```

Cada índice puede ser gestionado con los comandos `DROP INDEX` y `OPTIMIZE` para mejorar el rendimiento.


## 2.4.3. Optimización del rendimiento

Además de la indexación, se pueden aplicar diversas estrategias para mejorar el rendimiento en BaseX:

**Optimización de consultas**

- **Evitar expresiones XPath costosas**: Usar rutas de acceso específicas en lugar de recorrer todo el árbol XML.
- **Utilizar FLWOR en XQuery**: Optimiza la iteración sobre los datos XML.

Ejemplo de consulta optimizada en XQuery:

```xquery
for $p in //personaje[nivel_poder > 8000]
return <fuerte>{$p/nombre}</fuerte>
```

**Configuración de caché**

BaseX permite el almacenamiento en caché de documentos XML para reducir los tiempos de acceso repetido. Para configurar la caché de memoria:

```sh
SET CACHE YES
```

**Uso de particiones de bases de datos**

Si se trabaja con grandes volúmenes de datos, es recomendable dividir los documentos XML en colecciones más pequeñas en lugar de almacenarlos en una única base de datos monolítica.


### 2.4.4. Gestión de almacenamiento y limpieza de datos

Para mantener el rendimiento a lo largo del tiempo, es importante optimizar y limpiar la base de datos periódicamente:

- **Optimización manual de la base de datos**:

```sh
OPTIMIZE ALL
```

- **Compactación y limpieza de almacenamiento**:

```sh
CHECK DATABASE
```

- **Eliminación de bases de datos innecesarias**:

```sh
DROP DATABASE MiBase
```

Con estas estrategias, BaseX puede manejar de manera eficiente bases de datos XML de gran tamaño, garantizando consultas rápidas y un uso optimizado del almacenamiento. En la siguiente sección, se explorará la manipulación de datos en bases de datos XML.


# 3. Modelado de datos en bases de datos XML

El modelado de datos en bases de datos XML es el proceso mediante el cual se define la estructura y organización de los datos dentro de un entorno XML. A diferencia de las bases de datos relacionales, que utilizan tablas con columnas y filas, las bases de datos nativas XML almacenan la información en documentos XML estructurados de manera jerárquica. Esta organización proporciona una mayor flexibilidad para trabajar con datos semiestructurados y con estructuras cambiantes.

Uno de los principales beneficios del modelado en XML es la capacidad de representar relaciones complejas entre los datos sin la necesidad de claves foráneas ni esquemas rígidos. Cada documento XML actúa como una unidad de almacenamiento autónoma, lo que permite una mayor independencia y adaptabilidad en la gestión de datos. Sin embargo, un diseño deficiente puede llevar a problemas de redundancia, dificultad en la consulta y un acceso ineficiente a la información.

Para diseñar una estructura XML eficiente, es fundamental seguir principios de organización y modularidad. El uso de esquemas XML, como DTD o XML Schema, puede ayudar a validar la estructura y garantizar la coherencia de los datos almacenados en la base de datos.

## 3.1. Estructura de documentos XML en bases de datos nativas

En una base de datos nativa XML, los documentos XML se almacenan en su formato original, manteniendo su estructura jerárquica y relaciones internas sin necesidad de ser transformados en un modelo tabular. Cada documento se organiza a través de elementos anidados, atributos y valores, lo que facilita la representación de estructuras de datos complejas.

Un documento XML típico sigue una estructura bien definida, como se muestra en el siguiente ejemplo:

```xml
<dragonball>
    <personajes>
        <personaje id="1">
            <nombre>Goku</nombre>
            <raza>Saiyajin</raza>
            <nivel_poder>9001</nivel_poder>
        </personaje>
        <personaje id="2">
            <nombre>Vegeta</nombre>
            <raza>Saiyajin</raza>
            <nivel_poder>8500</nivel_poder>
        </personaje>
    </personajes>
</dragonball>
```

En este ejemplo, la estructura jerárquica se define claramente mediante la relación entre `<dragonball>`, `<personajes>` y cada `<personaje>`. Cada nodo contiene información relevante encapsulada dentro de etiquetas específicas, lo que permite una organización intuitiva y una fácil navegación mediante XPath o XQuery.

El uso de atributos en XML también es una técnica común para almacenar información dentro de los nodos. Por ejemplo, en lugar de representar el identificador y la raza como elementos separados, podrían almacenarse como atributos del nodo `<personaje>`:

```xml
<personaje id="1" raza="Saiyajin">
    <nombre>Goku</nombre>
    <nivel_poder>9001</nivel_poder>
</personaje>
```

El uso de atributos puede ser útil para almacenar metadatos o información adicional sobre un nodo, aunque en algunos casos se prefiere el uso de elementos para mejorar la escalabilidad y la capacidad de consulta de los datos.

Dentro de una base de datos nativa XML, cada documento se considera una entidad independiente, lo que permite realizar consultas y manipulaciones sin alterar la estructura global de la base de datos. Esta independencia estructural facilita la integración de datos procedentes de múltiples fuentes y la interoperabilidad con otros sistemas.

El diseño adecuado de la estructura de documentos XML en bases de datos nativas también debe considerar la optimización del almacenamiento y la eficiencia en la consulta. Factores como la indexación de elementos y atributos, el uso de colecciones y la organización en clústeres pueden mejorar significativamente el rendimiento del sistema.

En el siguiente apartado, se analizarán las colecciones y documentos en bases de datos nativas XML, destacando su importancia en la organización eficiente de la información y su impacto en la ejecución de consultas.

## 3.2. Uso de colecciones y documentos

En una base de datos nativa XML, la organización de la información es un factor clave para garantizar su eficiencia y facilidad de acceso. A diferencia de las bases de datos relacionales, donde la información se almacena en tablas estructuradas, en una base de datos XML los datos se organizan en documentos y colecciones. Esta organización permite almacenar datos semiestructurados y mantener su jerarquía natural, facilitando consultas flexibles mediante XPath y XQuery.

En este apartado, se explorará la diferencia entre documentos individuales y colecciones de documentos en bases de datos XML, así como su impacto en la recuperación y manipulación de la información.

### 3.2.1. Documentos individuales en bases de datos XML

Un **documento XML individual** es la unidad básica de almacenamiento en una base de datos nativa XML. Cada documento representa una entidad completa y autónoma que puede contener una o varias estructuras de datos jerárquicas.

Por ejemplo, en una base de datos XML sobre Dragon Ball, cada documento XML podría representar un conjunto de personajes:

```xml
<personajes>
    <personaje id="1">
        <nombre>Goku</nombre>
        <raza>Saiyajin</raza>
        <nivel_poder>9001</nivel_poder>
    </personaje>
    <personaje id="2">
        <nombre>Vegeta</nombre>
        <raza>Saiyajin</raza>
        <nivel_poder>8500</nivel_poder>
    </personaje>
</personajes>
```

En este caso, el documento XML almacena información sobre múltiples personajes dentro de una única estructura jerárquica. Cada documento XML puede ser consultado y manipulado de manera independiente, lo que facilita la gestión de la información dentro de la base de datos.

### 3.2.2. Colecciones de documentos XML

Si bien los documentos XML individuales pueden contener grandes volúmenes de información, en muchos casos es más eficiente organizarlos dentro de **colecciones**. Una colección en una base de datos XML es un conjunto de documentos XML relacionados que se almacenan juntos para mejorar la organización y la recuperación de datos.

Por ejemplo, en una base de datos XML de Dragon Ball, en lugar de almacenar todos los personajes en un solo documento, se podrían dividir en colecciones según su tipo:

- Una colección para los personajes: `/db/personajes/`
- Una colección para los planetas: `/db/planetas/`
- Una colección para las técnicas de combate: `/db/tecnicas/`

Cada colección contendría documentos XML individuales organizados por categoría:

```
/db/personajes/goku.xml
/db/personajes/vegeta.xml
/db/planetas/tierra.xml
/db/planetas/namek.xml
/db/tecnicas/kamehameha.xml
```

La ventaja de este enfoque es que permite una mayor granularidad en la gestión de los datos. Por ejemplo, se pueden realizar consultas en una colección específica sin necesidad de procesar toda la base de datos. Además, mejora la escalabilidad y la capacidad de manejar grandes volúmenes de información de manera eficiente.

### 3.2.3. Consultas en colecciones de documentos XML

En bases de datos nativas XML como **BaseX**, es posible realizar consultas sobre colecciones completas en lugar de trabajar con documentos individuales. Para acceder a todos los documentos dentro de una colección específica, se puede utilizar la función `collection()`, como en el siguiente ejemplo:

```xquery
for $p in collection("/db/personajes")//personaje
return <nombre>{$p/nombre/text()}</nombre>
```

Esta consulta recupera el nombre de todos los personajes almacenados dentro de la colección **personajes**, sin importar en qué documento se encuentren.

Otra ventaja de las colecciones es que permiten aplicar filtros más específicos sobre los datos. Por ejemplo, para obtener solo los personajes de raza **Saiyajin**, se puede ejecutar:

```xquery
for $p in collection("/db/personajes")//personaje
where $p/raza = "Saiyajin"
return $p
```

Esto permite realizar búsquedas eficientes sobre grandes volúmenes de datos sin necesidad de recorrer documentos innecesarios.

### 3.2.4. Creación y administración de colecciones en BaseX

En BaseX, las colecciones se pueden administrar mediante comandos específicos que facilitan la creación, actualización y eliminación de documentos XML dentro de una colección. Para crear una nueva colección y agregar un documento XML, se puede ejecutar:

```xquery
CREATE DB dragonball
ADD TO dragonball/personajes goku.xml
ADD TO dragonball/personajes vegeta.xml
```

Para listar todos los documentos almacenados en una colección, se puede utilizar:

```xquery
LIST /db/personajes
```

Para eliminar un documento de una colección:

```xquery
DELETE FROM dragonball/personajes/goku.xml
```

La administración de colecciones en una base de datos XML facilita la organización de grandes cantidades de información, permitiendo acceder a los datos de manera estructurada y eficiente.

Por lo tanto, el uso de colecciones y documentos XML en bases de datos nativas XML permite estructurar la información de forma jerárquica y organizada. Mientras que los documentos individuales ofrecen una unidad de almacenamiento autónoma, las colecciones agrupan documentos relacionados, mejorando la eficiencia en la consulta y recuperación de datos. La correcta organización de colecciones en una base de datos XML permite un acceso más rápido a la información y una administración más sencilla de grandes volúmenes d...

## 3.3. Identificadores únicos e indexación

En una base de datos XML, garantizar la unicidad de los datos y optimizar la recuperación de información son aspectos clave para mantener la eficiencia y la integridad de los datos almacenados. Para ello, se emplean **identificadores únicos** y mecanismos de **indexación** que permiten mejorar el rendimiento de las consultas.

Los identificadores únicos facilitan la distinción de elementos dentro de un documento XML, mientras que la indexación optimiza la búsqueda y el acceso a los datos en bases de datos de gran tamaño. Ambos conceptos son fundamentales en el diseño de bases de datos XML eficientes y bien estructuradas.

### 3.3.1. Uso de identificadores únicos en XML

Los identificadores únicos en XML permiten diferenciar elementos dentro de un documento, asegurando que no haya duplicados y facilitando la referenciación entre diferentes nodos. En XML, se pueden definir identificadores únicos mediante atributos, como en el siguiente ejemplo:

```xml
<personaje id="1">
    <nombre>Goku</nombre>
    <raza>Saiyajin</raza>
    <nivel_poder>9001</nivel_poder>
</personaje>
```

En este caso, el atributo `id` actúa como un identificador único para cada personaje, permitiendo realizar búsquedas eficientes y establecer relaciones entre elementos. En bases de datos XML más avanzadas, los esquemas XML (XML Schema) pueden utilizarse para definir restricciones de unicidad y asegurar que los valores de los identificadores sean únicos en todo el documento.

En **XML Schema**, la unicidad se puede garantizar con la siguiente definición:

```xml
<xsd:element name="personaje">
    <xsd:complexType>
        <xsd:attribute name="id" type="xsd:ID" use="required"/>
    </xsd:complexType>
</xsd:element>
```

Esta estructura garantiza que cada nodo `<personaje>` tenga un identificador único dentro del documento.

### 3.3.2. Importancia de la indexación en bases de datos XML

En bases de datos XML de gran tamaño, la búsqueda de elementos específicos puede volverse costosa en términos de tiempo de ejecución. Para mejorar el rendimiento, las bases de datos nativas XML como **BaseX** permiten la creación de **índices**, que aceleran el acceso a los datos al evitar la necesidad de recorrer todo el documento en cada consulta.

Existen diferentes tipos de índices que pueden aplicarse en una base de datos XML:

#### 3.3.2.1. Índice de texto

Este tipo de índice mejora la velocidad de búsqueda en textos dentro de un documento XML. Se crea con la siguiente instrucción en BaseX:

```xquery
CREATE TEXT INDEX
```

Una vez creado, las consultas que buscan valores dentro de nodos de texto se ejecutarán mucho más rápido.

#### 3.3.2.2. Índice de atributos

Si se realizan búsquedas frecuentes en atributos XML, se recomienda crear un índice de atributos para mejorar el rendimiento:

```xquery
CREATE ATTRIBUTE INDEX
```

Este índice optimiza las consultas que buscan valores dentro de atributos, como el identificador único de un personaje (`id`).

#### 3.3.2.3. Índice de nombres de elementos

Para mejorar el acceso a nodos específicos por su nombre, se puede crear un índice de nombres de elementos:

```xquery
CREATE NAME INDEX
```

Este índice facilita la búsqueda de elementos sin necesidad de recorrer todo el documento XML.

### 3.3.3. Uso de identificadores e índices en consultas XQuery

Para aprovechar los identificadores únicos y los índices creados en la base de datos, se pueden realizar consultas optimizadas en **XQuery**. Por ejemplo, para encontrar un personaje por su identificador único, se puede utilizar:

```xquery
for $p in //personaje[@id="1"]
return $p/nombre/text()
```

Si se ha creado un índice de atributos previamente, esta consulta se ejecutará de manera más eficiente al evitar recorrer todo el documento de manera secuencial.

Otro ejemplo de optimización con índices es la búsqueda de personajes con un nivel de poder superior a 8000:

```xquery
for $p in //personaje[nivel_poder > 8000]
return $p/nombre/text()
```

Si se ha creado un **índice de texto**, la ejecución de esta consulta será mucho más rápida.

Finalmente, el uso de **identificadores únicos** y **mecanismos de indexación** es esencial en bases de datos nativas XML para garantizar la eficiencia en la recuperación y manipulación de la información. Los identificadores permiten estructurar y referenciar datos de manera organizada, facilitando la navegación y la integridad de los documentos XML. Por otro lado, los índices optimizan el acceso a los datos al reducir el tiempo de ejecución de las consultas, lo que resulta fundamental en bases de datos XML de gran escala.

Un adecuado diseño de identificadores y el uso estratégico de los índices pueden marcar la diferencia en el rendimiento de un sistema basado en XML. Gracias a estas técnicas, es posible gestionar grandes volúmenes de información de manera eficiente, asegurando una respuesta rápida a las consultas y reduciendo la carga computacional en la base de datos.

En el siguiente apartado, se explorará el **modelado de datos en bases de datos XML**, abordando cómo estructurar correctamente la información para mejorar su acceso y gestión en bases de datos nativas XML.


# 4. Manipulación de datos en bases de datos XML

El manejo de datos en bases de datos XML permite gestionar documentos XML mediante la creación, modificación y eliminación de información almacenada. En bases de datos nativas XML como **BaseX**, estos procesos se realizan utilizando **XQuery**, permitiendo la manipulación de datos de manera eficiente y estructurada.

A diferencia de las bases de datos relacionales, donde los datos se almacenan en tablas, en las bases de datos XML los documentos están organizados en una estructura jerárquica, agrupados en **bases de datos** que pueden contener múltiples documentos XML. La correcta gestión de estos documentos es clave para garantizar un acceso eficiente y organizado.

Las operaciones más comunes en la manipulación de datos incluyen:

- **Añadir y eliminar documentos XML en una base de datos**.
- **Modificar información dentro de los documentos XML**.
- **Manejo de excepciones en operaciones con bases de datos XML**.

En los siguientes apartados se detallan los procedimientos para trabajar con documentos XML en **BaseX**.

## 4.1. Gestión de documentos en bases de datos XML

En **BaseX**, un conjunto de documentos XML se almacena dentro de una **base de datos**. No existen colecciones independientes como en otros sistemas XML; en su lugar, una base de datos puede contener múltiples documentos, agrupados de manera lógica. Cada base de datos puede aceptar cualquier tipo de documento XML sin restricciones de estructura.

### 4.1.2 Añadir documentos XML a una base de datos

Para añadir un documento XML a una base de datos en BaseX, primero se debe crear, para después abrir y por último agregar el documento con el comando `ADD`:

```xquery
CREATE DATABASE guerrerosZ
OPEN guerrerosZ
ADD "ruta/broly.xml"
```

A continuación obsérvese el ejemplo de agregar varios documentos a la misma base de datos:

```xquery
ADD broly.xml
ADD freezer.xml
ADD nappa.xml
ADD raditz.xml
```

Estos comandos añaden los documentos XML a la base de datos abierta.

### Listar los documentos dentro de una base de datos

Para comprobar qué documentos se encuentran almacenados en una base de datos, se utiliza el comando `LIST` junto con el alias de la base de datos:

```xquery
> LIST guerrerosZ
Input Path   Type  Content-Type     Size  
----------------------------------------
broly.xml    xml   application/xml  13    
freezer.xml  xml   application/xml  13    
nappa.xml    xml   application/xml  13    
raditz.xml   xml   application/xml  13    

4 Resource(s).
```

Este comando mostrará el nombre de la base de datos y los documentos almacenados dentro de ella.

### Eliminar un documento de la base de datos

Si un documento ya no es necesario, se puede eliminar usando el comando `DELETE`:

```xquery
> DELETE "broly.xml"
1 resource(s) deleted in 2.93 ms.
```
Esto eliminará únicamente el documento `broly.xml` sin afectar los demás documentos almacenados en la base de datos.

```xquery
> LIST guerrerosZ
Input Path   Type  Content-Type     Size  
----------------------------------------
freezer.xml  xml   application/xml  13    
nappa.xml    xml   application/xml  13    
raditz.xml   xml   application/xml  13    

3 Resource(s).
```

### Eliminar una base de datos completa

Si se desea eliminar completamente una base de datos y todos sus documentos, se puede usar el comando `DROP DB` seguido del nombre de la base de datos:

```xquery
DROP DB dragonball
```

Este comando eliminará la base de datos **dragonball** y todos los documentos que contiene.

A continuación, se presentan **tres ejercicios prácticos** sobre la gestión de colecciones en **BaseX**. Cada ejercicio debe resolverse utilizando consultas para crear, añadir y eliminar datos dentro de la base de datos **`guerrerosZ`**. Para ello, vas a necesitar los siguientes archivos:
> [BDD Dragon ball](/ud05/dragonball_basex.xml) | [Broly](/ud05/broly.xml) | [Freezer](/ud05/freezer.xml) | [Nappa](/ud05/nappa.xml) | [Raditz](/ud05/raditz.xml)

**Ejercicio 1: Crear una base de datos `guerrerosZ` y añadir los personajes**:  
Crear una colección llamada **`guerrerosZ`** y añadir los archivos XML de los personajes **Broly, Freezer, Nappa y Raditz** dentro de esta colección.  
**Ejercicio 2: Listar los documentos dentro de la colección**:  
Después de añadir los personajes a la colección **`guerrerosZ`**, listar todos los documentos almacenados en la base de datos.  
**Ejercicio 3: Eliminar una base de datos**:  
Eliminar la colección **`guerrerosZ`** sin afectar otras colecciones de la base de datos.  
 
## 4.2. Modificar y eliminar documentos XML en BaseX

BaseX permite la gestión dinámica de documentos XML almacenados en bases de datos. Se pueden **añadir nuevos documentos**, **modificar su contenido** y **eliminarlos** utilizando comandos específicos.

### 4.2.1. Modificar documentos XML en BaseX

La modificación de datos en BaseX se realiza con comandos xquery, y para ello basta con anteponer la sentencia `XQUERY`a cualquier consulta básica.

```xquery
XQUERY //personaje
```

**Modificar el contenido de un nodo**

Para actualizar el valor de un nodo específico dentro de un documento XML, se usa `replace value of node`:

```xquery
XQUERY replace value of node //personaje[nombre="Broly"]/nivel_poder with "12000"
```

Este comando cambia el nivel de poder de **Broly** dentro de la base de datos.

**Añadir un nuevo nodo dentro de un documento XML**

Si se quiere añadir un nuevo nodo dentro de un documento almacenado en la base de datos, se usa `insert node`, por ejemplo para añadir técnicas dentro de un nodo:

```xquery
XQUERY insert node <tecnicas/> into //personajes[nombre="Freezer"]
XQUERY insert node <tecnica>Rayo laser</tecnica> 
into //personaje[nombre="Freezer"]/tecnicas
```

Este comando añade la técnica **Rayo láser** a la lista de técnicas de Freezer.

**Eliminar una base de datos completa**

Además de los comandos propios de BaseX, si se necesita eliminar por completo una base de datos, junto con todos sus documentos, con comandos XQUERY también es posible, se usa:

```xquery
XQUERY db:drop("guerrerosZ")
```

Este comando eliminará la base de datos **guerrerosZ** y todos sus documentos.

BaseX permite realizar operaciones de **inserción, modificación y eliminación** de documentos XML de manera flexible y optimizada. Gracias a su soporte para **XQuery Update Facility**, es posible actualizar el contenido de los documentos sin necesidad de reconstruir toda la base de datos. Estas operaciones son esenciales para mantener la información actualizada y organizada dentro del sistema de almacenamiento XML.


# 5. Consultas en bases de datos XML

El acceso y recuperación de datos en bases de datos nativas XML se realiza mediante lenguajes de consulta especializados que permiten extraer información de manera eficiente. En este contexto, **XPath** y **XQuery** son los dos lenguajes principales utilizados para realizar consultas en documentos XML.

- **XPath** se emplea para navegar y seleccionar elementos dentro de un documento XML a través de expresiones estructuradas.
- **XQuery** es un lenguaje más avanzado que permite realizar consultas complejas, transformaciones de datos y generación de nuevos documentos XML.

En este apartado se analizarán estos lenguajes, su sintaxis y su aplicación en bases de datos XML como **BaseX**.

## 5.1. Introducción a XPath y XQuery

Para los siguientes apartados se invita a usar la Base de datos de pruebas siguiente:  [BDD Dragon ball](/ud05/dragonball_basex.xml)

### 5.1.1. XPath: Lenguaje para la navegación en XML

**XPath** (XML Path Language) es un lenguaje que permite acceder a partes específicas de un documento XML mediante expresiones de ruta. Se basa en una estructura jerárquica que facilita la selección de elementos, atributos y valores.

**Sintaxis básica de XPath**. Algunas expresiones básicas en XPath incluyen:

| **Expresión XPath** | **Descripción** |
|---------------------|----------------|
| `/raíz/elemento` | Selecciona un elemento específico dentro del documento. |
| `//elemento` | Selecciona todos los elementos de ese nombre en el documento, sin importar su nivel. |
| `/raíz/elemento[@atributo]` | Selecciona un elemento que contenga un atributo específico. |
| `//elemento/text()` | Obtiene el texto dentro de un elemento. |
| `//elemento[position()=1]` | Selecciona el primer elemento de un grupo. |

**Ejemplo de consulta XPath**. Dado el siguiente documento XML:

```xml
<personajes>
    <personaje id="1">
        <nombre>Goku</nombre>
        <raza>Saiyajin</raza>
    </personaje>
    <personaje id="2">
        <nombre>Vegeta</nombre>
        <raza>Saiyajin</raza>
    </personaje>
</personajes>
```

Podemos ejecutar las siguientes consultas XPath en BaseX:

### 5.1.2. Consultas XPath básicas

1. **Obtener todos los nombres de los personajes:**
    ```xquery
    //personaje/nombre/text()
    ```
    **Resultado:**
    ```
    Goku
    Vegeta
    Piccolo
    ```
2. **Seleccionar todos los personajes que sean Saiyajin:**
    ```xquery
    //personaje[raza="Saiyajin"]
    ```
3. **Obtener el nivel de poder de Vegeta:**
    ```xquery
    //personaje[nombre="Vegeta"]/nivel_poder/text()
    ```

### 5.1.3. Consultas XPath avanzadas

#### Selección de nodos específicos

4. **Obtener el primer personaje en el documento XML:**
    ```xquery
    //personaje[1]
    ```
5. **Obtener el último personaje en el documento XML:**
    ```xquery
    //personaje[last()]
    ```
6. **Seleccionar todos los personajes cuyo nombre comience con "G":**
    ```xquery
    //personaje[starts-with(nombre, "G")]
    ```
7. **Seleccionar todos los personajes cuyo nombre termine en "a":**
    ```xquery
    //personaje[ends-with(nombre, "a")]
    ```
8. **Seleccionar todos los personajes que contengan la letra "o" en su nombre:**
    ```xquery
    //personaje[contains(nombre, "o")]
    ```

#### Uso de condiciones en XPath

9. **Seleccionar personajes con un nivel de poder superior a 8000:**
    ```xquery
    //personaje[nivel_poder > 8000]
    ```
10. **Seleccionar personajes que NO sean Saiyajin:**
    ```xquery
    //personaje[not(raza="Saiyajin")]
    ```
11. **Seleccionar personajes que tengan un atributo `id`:**
    ```xquery
    //personaje[@id]
    ```
12. **Seleccionar personajes con un `id` mayor a 1:**
    ```xquery
    //personaje[@id > 1]
    ```

#### Uso de expresiones XPath combinadas

13. **Seleccionar el nombre y el nivel de poder de todos los personajes:**
    ```xquery
    //personaje/(nombre|nivel_poder)
    ```
14. **Seleccionar personajes con nivel de poder entre 7000 y 9000:**
    ```xquery
    //personaje[nivel_poder >= 7000 and nivel_poder <= 9000]
    ```
15. **Seleccionar personajes Saiyajin con nivel de poder mayor a 8500:**
    ```xquery
    //personaje[raza="Saiyajin" and nivel_poder > 8500]
    ```

#### Consultas con atributos en XPath

16. **Seleccionar todos los valores del atributo `id`:**
    ```xquery
    //personaje/@id
    ```
17. **Seleccionar personajes con un atributo `id` igual a 2:**
    ```xquery
    //personaje[@id="2"]
    ```
18. **Obtener el nombre del personaje con el id más alto:**
    ```xquery
    //personaje[@id = max(//personaje/@id)]/nombre
    ```

#### Uso de funciones avanzadas en XPath

19. **Contar cuántos personajes hay en el documento XML:**
    ```xquery
    count(//personaje)
    ```
20. **Obtener la suma de todos los niveles de poder:**
    ```xquery
    sum(//personaje/nivel_poder)
    ```
21. **Obtener el nivel de poder promedio:**
    ```xquery
    avg(//personaje/nivel_poder)
    ```
22. **Obtener el nivel de poder máximo:**
    ```xquery
    max(//personaje/nivel_poder)
    ```
23. **Obtener el nivel de poder mínimo:**
    ```xquery
    min(//personaje/nivel_poder)
    ```

#### Consultas con múltiples niveles de profundidad

24. **Seleccionar todos los personajes que tengan un `nivel_poder` dentro de un nodo `<datos>`:**
    ```xquery
    //datos/personaje/nivel_poder
    ```
25. **Seleccionar el nodo `personaje` que tenga un hijo con `nivel_poder` mayor a 8000:**
    ```xquery
    //personaje[nivel_poder > 8000]
    ```
26. **Seleccionar solo los nombres de los personajes que tengan un atributo `id`:**
    ```xquery
    //personaje[@id]/nombre
    ```

XPath proporciona una forma poderosa y flexible de consultar documentos XML. Con estas consultas avanzadas, se pueden extraer, filtrar y transformar datos de manera eficiente dentro de BaseX. En la siguiente sección, exploraremos el uso de XQuery en consultas más complejas.

#### Ejercicios de XPath en BaseX

A continuación, se presentan **10 ejercicios prácticos** de XPath para bases de datos nativas XML en **BaseX**. Cada ejercicio debe resolverse utilizando consultas XPath sobre la base de datos **Dragon Ball** previamente cargada.

**Ejercicio 1: Recuperar las técnicas de combate de cada personaje**: Obtener todas las técnicas de los personajes junto con el nombre del personaje que las ejecuta.  
**Ejercicio 2: Identificar los planetas destruidos**: Obtener una lista de los planetas que han sido destruidos (`destruido=true`).  
**Ejercicio 3: Listar los personajes de una raza específica**: Mostrar los nombres de los personajes que pertenecen a una raza determinada.  
**Ejercicio 4: Buscar personajes con más de una transformación**: Identificar personajes que tienen más de una transformación registrada.  
**Ejercicio 5: Contar el número total de técnicas en la base de datos**: Determinar cuántas técnicas existen registradas en la base de datos.  
**Ejercicio 6: Identificar batallas que ocurrieron en un planeta específico**: Obtener todas las batallas que ocurrieron en **Namek**.  
**Ejercicio 7: Ordenar los personajes por nivel de poder de menor a mayor**: Mostrar los personajes ordenados por su nivel de poder en **orden ascendente**.  
**Ejercicio 8: Obtener el personaje con más nivel de poder**: Extraer el personaje con el nivel de poder más alto en la base de datos.  
**Ejercicio 9: Agrupar personajes según su raza**: Generar una lista de personajes agrupados por su raza.  
**Ejercicio 10: Verificar si un personaje ha participado en batallas**: Determinar si un personaje específico (ej. **Vegeta**) ha participado en alguna batalla.  


### 5.1.2. XQuery: Lenguaje de consulta y transformación de XML

**XQuery** es un lenguaje diseñado para la consulta y manipulación de datos XML. Se basa en XPath, pero agrega funcionalidades adicionales como:
- Operaciones condicionales (`if-then-else`).
- Iteraciones (`for` y `let`).
- Creación de nuevos documentos XML.

**Sintaxis básica de XQuery**

| **Expresión XQuery** | **Descripción** |
|---------------------|----------------|
| `for $x in //elemento return $x` | Itera sobre elementos XML y los devuelve. |
| `where condición` | Filtra elementos según una condición. |
| `let $var := expresión` | Asigna una variable a una consulta. |
| `<nuevo>{expresión}</nuevo>` | Crea un nuevo elemento XML a partir de los datos. |

**Ejemplo de consulta XQuery**

1. Seleccionar todos los nombres de los personajes y devolverlos en un nuevo XML:
    ```xquery
    for $p in //personaje
    return <nombre>{$p/nombre/text()}</nombre>
    ```
    **Resultado:**
    ```xml
    <nombre>Goku</nombre>
    <nombre>Vegeta</nombre>
    ```
2. Filtrar los personajes que sean de la raza "Saiyajin":
    ```xquery
    for $p in //personaje
    where $p/raza = "Saiyajin"
    return $p
    ```

#### Uso de `for` y `return`
XQuery permite iterar sobre elementos XML y devolver información personalizada.

Ejemplo: Lista de nombres envueltos en etiquetas `<nombre>`:

```xquery
for $p in //personaje
return <nombre>{$p/nombre/text()}</nombre>
```

**Resultado:**
```xml
<nombre>Goku</nombre>
<nombre>Vegeta</nombre>
<nombre>Piccolo</nombre>
```

#### Uso de `where` para filtrar datos
Podemos obtener solo los personajes con un nivel de poder mayor a 8000:

```xquery
for $p in //personaje
where $p/nivel_poder > 8000
return $p
```

#### Uso de `let` para asignación de variables
Podemos almacenar valores y reutilizarlos en la consulta:

```xquery
let $poderMin := 8500
for $p in //personaje
where $p/nivel_poder > $poderMin
return $p/nombre
```

#### Ordenación de resultados con `order by`
Para ordenar los personajes por nivel de poder de mayor a menor:

```xquery
for $p in //personaje
order by $p/nivel_poder descending
return <ordenado>{$p/nombre/text()}</ordenado>
```

#### Creación de un nuevo XML con `return`
Podemos transformar la información en un nuevo formato XML:

```xquery
<personajes_fortalecidos>
{
    for $p in //personaje
    return <luchador>
                <nombre>{$p/nombre/text()}</nombre>
                <poder_multiplicado>{number($p/nivel_poder) * 2}</poder_multiplicado>
           </luchador>
}
</personajes_fortalecidos>
```

#### Uso de `if-then-else` en XQuery
Para etiquetar personajes según su nivel de poder:

```xquery
for $p in //personaje
return <luchador>
    <nombre>{$p/nombre/text()}</nombre>
    <categoria>
        {
            if ($p/nivel_poder > 8500) then "Clase S"
            else "Clase A"
        }
    </categoria>
</luchador>
```

#### Uso de agregaciones en XQuery
Para calcular el nivel de poder promedio de todos los personajes:

```xquery
let $total := count(//personaje)
let $suma := sum(//personaje/nivel_poder)
return <promedio>{$suma div $total}</promedio>
```

#### Consultas anidadas con `some` y `every`
Podemos verificar si al menos un personaje es Saiyajin:

```xquery
some $p in //personaje satisfies $p/raza = "Saiyajin"
```

Verificar si **todos** los personajes tienen un nivel de poder mayor a 5000:

```xquery
every $p in //personaje satisfies $p/nivel_poder > 5000
```

#### Agrupación de datos con `group by`
Para agrupar los personajes por raza:

```xquery
for $r in distinct-values(//personaje/raza)
let $personas := //personaje[raza = $r]
return <grupo>
    <raza>{$r}</raza>
    <cantidad>{count($personas)}</cantidad>
</grupo>
```

Con XPath y XQuery, es posible realizar consultas rápidas y eficientes en bases de datos XML, permitiendo filtrar, transformar y recuperar información estructurada de manera flexible. En la siguiente sección, se abordará el uso de XQuery dentro de las bases de datos nativas XML para consultas avanzadas.


#### Ejercicios de XQuery en BaseX

A continuación, se presentan **10 ejercicios prácticos** de XQuery para bases de datos nativas XML en **BaseX**. Cada ejercicio debe resolverse utilizando consultas XQuery sobre la base de datos **Dragon Ball** previamente cargada.

**Ejercicio 1: Generar un listado de personajes con su nivel de poder**: Crear un nuevo XML que contenga los nombres de los personajes y su nivel de poder dentro de etiquetas `<personaje>` y `<poder>`.  
**Ejercicio 2: Filtrar personajes con transformaciones**: Obtener una lista de los personajes que poseen al menos una transformación registrada.  
**Ejercicio 3: Calcular la media del nivel de poder de los personajes**: Determinar el nivel de poder promedio de todos los personajes en la base de datos.  
**Ejercicio 4: Crear una lista de técnicas con su usuario correspondiente**: Generar un nuevo XML donde cada técnica esté dentro de una etiqueta `<tecnica>` junto con el nombre del personaje que la usa.  
**Ejercicio 5: Identificar el personaje con mayor nivel de poder**: Extraer el personaje con el nivel de poder más alto en la base de datos y mostrarlo en un nuevo XML.  
**Ejercicio 6: Agrupar personajes por raza**: Crear un XML que muestre cuántos personajes hay de cada raza en la base de datos.  
**Ejercicio 7: Determinar si todos los personajes tienen nivel de poder superior a 5000**: Usar la función `every` para comprobar si todos los personajes cumplen esta condición.  
**Ejercicio 8: Ordenar los planetas por número de habitantes de mayor a menor**: Generar un XML que muestre los planetas ordenados según su cantidad de habitantes.  
**Ejercicio 9: Mostrar batallas en las que participó un personaje específico**: Filtrar y devolver todas las batallas en las que haya participado un personaje determinado.  
**Ejercicio 10: Clasificar personajes en "Clase S" o "Clase A" según su nivel de poder**: Crear un nuevo XML donde los personajes sean categorizados en **Clase S** si su nivel de poder es superior a 8500, y en **Clase A** si es inferior.  


## 5.2. Uso de XQuery en bases de datos XML

XQuery es un lenguaje que permite realizar consultas avanzadas sobre documentos XML, pero también ofrece herramientas para la transformación, manipulación y optimización de datos en bases de datos XML como **BaseX**. Su versatilidad lo convierte en una opción ideal para el desarrollo de aplicaciones que trabajan con datos semiestructurados. En este apartado se explorarán técnicas avanzadas de XQuery, incluyendo la creación y modificación de documentos XML, la optimización de consultas mediante índices y la conversión de datos a otros formatos.

### 5.2.1. Creación de nuevos documentos XML con XQuery

Una de las ventajas de XQuery es la posibilidad de generar nuevos documentos XML basados en la información existente. Esto permite estructurar los datos de una forma más eficiente o prepararlos para ser utilizados en otros sistemas. A continuación, se muestra un ejemplo en el que se genera un documento XML con los personajes de raza Saiyajin:

```xquery
<saiyajines>
{
    for $p in //personaje
    where $p/raza = "Saiyajin"
    return <luchador>
                <nombre>{$p/nombre/text()}</nombre>
                <nivel_poder>{$p/nivel_poder/text()}</nivel_poder>
           </luchador>
}
</saiyajines>
```

El resultado será un nuevo documento XML que solo contendrá a los personajes de la raza especificada, facilitando su manipulación posterior.

### 5.2.2. Modificación de datos XML en BaseX

XQuery no solo permite consultar datos, sino que también posibilita su modificación dentro de una base de datos XML. En **BaseX**, las operaciones de actualización permiten modificar valores existentes, insertar nuevos elementos y eliminar nodos específicos. Para actualizar el nivel de poder de un personaje, se puede utilizar la siguiente consulta:

```xquery
replace value of node //personaje[nombre="Goku"]/nivel_poder
with "9500"
```

También es posible insertar información dentro de un nodo ya existente. Si se quiere agregar una nueva técnica a Goku, se puede hacer con:

```xquery
insert node <tecnica>Ultra Instinto</tecnica> 
into //personaje[nombre="Goku"]/tecnicas
```

Si en cambio se desea eliminar un personaje de la base de datos, se puede ejecutar:

```xquery
delete node //personaje[nombre="Piccolo"]
```

Estas operaciones permiten mantener la base de datos XML actualizada y en óptimas condiciones.

### 5.2.3. Optimización de consultas con índices en BaseX

Cuando una base de datos XML contiene una gran cantidad de información, las consultas pueden volverse más lentas. Para mejorar su rendimiento, **BaseX** permite la creación de índices que agilizan la búsqueda de elementos y atributos. Para acelerar la recuperación de datos textuales, se puede crear un índice de texto con:

```xquery
CREATE TEXT INDEX
```

Si la base de datos contiene muchos atributos y se necesitan búsquedas rápidas sobre ellos, se recomienda la creación de un índice de atributos:

```xquery
CREATE ATTRIBUTE INDEX
```

Por último, para mejorar el acceso a los elementos XML en función de sus nombres, se puede usar un índice de nombres:

```xquery
CREATE NAME INDEX
```

El uso de estos índices reduce significativamente los tiempos de respuesta de las consultas.

### 5.2.4. Exportación de datos desde XML a otros formatos

Muchas veces es necesario convertir datos XML a otros formatos para su integración con otros sistemas. XQuery permite transformar XML en **JSON, CSV o HTML** de manera eficiente. Para convertir datos XML a JSON, se puede utilizar:

```xquery
json:serialize(
    array {
        for $p in //personaje
        return map {
            "nombre": $p/nombre/text(),
            "raza": $p/raza/text(),
            "nivel_poder": $p/nivel_poder/text()
        }
    }
)
```

Si en cambio se necesita exportar la información en formato CSV, se puede usar:

```xquery
let $header := "Nombre,Raza,Nivel de Poder"
let $rows := 
    for $p in //personaje
    return string-join(($p/nombre, $p/raza, $p/nivel_poder), ",")
return string-join(($header, $rows), "
")
```

Por otro lado, si se quiere mostrar los datos en una tabla HTML para su visualización en una página web, se puede emplear:

```xquery
<html>
    <body>
        <h1>Lista de Personajes</h1>
        <table border="1">
            <tr><th>Nombre</th><th>Raza</th><th>Nivel de Poder</th></tr>
            {
                for $p in //personaje
                return <tr>
                           <td>{$p/nombre/text()}</td>
                           <td>{$p/raza/text()}</td>
                           <td>{$p/nivel_poder/text()}</td>
                       </tr>
            }
        </table>
    </body>
</html>
```

La conversión de datos a otros formatos facilita la interoperabilidad con otros sistemas y la presentación de la información de manera más amigable.

El uso avanzado de XQuery en bases de datos XML permite no solo realizar consultas eficientes, sino también manipular, optimizar y transformar la información de manera estructurada. La capacidad de modificar documentos XML, mejorar la velocidad de acceso mediante índices y exportar datos en otros formatos hace que XQuery sea una herramienta clave en el manejo de bases de datos XML. En el siguiente apartado, se explorará cómo integrar XQuery con **Java** y otras tecnologías para el desarrollo de aplicaciones que gestionan datos XML de manera dinámica.

## 5.3. Consultas desde Java con XPath y XQuery

La integración de **XPath y XQuery** en aplicaciones Java permite la manipulación eficiente de bases de datos XML dentro de entornos de programación. Gracias a las bibliotecas especializadas, es posible ejecutar consultas XML desde Java y procesar los resultados de manera programática. En este apartado se explorará cómo utilizar XPath y XQuery en Java para consultar y modificar bases de datos XML almacenadas en **BaseX**.

### 5.3.1. Uso de XPath en Java

XPath se puede utilizar en Java para navegar y extraer información de documentos XML. Para ello, se emplea la API **javax.xml.xpath**, que permite ejecutar expresiones XPath sobre un documento XML cargado en memoria. A continuación, se muestra un ejemplo de cómo obtener el nombre de todos los personajes de un archivo XML utilizando Java y XPath:

```java
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathFactory;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;

import java.io.File;

public class XPathExample {
    public static void main(String[] args) throws Exception {
        File inputFile = new File("dragonball.xml");
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        DocumentBuilder builder = factory.newDocumentBuilder();
        Document doc = builder.parse(inputFile);
        
        XPathFactory xPathFactory = XPathFactory.newInstance();
        XPath xpath = xPathFactory.newXPath();
        
        XPathExpression expr = xpath.compile("//personaje/nombre/text()");
        NodeList nodes = (NodeList) expr.evaluate(doc, XPathConstants.NODESET);

        for (int i = 0; i < nodes.getLength(); i++) {
            System.out.println(nodes.item(i).getNodeValue());
        }
    }
}
```

Este código carga un documento XML, ejecuta una expresión XPath para seleccionar todos los nombres de los personajes y los imprime por pantalla.

### 5.3.2. Uso de XQuery en Java con BaseX

Mientras que XPath se centra en la navegación dentro de documentos XML, **XQuery** permite realizar consultas avanzadas y transformaciones sobre bases de datos XML. Para ejecutar consultas XQuery desde Java, se puede utilizar la API de **BaseX**, que permite la conexión con una base de datos XML y la ejecución de sentencias XQuery de manera programática.

#### 5.3.2.1. Conexión y autenticación en BaseX desde Java

Para conectar una aplicación Java a **BaseX**, es necesario configurar correctamente el servidor y asegurarse de que los usuarios tienen los permisos adecuados. A continuación, se presentan los pasos detallados para establecer un entorno funcional.

> Paso 1: Iniciar el servidor BaseX

Antes de poder conectarse desde Java, es necesario asegurarse de que el servidor BaseX está en ejecución. Para iniciarlo, abre una terminal y ejecuta el siguiente comando:

```sh
basexserver
```

Este comando iniciará el servidor en segundo plano y lo mantendrá en ejecución mientras se realicen las conexiones.

> Paso 2: Abrir el cliente BaseX

En otra terminal, abre el cliente BaseX con el siguiente comando:

```sh
basex
```

Desde esta sesión del cliente, se realizarán diversas operaciones para configurar los usuarios y bases de datos.

> Paso 2.1: Crear un usuario con permisos de administrador

Para crear un usuario llamado **Goku** con la contraseña **Goku** y otorgarle permisos de administrador, ejecuta los siguientes comandos en la consola de BaseX:

```xquery
CREATE USER Goku Goku
```

Para darle los permisos suficientes, ejecuta lo siguiente en la consola de comandos de BaseX:

```xquery
GRANT admin TO Goku
```

Para confirmar que el usuario ha sido creado correctamente y que tiene los permisos adecuados, usa:

```xquery
SHOW USERS
```

El resultado esperado es:

```
Username  Permission
--------------------
admin     admin       
Goku      admin             
```

> Paso 2.2: Crear una base de datos en BaseX

Para crear una base de datos llamada **dragonball** y cargar un archivo XML específico, usa el siguiente comando:

```xquery
CREATE DATABASE dragonball /home/teo/basex/data/miPrimeraBD/dragonball_basex.xml
```

Este comando creará la base de datos y almacenará el documento **dragonball_basex.xml** en la ubicación especificada.

> Paso 2.3: Listar las bases de datos disponibles

Para verificar que la base de datos **dragonball** ha sido creada correctamente, usa el siguiente comando:

```xquery
LIST
```

Esto debería mostrar una lista de bases de datos existentes:

```
Name         Resources  Size   Input Path                                             
------------------------------------------------------------------------------------
dragonball   1          13677  /home/teo/basex/data/miPrimeraBD/dragonball_basex.xml  
miPrimeraBD  1          8788   /home/teo/basex/
```

> Paso 2.4: Conectarse desde Java a BaseX

Una vez que el servidor está en ejecución y la base de datos ha sido creada, se puede conectar una aplicación Java a BaseX utilizando el siguiente código:

```java
package org.example;

import org.basex.api.client.ClientSession;

public class XQueryBaseX {
    public static void main(String[] args) {
        try {
            // Conectar a BaseX con usuario y contraseña
            ClientSession session = new ClientSession("localhost", 1984, "Goku", "Goku");

            // Abrir la base de datos antes de ejecutar la consulta
            session.execute("OPEN dragonball");

            // Consulta XQuery
            String query = "for $p in //personaje return <nombre>{$p/nombre/text()}</nombre>";
            String result = session.execute("XQUERY " + query);

            // Mostrar resultado
            System.out.println("Resultado de la consulta:");
            System.out.println(result);

            // Cerrar la sesión
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
```

Este código establece una conexión con BaseX en el puerto `1984`, usando el usuario **Goku** con la contraseña **Goku**. Luego, abre la base de datos **dragonball** y ejecuta una consulta para obtener todos los nombres de los personajes almacenados.


Con estos pasos, se establece una conexión segura entre **BaseX y una aplicación Java**, asegurando que los usuarios tienen los permisos adecuados y que la base de datos está correctamente configurada. Esta integración permite ejecutar consultas XQuery desde Java y recuperar datos XML de manera eficiente.

### 5.3.3. Modificación de bases de datos XML desde Java

Además de realizar consultas, es posible modificar bases de datos XML desde Java utilizando XQuery. BaseX permite ejecutar sentencias de actualización directamente desde una conexión remota. A continuación, se muestra cómo actualizar el nivel de poder de un personaje:

```java
package org.example;

import org.basex.api.client.ClientSession;

public class UpdateXQueryBaseX {
    public static void main(String[] args) {
        try {
            // Conectar a BaseX con usuario y contraseña
            ClientSession session = new ClientSession("localhost", 1984, "Goku", "Goku");

            // Abrir la base de datos antes de ejecutar la actualización
            session.execute("OPEN dragonball");

            // Consulta XQuery para modificar el nivel de poder de Goku
            String updateQuery = "replace value of node //personaje[nombre='Goku']/nivel_poder with '9500'";
            session.execute("XQUERY " + updateQuery);

            System.out.println("Nivel de poder actualizado correctamente.");

            // Cerrar la sesión
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
```

Con este código, se actualiza el nodo `<nivel_poder>` del personaje Goku directamente en la base de datos.

#### Ejercicios de modificación con XQuery en BaseX

A continuación, se presentan **5 ejercicios prácticos** de modificación en bases de datos nativas XML en **BaseX**. Cada ejercicio debe resolverse utilizando consultas XQuery sobre la base de datos **Dragon Ball** previamente cargada.

**Ejercicio 1: Aumentar el nivel de poder de todos los Saiyajin**: Incrementar en **500 unidades** el nivel de poder de todos los personajes cuya raza sea **Saiyajin**.  
_Pista_: Utiliza `replace value of node` con una operación matemática sobre el valor actual.  
**Ejercicio 2: Cambiar el planeta de origen de Vegeta**: Modificar el planeta de origen de Vegeta y establecerlo en **"Tierra"**.  
_Pista_: Usa `replace value of node` para actualizar el contenido del nodo.  
**Ejercicio 3: Añadir una nueva técnica a Goku**: Insertar la técnica **"Ultra Instinto"** en la lista de técnicas de Goku.  
_Pista_: Utiliza `insert node ... into ...` para agregar un nuevo nodo dentro de `<tecnicas>`.  
**Ejercicio 4: Eliminar a Freezer de la base de datos**: Borrar completamente el nodo `<personaje>` de Freezer si existe en la base de datos.  
_Pista_: Usa `delete node` para eliminar el personaje correspondiente.  
**Ejercicio 5: Reducir a la mitad el número de habitantes de Namek**: Actualizar el número de habitantes del planeta Namek dividiéndolo entre **2**.  
_Pista_: Usa `replace value of node` con una operación matemática para modificar el valor.  


### 5.3.4. Conversión de datos XML desde Java

En algunas aplicaciones, puede ser necesario convertir datos XML en otros formatos como JSON o CSV. Desde Java, se pueden procesar los resultados de consultas XQuery y exportarlos a otros formatos.

#### 5.3.4.1. Conversión de XML a JSON en Java

Para convertir un documento XML en formato JSON, se puede usar la biblioteca **Jackson**:

```java
package org.example;

import org.basex.api.client.ClientSession;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.dataformat.xml.XmlMapper;

import java.io.StringReader;

public class XMLtoJSON {
    public static void main(String[] args) {
        try {
            // Conectar a BaseX con usuario y contraseña
            ClientSession session = new ClientSession("localhost", 1984, "Goku", "Goku");

            // Abrir la base de datos antes de ejecutar la consulta
            session.execute("OPEN dragonball");

            // Consulta XQuery para obtener todos los personajes en XML
            String query = "for $p in //personaje return $p";
            String xmlResult = session.execute("XQUERY " + query);

            // Cerrar la sesión con BaseX
            session.close();

            // Verificar si la consulta devolvió datos
            if (xmlResult.isEmpty()) {
                System.out.println("No se encontraron datos en la base de datos.");
                return;
            }

            // Convertir la respuesta XML en JSON con Jackson
            XmlMapper xmlMapper = new XmlMapper();
            Object obj = xmlMapper.readValue(new StringReader("<personajes>" + xmlResult + "</personajes>"), Object.class);

            ObjectMapper jsonMapper = new ObjectMapper();
            String jsonOutput = jsonMapper.writerWithDefaultPrettyPrinter().writeValueAsString(obj);

            // Imprimir el resultado en formato JSON
            System.out.println("Resultado en formato JSON:");
            System.out.println(jsonOutput);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

```

El siguiente código permite obtener datos XML directamente desde una base de datos **BaseX** y convertirlos a **JSON** utilizando la biblioteca **Jackson** en Java.

**Flujo del código**:
1. **Conectar con BaseX usando `ClientSession`**  
   - Se establece una conexión con el servidor BaseX en `localhost` puerto `1984`, usando el usuario `Goku` y la contraseña `Goku`.
2. **Abrir la base de datos `dragonball`**  
   - Antes de ejecutar consultas, se abre la base de datos con:
   ```java
   session.execute("OPEN dragonball");
   ```
3. **Ejecutar una consulta XQuery para obtener los personajes**  
   - La consulta devuelve todos los nodos `<personaje>`:
   ```java
   String query = "for $p in //personaje return $p";
   String xmlResult = session.execute("XQUERY " + query);
   ```
4. **Cerrar la conexión con BaseX**  
   - Se cierra la sesión después de obtener los datos para evitar mantener conexiones abiertas innecesarias.
   ```java
   session.close();
   ```
5. **Verificar si la consulta devolvió datos**  
   - Si no hay resultados, se muestra un mensaje y se detiene el programa:
   ```java
   if (xmlResult.isEmpty()) {
       System.out.println("No se encontraron datos en la base de datos.");
       return;
   }
   ```
6. **Convertir la respuesta XML en JSON con Jackson**  
   - Se utiliza `XmlMapper` de **Jackson** para leer el XML como un objeto Java:
   ```java
   XmlMapper xmlMapper = new XmlMapper();
   Object obj = xmlMapper.readValue(new StringReader("<personajes>" + xmlResult + "</personajes>"), Object.class);
   ```
   - Luego, se convierte este objeto a **JSON** con `ObjectMapper`:
   ```java
   ObjectMapper jsonMapper = new ObjectMapper();
   String jsonOutput = jsonMapper.writerWithDefaultPrettyPrinter().writeValueAsString(obj);
   ```
7. **Mostrar el resultado en JSON formateado**  
   - Finalmente, el JSON resultante se imprime en pantalla:
   ```java
   System.out.println("Resultado en formato JSON:");
   System.out.println(jsonOutput);
   ```
8. **Salida esperada**
    Si en la base de datos **BaseX** existe la siguiente información en XML:

    ```xml
    <personaje>
        <nombre>Goku</nombre>
        <raza>Saiyajin</raza>
        <nivel_poder>9001</nivel_poder>
    </personaje>
    <personaje>
        <nombre>Vegeta</nombre>
        <raza>Saiyajin</raza>
        <nivel_poder>8500</nivel_poder>
    </personaje>
    ```

    El programa generará la siguiente salida en **JSON**:

    ```json
    {
    "personajes": {
        "personaje": [
        {
            "nombre": "Goku",
            "raza": "Saiyajin",
            "nivel_poder": "9001"
        },
        {
            "nombre": "Vegeta",
            "raza": "Saiyajin",
            "nivel_poder": "8500"
        }
        ]
    }
    }
    ```


### 5.3.5. Beneficios de la integración de XQuery con Java

El uso de XQuery dentro de aplicaciones Java ofrece numerosas ventajas, entre ellas:

- **Automatización de consultas y actualizaciones XML**: Permite ejecutar consultas avanzadas sobre bases de datos XML sin intervención manual.
- **Integración con aplicaciones empresariales**: XQuery se puede usar dentro de sistemas ERP, CRM o cualquier aplicación que requiera procesamiento de XML.
- **Conversión de datos**: Facilita la transformación de XML a otros formatos estándar como JSON o CSV.
- **Manipulación eficiente de datos**: Permite trabajar con grandes volúmenes de datos de manera estructurada y optimizada.

La combinación de **Java, XPath y XQuery** permite desarrollar aplicaciones capaces de gestionar y manipular bases de datos XML de manera eficiente. Gracias a las bibliotecas especializadas, se pueden ejecutar consultas, realizar modificaciones en tiempo real y convertir datos XML en otros formatos. En el siguiente apartado, se explorará la gestión de transacciones en bases de datos XML y su importancia en entornos donde la integridad de los datos es fundamental.