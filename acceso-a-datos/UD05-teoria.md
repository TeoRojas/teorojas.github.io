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
   4.1. [Creación y eliminación de colecciones](#41-creación-y-eliminación-de-colecciones)  
   4.2. [Añadir, modificar y eliminar documentos XML](#42-añadir-modificar-y-eliminar-documentos-xml)  
   4.3. [Clases y métodos en Java para bases de datos XML](#43-clases-y-métodos-en-java-para-bases-de-datos-xml)  
   4.4. [Tratamiento de excepciones en operaciones con bases de datos XML](#44-tratamiento-de-excepciones-en-operaciones-con-bases-de-datos-xml)  
5. [Consultas en bases de datos XML](#5-consultas-en-bases-de-datos-xml)  
   5.1. [Introducción a XPath y XQuery](#51-introducción-a-xpath-y-xquery)  
   5.2. [Uso de XQuery en bases de datos XML](#52-uso-de-xquery-en-bases-de-datos-xml)  
   5.3. [Consultas desde Java con XPath y XQuery](#53-consultas-desde-java-con-xpath-y-xquery)  
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
SHOW DATABASES
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
CREATE USER usuario_nuevo IDENTIFIED BY "contraseña_segura"
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
GRANT user TO usuario_nuevo
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

---

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

