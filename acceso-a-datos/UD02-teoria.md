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
   - Ventajas e inconvenientes de utilizar conectores 
   - Selección del conector adecuado para la aplicación 
5. [Instalación de Gestores de Bases de Datos](#5-instalación-de-gestores-de-bases-de-datos)
   - Instalación de MySQL y H2
   - Instalación con Maven de MySQL y H2
6. [Establecimiento de Conexiones](#6-establecimiento-de-conexiones)
   - Métodos para establecer conexiones con bases de datos 
   - Conexión a la base de datos MySQL
   - Conexión a la base de datos H2
   - Ejemplo práctico de conexión a una base de datos
7. [Definición de Objetos para Almacenamiento de Resultados](#7-definición-de-objetos-para-almacenamiento-de-resultados)
   - Estructura de los objetos destinados a almacenar resultados de operaciones 
   - Eliminación de objetos una vez finalizada su función 
8. [Ejecución de Sentencias SQL](#8-ejecución-de-sentencias-sql)
   - Crear Statement - repaso Data Definition Language
   - Statement crear tabla
   - Statement buscar datos
   - Ejecución de sentencias de descripción de datos
   - Ejecución de sentencias de modificación de datos 
   - Ejecución de consultas 
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
    - Importancia de la gestión de transacciones 
    - Métodos para manejar transacciones en aplicaciones

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

## 5.1. Instalación de MySQL y H2

### Instalación de MySQL

Para comenzar a trabajar con MySQL, es necesario seguir una serie de pasos para instalarlo adecuadamente en el sistema. A continuación se detallan los pasos básicos para la instalación:

1. **Descargar MySQL**: Visita la [página oficial de MySQL](https://dev.mysql.com/downloads/mysql/) y selecciona la versión adecuada para tu sistema operativo. Puedes optar por la versión Community Server, que es gratuita.
2. **Ejecutar el instalador**: Una vez descargado el archivo, ejecuta el instalador. Durante la instalación, se te presentarán diferentes opciones. Es recomendable seleccionar la instalación "Developer Default" para obtener todos los componentes necesarios para el desarrollo.
3. **Configurar MySQL**: Al finalizar la instalación, se te pedirá configurar el servidor MySQL. Esto incluye establecer una contraseña para el usuario root y decidir si deseas configurar MySQL como un servicio en tu sistema operativo.
4. **Verificar la instalación**: Para asegurarte de que MySQL se ha instalado correctamente, puedes abrir una terminal o línea de comandos y acceder al cliente MySQL con el usuario root. Si puedes acceder sin problemas, la instalación ha sido exitosa.

```bash
mysql -u root -p
```

### Instalación de H2

H2 es un gestor de bases de datos embebido que puede ser utilizado de manera rápida y sencilla. A continuación se presentan los pasos para instalar H2:

1. **Descargar H2**: Dirígete a la [página oficial de H2 Database](http://www.h2database.com/) y descarga la versión más reciente del archivo comprimido.
2. **Extraer el archivo**: Una vez descargado, extrae el contenido del archivo comprimido en una carpeta de tu elección.
3. **Ejecutar H2**: Abre una terminal o línea de comandos y navega hasta la carpeta donde extrajiste H2. Inicia el servidor H2, lo que abrirá la consola web en tu navegador.
   ```bash
   java -jar h2*.jar
   ```
4. **Configurar conexión**: En la consola web, podrás crear y gestionar bases de datos. Para conectarte, utiliza la URL de conexión predeterminada, que generalmente es `jdbc:h2:~/test`, junto con el nombre de usuario y la contraseña que desees establecer.
5. **Verificar la instalación**: Si puedes acceder a la consola H2 y crear una base de datos, la instalación ha sido exitosa.

## 5.2. Instalación con Maven de MySQL y H2

La gestión de dependencias en proyectos Java se facilita considerablemente mediante el uso de Maven. Al utilizar Maven, puedes incluir bibliotecas necesarias para trabajar con bases de datos como MySQL y H2 directamente en tu archivo de configuración, conocido como `pom.xml`. A continuación se explican los pasos para instalar estas bases de datos usando Maven.

### 5.2.1. Instalación del conector MySQL

Para trabajar con MySQL, necesitas añadir la dependencia del conector JDBC en tu archivo `pom.xml`. El conector permite que tu aplicación Java se comunique con el servidor de MySQL. A continuación se presenta cómo hacerlo:

1. **Abrir el archivo `pom.xml`**: En la raíz de tu proyecto Maven, busca y abre el archivo `pom.xml`.
2. **Agregar la dependencia de MySQL**: Dentro de la sección `<dependencies>`, añade la dependencia correspondiente.
   ```xml
   <dependency>
      <groupId>mysql</groupId>
      <artifactId>mysql-connector-java</artifactId>
      <version>8.0.30</version> <!-- Verifica la última versión disponible -->
   </dependency>
   ```

### 5.2.2. Instalación del conector H2

Del mismo modo, para utilizar H2, también es necesario añadir la dependencia correspondiente en tu archivo `pom.xml`:

1. **Continuar en el archivo `pom.xml`**: Asegúrate de estar dentro de la misma sección `<dependencies>`.
2. **Agregar la dependencia de H2**: Añade la dependencia correspondiente.
   ```xml
   <dependency>
      <groupId>com.h2database</groupId>
      <artifactId>h2</artifactId>
      <version>2.1.214</version> <!-- Verifica la última versión disponible -->
   </dependency>
   ```

### 5.2.3. Actualizar el proyecto

Una vez que hayas añadido las dependencias, guarda los cambios en el archivo `pom.xml`. Si estás utilizando un IDE como IntelliJ IDEA o Eclipse, es posible que necesites actualizar el proyecto Maven para descargar automáticamente las nuevas dependencias. Esto se puede hacer desde el panel de Maven del IDE o mediante el comando correspondiente.

```bash
mvn clean install
```

### Verificación de la instalación

Después de completar estos pasos, las bibliotecas necesarias para trabajar con MySQL y H2 estarán disponibles en tu proyecto. Puedes verificar que las dependencias se han añadido correctamente comprobando la carpeta de dependencias en tu proyecto o mirando el archivo `pom.xml` para asegurarte de que no hay errores.

Con estos conectores instalados, estarás listo para establecer conexiones con las bases de datos y realizar operaciones de acceso a datos en tus aplicaciones Java.

# 6. Establecimiento de Conexiones

Como se ha visto anteriormente, el establecimiento de conexiones con bases de datos es un proceso fundamental en el desarrollo de aplicaciones que gestionan información. Permite que una aplicación Java se comunique con un sistema de gestión de bases de datos (SGBD), lo que es esencial para realizar operaciones de lectura y escritura de datos. Este apartado aborda los métodos y consideraciones necesarias para establecer conexiones efectivas con bases de datos relacionales como MySQL y H2.

## 6.1. Métodos para establecer conexiones con bases de datos (CEd)

Para establecer una conexión con una base de datos, se deben seguir ciertos pasos:

1. **Cargar el Driver JDBC**: Antes de establecer la conexión, es necesario cargar el driver JDBC correspondiente. Esto se puede hacer utilizando el método `Class.forName()`, que permite cargar la clase del driver en tiempo de ejecución.

2. **Definir la URL de Conexión**: La URL de conexión incluye la ubicación del servidor de la base de datos, el nombre de la base de datos y otros parámetros necesarios. Por ejemplo, para MySQL, la URL tiene el formato: `jdbc:mysql://<host>:<port>/<database>`.

3. **Establecer la Conexión**: Utilizando la clase `DriverManager`, se puede establecer la conexión mediante el método `getConnection()`, proporcionando la URL de conexión, el nombre de usuario y la contraseña.

4. **Verificar la Conexión**: Una vez que la conexión ha sido establecida, es importante verificar que no ha habido errores y que la conexión está activa.

5. **Cerrar la Conexión**: Es fundamental cerrar la conexión una vez que se ha terminado de utilizar para liberar recursos y evitar posibles fugas de memoria.

## 6.2. Conexión a la base de datos MySQL

Para conectarte a una base de datos MySQL, debes asegurarte de que el servidor MySQL está en funcionamiento y accesible. La conexión puede hacerse de la siguiente manera:

- Cargar el driver MySQL en tu aplicación.
- Definir la URL de conexión utilizando las credenciales adecuadas (usuario y contraseña).
- Utilizar `DriverManager` para obtener la conexión.

## 6.3. Conexión a la base de datos H2

La conexión a H2 es similar, pero tiene algunas diferencias clave. H2 es una base de datos embebida que puede ser utilizada en modo de servidor o en modo embebido:

- Para el modo embebido, la URL de conexión suele ser `jdbc:h2:~/test` (donde `~/test` es el nombre del archivo de la base de datos en el sistema de archivos).
- Para el modo servidor, la URL incluirá el host y el puerto en el que el servidor H2 está corriendo.

## 6.4. Ejemplo práctico de conexión a una base de datos

En este ejemplo, se presentará cómo establecer conexiones a bases de datos MySQL y H2 utilizando JDBC en Java. Asegúrate de tener el driver JDBC correspondiente en tu proyecto.

### 6.4.1. Conexión a la Base de Datos MySQL

Para conectarte a una base de datos MySQL, necesitas seguir estos pasos:

```java
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionMySQL {
    public static void main(String[] args) {
        // Datos de conexión
        String url = "jdbc:mysql://localhost:3306/nombre_de_la_base_de_datos"; // Cambia "nombre_de_la_base_de_datos"
        String usuario = "tu_usuario"; // Cambia "tu_usuario"
        String contrasena = "tu_contrasena"; // Cambia "tu_contrasena"

        try {
            // Cargar el driver de MySQL
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establecer la conexión
            Connection conexion = DriverManager.getConnection(url, usuario, contrasena);
            System.out.println("Conexión a MySQL establecida con éxito.");

            // Aquí puedes realizar operaciones con la base de datos

            // Cerrar la conexión
            conexion.close();
            System.out.println("Conexión a MySQL cerrada.");
        } catch (ClassNotFoundException e) {
            System.out.println("Driver no encontrado: " + e.getMessage());
        } catch (SQLException e) {
            System.out.println("Error al establecer la conexión: " + e.getMessage());
        }
    }
}
```

### 6.4.2. Conexión a la Base de Datos H2

Para conectarte a una base de datos H2, el proceso es similar pero con una URL de conexión diferente:

```java
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionH2 {
    public static void main(String[] args) {
        // Datos de conexión
        String url = "jdbc:h2:~/nombre_de_la_base_de_datos"; // Cambia "nombre_de_la_base_de_datos"
        String usuario = "sa"; // Usuario por defecto en H2
        String contrasena = ""; // Contraseña vacía por defecto

        try {
            // Cargar el driver de H2
            Class.forName("org.h2.Driver");

            // Establecer la conexión
            Connection conexion = DriverManager.getConnection(url, usuario, contrasena);
            System.out.println("Conexión a H2 establecida con éxito.");

            // Aquí puedes realizar operaciones con la base de datos

            // Cerrar la conexión
            conexion.close();
            System.out.println("Conexión a H2 cerrada.");
        } catch (ClassNotFoundException e) {
            System.out.println("Driver no encontrado: " + e.getMessage());
        } catch (SQLException e) {
            System.out.println("Error al establecer la conexión: " + e.getMessage());
        }
    }
}
```

### 6.4.3. Notas Finales

- **Asegúrate de tener los drivers JDBC de MySQL y H2** en tu proyecto, ya sea mediante Maven o descargando manualmente los JARs necesarios.
- **Cambia los datos de conexión** (nombre de la base de datos, usuario y contraseña) según tu configuración.
- **MySQL**: Asegúrate de que el servidor MySQL esté en ejecución y que la base de datos exista.
- **H2**: H2 puede ejecutarse en modo embebido o en modo servidor. En el ejemplo anterior, se utiliza el modo embebido.

# 7. Definición de Objetos para Almacenamiento de Resultados

En el contexto de las aplicaciones que interactúan con bases de datos relacionales, es fundamental definir correctamente los objetos que se utilizarán para almacenar los resultados de las operaciones realizadas. Estos objetos permiten representar de manera estructurada los datos que se extraen de la base de datos y facilitar su manipulación dentro de la aplicación. Además, es importante asegurarse de que estos objetos sean eliminados adecuadamente una vez que ya no sean necesarios, para evitar el consumo innecesario de recursos.

## 7.1. Estructura de los Objetos Destinados a Almacenamiento de Resultados (CEg)

Cuando se realiza una consulta a la base de datos, el resultado debe ser almacenado en objetos que representen las entidades de la base de datos. Estos objetos pueden ser simples clases Java, también conocidas como **POJOs (Plain Old Java Objects)**, que contienen propiedades que corresponden a las columnas de las tablas de la base de datos.

### Ejemplo de Clase para Almacenar Resultados de Consultas:

Consideremos una base de datos con una tabla de **Persona** que contiene los campos `id`, `nombre` y `edad`. La clase Java destinada a almacenar los resultados de las consultas de esta tabla podría verse de la siguiente manera:

```java
public class Persona {
    private int id;
    private String nombre;
    private int edad;

    // Constructor
    public Persona(int id, String nombre, int edad) {
        this.id = id;
        this.nombre = nombre;
        this.edad = edad;
    }

    // Getters y setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }
}
```

En este caso, la clase `Persona` representa un registro de la tabla `Persona` de la base de datos. Los datos que se obtienen a partir de una consulta serán almacenados en instancias de esta clase.

### Mapeo entre la Base de Datos y el Objeto

El mapeo entre los resultados de la consulta y los objetos Java se realiza mediante la ejecución de la consulta SQL y la asignación de los resultados de cada columna a los atributos correspondientes de la clase `Persona`.

```java
String sql = "SELECT id, nombre, edad FROM Persona WHERE edad > ?";
PreparedStatement ps = conexion.prepareStatement(sql);
ps.setInt(1, 18);  // Filtra personas mayores de 18 años

ResultSet rs = ps.executeQuery();

while (rs.next()) {
    Persona persona = new Persona(rs.getInt("id"), rs.getString("nombre"), rs.getInt("edad"));
    // Almacenar el objeto persona en una lista o procesarlo según sea necesario
}
```

## 7.2. Eliminación de Objetos una vez Finalizada su Función (CEi)

Una vez que los objetos han cumplido su propósito, es importante gestionarlos adecuadamente para liberar los recursos que están utilizando. En Java, la **gestión de memoria** se realiza principalmente mediante el **garbage collector**, que se encarga de eliminar los objetos que ya no tienen referencias. Sin embargo, hay buenas prácticas que se deben seguir para asegurar que no queden objetos innecesarios ocupando memoria.

### Buenas Prácticas para la Eliminación de Objetos:

1. **Nullificar las Referencias**:
   Después de que un objeto ha sido utilizado y ya no es necesario, se puede **nullificar** las referencias a dicho objeto. Esto puede ayudar al garbage collector a identificar que el objeto puede ser recolectado.

   ```java
   persona = null;  // El objeto Persona ya no es necesario
   ```
2. **Cerrar Recursos de Base de Datos**:
   Es crucial cerrar conexiones, statements y result sets después de que ya no sean necesarios, ya que estos recursos pueden mantenerse activos durante mucho tiempo si no se cierran adecuadamente.
   ```java
   rs.close();
   ps.close();
   conexion.close();
   ```
3. **Uso de Try-With-Resources**:
   El uso de la estructura **try-with-resources** en Java ayuda a cerrar automáticamente los recursos cuando se salen del alcance del bloque `try`, garantizando así que se eliminen los objetos asociados de forma apropiada.
   ```java
   try (Connection conexion = DriverManager.getConnection(url, usuario, contrasena);
      PreparedStatement ps = conexion.prepareStatement("SELECT * FROM Persona");
      ResultSet rs = ps.executeQuery()) {

      while (rs.next()) {
         Persona persona = new Persona(rs.getInt("id"), rs.getString("nombre"), rs.getInt("edad"));
         // Procesar el objeto persona
      }

   } catch (SQLException e) {
      e.printStackTrace();
   }
   ```

De esta manera, los objetos son gestionados de forma eficiente, asegurando que no haya fugas de memoria y que los recursos se liberen adecuadamente al final de su uso.

La correcta **definición de objetos** para almacenar resultados y su **eliminación adecuada** son aspectos cruciales en el desarrollo de aplicaciones que gestionan información en bases de datos relacionales. Asegurarse de que los objetos representen fielmente los datos de la base de datos y de que se eliminen adecuadamente después de su uso contribuye a una gestión eficiente de los recursos y a la estabilidad de la aplicación.

# 8. Ejecución de Sentencias SQL

En este apartado, se abordarán los aspectos fundamentales de la ejecución de sentencias SQL utilizando JDBC. Aprenderemos a interactuar con bases de datos relacionales mediante la ejecución de comandos para la manipulación y la obtención de datos. Se cubrirán sentencias de definición de datos, manipulación de tablas y consultas, con el fin de crear aplicaciones que gestionen datos de manera eficiente y segura.

## 8.1. Crear Statement - Repaso Data Definition Language (DDL)

El **Data Definition Language (DDL)** es un subconjunto de SQL utilizado para definir, modificar y eliminar estructuras de bases de datos como tablas, índices y vistas. Para ejecutar sentencias DDL en Java, utilizamos un objeto `Statement`. Aquí repasaremos cómo crear un `Statement` y ejecutar sentencias DDL.

### Creación de un `Statement`

Para crear un `Statement`, primero necesitamos obtener una conexión a la base de datos y luego utilizarla para crear un objeto `Statement`. Con este objeto podemos ejecutar comandos SQL, como la creación de tablas o la modificación de la estructura de la base de datos.

```java
Statement statement = connection.createStatement();
```

## 8.2. Statement Crear Tabla

Una de las primeras operaciones al interactuar con una base de datos es la creación de tablas. Para ello, usamos una sentencia SQL de tipo `CREATE TABLE`. A continuación se muestra un ejemplo de cómo crear una tabla en una base de datos mediante JDBC.

### Ejemplo de Código para Crear una Tabla.

```java
String sql = "CREATE TABLE Persona ("
           + "id INT PRIMARY KEY, "
           + "nombre VARCHAR(100), "
           + "edad INT)";
statement.executeUpdate(sql);
```
En este ejemplo, estamos creando una tabla llamada `Persona` con tres columnas: `id`, `nombre` y `edad`. La columna `id` es la clave primaria.

## 8.3. Statement Buscar Datos

El siguiente paso es ejecutar consultas para obtener datos de las tablas. Usamos la sentencia `SELECT` para consultar los datos almacenados en una base de datos.

### Ejemplo de Código para Buscar Datos

```java
String sql = "SELECT * FROM Persona";
ResultSet resultSet = statement.executeQuery(sql);

while (resultSet.next()) {
    System.out.println("ID: " + resultSet.getInt("id"));
    System.out.println("Nombre: " + resultSet.getString("nombre"));
    System.out.println("Edad: " + resultSet.getInt("edad"));
}
```

## 8.4. Ejecución de Sentencias de Descripción de Datos

Las sentencias de **descripción de datos** se utilizan para obtener información sobre la estructura de la base de datos, como las tablas y las columnas. Estas sentencias son útiles cuando necesitamos obtener información acerca de la base de datos sin modificarla.

### Ejemplo de Código para Descripción de Datos.

```java
DatabaseMetaData metadata = connection.getMetaData();
ResultSet resultSet = metadata.getTables(null, null, "%", new String[] {"TABLE"});

while (resultSet.next()) {
    System.out.println("Tabla: " + resultSet.getString("TABLE_NAME"));
}
```

Este código muestra el nombre de todas las tablas presentes en la base de datos.

## 8.5. Ejecución de Sentencias de Modificación de Datos (CEf)

Las sentencias de **modificación de datos** se utilizan para cambiar el contenido de las tablas en la base de datos. Estas incluyen sentencias `INSERT`, `UPDATE` y `DELETE`. A continuación, se muestra cómo ejecutar una sentencia `INSERT` para añadir un nuevo registro a la base de datos.

### Ejemplo de Código para Insertar Datos.

```java
String sql = "INSERT INTO Persona (id, nombre, edad) VALUES (?, ?, ?)";
PreparedStatement preparedStatement = connection.prepareStatement(sql);
preparedStatement.setInt(1, 1);
preparedStatement.setString(2, "Juan Pérez");
preparedStatement.setInt(3, 30);
preparedStatement.executeUpdate();
```
En este ejemplo, utilizamos un `PreparedStatement` para insertar un nuevo registro en la tabla `Persona`, con los valores de `id`, `nombre` y `edad`.

Estas operaciones básicas de manipulación de datos (DML) son esenciales para desarrollar aplicaciones que gestionen y modifiquen bases de datos relacionales.

## 8.6. Ejecución de Consultas (CEh)

Las consultas en SQL se utilizan para recuperar información de las bases de datos. Para ejecutar una consulta, usamos la sentencia `SELECT`. Estas consultas pueden ser simples, pero también pueden incluir filtros, ordenamientos y agrupaciones de datos.

### Ejemplo de Código para Ejecutar una Consulta

```java
String sql = "SELECT * FROM Persona WHERE edad > ?";
PreparedStatement preparedStatement = connection.prepareStatement(sql);
preparedStatement.setInt(1, 18); // Filtra las personas mayores de 18 años

ResultSet resultSet = preparedStatement.executeQuery();

while (resultSet.next()) {
    System.out.println("ID: " + resultSet.getInt("id"));
    System.out.println("Nombre: " + resultSet.getString("nombre"));
    System.out.println("Edad: " + resultSet.getInt("edad"));
}
```

En este ejemplo, ejecutamos una consulta `SELECT` que obtiene todos los registros de la tabla `Persona` para personas mayores de 18 años.

## 8.7. Utilización del Resultado de una Consulta

Una vez ejecutada una consulta, el resultado se almacena en un objeto `ResultSet`. Este objeto contiene los datos obtenidos de la base de datos, y a través de sus métodos, podemos acceder a los valores de las columnas de cada fila.

### Accediendo a los Resultados del `ResultSet`
```java
ResultSet resultSet = preparedStatement.executeQuery();

while (resultSet.next()) {
    // Acceder a los datos de las columnas
    int id = resultSet.getInt("id");
    String nombre = resultSet.getString("nombre");
    int edad = resultSet.getInt("edad");

    // Utilizar los datos
    System.out.println("ID: " + id + ", Nombre: " + nombre + ", Edad: " + edad);
}
```

En este caso, estamos utilizando el método `next()` para recorrer el conjunto de resultados y acceder a los valores de cada columna mediante los métodos apropiados como `getInt()` y `getString()`.

## 8.8. SQL Injection y Cómo Prevenirlo

**SQL Injection** es un tipo de vulnerabilidad de seguridad que ocurre cuando un atacante puede insertar o manipular código SQL dentro de una consulta. Esto puede permitir al atacante acceder a datos no autorizados, modificar datos o incluso ejecutar comandos destructivos.

### Ejemplo de SQL Injection

Imagina una consulta como esta, donde el parámetro de entrada no está protegido: 

```java
String sql = "SELECT * FROM Persona WHERE nombre = '" + nombreUsuario + "'";
Statement statement = connection.createStatement();
ResultSet resultSet = statement.executeQuery(sql);
```

En este caso, si `nombreUsuario` contiene código SQL malicioso (como `'; DROP TABLE Persona; --`), el atacante podría eliminar toda la tabla.

### Prevención de SQL Injection

La mejor forma de prevenir SQL Injection es usar **PreparedStatements**, que automáticamente manejan la inserción de valores dentro de las consultas de manera segura.

## 8.9. PreparedStatement - Solución para SQL Injection

El uso de `PreparedStatement` en lugar de `Statement` es una técnica clave para prevenir **SQL Injection**. `PreparedStatement` permite precompilar la consulta y establecer los valores de los parámetros de manera segura, evitando que se interpreten como parte del código SQL.

### Ejemplo de uso de `PreparedStatement`

```java
String sql = "SELECT * FROM Persona WHERE nombre = ?";
PreparedStatement preparedStatement = connection.prepareStatement(sql);
preparedStatement.setString(1, nombreUsuario); // Inserta el valor de manera segura

ResultSet resultSet = preparedStatement.executeQuery();
```

En este ejemplo, la consulta se ejecuta de manera segura, ya que el valor de `nombreUsuario` es tratado como un parámetro y no como parte del código SQL. Esto evita la posibilidad de una inyección SQL.

El uso de `PreparedStatement` no solo mejora la seguridad, sino que también puede mejorar el rendimiento al permitir la reutilización de consultas precompiladas.

# 9. Procedimientos Almacenados

Los procedimientos almacenados son bloques de código SQL que se almacenan y se ejecutan directamente en el servidor de base de datos. Estos procedimientos permiten encapsular operaciones complejas o repetitivas, mejorando la eficiencia, la seguridad y la mantenibilidad del sistema de base de datos. Son ampliamente utilizados en aplicaciones empresariales para centralizar la lógica de negocio en la base de datos, lo que reduce la cantidad de lógica en el código de la aplicación y mejora el rendimiento.

## 9.1. Concepto y Uso de Procedimientos Almacenados en Bases de Datos

Un procedimiento almacenado es un conjunto de sentencias SQL que se almacenan en la base de datos y se pueden ejecutar en cualquier momento. Estos procedimientos pueden aceptar parámetros de entrada, devolver resultados y realizar acciones sobre las bases de datos, como insertar, actualizar o eliminar registros. Además, pueden incluir lógica de control, como bucles, condicionales, y transacciones.

### Ventajas de Usar Procedimientos Almacenados:
1. **Reducción de la Carga en la Aplicación**: Al mover la lógica de negocio a la base de datos, se reduce la carga sobre la aplicación cliente y se aprovechan las optimizaciones del motor de base de datos.
2. **Seguridad Mejorada**: El acceso a los procedimientos almacenados puede estar restringido, de modo que los usuarios solo pueden ejecutar las operaciones predefinidas y no tienen acceso directo a las tablas de la base de datos.
3. **Facilidad de Mantenimiento**: La lógica de negocio se centraliza en la base de datos, por lo que cualquier cambio se puede hacer directamente en el procedimiento almacenado sin necesidad de modificar el código de la aplicación.
4. **Mejor Rendimiento**: Al estar almacenados y ejecutados en el servidor de base de datos, los procedimientos almacenados pueden optimizarse por el propio motor de base de datos, reduciendo la cantidad de datos que deben transferirse entre la base de datos y la aplicación.

### Ejemplos de Uso:
- **Cálculos complejos**: Los procedimientos almacenados pueden realizar cálculos complejos sin la necesidad de hacer múltiples consultas desde la aplicación.
- **Operaciones repetitivas**: Si una operación SQL es requerida en varias partes de la aplicación, se puede encapsular en un procedimiento almacenado para evitar duplicación de código.

## 9.2. Ejemplo de Ejecución de Procedimientos Almacenados

Para ejecutar procedimientos almacenados desde una aplicación Java utilizando JDBC, primero debemos asegurarnos de que el procedimiento esté previamente definido en la base de datos. A continuación, se presenta un ejemplo de cómo ejecutar un procedimiento almacenado en una base de datos MySQL.

### 1. Creación de un Procedimiento Almacenado en MySQL:

Supongamos que tenemos un procedimiento almacenado que calcula el salario total de un empleado, añadiendo un bono a su salario base. El procedimiento toma dos parámetros de entrada: el ID del empleado y el bono. Devuelve el salario total del empleado.

```sql
DELIMITER $$

CREATE PROCEDURE calcular_salario(IN empleado_id INT, IN bono DECIMAL(10,2))
BEGIN
    DECLARE salario_base DECIMAL(10,2);
    DECLARE salario_total DECIMAL(10,2);

    -- Obtener el salario base del empleado
    SELECT salario INTO salario_base
    FROM empleados
    WHERE id = empleado_id;

    -- Calcular el salario total
    SET salario_total = salario_base + bono;

    -- Devolver el salario total
    SELECT salario_total;
END $$

DELIMITER ;
```

Este procedimiento almacenado toma el `empleado_id` y el `bono` como parámetros, calcula el salario total del empleado y devuelve el resultado.

### 2. Llamada al Procedimiento Almacenado desde Java:

Una vez que el procedimiento almacenado está definido en la base de datos, podemos llamarlo desde una aplicación Java usando JDBC. A continuación, se muestra cómo ejecutar este procedimiento y obtener el resultado:

```java
import java.sql.*;

public class ProcedimientoAlmacenadoEjemplo {
    public static void main(String[] args) {
        // Establecer la conexión con la base de datos
        String url = "jdbc:mysql://localhost:3306/mi_base_de_datos";
        String usuario = "root";
        String contrasena = "password";

        try (Connection conexion = DriverManager.getConnection(url, usuario, contrasena)) {
            
            // Llamar al procedimiento almacenado
            CallableStatement stmt = conexion.prepareCall("{call calcular_salario(?, ?)}");

            // Establecer los parámetros de entrada
            stmt.setInt(1, 1);  // ID del empleado
            stmt.setBigDecimal(2, new BigDecimal("500.00"));  // Bono

            // Ejecutar el procedimiento y obtener el resultado
            ResultSet rs = stmt.executeQuery();

            // Mostrar el salario total
            if (rs.next()) {
                System.out.println("Salario Total: " + rs.getBigDecimal(1));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
```

En este ejemplo, la aplicación Java:
1. Se conecta a la base de datos MySQL usando JDBC.
2. Prepara una llamada al procedimiento almacenado `calcular_salario`, pasando el ID del empleado y el bono como parámetros.
3. Ejecuta el procedimiento y obtiene el resultado (el salario total).
4. Imprime el resultado en la consola.

### Consideraciones:
- Los procedimientos almacenados pueden ser más complejos, incluyendo múltiples operaciones, transacciones, y lógica condicional.
- Es importante gestionar adecuadamente los recursos, como las conexiones y los statements, para evitar fugas de memoria y garantizar que los recursos se liberen cuando ya no sean necesarios.

El uso de procedimientos almacenados en bases de datos permite optimizar la ejecución de tareas complejas y repetitivas, manteniendo la aplicación más limpia y eficiente.

# 10. Trabajo con Entidades y Repositorios

En el desarrollo de aplicaciones que gestionan bases de datos, es común utilizar el concepto de **entidades** y **repositorios** para estructurar la interacción entre la aplicación y la base de datos. Las entidades representan los datos que se almacenan en las bases de datos y los repositorios son componentes responsables de gestionar la persistencia de esas entidades.

### 10.1. Entities y Repositorio Persona

La entidad **Persona** se representa como una clase POJO (Plain Old Java Object), que contiene atributos que corresponden a las columnas de la tabla `Persona` en la base de datos. Los objetos de la clase `Persona` representan registros de la tabla `Persona` y se utilizan para almacenar los resultados de las consultas realizadas a la base de datos.

```java
public class Persona {
    private int id;
    private String nombre;
    private int edad;

    // Constructor
    public Persona(int id, String nombre, int edad) {
        this.id = id;
        this.nombre = nombre;
        this.edad = edad;
    }

    // Getters y setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }
}
```

El repositorio de **Persona** se encarga de las operaciones CRUD sobre la base de datos. Estas operaciones incluyen la creación, lectura, actualización y eliminación de registros de la tabla `Persona`. A través de este repositorio, se pueden realizar operaciones como guardar una nueva persona, obtener una persona por su ID y obtener todas las personas almacenadas en la base de datos. Aquí tienes un ejemplo del respositorio `PersonaRepository` utilizando JDBC para realizar las operaciones básicas:

```java
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PersonaRepository {
    private Connection connection;

    public PersonaRepository(Connection connection) {
        this.connection = connection;
    }

    public void guardarPersona(Persona persona) throws SQLException {
        String sql = "INSERT INTO Persona (nombre, edad) VALUES (?, ?)";
        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, persona.getNombre());
            ps.setInt(2, persona.getEdad());
            ps.executeUpdate();
        }
    }

    public Persona obtenerPersonaPorId(int id) throws SQLException {
        String sql = "SELECT id, nombre, edad FROM Persona WHERE id = ?";
        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new Persona(rs.getInt("id"), rs.getString("nombre"), rs.getInt("edad"));
            }
            return null;
        }
    }

    public List<Persona> obtenerTodasLasPersonas() throws SQLException {
        String sql = "SELECT id, nombre, edad FROM Persona";
        try (Statement stmt = connection.createStatement()) {
            ResultSet rs = stmt.executeQuery(sql);
            List<Persona> personas = new ArrayList<>();
            while (rs.next()) {
                personas.add(new Persona(rs.getInt("id"), rs.getString("nombre"), rs.getInt("edad")));
            }
            return personas;
        }
    }
}
```

### 10.2. Repositorio Dirección

De manera similar, la entidad **Dirección** se representa como una clase POJO, que tiene atributos correspondientes a las columnas de la tabla `Dirección`. Los objetos de la clase `Dirección` contienen los detalles de la dirección, como la calle, la ciudad y el código postal, que se almacenan en la tabla `Dirección` de la base de datos. Aquí tienes un ejemplo de la clase `Dirección`:

```java
public class Direccion {
    private int id;
    private String calle;
    private String ciudad;
    private String codigoPostal;

    // Constructor
    public Direccion(int id, String calle, String ciudad, String codigoPostal) {
        this.id = id;
        this.calle = calle;
        this.ciudad = ciudad;
        this.codigoPostal = codigoPostal;
    }

    // Getters y setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCalle() {
        return calle;
    }

    public void setCalle(String calle) {
        this.calle = calle;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public String getCodigoPostal() {
        return codigoPostal;
    }

    public void setCodigoPostal(String codigoPostal) {
        this.codigoPostal = codigoPostal;
    }
}
```

El repositorio de **Dirección** se utiliza para realizar las operaciones CRUD sobre la base de datos (tabla `Dirección`). Estas operaciones incluyen la creación de direcciones, la obtención de direcciones asociadas a una persona específica y la recuperación de todas las direcciones almacenadas en la base de datos.

```java
public class DireccionRepository {
    private Connection connection;

    public DireccionRepository(Connection connection) {
        this.connection = connection;
    }

    public void guardarDireccion(Direccion direccion) throws SQLException {
        String sql = "INSERT INTO Direccion (calle, ciudad, codigoPostal) VALUES (?, ?, ?)";
        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, direccion.getCalle());
            ps.setString(2, direccion.getCiudad());
            ps.setString(3, direccion.getCodigoPostal());
            ps.executeUpdate();
        }
    }

    public List<Direccion> obtenerDireccionesPorPersonaId(int personaId) throws SQLException {
        String sql = "SELECT id, calle, ciudad, codigoPostal FROM Direccion WHERE persona_id = ?";
        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setInt(1, personaId);
            ResultSet rs = ps.executeQuery();
            List<Direccion> direcciones = new ArrayList<>();
            while (rs.next()) {
                direcciones.add(new Direccion(rs.getInt("id"), rs.getString("calle"), rs.getString("ciudad"), rs.getString("codigoPostal")));
            }
            return direcciones;
        }
    }
}
```

### 10.3. Join entre Persona y Dirección

Para realizar un `JOIN` entre las entidades `Persona` y `Direccion`, se puede ejecutar una consulta SQL que combine ambas tablas mediante una relación común, como un campo `persona_id` en la tabla `Direccion`. Este tipo de consulta permite obtener una lista de personas junto con sus direcciones correspondientes.

```java
public class PersonaDireccionRepository {
    private Connection connection;

    public PersonaDireccionRepository(Connection connection) {
        this.connection = connection;
    }

    public List<PersonaDireccion> obtenerPersonasConDirecciones() throws SQLException {
        String sql = "SELECT p.id AS persona_id, p.nombre, p.edad, d.id AS direccion_id, d.calle, d.ciudad, d.codigoPostal " +
                     "FROM Persona p JOIN Direccion d ON p.id = d.persona_id";
        try (Statement stmt = connection.createStatement()) {
            ResultSet rs = stmt.executeQuery(sql);
            List<PersonaDireccion> personasConDirecciones = new ArrayList<>();
            while (rs.next()) {
                Persona persona = new Persona(rs.getInt("persona_id"), rs.getString("nombre"), rs.getInt("edad"));
                Direccion direccion = new Direccion(rs.getInt("direccion_id"), rs.getString("calle"), rs.getString("ciudad"), rs.getString("codigoPostal"));
                personasConDirecciones.add(new PersonaDireccion(persona, direccion));
            }
            return personasConDirecciones;
        }
    }
}
```

En este ejemplo, la clase `PersonaDireccion` podría ser una clase de **DTO (Data Transfer Object)**,que contiene tanto una instancia de `Persona` como una instancia de `Direccion`. Este tipo de transferencia de datos entre entidades facilita la manipulación de información combinada de múltiples tablas en la aplicación.

# 11. Gestión de Transacciones

La **gestión de transacciones** es un aspecto fundamental en las aplicaciones que interactúan con bases de datos relacionales. Una transacción asegura que un conjunto de operaciones sobre la base de datos se ejecute de manera correcta y completa, o no se ejecute en absoluto, en caso de que ocurra un error. Esto garantiza la **integridad y consistencia** de los datos. El principio fundamental de las transacciones es que deben seguir los cuatro criterios ACID:

- **Atomicidad**: Todas las operaciones de la transacción deben ejecutarse completamente, o ninguna de ellas se ejecuta.
- **Consistencia**: La base de datos pasa de un estado válido a otro estado válido.
- **Aislamiento**: Las transacciones concurrentes no deben interferir entre sí.
- **Durabilidad**: Los cambios realizados por una transacción se mantienen incluso si ocurre un fallo en el sistema.

## 11.1. Importancia de la Gestión de Transacciones (CEj)

La gestión adecuada de transacciones es crucial para el buen funcionamiento de una base de datos, especialmente en aplicaciones que manejan grandes cantidades de datos o que requieren alta disponibilidad y confiabilidad. El manejo de transacciones garantiza que las operaciones sobre la base de datos sean seguras y consistentes, minimizando los riesgos de corrupción de datos. Un sistema de transacciones bien gestionado permite:

- **Deshacer cambios** en caso de fallos o errores durante la ejecución de las operaciones.
- **Controlar la concurrencia** entre múltiples usuarios o procesos, evitando inconsistencias cuando varias transacciones se ejecutan simultáneamente.
- **Asegurar la integridad** de la base de datos al asegurar que las transacciones que afectan a múltiples tablas se completan sin interrupciones.

En la práctica, sin una correcta gestión de transacciones, las aplicaciones podrían experimentar problemas como datos corruptos, inconsistencias entre las tablas o la pérdida de información en caso de fallos del sistema.

## 11.2. Métodos para Manejar Transacciones en Aplicaciones

En Java, las transacciones se manejan típicamente a través de la interfaz `Connection` de JDBC, que ofrece métodos como `setAutoCommit()`, `commit()` y `rollback()`. Estas funciones permiten controlar el inicio, confirmación y reversión de una transacción.

### Ejemplo de manejo de transacciones en JDBC:

1. **Iniciar la Transacción**: Se puede establecer que la transacción se ejecute de forma manual mediante el método `setAutoCommit(false)`.

2. **Realizar las Operaciones**: Después de desactivar el autocommit, se pueden realizar las operaciones sobre la base de datos.

3. **Confirmar o Revertir**: Si todas las operaciones se realizan correctamente, se llama a `commit()` para confirmar los cambios. En caso de error, se utiliza `rollback()` para revertir todos los cambios realizados hasta ese punto.

### Ejemplo de código:
```java
Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
try {
    connection.setAutoCommit(false);  // Desactivar el autocommit para gestionar transacciones manualmente

    // Realizar varias operaciones SQL
    Statement statement = connection.createStatement();
    statement.executeUpdate("UPDATE persona SET nombre = 'Nuevo Nombre' WHERE id = 1");
    statement.executeUpdate("UPDATE direccion SET ciudad = 'Nueva Ciudad' WHERE persona_id = 1");

    connection.commit();  // Confirmar los cambios realizados
} catch (SQLException e) {
    connection.rollback();  // Revertir los cambios en caso de error
    e.printStackTrace();
} finally {
    connection.setAutoCommit(true);  // Restablecer el autocommit
    connection.close();  // Cerrar la conexión
}
```

En este ejemplo:

- **`setAutoCommit(false)`** desactiva el autocommit, lo que significa que las operaciones no se guardarán en la base de datos hasta que se llame a **`commit()`**.
- Si ocurre algún error durante la ejecución, se llama a **`rollback()`** para revertir todas las operaciones realizadas desde el último **`commit()`**.
- **`commit()`** se utiliza para confirmar que todas las operaciones realizadas en la transacción se han completado correctamente.

Este enfoque de manejar las transacciones de manera explícita es importante en aplicaciones que realizan múltiples operaciones sobre la base de datos de forma secuencial, ya que garantiza que los cambios sean consistentes y que los errores no causen inconsistencias en los datos.


