---
layout: default
title: UD03. Gestión de la persistencia de los datos con herramientas de mapeo objeto relacional (ORM).
permalink: /acceso-a-datos/ud03/teoria/
author: Teo Rojas
date: Noviembre 2024
abstract: Sinopsis de la unidad 03
---

# Índice
1. [Introducción a la Persistencia de Datos con ORM (CEa).](#1-introducción-a-la-persistencia-de-datos-con-orm)  
2. [¿Qué es Hibernate? (CEa).](#2-qué-es-hibernate)  
3. [Instalación de Hibernate (CEa).](#3-instalación-de-hibernate)  
4. [Configuración de Hibernate (CEb).](#4-configuración-de-hibernate)  
5. [Iniciar Hibernate (CEb).](#5-iniciar-hibernate)  


<!--
# Índice
   

6. [Iniciar Hibernate](#6-iniciar-hibernate)  
   - **CEb. Se ha configurado la herramienta ORM.**   
7. [Mapeo con Ficheros XML](#7-mapeo-con-ficheros-xml)  
   - **CEc. Se han definido los ficheros de mapeo.**
8. [Mapeo con Anotaciones](#8-mapeo-con-anotaciones)  
   - **CEc. Se han definido los ficheros de mapeo.**
9. [Insertar Datos con Hibernate](#9-insertar-datos-con-hibernate)  
   - **CEd. Se han aplicado mecanismos de persistencia a los objetos.**   
10. [Actualizar Datos con Hibernate](#10-actualizar-datos-con-hibernate)  
   - **CEd. Se han aplicado mecanismos de persistencia a los objetos.**
11. [Eliminar Datos con Hibernate](#11-eliminar-datos-con-hibernate)  
   - **CEd. Se han aplicado mecanismos de persistencia a los objetos.**
12. [Obtener Datos con Hibernate](#12-obtener-datos-con-hibernate)  
   - **CEd. Se han aplicado mecanismos de persistencia a los objetos.**
13. [Repositorios en Hibernate](#13-repositorios-en-hibernate)  
   - **CEe. Se han desarrollado aplicaciones que modifican y recuperan objetos persistentes.**
14. [Solucionar Problema con DeleteById](#14-solucionar-problema-con-deletebyid)  
   - **CEe. Se han desarrollado aplicaciones que modifican y recuperan objetos persistentes.**
15. [Mejorar el Repositorio](#15-mejorar-el-repositorio)  
   - **CEe. Se han desarrollado aplicaciones que modifican y recuperan objetos persistentes.**
16. [Relaciones 1-N en Hibernate](#16-relaciones-1-n-en-hibernate)  
   - **CEe. Se han desarrollado aplicaciones que modifican y recuperan objetos persistentes.**
17. [Mapeo de Relaciones 1-N](#17-mapeo-de-relaciones-1-n)  
   - **CEe. Se han desarrollado aplicaciones que modifican y recuperan objetos persistentes.**
18. [Repositorio Empresa](#18-repositorio-empresa)  
   - **CEe. Se han desarrollado aplicaciones que modifican y recuperan objetos persistentes.**
19. [Inserciones en Tablas 1-N](#19-inserciones-en-tablas-1-n)  
   - **CEd. Se han aplicado mecanismos de persistencia a los objetos.**
20. [Crear Menú con Hibernate](#20-crear-menú-con-hibernate)  
   - **CEf. Se han desarrollado aplicaciones que realizan consultas usando el lenguaje SQL.**
21. [Recuperación de Datos Combinados](#21-recuperación-de-datos-combinados)  
   - **CEf. Se han desarrollado aplicaciones que realizan consultas usando el lenguaje SQL.**
22. [Mapeo One To Many con XML](#22-mapeo-one-to-many-con-xml)  
   - **CEc. Se han definido los ficheros de mapeo.**
23. [Insertar Empresa a Persona](#23-insertar-empresa-a-persona)  
   - **CEd. Se han aplicado mecanismos de persistencia a los objetos.**
24. [Relaciones ManyToMany](#24-relaciones-manytomany)  
   - **CEe. Se han desarrollado aplicaciones que modifican y recuperan objetos persistentes.**
-->

# 1. Introducción a la Persistencia de Datos con ORM (CEa)

Como se ha visto hasta ahora durante el avance del curso, la persistencia de datos es uno de los aspectos más importantes en el desarrollo de aplicaciones. Recordemos que se refiere al proceso mediante el cual los datos de una aplicación se almacenan de forma permanente en un sistema de gestión de bases de datos (SGBD) para que puedan ser recuperados, modificados o eliminados según sea necesario. En el contexto de aplicaciones Java, la persistencia de datos se gestiona a menudo mediante herramientas de mapeo objeto-relacional (ORM, por sus siglas en inglés), como Hibernate.

## ¿Qué es ORM?

ORM es un **framework** que permite a los desarrolladores trabajar con bases de datos relacionales de manera más sencilla, mapeando las tablas de una base de datos a objetos Java. Esto significa que, en lugar de escribir consultas SQL de forma manual para interactuar con la base de datos, los desarrolladores pueden utilizar el lenguaje de programación Java para trabajar con objetos, y ORM se encarga de traducir esas interacciones a las instrucciones SQL adecuadas. ORM actúa como una capa intermedia que facilita la comunicación entre las aplicaciones y las bases de datos.

En un sistema ORM, los objetos Java (conocidos como **POJOs**, Plain Old Java Objects) se mapean a tablas de bases de datos. Los atributos de estos objetos corresponden a las columnas de las tablas y las relaciones entre los objetos se traducen en claves foráneas entre las tablas de la base de datos.

## Beneficios de Usar ORM

Al utilizar herramientas ORM como Hibernate, los desarrolladores pueden disfrutar de varios beneficios:

1. **Abstracción de SQL**: Los desarrolladores pueden trabajar con objetos Java en lugar de escribir código SQL directamente. Esto hace que la aplicación sea más fácil de entender y mantener, además de reducir la posibilidad de errores.
2. **Manejo Automático de la Persistencia**: Hibernate maneja automáticamente la conversión entre los objetos Java y las tablas de la base de datos, lo que facilita el trabajo con los datos sin tener que preocuparse por los detalles del almacenamiento.
3. **Mejor Mantenibilidad**: Al usar ORM, el código Java se centra en la lógica de negocio, mientras que la base de datos se maneja de forma transparente. Esto hace que el código sea más limpio y fácil de mantener.
4. **Gestión de las Relaciones entre Entidades**: ORM facilita el trabajo con relaciones complejas entre tablas, como **uno a muchos**, **muchos a muchos** y **uno a uno**, y se encarga de gestionar esas relaciones de manera eficiente.
5. **Optimización**: ORM como Hibernate ofrece características como el **caché** para mejorar el rendimiento de las aplicaciones al reducir la cantidad de consultas a la base de datos.

## Hibernate como Herramienta ORM

**Hibernate** es uno de los frameworks ORM más populares en Java. Ofrece un conjunto robusto de características y ventajas, tales como:

- **Soporte para mapeo objeto-relacional**: Hibernate mapea automáticamente los objetos Java a las tablas de la base de datos, gestionando la persistencia de los datos sin que el desarrollador tenga que escribir SQL explícitamente.
- **Transparencia de la base de datos**: Los desarrolladores no necesitan preocuparse por detalles específicos de la base de datos, ya que Hibernate se encarga de manejar las diferencias entre los sistemas de gestión de bases de datos (SGBD).
- **Consultas HQL (Hibernate Query Language)**: Hibernate permite realizar consultas utilizando HQL, un lenguaje orientado a objetos que facilita la creación de consultas sin depender directamente de SQL.
- **Soporte para relaciones complejas**: Hibernate facilita la gestión de relaciones entre tablas (como relaciones **uno a muchos** y **muchos a muchos**) utilizando anotaciones o ficheros XML para definir las relaciones entre las clases y sus correspondientes tablas.

### Requisitos para Usar Hibernate

Para usar Hibernate en una aplicación Java, es necesario realizar algunas configuraciones iniciales. Esto incluye la instalación de Hibernate, la configuración de los archivos necesarios para conectarse a la base de datos, y la definición de las clases que representarán las entidades en la base de datos. En el siguiente capítulo, abordaremos los pasos para instalar Hibernate y configurarlo en un proyecto Java.

### ¿Por qué Usar ORM en lugar de JDBC?

Si bien el uso de JDBC (Java Database Connectivity) para interactuar con bases de datos es totalmente válido, el uso de un framework ORM como Hibernate tiene varias ventajas:

1. **Reducción de la cantidad de código SQL**: Con ORM, el código SQL se reduce considerablemente, lo que simplifica las aplicaciones y mejora su mantenimiento.
2. **Abstracción de la base de datos**: Con JDBC, las aplicaciones están más acopladas al tipo específico de base de datos que utilizan. ORM permite cambiar de un SGBD a otro con mayor facilidad.
3. **Manejo automático de las relaciones entre datos**: ORM gestiona las relaciones entre los datos (por ejemplo, relaciones entre tablas), lo que ahorra mucho tiempo y esfuerzo al programador.

En resumen, la persistencia de datos con herramientas ORM, como Hibernate, permite crear aplicaciones Java más eficientes, mantenibles y menos propensas a errores. A medida que avanzamos en este tema, profundizaremos en los detalles de cómo instalar y configurar Hibernate, así como cómo trabajar con él para realizar operaciones de persistencia de datos de manera sencilla y eficiente.

# 2. ¿Qué es Hibernate? (CEa)

Hibernate es un **framework de mapeo objeto-relacional (ORM)** para Java que facilita la persistencia de datos en aplicaciones basadas en bases de datos relacionales. A través de Hibernate, los desarrolladores pueden interactuar con la base de datos utilizando objetos Java en lugar de escribir directamente consultas SQL. Hibernate maneja automáticamente la conversión entre los objetos Java y las tablas de la base de datos, lo que simplifica significativamente el proceso de persistencia de datos.

## Características Principales de Hibernate

1. **Abstracción del SQL:** Hibernate permite a los desarrolladores trabajar con **objetos Java** en lugar de escribir consultas SQL de forma explícita. Hibernate genera automáticamente el código SQL necesario para interactuar con la base de datos en función de las clases Java y sus relaciones, lo que reduce el código repetitivo y mejora la legibilidad del código.
2. **Manejo de la Persistencia::** Hibernate se encarga de gestionar la persistencia de los objetos Java en la base de datos. Cuando un objeto Java se guarda, Hibernate convierte ese objeto en una fila en la base de datos. De la misma manera, cuando se consulta la base de datos, Hibernate convierte los resultados de las consultas SQL en objetos Java que se pueden utilizar en el código de la aplicación.
3. **Independencia del Proveedor de Base de Datos:** Una de las principales ventajas de Hibernate es que se puede utilizar con cualquier sistema de gestión de bases de datos (SGBD) que soporte JDBC (Java Database Connectivity). Esto significa que, si es necesario cambiar el SGBD de la aplicación, se pueden hacer cambios mínimos en el código, ya que Hibernate abstrae las diferencias entre los distintos proveedores de bases de datos.
4. **Manejo de Relaciones entre Entidades:** Hibernate facilita el manejo de relaciones entre entidades. Las relaciones **uno a muchos** o **muchos a muchos** entre las tablas de la base de datos se gestionan de manera sencilla a través de la configuración de las clases Java y las anotaciones proporcionadas por Hibernate. Esto permite a los desarrolladores gestionar la integridad referencial de manera automática y sin necesidad de escribir SQL complejo.
5. **Caché de Primer Nivel:** Hibernate incluye un **caché de primer nivel** que almacena en memoria los objetos recuperados durante una sesión de trabajo. Esto significa que si se consulta el mismo objeto varias veces durante la misma sesión, Hibernate no tendrá que hacer múltiples consultas a la base de datos, lo que mejora el rendimiento de la aplicación.
6. **Soporte para Transacciones:** Hibernate soporta la **gestión de transacciones**, lo que permite que un conjunto de operaciones sobre la base de datos se ejecute de manera atómica. Si alguna de las operaciones falla, Hibernate puede revertir todas las operaciones realizadas en la transacción utilizando el método `rollback()`.
7. **Lenguaje de Consulta HQL:** Hibernate proporciona su propio **lenguaje de consulta** llamado **Hibernate Query Language (HQL)**. HQL es similar a SQL pero se centra en las entidades y sus propiedades, lo que permite escribir consultas orientadas a objetos en lugar de consultas SQL tradicionales. Las consultas HQL se traducen automáticamente a SQL para ejecutarlas en la base de datos.
8. **Generación Automática de Esquemas:** Hibernate puede generar automáticamente el esquema de la base de datos a partir de las clases Java utilizando herramientas de mapeo. Esto significa que Hibernate puede crear las tablas y relaciones necesarias en la base de datos sin necesidad de escribir SQL DDL manualmente.
9. **Soporte para Herencia:** Hibernate soporta el mapeo de **herencia** entre clases Java. Esto permite que las jerarquías de clases se mapeen directamente a la base de datos, lo que facilita la persistencia de estructuras de datos más complejas. Existen varias estrategias de mapeo de herencia en Hibernate, como **Single Table Inheritance**, **Joined Inheritance** y **Table Per Class Hierarchy**.

## Ventajas de Usar Hibernate

1. **Reducción del código repetitivo**: Hibernate elimina la necesidad de escribir consultas SQL manualmente y de realizar tareas repetitivas como la conversión de datos entre la base de datos y las clases Java.
2. **Independencia del SGBD**: Hibernate permite cambiar el SGBD subyacente sin modificar el código de la aplicación, lo que facilita el cambio de proveedor de base de datos cuando es necesario.
3. **Mayor productividad del desarrollador**: Gracias a la automatización del mapeo entre objetos y bases de datos, los desarrolladores pueden centrarse en la lógica de negocio sin tener que preocuparse por los detalles de la persistencia de datos.
4. **Soporte para transacciones y manejo de relaciones**: Hibernate facilita la implementación de operaciones de base de datos complejas, como las que implican varias tablas o relaciones entre entidades.
5. **Rendimiento mejorado con caché**: El caché de primer nivel y la capacidad de Hibernate para optimizar las consultas SQL mejoran el rendimiento de la aplicación al reducir la cantidad de operaciones que requieren acceder a la base de datos.

## Desventajas de Hibernate

1. **Curva de aprendizaje**: Aunque Hibernate facilita el trabajo con bases de datos, tiene una curva de aprendizaje, especialmente cuando se trata de mapeo avanzado y relaciones complejas.
2. **Rendimiento en consultas complejas**: Aunque Hibernate optimiza las consultas, en algunos casos, las consultas muy complejas pueden no ser tan eficientes como las escritas a mano en SQL.
3. **Dependencia de la configuración**: Para aprovechar al máximo Hibernate, es necesario realizar una correcta configuración y comprensión de cómo funcionan las sesiones y las transacciones.

## ¿Por Qué Elegir Hibernate?

Hibernate es una opción excelente para las aplicaciones que necesitan interactuar con bases de datos relacionales. Al ofrecer un alto nivel de abstracción y permitir la gestión automática de la persistencia de datos, Hibernate puede ahorrar tiempo y esfuerzo al evitar que los desarrolladores tengan que escribir SQL repetitivo. Además, con su flexibilidad, rendimiento optimizado y soporte para relaciones complejas, Hibernate es una herramienta poderosa para crear aplicaciones Java robustas y escalables.

En los siguientes capítulos, profundizaremos en la instalación y configuración de Hibernate, así como en su uso para mapear entidades y realizar operaciones de persistencia.

# 3. Instalación de Hibernate (CEa.)

La instalación de **Hibernate** es un paso fundamental para comenzar a trabajar con este framework de mapeo objeto-relacional (ORM) en aplicaciones Java. A continuación, se detallan los pasos necesarios para configurar Hibernate en un proyecto Java usando **Maven** como si prefieres añadir los archivos JAR manualmente.

## 3.1. Instalación de Hibernate usando Maven

Hibernate es una biblioteca externa que se puede gestionar fácilmente utilizando un sistema de gestión de dependencias como **Maven**. Si usas Maven, solo necesitas agregar las dependencias de Hibernate a tu archivo `pom.xml`. Maven descargará automáticamente los JARs necesarios y los añadirá al classpath de tu proyecto.

### Dependencias Básicas de Hibernate en Maven

Para instalar Hibernate con Maven, debes agregar las siguientes dependencias a tu archivo `pom.xml`. Estas dependencias incluyen Hibernate Core, que es el núcleo del framework y MySQL, que se utilizará como base de datos en este ejemplo.

```xml
<dependencies>
    <!-- Dependencia de Hibernate Core -->
    <dependency>
        <groupId>org.hibernate</groupId>
        <artifactId>hibernate-core</artifactId>
        <version>5.6.5.Final</version> <!-- Verifica la última versión disponible -->
    </dependency>

    <!-- Dependencia de la base de datos MySQL -->
    <dependency>
        <groupId>mysql</groupId>
        <artifactId>mysql-connector-java</artifactId>
        <version>8.0.30</version> <!-- Verifica la última versión disponible -->
    </dependency>

    <!-- Dependencia de JPA (si deseas usar JPA con Hibernate) -->
    <dependency>
        <groupId>javax.persistence</groupId>
        <artifactId>javax.persistence-api</artifactId>
        <version>2.2</version>
    </dependency>
</dependencies>
```

### Paso 1: Agregar las dependencias a tu `pom.xml`
1. Abre tu proyecto en tu IDE favorito y localiza el archivo `pom.xml` en la raíz del proyecto.
2. Dentro del archivo `pom.xml`, busca la sección `<dependencies>`.
3. Agrega las dependencias de Hibernate y MySQL que se muestran arriba.

### Paso 2: Actualizar el Proyecto con Maven
Una vez que hayas añadido las dependencias al archivo `pom.xml`, tu IDE o Maven descargará los archivos JAR necesarios automáticamente. Si estás utilizando un IDE como **IntelliJ IDEA** o **Eclipse**, puedes hacer clic en "Actualizar Proyecto" o usar el comando `mvn clean install` en la terminal.

> **Nota Importante:** Al instalar las dependencias básicas de Hibernate en tu proyecto Maven, es recomendable incluir también las dependencias de JPA. JPA (Java Persistence API) es una especificación estándar que define cómo las aplicaciones Java deben interactuar con bases de datos. Hibernate es una implementación de JPA, lo que significa que al añadir las dependencias de Hibernate, también estarás habilitando el uso de JPA para gestionar la persistencia de datos de manera estandarizada. El uso de JPA tiene varias ventajas, como la posibilidad de cambiar fácilmente entre distintos proveedores de ORM (Hibernate, EclipseLink, etc.), así como la capacidad de trabajar con un conjunto de interfaces estándar para la persistencia de datos, lo que simplifica la integración con otros frameworks y tecnologías como Spring y Java EE. Además, JPA proporciona un marco consistente para trabajar con transacciones, consultas, y entidades de persistencia, lo que mejora la mantenibilidad y escalabilidad del código.

## 3.2. Instalación de Hibernate Manualmente (sin Maven)

Si no deseas utilizar Maven, puedes descargar los JARs de Hibernate e incluirlos manualmente en tu proyecto. Este enfoque es menos flexible que usar Maven, pero funciona bien para proyectos más simples.

### Paso 1: Descargar los JARs de Hibernate

1. Visita el sitio web oficial de Hibernate en [https://hibernate.org/](https://hibernate.org/).
2. Dirígete a la sección de descargas y selecciona la versión de Hibernate que deseas descargar. Asegúrate de descargar el archivo ZIP que contiene los JARs de Hibernate.
3. Extrae el archivo ZIP descargado en una carpeta de tu elección.

### Paso 2: Agregar los JARs al Classpath

Una vez que hayas descargado los JARs de Hibernate, agrega los archivos JAR a tu proyecto Java. Para hacerlo, sigue estos pasos:

1. Copia los archivos JAR de la carpeta extraída (por ejemplo, `hibernate-core-x.x.x.Final.jar`) en una carpeta dentro de tu proyecto, como `libs`.
2. En tu IDE, agrega esta carpeta a las dependencias de tu proyecto:
   - En **IntelliJ IDEA**, haz clic derecho en la carpeta `libs`, selecciona "Mark Directory as" -> "Library Files".
   - En **Eclipse**, haz clic derecho en el proyecto -> "Properties" -> "Java Build Path" -> "Libraries" -> "Add External JARs..." y selecciona los JARs.

### Paso 3: Descargar e Incluir el Driver de MySQL

Además de los JARs de Hibernate, también necesitarás el controlador JDBC correspondiente para MySQL. Descarga el JAR del controlador de MySQL y agrégalo al classpath de tu proyecto, siguiendo los mismos pasos que para los JARs de Hibernate.

## 3.3. Verificación de la Instalación

Una vez que hayas agregado las dependencias de Hibernate (ya sea a través de Maven o manualmente), el siguiente paso es verificar que Hibernate se haya instalado correctamente y esté funcionando bien en tu proyecto.

### Paso 1: Crear una Clase de Prueba

Crea una clase Java básica para probar si Hibernate está instalado correctamente. A continuación, se muestra un ejemplo básico de una clase `Main` que inicia Hibernate y crea una sesión para interactuar con la base de datos.

```java
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateTest {
    public static void main(String[] args) {
        // Cargar la configuración de Hibernate desde el archivo hibernate.cfg.xml
        SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Person.class).buildSessionFactory();
        
        // Obtener la sesión de Hibernate
        Session session = factory.getCurrentSession();
        
        try {
            // Iniciar una transacción
            session.beginTransaction();
            
            // Crear un objeto para insertar en la base de datos
            Person tempPerson = new Person("John", "Doe", "john.doe@example.com");
            
            // Guardar el objeto en la base de datos
            session.save(tempPerson);
            
            // Hacer commit de la transacción
            session.getTransaction().commit();
            System.out.println("El registro se guardó exitosamente!");
        } finally {
            factory.close();
        }
    }
}
```

### Paso 2: Ejecutar la Aplicación

Ejecuta la clase `HibernateTest` en tu IDE o desde la línea de comandos. Si todo está configurado correctamente, Hibernate debería conectar con la base de datos MySQL, realizar la operación de persistencia y guardar un objeto en la tabla correspondiente.

## 3.4. Archivos de Configuración de Hibernate

La configuración de Hibernate se realiza principalmente en un archivo XML llamado **hibernate.cfg.xml**. Este archivo se utiliza para proporcionar la información de configuración, como la conexión a la base de datos, las propiedades de la sesión y la gestión de transacciones.

### Ejemplo de `hibernate.cfg.xml`

A continuación, se muestra un ejemplo básico de un archivo `hibernate.cfg.xml` configurado para MySQL:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE hibernate-configuration PUBLIC "-//Hibernate/Hibernate Configuration DTD 3.0//EN" "http://hibernate.sourceforge.net/hibernate-configuration-3.0.dtd">
<hibernate-configuration>

    <session-factory>
        <!-- JDBC Database connection settings -->
        <property name="hibernate.connection.driver_class">com.mysql.cj.jdbc.Driver</property>
        <property name="hibernate.connection.url">jdbc:mysql://localhost:3306/mi_base_de_datos</property>
        <property name="hibernate.connection.username">root</property>
        <property name="hibernate.connection.password">root_password</property>

        <!-- JDBC connection pool settings -->
        <property name="hibernate.c3p0.min_size">5</property>
        <property name="hibernate.c3p0.max_size">20</property>
        <property name="hibernate.c3p0.timeout">300</property>
        
        <!-- Specify dialect -->
        <property name="hibernate.dialect">org.hibernate.dialect.MySQL8Dialect</property>

        <!-- Enable Hibernate's automatic session context management -->
        <property name="hibernate.current_session_context_class">thread</property>

        <!-- Echo all executed SQL to stdout -->
        <property name="hibernate.show_sql">true</property>

        <!-- Drop and re-create the database schema on startup -->
        <property name="hibernate.hbm2ddl.auto">update</property>
        
        <!-- Mention annotated class -->
        <mapping class="com.example.Person"/>
    </session-factory>

</hibernate-configuration>
```

Este archivo de configuración proporciona a Hibernate los detalles necesarios para conectarse a MySQL, como la URL de la base de datos, el nombre de usuario y la contraseña, además de especificar algunas propiedades como el tipo de dialecto y la opción de mostrar las sentencias SQL en la consola.

# 4. Configuración de Hibernate (CEb).

La configuración de Hibernate es esencial para establecer la conexión entre tu aplicación Java y la base de datos. Esto se logra mediante un archivo de configuración, generalmente llamado `hibernate.cfg.xml`, que define los detalles de la conexión, el dialecto de SQL, las propiedades de la base de datos y otros aspectos relacionados con el comportamiento de Hibernate. En este apartado, aprenderás a configurar correctamente Hibernate para que tu aplicación pueda interactuar con la base de datos de manera efectiva.

## 4.1. Crear el archivo de configuración `hibernate.cfg.xml`

El archivo `hibernate.cfg.xml` contiene las propiedades necesarias para conectar Hibernate con tu base de datos, junto con los detalles de configuración como la generación de esquemas y el comportamiento de las transacciones. Aquí te mostramos un ejemplo básico de configuración para conectarte a una base de datos MySQL.

### Propiedades comunes en la configuración:

- **hibernate.dialect**: Especifica el dialecto SQL que Hibernate utilizará para generar las consultas. Para MySQL, el valor es `org.hibernate.dialect.MySQLDialect`.
- **hibernate.connection.driver_class**: Define el controlador JDBC utilizado para conectar con la base de datos.
- **hibernate.connection.url**: La URL de conexión a la base de datos, que incluye el host, el puerto y el nombre de la base de datos.
- **hibernate.connection.username**: El nombre de usuario utilizado para la conexión.
- **hibernate.connection.password**: La contraseña del usuario de la base de datos.
- **hibernate.hbm2ddl.auto**: Especifica cómo Hibernate debe manejar la creación de tablas. Las opciones más comunes son `update`, `create`, `create-drop`, y `validate`.
- **hibernate.show_sql**: Permite ver las consultas SQL generadas por Hibernate.
- **hibernate.format_sql**: Define si las consultas generadas deben ser formateadas de manera legible.

### Ejemplo de archivo `hibernate.cfg.xml`:

```xml
<!DOCTYPE hibernate-configuration PUBLIC "-//Hibernate/Hibernate Configuration DTD 3.0//EN" "http://hibernate.sourceforge.net/hibernate-configuration-3.0.dtd">
<hibernate-configuration>
    <session-factory>
        <!-- Driver JDBC -->
        <property name="hibernate.connection.driver_class">com.mysql.cj.jdbc.Driver</property>
        
        <!-- URL de conexión -->
        <property name="hibernate.connection.url">jdbc:mysql://localhost:3306/mi_base_de_datos</property>

        <!-- Usuario y contraseña -->
        <property name="hibernate.connection.username">usuario</property>
        <property name="hibernate.connection.password">contraseña</property>

        <!-- Dialecto SQL -->
        <property name="hibernate.dialect">org.hibernate.dialect.MySQLDialect</property>

        <!-- Gestión del esquema -->
        <property name="hibernate.hbm2ddl.auto">update</property>

        <!-- Mostrar SQL en consola -->
        <property name="hibernate.show_sql">true</property>

        <!-- Formatear SQL -->
        <property name="hibernate.format_sql">true</property>

        <!-- Activar el uso de transacciones -->
        <property name="hibernate.current_session_context_class">thread</property>
    </session-factory>
</hibernate-configuration>
```

Este archivo configura Hibernate para conectarse a una base de datos MySQL y le dice que genere las tablas automáticamente si es necesario (gracias a la opción `hibernate.hbm2ddl.auto="update"`).

## 4.2. Configuración adicional

Dependiendo de la complejidad de la aplicación, puede ser necesario configurar propiedades adicionales, como el uso de caché, la configuración de transacciones distribuidas, o la integración con otras herramientas.

- **hibernate.cache.provider_class**: Si utilizas un proveedor de caché, puedes configurarlo en esta propiedad.
- **hibernate.transaction.factory_class**: Especifica la fábrica de transacciones utilizada, por ejemplo, `org.hibernate.transaction.JDBCTransactionFactory`.
- **hibernate.c3p0.min_size** y **hibernate.c3p0.max_size**: Configuran el tamaño mínimo y máximo de la piscina de conexiones si usas C3P0 como pool de conexiones.

## 4.3. Configuración programática (opcional)

Aunque el archivo `hibernate.cfg.xml` es la forma más común de configurar Hibernate, también puedes realizar la configuración de manera programática mediante la clase `Configuration` de Hibernate. Este enfoque puede ser útil si prefieres cargar la configuración desde otras fuentes o aplicar configuraciones dinámicamente en tiempo de ejecución.

### Ejemplo de configuración programática:

```java
import org.hibernate.cfg.Configuration;
import org.hibernate.SessionFactory;
import org.hibernate.Session;

public class HibernateUtil {
    private static SessionFactory sessionFactory;

    static {
        try {
            sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
        } catch (Throwable ex) {
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public static void shutdown() {
        getSessionFactory().close();
    }
}
```

En este ejemplo, la configuración de Hibernate se carga desde el archivo `hibernate.cfg.xml` y se utiliza para construir una `SessionFactory`, que es utilizada para abrir sesiones y realizar operaciones con la base de datos.

## 4.4. Verificación de la configuración

Una vez configurado Hibernate, es importante verificar que la configuración está correcta y que Hibernate puede conectarse con la base de datos. Puedes hacerlo ejecutando una simple consulta en tu base de datos o creando una entidad de prueba y verificando que se persiste correctamente.

Para esto, puedes crear una clase de prueba que se encargue de abrir una sesión de Hibernate y verificar la conexión con la base de datos.

### Ejemplo de prueba de configuración:

```java
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class HibernateTest {
    public static void main(String[] args) {
        // Abrir sesión
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        
        // Comenzar transacción
        Transaction transaction = session.beginTransaction();
        
        // Verificar la configuración con una simple operación
        System.out.println("Conexión exitosa a la base de datos.");
        
        // Finalizar transacción y cerrar sesión
        transaction.commit();
        session.close();
        
        // Cerrar SessionFactory
        HibernateUtil.shutdown();
    }
}
```

Si la configuración es correcta, este código debería imprimir "Conexión exitosa a la base de datos." en la consola.

## 4.5. Consideraciones finales

La configuración de Hibernate es un paso esencial en el proceso de conexión y gestión de bases de datos. Al asegurar que las propiedades de la base de datos y las configuraciones de Hibernate estén correctamente establecidas, se garantiza que la aplicación pueda interactuar con la base de datos de manera eficiente y sin problemas.

Algunos aspectos a considerar incluyen:
- **Transacciones**: Asegúrate de que las transacciones estén correctamente configuradas para mantener la integridad de los datos.
- **Generación de esquemas**: Configura adecuadamente la generación de esquemas para evitar sobrescribir datos existentes en la base de datos.
- **Rendimiento**: Si la aplicación crece, es posible que debas ajustar configuraciones relacionadas con el rendimiento, como la caché o el pool de conexiones.

Una vez configurado Hibernate, estarás listo para utilizarlo para gestionar la persistencia de datos de manera eficiente y escalable.

# 5. Iniciar Hibernate (CEb).

Una vez que hayas configurado Hibernate y creado el archivo de configuración, el siguiente paso es **iniciar Hibernate**. Esto implica crear una sesión de Hibernate que interactuará con la base de datos. La sesión es un objeto que se utiliza para realizar transacciones y consultas, y debe ser gestionada adecuadamente para evitar fugas de memoria y otros problemas de rendimiento. En este apartado, aprenderás a iniciar Hibernate de manera correcta para que puedas empezar a realizar operaciones en la base de datos.

## 5.1. Crear una SessionFactory

El primer paso para iniciar Hibernate es crear una `SessionFactory`. La `SessionFactory` es responsable de la creación y gestión de las sesiones de Hibernate. Esta debe ser configurada al inicio de la aplicación y es utilizada para crear una sesión (`Session`) cuando se necesita interactuar con la base de datos.

La `SessionFactory` se crea utilizando la configuración de Hibernate, que incluye los archivos de configuración y las clases anotadas. Esta es una operación costosa, por lo que generalmente se crea una sola vez en la vida de la aplicación.

### Ejemplo de creación de una `SesionFactory`:

```java
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

    private static final SessionFactory sessionFactory;

    static {
        try {
            // Crear la SessionFactory a partir de la configuración de Hibernate
            sessionFactory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Persona.class).buildSessionFactory();
        } catch (Throwable ex) {
            // Si algo falla al crear la SessionFactory, lanzar una excepción
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public static void shutdown() {
        getSessionFactory().close();
    }
}
```

En este código, el método `configure("hibernate.cfg.xml")` carga el archivo de configuración de Hibernate, mientras que el método `addAnnotatedClass(Persona.class)` le dice a Hibernate que utilice la clase `Persona` para las operaciones de mapeo. El `SessionFactory` se crea al inicializar la clase `HibernateUtil`.

## 5.2. Obtener una sesión

Una vez que tienes una `SessionFactory`, puedes utilizarla para abrir sesiones que permiten interactuar con la base de datos. Una sesión es un objeto de **transacciones** y **consultas**, y es necesario abrir una sesión antes de realizar cualquier operación de persistencia.

Una vez que se obtiene una sesión, es posible comenzar una transacción y ejecutar las operaciones de la base de datos, como guardar, actualizar o eliminar objetos. Para ello, se utilizan los métodos de la sesión, como `save()`, `update()`, `delete()`, etc.

### Ejemplo de creación de una `SesionFactory`:

```java
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class MainApp {
    public static void main(String[] args) {
        // Obtener la SessionFactory
        SessionFactory factory = HibernateUtil.getSessionFactory();

        // Obtener una nueva sesión a partir de la SessionFactory
        Session session = factory.getCurrentSession();

        try {
            // Empezar una nueva transacción
            session.beginTransaction();

            // Crear un objeto de tipo Persona
            Persona persona = new Persona("Juan", "Pérez", 30);

            // Guardar el objeto
            session.save(persona);

            // Commit de la transacción
            session.getTransaction().commit();
        } finally {
            factory.close();
        }
    }
}
```

En este ejemplo:
- `getCurrentSession()` obtiene una sesión de la SessionFactory.
- `beginTransaction()` inicia una nueva transacción.
- `session.save(persona)` persiste un objeto Persona en la base de datos.
- `session.getTransaction().commit()` confirma la transacción, lo que guarda definitivamente los cambios en la base de datos.

## 5.3. Cerrar la sesión

Es importante cerrar la sesión después de que ya no sea necesaria. Esto libera los recursos que Hibernate ha utilizado y asegura que no haya fugas de memoria. En el ejemplo anterior, la sesión se cierra automáticamente cuando el bloque `finally` se ejecuta, cerrando la `SessionFactory`.

```java
session.close();
```

Este método asegura que se liberen los recursos asociados a la sesión, como las conexiones con la base de datos y cualquier caché interna.

## 5.4. Consideraciones importantes

- **Manejo de excepciones**: Siempre que trabajes con Hibernate, asegúrate de manejar adecuadamente las excepciones, especialmente las relacionadas con las transacciones y la persistencia de objetos.
- **Gestión de transacciones**: Asegúrate de realizar un `commit()` para que los cambios se apliquen permanentemente a la base de datos. Si ocurre un error, puedes hacer un `rollback()` para revertir cualquier cambio realizado durante la transacción.
- **SessionFactory singleton**: Generalmente, la `SessionFactory` se crea una sola vez y se utiliza durante toda la vida de la aplicación. Esto se debe a que la creación de una `SessionFactory` es costosa en términos de rendimiento.

