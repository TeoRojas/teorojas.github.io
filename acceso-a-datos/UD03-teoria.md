---
layout: default
title: UD03. Gestión de la persistencia de los datos con herramientas de mapeo objeto relacional (ORM).
permalink: /acceso-a-datos/ud03/teoria/
author: Teo Rojas
date: Noviembre 2024
abstract: Sinopsis de la unidad 03
---

# Índice
1. [Introducción a la Persistencia de Datos con ORM (CEa)](#1-introducción-a-la-persistencia-de-datos-con-orm-cea)  
2. [¿Qué es Hibernate? (CEa)](#2-qué-es-hibernate-cea)  
3. [Instalación de Hibernate (CEa)](#3-instalación-de-hibernate-cea)  
4. [Configuración de Hibernate (CEb)](#4-configuración-de-hibernate-ceb)  
5. [Iniciar Hibernate (CEb)](#5-iniciar-hibernate-ceb)  
6. [Mapeo con Ficheros XML (CEc)](#6-mapeo-con-ficheros-xml-cec)  
7. [Mapeo con Anotaciones (CEc)](#7-mapeo-con-anotaciones-cec)  
8. [Insertar Datos con Hibernate (CEd)](#8-insertar-datos-con-hibernate-ced)  
9. [Actualizar Datos con Hibernate (CEd)](#9-actualizar-datos-con-hibernate-ced)  
10. [Eliminar Datos con Hibernate (CEd)](#10-eliminar-datos-con-hibernate-ced)  
11. [Obtener Datos con Hibernate (CEd)](#11-obtener-datos-con-hibernate-ced)  
12. [Repositorios en Hibernate (CEe)](#12-repositorios-en-hibernate-cee)    
13. [Relaciones 1-N en Hibernate (CEe)](#13-relaciones-1-n-en-hibernate-cee)  
14. [Relaciones ManyToMany (CEe)](#14-relaciones-manytomany-cee)  


<!--
# Índice

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
        <groupId>org.hibernate.orm</groupId>
        <artifactId>hibernate-core</artifactId>
        <version>6.6.3.Final</version>
    </dependency><!-- Verifica la última versión disponible -->

    <!-- Dependencia de la base de datos MySQL -->
    <dependency>
        <groupId>com.mysql</groupId>
        <artifactId>mysql-connector-j</artifactId>
        <version>9.1.0</version> <!-- Verifica la última versión disponible -->
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

1. Visita el sitio web oficial de Hibernate o ve directamente a [Hibernate.zip](https://sourceforge.net/projects/hibernate/files/hibernate-orm/5.6.0.Final/hibernate-release-5.6.0.Final.zip/download).
2. Extrae el archivo ZIP descargado en una carpeta de tu elección.
3. Copia todos los `.jar` de la carpeta `lib/required` en la carpeta de los recursos `libs` de tu proyecto.

### Paso 2: Descargar e Incluir el Driver de MySQL

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

# 5. Iniciar Hibernate (CEb)

Una vez que Hibernate está instalado y configurado, el siguiente paso es iniciar la herramienta ORM para comenzar a interactuar con la base de datos. Iniciar Hibernate implica configurar el entorno de ejecución, crear una sesión y comenzar a realizar operaciones de persistencia sobre los objetos que representan las entidades de la base de datos.

En Hibernate, la sesión es la interfaz principal utilizada para interactuar con la base de datos. Cada vez que una aplicación necesita acceder a la base de datos, crea una **sesión** de Hibernate. La sesión permite realizar varias operaciones sobre las entidades, como guardar, actualizar, eliminar y consultar objetos de la base de datos.

A continuación, te explicamos cómo iniciar Hibernate y obtener una **sesión** de trabajo para realizar estas operaciones.

## 5.1. Creación del **SessionFactory**

Antes de que se pueda iniciar una sesión, es necesario crear un objeto llamado `SessionFactory`. Este objeto es responsable de la configuración de Hibernate y la creación de sesiones. El `SessionFactory` se construye una sola vez en la vida de la aplicación y se reutiliza para obtener sesiones de trabajo.

El `SessionFactory` se configura utilizando el archivo **hibernate.cfg.xml**, que contiene todos los parámetros necesarios para conectarse a la base de datos y configurar Hibernate. Este archivo debe estar en el directorio **`src/main/resources`** de tu proyecto.

### Ejemplo de Configuración de `SessionFactory`:

```java
// Paso 1: Configuración de la SessionFactory
SessionFactory factory = new Configuration()
                            .configure("hibernate.cfg.xml") // Cargar el archivo de configuración
                            .addAnnotatedClass(Persona.class)  // Añadir clases anotadas
                            .buildSessionFactory();
```
- `configure("hibernate.cfg.xml")`: Este método lee el archivo hibernate.cfg.xml que contiene la configuración de Hibernate, como la URL de la base de datos, las credenciales y otras propiedades.
- `addAnnotatedClass(Persona.class)`: Se añaden las clases anotadas de tu modelo de datos, que corresponden a las tablas de la base de datos.
- `buildSessionFactory()`: Crea la instancia de SessionFactory que luego se utilizará para crear sesiones.

## 5.2. Obtener una Sesión

Una vez que el `SessionFactory` ha sido configurado y creado, podemos obtener una **sesión** a través del método `openSession()`. La sesión es utilizada para ejecutar operaciones de persistencia.

### Ejemplo de Crear y Obtener una Sesión:

```java
// Paso 2: Crear una sesión a partir del SessionFactory
Session session = factory.getCurrentSession();
```
`getCurrentSession()` devuelve una sesión que está asociada al ciclo de vida de la transacción actual. En aplicaciones basadas en transacciones, este método es útil ya que gestiona automáticamente el cierre de la sesión al final de la transacción.

## 5.3. Iniciar una Transacción

Una vez obtenida la sesión, se debe iniciar una transacción. Hibernate trabaja dentro de transacciones, lo que significa que todas las operaciones de persistencia deben estar dentro de una transacción.

### Ejemplo de Iniciar una Transacción:

```java
// Paso 3: Iniciar una transacción
session.beginTransaction();
```
Esto marca el comienzo de una transacción. Durante la transacción, puedes realizar varias operaciones de base de datos, como insertar, actualizar, eliminar y consultar objetos.

## 5.4. Realizar Operaciones con la Sesión

Una vez que la transacción ha comenzado, puedes realizar operaciones sobre la base de datos. Por ejemplo, si tienes una entidad llamada `Persona`, puedes **guardar** un nuevo registro en la base de datos.

### Ejemplo de Guardar un Objeto:

```java
// Paso 4: Crear un objeto y guardarlo en la base de datos
Persona persona = new Persona("Juan", "Pérez", "juan.perez@gmail.com");
session.save(persona);
```

El método `save()` de la sesión guarda el objeto persona en la base de datos. Hibernate se encarga de la conversión del objeto en una fila dentro de la tabla correspondiente.

## 5.5. Confirmar la Transacción

Después de realizar las operaciones necesarias, la transacción debe ser confirmada para que los cambios se apliquen permanentemente en la base de datos.

### Ejemplo de Confirmar la Transacción:

```java
// Paso 5: Confirmar la transacción
session.getTransaction().commit();
```
El método `commit()` asegura que todos los cambios realizados durante la transacción se persistan en la base de datos. Si no se llama a `commit()`, los cambios realizados en la transacción se descartan.

## 5.6. Cerrar la Sesión

Una vez que la transacción se ha completado, es importante cerrar la sesión para liberar los recursos que Hibernate ha utilizado.

### Ejemplo de Cerrar la Sesión:

```java
// Paso 6: Cerrar la sesión
session.close();
```

## 5.7. Ejemplo Completo de Iniciar Hibernate

Para iniciar Hibernate correctamente, es fundamental seguir estos pasos:

1. Configurar el `SessionFactory` utilizando el archivo `hibernate.cfg.xml`.
2. Obtener una sesión utilizando `getCurrentSession()`.
3. Iniciar una transacción con `session.beginTransaction()`.
4. Realizar las operaciones de persistencia necesarias, como guardar, actualizar o eliminar entidades.
5. Confirmar los cambios con `session.getTransaction().commit()`.
6. Cerrar la sesión para liberar los recursos utilizados.

```java
public class Main {
    public static void main(String[] args) {
        // Paso 1: Configurar el SessionFactory
        SessionFactory factory = new Configuration()
                                    .configure("hibernate.cfg.xml")
                                    .addAnnotatedClass(Persona.class)
                                    .buildSessionFactory();
        
        // Paso 2: Crear una sesión
        Session session = factory.getCurrentSession();

        try {
            // Paso 3: Iniciar una transacción
            session.beginTransaction();

            // Paso 4: Crear un objeto Persona
            Persona persona = new Persona("Juan", "Pérez", "juan.perez@gmail.com");

            // Paso 5: Guardar el objeto Persona
            session.save(persona);

            // Paso 6: Confirmar la transacción
            session.getTransaction().commit();
        } finally {
            factory.close(); // Paso 7: Cerrar el SessionFactory
        }
    }
}
```

Este flujo básico te ofrece una guía básica a modo de resumen para interactuar con la base de datos utilizando Hibernate y realizar operaciones de persistencia de manera eficiente.

# 6. Mapeo con Ficheros XML (CEc)

El mapeo de ficheros XML es un proceso crucial en el desarrollo de aplicaciones que gestionan datos en formato XML. En este contexto, Hibernate ofrece herramientas que permiten trabajar con ficheros XML para mapear entidades Java a tablas de bases de datos. Este enfoque facilita la persistencia de datos al abstraer las complejidades de la base de datos y permitir una manipulación más sencilla desde la aplicación.

## ¿Qué es el Mapeo con Ficheros XML?

El mapeo con ficheros XML en Hibernate se refiere a la configuración de las relaciones entre las clases Java y las tablas de base de datos mediante archivos XML. Estos ficheros contienen la información que Hibernate utiliza para realizar el mapeo objeto-relacional (ORM), de modo que cada clase y su correspondiente tabla en la base de datos estén correctamente vinculadas.

El archivo XML se utiliza para declarar las entidades y sus propiedades, las relaciones entre las entidades y otras configuraciones necesarias, como la estrategia de generación de identificadores, los tipos de datos y las relaciones entre tablas.

## Ventajas del Mapeo con XML

1. **Separación de la lógica de negocio y la configuración de la base de datos**: Al utilizar archivos XML, la configuración del mapeo no está directamente integrada en el código de la aplicación, lo que facilita la separación de responsabilidades y el mantenimiento del código.
2. **Flexibilidad**: El mapeo mediante XML es muy flexible y permite realizar modificaciones sin necesidad de cambiar el código de las clases Java. Esto es útil, por ejemplo, cuando se debe cambiar la estructura de la base de datos o las relaciones entre las tablas sin afectar directamente el código de negocio.
3. **Portabilidad**: Al estar basado en un archivo de configuración, el mapeo mediante XML facilita la portabilidad entre diferentes bases de datos. Es más sencillo ajustar los ficheros de mapeo a diferentes entornos o bases de datos sin tener que modificar el código Java.
4. **Soporte para configuraciones avanzadas**: Aunque el mapeo basado en anotaciones es más común en muchos proyectos, el mapeo con XML sigue siendo útil en escenarios más complejos o en los que se necesitan configuraciones avanzadas, como la configuración de la herencia de clases o la personalización de estrategias de acceso a datos.

## Estructura de los Ficheros XML

Los ficheros XML de Hibernate generalmente siguen una estructura estándar que incluye el mapeo de las entidades a tablas y la definición de las relaciones entre ellas. A continuación se explica la estructura básica de un fichero de mapeo XML.

### Elementos principales del fichero XML de mapeo:
- **hibernate-mapping**: Es el elemento raíz del fichero XML, y dentro de él se definen todas las configuraciones relacionadas con el mapeo de las clases.
- **class**: Representa la clase que será mapeada a una tabla de la base de datos. Dentro de este elemento, se definen las propiedades de la clase, y se especifican los detalles del mapeo, como el nombre de la tabla y las claves primarias.
- **id**: Este elemento se utiliza para mapear la propiedad de una clase que corresponde a la clave primaria de la tabla.
- **property**: Se utiliza para mapear propiedades normales de la clase a las columnas de la tabla de la base de datos.
- **many-to-one** y **one-to-many**: Se utilizan para mapear relaciones entre entidades (por ejemplo, una relación de uno a muchos o muchos a uno).

### Ejemplo de un fichero de mapeo XML:

```xml
<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE hibernate-mapping PUBLIC "-//Hibernate/Hibernate Mapping DTD 3.0//EN" "http://hibernate.sourceforge.net/hibernate-mapping-3.0.dtd">
<hibernate-mapping>
    <class name="Persona" table="PERSONA">
        <id name="id" column="ID">
            <generator class="increment"/>
        </id>
        <property name="nombre" column="NOMBRE"/>
        <property name="edad" column="EDAD"/>
    </class>
</hibernate-mapping>
```
En este ejemplo:

- La clase `Persona` se mapea a la tabla `PERSONA` en la base de datos.
- La propiedad `id` de la clase se mapea a la columna `ID` de la tabla y se genera automáticamente con la estrategia de incremento.
- Las propiedades `nombre` y `edad` se mapean a las columnas `NOMBRE` y `EDAD`, respectivamente.

## Proceso de Mapeo en Hibernate con XML

### 1. Crear la Clase Java:
El primer paso es crear la clase Java que representará la entidad en el sistema. Esta clase tendrá los atributos que corresponderán a las columnas de la tabla en la base de datos.
### 2. Crear el Fichero de Mapeo XML:
El siguiente paso es crear un fichero XML donde se definirá el mapeo entre la clase Java y la tabla de la base de datos. El archivo XML debe incluir detalles sobre la clase, las propiedades y las relaciones con otras tablas.
### 3. Configurar Hibernate:
El archivo de configuración de Hibernate (generalmente `hibernate.cfg.xml`) debe incluir la referencia al fichero de mapeo XML para que Hibernate lo utilice al generar las consultas y realizar las operaciones sobre la base de datos.
### 4. Usar Hibernate para Realizar Operaciones:
Una vez que el mapeo se ha definido correctamente, se pueden utilizar las APIs de Hibernate para realizar operaciones sobre la base de datos, como insertar, actualizar o eliminar registros.

## Desventajas del Mapeo con XML

Aunque el mapeo con ficheros XML ofrece varias ventajas, también tiene algunas desventajas:
- **Mayor complejidad**: La configuración en XML puede ser más extensa y difícil de mantener en proyectos grandes. Además, los errores de configuración pueden ser más difíciles de identificar y corregir.
- **Falta de validación en tiempo de compilación**: A diferencia del mapeo con anotaciones, los errores en los ficheros XML no se detectan hasta que se ejecuta la aplicación, lo que puede dificultar la depuración.

## Conclusión

El mapeo con ficheros XML es una de las opciones más flexibles y potentes para gestionar la persistencia de datos en aplicaciones Java utilizando Hibernate. Aunque se ha visto cierta preferencia por el uso de anotaciones en muchas aplicaciones modernas, los ficheros XML siguen siendo útiles y efectivos, especialmente en proyectos que requieren configuraciones más avanzadas y flexibles.

El uso adecuado de los ficheros de mapeo XML puede mejorar significativamente la escalabilidad y el mantenimiento de una aplicación, al permitir modificar la estructura de la base de datos sin alterar el código de la lógica de negocio.

# 7. Mapeo con Anotaciones (CEc)

El mapeo con anotaciones es uno de los enfoques más modernos y utilizados en Hibernate para mapear las clases Java a las tablas de bases de datos. En lugar de usar ficheros XML para la configuración del mapeo, Hibernate permite que los desarrolladores utilicen anotaciones directamente en las clases Java. Esto hace que el proceso de mapeo sea más directo y menos propenso a errores, ya que se realiza dentro del propio código de la aplicación.

## ¿Qué es el Mapeo con Anotaciones?

El mapeo con anotaciones en Hibernate implica el uso de anotaciones estándar de Java (o de Hibernate) para declarar cómo una clase Java debe ser persistida en una base de datos relacional. Estas anotaciones se colocan en las propiedades de la clase y en la propia clase, indicando a Hibernate cómo debe gestionar la relación entre la clase y la base de datos.

Las anotaciones simplifican el código, eliminando la necesidad de ficheros de configuración XML, y hacen que el código sea más limpio y fácil de mantener. Además, al estar integradas directamente en el código Java, las anotaciones permiten una validación más temprana en tiempo de compilación, lo que reduce los posibles errores de mapeo.

## Ventajas del Mapeo con Anotaciones

1. **Simplicidad**: Al no requerir archivos de configuración XML, el mapeo con anotaciones es más sencillo de configurar y administrar. El código es más limpio y directo, lo que facilita el mantenimiento.
2. **Integración con el código Java**: Las anotaciones están directamente asociadas a las clases y sus propiedades, lo que hace que el mapeo sea más intuitivo. No es necesario hacer referencia a ficheros externos o realizar configuraciones adicionales fuera del código.
3. **Detección temprana de errores**: Al usar anotaciones, los errores de configuración en el mapeo pueden ser detectados en tiempo de compilación, lo que mejora la calidad del código y reduce la posibilidad de errores en la ejecución.
4. **Mayor control sobre el mapeo**: Hibernate ofrece una variedad de anotaciones que permiten un control más fino sobre el mapeo de las clases, como la estrategia de generación de claves primarias, las relaciones entre entidades y la definición de las tablas y columnas correspondientes.

## Anotaciones Principales para el Mapeo

Hibernate proporciona un conjunto de anotaciones que se pueden usar para mapear clases Java a tablas de bases de datos. A continuación se describen algunas de las anotaciones más utilizadas.

### @Entity
La anotación `@Entity` se usa para marcar una clase como una entidad de base de datos, es decir, una clase cuya instancia se almacenará en una tabla de la base de datos.

```java
@Entity
public class Persona {
    // Atributos y métodos
}
```

### @Table
La anotación `@Table` se usa para especificar el nombre de la tabla que será mapeada a la clase. Si no se especifica, Hibernate asumirá que el nombre de la tabla será el mismo que el de la clase.

```java
@Entity
@Table(name = "PERSONA")
public class Persona {
    // Atributos y métodos
}
```

### @Id
La anotación `@Id` se utiliza para marcar el campo que será la clave primaria de la tabla.

```java
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private int id;
```

### @GeneratedValue
La anotación `@GeneratedValue` se usa para especificar cómo se generará el valor de la clave primaria. Puede utilizar diferentes estrategias, como `AUTO`, `IDENTITY`, `SEQUENCE` o `TABLE`.

```java
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private int id;
```

### @Column
La anotación `@Column` se usa para mapear un campo de la clase a una columna de la tabla de la base de datos. Se puede usar para definir el nombre de la columna, el tipo de datos, si la columna es nullable, entre otras propiedades.

```java
@Column(name = "nombre", nullable = false)
private String nombre;
```

### @OneToMany, @ManyToOne, @ManyToMany
Estas anotaciones se utilizan para mapear relaciones entre entidades. Se usan para especificar cómo se debe gestionar la relación entre dos o más tablas. `@OneToMany` y `@ManyToOne` definen relaciones de uno a muchos y muchos a uno, mientras que `@ManyToMany` define una relación de muchos a muchos.

```java
@OneToMany(mappedBy = "persona")
private List<Direccion> direcciones;
```

### @JoinColumn
La anotación `@JoinColumn` se usa en una relación de tipo `@ManyToOne` o `@OneToMany` para definir cómo se deben asociar las columnas de las tablas relacionadas. Esto es útil para especificar la clave foránea en una relación entre tablas.

```java
@ManyToOne
@JoinColumn(name = "persona_id")
private Persona persona;
```

## Proceso de Mapeo con Anotaciones en Hibernate

### 1. Crear la Clase Java:
El primer paso es crear la clase Java que representará la entidad. La clase debe estar anotada con `@Entity` para que Hibernate la reconozca como una entidad de base de datos.

### 2. Añadir las Anotaciones Correspondientes:
A continuación, se deben agregar las anotaciones a la clase y sus atributos para definir el mapeo entre la clase y la tabla de la base de datos. Esto incluye el uso de `@Id` para la clave primaria, `@GeneratedValue` para la estrategia de generación de identificadores, y `@Column` para las columnas correspondientes.

### 3. Configurar Hibernate:
En el archivo de configuración de Hibernate (`hibernate.cfg.xml`), se debe incluir la configuración de la base de datos y las propiedades necesarias para que Hibernate funcione correctamente. También debe incluirse la clase mapeada para que Hibernate pueda reconocerla.

### 4. Realizar Operaciones con Hibernate:
Una vez que el mapeo esté configurado, se pueden utilizar las APIs de Hibernate para realizar operaciones de persistencia como insertar, actualizar, eliminar o consultar los datos almacenados en la base de datos.

## Desventajas del Mapeo con Anotaciones

Aunque el mapeo con anotaciones tiene muchas ventajas, también presenta algunas desventajas:

1. **Rigidez en el código**: Aunque las anotaciones simplifican la configuración, al estar directamente en el código de la clase, pueden hacer que el código sea más difícil de mantener a largo plazo, especialmente cuando hay muchas entidades o relaciones complejas.
  
2. **Limitaciones en configuraciones avanzadas**: En comparación con el mapeo XML, las anotaciones pueden ser menos flexibles cuando se requiere una configuración avanzada o personalizada. Algunos casos complejos, como la configuración de la herencia de clases o estrategias avanzadas de claves primarias, pueden ser más difíciles de manejar.

## Conclusión

El mapeo con anotaciones es una de las técnicas más populares en Hibernate, ya que simplifica el proceso de mapeo objeto-relacional y mejora la legibilidad del código. Al integrarse directamente en el código Java, las anotaciones facilitan la configuración y la detección de errores en tiempo de compilación. Sin embargo, también es importante tener en cuenta sus limitaciones y considerar el mapeo XML en situaciones más complejas o cuando se necesite una mayor flexibilidad.

El mapeo con anotaciones es una excelente opción para proyectos que requieren una implementación rápida y eficiente del mapeo objeto-relacional, y es ampliamente utilizado en aplicaciones modernas que utilizan Hibernate.

# 8. Insertar Datos con Hibernate (CEd)

Una de las tareas más comunes al trabajar con bases de datos es insertar datos. Hibernate facilita este proceso al mapear las entidades Java a las tablas de la base de datos, permitiendo que los desarrolladores puedan insertar datos mediante objetos en lugar de tener que escribir sentencias SQL manualmente. En este apartado, aprenderemos cómo insertar datos en la base de datos utilizando Hibernate.

## 8.1. Operación de Insertar con Hibernate

La operación de insertar en Hibernate se realiza mediante el método `save()` de la sesión de Hibernate. Este método permite almacenar una instancia de una entidad (una clase Java) en la base de datos. Hibernate se encarga de convertir los valores de los objetos a las filas correspondientes en las tablas de la base de datos.

### Pasos para Insertar Datos con Hibernate

1. **Crear la clase entidad**: La clase debe estar anotada con `@Entity` y debe tener las propiedades correspondientes a las columnas de la tabla de la base de datos.
2. **Configurar Hibernate**: Debemos asegurarnos de que Hibernate está configurado correctamente para interactuar con la base de datos.
3. **Crear una sesión y una transacción**: Hibernate gestiona las operaciones dentro de transacciones, por lo que necesitamos iniciar una sesión y una transacción.
4. **Guardar los objetos**: Usamos el método `save()` de la sesión para guardar un objeto de la clase entidad en la base de datos.
5. **Confirmar la transacción**: Después de guardar los datos, se debe confirmar la transacción para que los cambios sean persistidos en la base de datos.

### Ejemplo de Inserción de Datos

Supongamos que tenemos una entidad `Persona` con los atributos `id`, `nombre`, `apellido` y `email`. Para insertar un nuevo registro de persona en la base de datos, el código sería el siguiente:

```java
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class InsertarDatosHibernate {
    public static void main(String[] args) {
        // Paso 1: Configurar la SessionFactory
        SessionFactory factory = new Configuration()
                                    .configure("hibernate.cfg.xml")
                                    .addAnnotatedClass(Persona.class)
                                    .buildSessionFactory();

        // Paso 2: Obtener una sesión
        Session session = factory.getCurrentSession();

        try {
            // Paso 3: Crear un objeto Persona
            Persona nuevaPersona = new Persona("Carlos", "Gómez", "carlos.gomez@example.com");

            // Paso 4: Iniciar una transacción
            session.beginTransaction();

            // Paso 5: Guardar el objeto en la base de datos
            session.save(nuevaPersona);

            // Paso 6: Confirmar la transacción
            session.getTransaction().commit();
            
            System.out.println("Persona guardada con éxito: " + nuevaPersona);
        } finally {
            factory.close();
        }
    }
}
```

### Explicación del Código:

1. **Configuración de Hibernate**: Creamos una `SessionFactory` con el archivo de configuración `hibernate.cfg.xml`, que contiene la información sobre la base de datos.
2. **Creación de la sesión**: Usamos `getCurrentSession()` para obtener una sesión que gestionará la transacción y las operaciones de persistencia.
3. **Creación del objeto Persona**: Creamos una nueva instancia de la clase `Persona` con los datos que queremos insertar en la base de datos.
4. **Inicio de la transacción**: Comenzamos una transacción con `session.beginTransaction()`.
5. **Inserción del objeto**: Usamos `session.save(nuevaPersona)` para guardar el objeto en la base de datos. Hibernate se encarga de insertar los valores del objeto en la tabla correspondiente.
6. **Confirmación de la transacción**: Llamamos a `session.getTransaction().commit()` para confirmar la transacción, lo que garantiza que los cambios se guardan permanentemente en la base de datos.
7. **Cierre de la sesión**: Finalmente, cerramos la `SessionFactory` para liberar los recursos.

### Manejando el Identificador de la Entidad

Si la clase entidad tiene una propiedad que es la clave primaria (por ejemplo, `id`), Hibernate se encarga de asignar el valor a esta propiedad automáticamente si está configurado adecuadamente. En el ejemplo anterior, si la propiedad `id` está configurada con la anotación `@Id`, Hibernate generará un identificador único para el nuevo registro. Si se utiliza la estrategia `GenerationType.IDENTITY` o `GenerationType.AUTO`, el valor del `id` será generado automáticamente por la base de datos al insertar el nuevo registro.

## 8.2. Consideraciones Importantes

1. **Persistencia y transacciones**: Es fundamental que las operaciones de inserción se realicen dentro de una transacción. Hibernate asegura que los cambios en la base de datos se apliquen de manera atómica y segura. Si la transacción no se confirma (`commit()`), los cambios no se guardarán en la base de datos.
2. **Caché de primer nivel**: Hibernate utiliza un caché de primer nivel asociado a la sesión. Esto significa que los objetos guardados en una sesión estarán disponibles durante toda la sesión, evitando consultas adicionales a la base de datos.
3. **Autogeneración de identificadores**: Si la clave primaria de la entidad es autogenerada (por ejemplo, con `@GeneratedValue`), Hibernate manejará automáticamente el valor del identificador.

## 8.3. Insertar Múltiples Registros

Si necesitas insertar varios registros a la vez, puedes utilizar un enfoque similar. Solo tienes que crear varias instancias de la entidad y llamarlas al método `save()` dentro de la misma transacción. Hibernate gestionará las inserciones de manera eficiente.

```java
// Crear múltiples instancias de Persona
Persona persona1 = new Persona("Ana", "López", "ana.lopez@example.com");
Persona persona2 = new Persona("Luis", "Martínez", "luis.martinez@example.com");

// Guardar las personas en la base de datos
session.save(persona1);
session.save(persona2);
```

### Optimización de la Inserción

Hibernate también permite realizar inserciones por lotes (batch processing) para mejorar el rendimiento al insertar grandes cantidades de datos. Esto se puede configurar en el archivo `hibernate.cfg.xml` mediante las propiedades adecuadas.

## 8.4. Verificación de la Inserción

Es una buena práctica verificar que los datos se hayan insertado correctamente. Puedes hacerlo recuperando los objetos insertados de la base de datos y confirmando que la inserción fue exitosa.

```java
Persona personaRecuperada = session.get(Persona.class, persona1.getId());
System.out.println("Persona recuperada: " + personaRecuperada);
```

## 8.5. Conclusión

Insertar datos con Hibernate es una operación sencilla gracias a su modelo de objetos y su abstracción del SQL. Usando las herramientas de Hibernate, puedes insertar datos de manera eficiente y sin necesidad de escribir consultas SQL manualmente. El uso de sesiones y transacciones asegura que las operaciones de persistencia se realicen de manera segura y eficiente, permitiendo a los desarrolladores centrarse en la lógica de negocio sin preocuparse por la gestión de la base de datos.

# 9. Actualizar Datos con Hibernate (CEd)

Actualizar datos en una base de datos es una operación fundamental en la gestión de la persistencia de datos en aplicaciones. En Hibernate, esta operación es muy sencilla gracias a su gestión automática de las entidades. Hibernate permite realizar operaciones de actualización utilizando una sesión que se conecta a la base de datos. Al actualizar una entidad, Hibernate se encarga de propagar los cambios a las tablas correspondientes.

En este apartado, vamos a cubrir cómo realizar actualizaciones de registros utilizando Hibernate. Explicaremos los pasos necesarios para modificar los valores de una entidad persistente y cómo asegurar que los cambios se reflejen en la base de datos.

## ¿Cómo Actualizar Datos con Hibernate?

### Pasos para Actualizar Datos con Hibernate

1. **Obtener la Sesión de Hibernate:**
   Como en las otras operaciones de persistencia, primero necesitamos abrir una sesión de Hibernate utilizando `SessionFactory`.

2. **Iniciar una Transacción:**
   Hibernate trabaja dentro de un contexto de transacción, por lo que antes de realizar cualquier operación de actualización, necesitamos iniciar una transacción.

3. **Obtener la Entidad a Actualizar:**
   Para realizar la actualización, necesitamos cargar la entidad que queremos modificar. Esto se puede hacer utilizando el método `session.get()` o `session.load()`, que recupera la entidad de la base de datos.

4. **Modificar los Valores de la Entidad:**
   Una vez que tenemos la entidad, podemos modificar los valores de sus atributos.

5. **Guardar la Entidad:**
   Aunque no es necesario usar `session.update()`, ya que Hibernate realiza el seguimiento de los objetos persistentes, podemos simplemente realizar cambios en el objeto cargado. Hibernate detectará los cambios y los persistirá automáticamente en la base de datos al finalizar la transacción.

6. **Confirmar la Transacción:**
   Finalmente, debemos confirmar la transacción utilizando `session.getTransaction().commit()` para aplicar los cambios en la base de datos.

### Ejemplo de Actualización de Datos en Hibernate

A continuación se muestra cómo podríamos realizar una operación de actualización utilizando Hibernate.

#### Paso 1: Crear una clase `Persona`

Supongamos que la clase `Persona` está mapeada correctamente a la base de datos.

```java
import javax.persistence.*;

@Entity
@Table(name = "PERSONAS")
public class Persona {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int id;

    @Column(name = "NOMBRE")
    private String nombre;

    @Column(name = "APELLIDO")
    private String apellido;

    @Column(name = "EDAD")
    private String email;

    // Constructor, Getters y Setters

    public Persona(String nombre, String apellido, String email) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.email = email;
    }

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

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
```

#### Paso 2: Actualizar una Persona en la Base de Datos

Aquí te mostramos cómo podríamos realizar una operación de actualización utilizando Hibernate.

```java
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class Main {
    public static void main(String[] args) {
        // Paso 1.1: Crear SessionFactory
        SessionFactory factory = new Configuration()
                                    .configure("hibernate.cfg.xml")
                                    .addAnnotatedClass(Persona.class)
                                    .buildSessionFactory();

        // Paso 1.2: Crear sesión
        Session session = factory.getCurrentSession();

        try {
            // Paso 1.3: Iniciar una transacción
            session.beginTransaction();

            // Paso 2: Obtener la Persona con el id
            int personaId = 1;  // Suponemos que este es el ID de una persona en la base de datos
            Persona persona = session.get(Persona.class, personaId);

            // Verificar si la persona fue encontrada
            if (persona != null) {
                // Paso 3: Modificar la persona
                persona.setEmail("nuevo.email@example.com");  // Cambiar el correo electrónico

                // No es necesario usar session.update() porque Hibernate hace un seguimiento de los objetos modificados
            }

            // Paso 4: Confirmar la transacción
            session.getTransaction().commit();
            System.out.println("Persona actualizada con éxito.");

        } finally {
            // Paso 5: Cerrar la transacción
            factory.close();
        }
    }
}
```
### Explicación del Código

1. **Obtenemos la sesión** de Hibernate desde el `SessionFactory` y comenzamos una transacción con `session.beginTransaction()`.
2. **Recuperamos el objeto Persona** utilizando el método `session.get()`, que busca una entidad en la base de datos utilizando el `id` proporcionado.
3. **Modificamos el objeto Persona** en memoria. En este caso, actualizamos el correo electrónico utilizando `persona.setEmail("nuevo.email@example.com")`.
4. **Completamos la transacción** con `session.getTransaction().commit()`. Hibernate se encarga de comparar el objeto en memoria con los valores en la base de datos, y realiza la actualización de los datos cuando la transacción se confirma.
5. Finalmente, **cerramos la sesión** para liberar los recursos utilizados.

### Consideraciones Importantes

- **Detección Automática de Cambios:** Hibernate realiza un seguimiento automático de las entidades modificadas, por lo que no es necesario utilizar un método como `session.update()` para aplicar los cambios. Al llamar a `commit()`, Hibernate detecta los cambios y actualiza los registros en la base de datos.
- **Uso de Transacciones:** Asegúrate de envolver todas las operaciones de actualización en una transacción. Si no lo haces, los cambios no se guardarán correctamente en la base de datos.
- **Uso del Método `session.get()` vs. `session.load()`:** `session.get()` devuelve una entidad completa de la base de datos. Si la entidad no existe, devuelve `null`. Por otro lado, `session.load()` puede devolver un proxy de la entidad, lo que podría ser más eficiente en algunos casos si solo necesitas acceder a la entidad sin cargar todos sus atributos.


# 10. Eliminar Datos con Hibernate (CEd)

Eliminar datos de una base de datos es una de las operaciones básicas en cualquier aplicación que maneje persistencia de datos. En Hibernate, la operación de eliminación se realiza de manera sencilla utilizando las sesiones de Hibernate y gestionando las transacciones. Hibernate se encarga de identificar la entidad que se debe eliminar y propagará la acción de eliminación a la base de datos.

En este apartado, aprenderemos cómo eliminar registros en una base de datos utilizando Hibernate, destacando los pasos necesarios para realizar la operación y las consideraciones a tener en cuenta.

## ¿Cómo Eliminar Datos con Hibernate?

Eliminar datos con Hibernate implica los siguientes pasos:

1. **Obtener la Sesión de Hibernate:**
   Primero, necesitamos abrir una sesión de Hibernate utilizando `SessionFactory`, de la misma manera que para las demás operaciones de persistencia.
2. **Iniciar una Transacción:**
   Como todas las operaciones de persistencia en Hibernate, la eliminación de datos debe realizarse dentro de una transacción.
3. **Recuperar la Entidad a Eliminar:**
   Para eliminar un registro, necesitamos cargar la entidad que deseamos eliminar. Esto se puede hacer usando `session.get()` o `session.load()`, que recuperan la entidad de la base de datos.
4. **Eliminar la Entidad:**
   Una vez que tenemos la entidad, utilizamos el método `session.delete()` para eliminarla de la base de datos. Hibernate se encargará de propagar la acción de eliminación a la base de datos cuando se confirme la transacción.
5. **Confirmar la Transacción:**
   Como en las otras operaciones de persistencia, debemos confirmar la transacción con `session.getTransaction().commit()` para aplicar los cambios en la base de datos.
6. **Cerrar la Sesión:**
   Finalmente, debemos cerrar la sesión de Hibernate para liberar los recursos utilizados.

### Ejemplo de Eliminación de Datos en Hibernate

A continuación, se muestra cómo realizar una operación de eliminación en Hibernate utilizando la clase `Persona` como ejemplo.

#### Paso 1: Crear la clase `Persona`

Supongamos que ya tenemos la clase `Persona` mapeada a una tabla en la base de datos.

```java
import javax.persistence.*;

@Entity
@Table(name = "PERSONAS")
public class Persona {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int id;

    @Column(name = "NOMBRE")
    private String nombre;

    @Column(name = "APELLIDO")
    private String apellido;

    @Column(name = "EDAD")
    private String email;

    // Constructor, Getters y Setters
    // ...
}
```

#### Paso 2: Eliminar una Persona en la Base de Datos

Aquí te mostramos cómo podríamos eliminar un registro de la base de datos utilizando Hibernate.

```java
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import com.example.Persona;

public class Main {
    public static void main(String[] args) {
        // Crear la SessionFactory
        SessionFactory factory = new Configuration()
                                    .configure("hibernate.cfg.xml")
                                    .addAnnotatedClass(Persona.class)
                                    .buildSessionFactory();
        
        // Obtener la sesión
        Session session = factory.getCurrentSession();
        
        try {
            // Iniciar una transacción
            session.beginTransaction();

            // Recuperar la persona con el id
            int personaId = 1;
            Persona persona = session.get(Persona.class, personaId);

            if (persona != null) {
                // Eliminar la persona
                session.delete(persona);
                System.out.println("Persona eliminada: " + persona);
            } else {
                System.out.println("La persona no existe con el id: " + personaId);
            }

            // Confirmar la transacción
            session.getTransaction().commit();
            System.out.println("La transacción fue confirmada.");
        } finally {
            factory.close(); // Cerrar la 'fábrica' de sesiones
        }
    }
}
```

### Explicación del Código

1. **Obtenemos la sesión** de Hibernate desde el `SessionFactory` y comenzamos una transacción con `session.beginTransaction()`.
2. **Recuperamos el objeto Persona** utilizando `session.get()`, que busca una entidad en la base de datos utilizando el `id` proporcionado.
3. **Eliminamos el objeto Persona** con `session.delete(persona)`, lo que marca la entidad como eliminada.
4. **Confirmamos la transacción** con `session.getTransaction().commit()`. Hibernate propaga la eliminación a la base de datos y asegura que los cambios se apliquen correctamente.
5. Finalmente, **cerramos la sesión** para liberar los recursos.

### Consideraciones Importantes

- **Eliminación y Relaciones entre Entidades:** Cuando una entidad tiene relaciones con otras (por ejemplo, una relación de uno a muchos o muchos a muchos), Hibernate puede eliminar las relaciones en cascada, dependiendo de cómo se haya configurado la entidad y sus relaciones. Asegúrate de configurar correctamente las relaciones de cascada en la clase para evitar eliminar datos relacionados accidentalmente.
- **Comprobación de la Existencia de la Entidad:** Aunque no es estrictamente necesario, siempre es una buena práctica verificar si la entidad existe antes de intentar eliminarla. Si la entidad no se encuentra en la base de datos, el método `session.get()` devolverá `null`.
- **Eliminación Física vs. Lógica:** En algunos casos, en lugar de eliminar un registro de manera permanente (eliminación física), puede ser más conveniente realizar una **eliminación lógica**, donde se marca un registro como eliminado, pero sigue existiendo en la base de datos. Esto se logra añadiendo un campo como `activo` o `eliminado` y actualizando su valor en lugar de eliminar el registro.
- **Uso de `session.delete()`:** El método `delete()` de Hibernate es utilizado para eliminar un objeto de la base de datos. Asegúrate de que el objeto a eliminar esté gestionado por la sesión de Hibernate; de lo contrario, Hibernate no podrá realizar la eliminación.

# 11. Obtener Datos con Hibernate (CEd)

Obtener datos de una base de datos es una de las operaciones más comunes en cualquier aplicación que maneja persistencia. En Hibernate, este proceso se lleva a cabo utilizando la sesión de Hibernate y ejecutando consultas para recuperar objetos de la base de datos. Hibernate proporciona varios métodos para obtener datos, incluyendo consultas basadas en el lenguaje de consulta HQL (Hibernate Query Language), así como métodos para obtener entidades por su identificador.

En este apartado, veremos cómo obtener datos con Hibernate, abarcando desde la recuperación simple de una entidad hasta consultas más complejas.

## Métodos para Obtener Datos con Hibernate

### 1. Recuperación de una Entidad por su Identificador

El método más común para obtener una entidad es recuperarla utilizando su identificador (primary key). Para ello, se utilizan dos métodos principales de la sesión de Hibernate: `session.get()` y `session.load()`.

- **`session.get()`**: Este método recupera la entidad por su identificador. Si la entidad no existe en la base de datos, devuelve `null`. Es un método de lectura completo y garantiza que el objeto esté cargado completamente.
- **`session.load()`**: Este método también recupera la entidad por su identificador, pero devuelve un proxy de la entidad si no está cargada completamente. En ese caso, Hibernate cargará la entidad de la base de datos solo cuando se necesiten sus datos.

#### Ejemplo de Recuperación con `session.get()`

```java
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class Main {
    public static void main(String[] args) {
        // Crear la SessionFactory
        SessionFactory factory = new Configuration()
                                    .configure("hibernate.cfg.xml")
                                    .addAnnotatedClass(Persona.class)
                                    .buildSessionFactory();
        
        // Obtener la sesión
        Session session = factory.getCurrentSession();
        
        try {
            // Iniciar una transacción
            session.beginTransaction();

            // Recuperar la persona con el id
            int personaId = 1;
            Persona persona = session.get(Persona.class, personaId);

            System.out.println("Persona encontrada: " + persona);

            // Confirmar la transacción
            session.getTransaction().commit();
        } finally {
            factory.close(); // Cerrar la fábrica de sesiones
        }
    }
}
```

### 2. Consultas con HQL (Hibernate Query Language)

Hibernate Query Language (HQL) es un lenguaje de consulta orientado a objetos, similar a SQL, pero que opera sobre las entidades Java en lugar de las tablas de la base de datos. Con HQL, puedes escribir consultas que devuelvan objetos o colecciones de objetos directamente, sin tener que preocuparte por el mapeo entre tablas y clases.

#### Ejemplo de Consulta HQL

```java
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        // Crear la SessionFactory
        SessionFactory factory = new Configuration()
                                    .configure("hibernate.cfg.xml")
                                    .addAnnotatedClass(Persona.class)
                                    .buildSessionFactory();
        
        // Obtener la sesión
        Session session = factory.getCurrentSession();
        
        try {
            // Iniciar una transacción
            session.beginTransaction();

            // Ejecutar una consulta HQL para obtener todas las personas
            List<Persona> personas = session.createQuery("from Persona", Persona.class).getResultList();

            // Mostrar los resultados
            for (Persona persona : personas) {
                System.out.println(persona);
            }

            // Confirmar la transacción
            session.getTransaction().commit();
        } finally {
            factory.close(); // Cerrar la fábrica de sesiones
        }
    }
}
```

En este ejemplo, se utiliza una consulta HQL simple: `"from Persona"`, que selecciona todas las entidades `Persona` de la base de datos. Hibernate convierte automáticamente esta consulta en una instrucción SQL adecuada para la base de datos.

### 3. Consultas con Parámetros

HQL también permite incluir parámetros en las consultas, lo que es útil para realizar búsquedas dinámicas. Los parámetros pueden ser pasados utilizando el método `setParameter()`.

#### Ejemplo de Consulta de Parámetros

```java
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        // Crear la SessionFactory
        SessionFactory factory = new Configuration()
                                    .configure("hibernate.cfg.xml")
                                    .addAnnotatedClass(Persona.class)
                                    .buildSessionFactory();
        
        // Obtener la sesión
        Session session = factory.getCurrentSession();
        
        try {
            // Iniciar una transacción
            session.beginTransaction();

            // Ejecutar una consulta HQL con un parámetro
            String nombreBuscado = "Juan";
            List<Persona> personas = session.createQuery("from Persona where nombre=:nombreParametro", Persona.class)
                                             .setParameter("nombreParametro", nombreBuscado)
                                             .getResultList();

            // Mostrar los resultados
            for (Persona persona : personas) {
                System.out.println(persona);
            }

            // Confirmar la transacción
            session.getTransaction().commit();
        } finally {
            factory.close(); // Cerrar la fábrica de sesiones
        }
    }
}
```

En este ejemplo, la consulta HQL filtra las entidades `Persona` buscando por el nombre, utilizando el parámetro `:nombreParametro`.

### 4. Consultas con Cláusulas de Ordenamiento y Filtrado

Hibernate permite agregar filtros y cláusulas de ordenamiento a las consultas HQL, lo que te da más control sobre los resultados que quieres obtener.

#### Ejemplo de Consulta con Ordenamiento y Filtrado

```java
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        // Crear la SessionFactory
        SessionFactory factory = new Configuration()
                                    .configure("hibernate.cfg.xml")
                                    .addAnnotatedClass(Persona.class)
                                    .buildSessionFactory();
        
        // Obtener la sesión
        Session session = factory.getCurrentSession();
        
        try {
            // Iniciar una transacción
            session.beginTransaction();

            // Ejecutar una consulta HQL con ordenamiento y filtrado
            List<Persona> personas = session.createQuery("from Persona where edad > 25 order by nombre", Persona.class)
                                             .getResultList();

            // Mostrar los resultados
            for (Persona persona : personas) {
                System.out.println(persona);
            }

            // Confirmar la transacción
            session.getTransaction().commit();
        } finally {
            factory.close(); // Cerrar la fábrica de sesiones
        }
    }
}
```

Este ejemplo utiliza HQL para seleccionar todas las personas cuya edad sea mayor a 25 y las ordena alfabéticamente por nombre.

### 5. Consultas de Agregación

Hibernate también permite realizar consultas de agregación como `COUNT`, `MAX`, `MIN`, `AVG` y `SUM`. Estas consultas te permiten obtener información agregada de la base de datos, como el número de registros o los valores máximos y mínimos de una columna.

#### Ejemplo de Consulta de Agregación

```java
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class Main {
    public static void main(String[] args) {
        // Crear la SessionFactory
        SessionFactory factory = new Configuration()
                                    .configure("hibernate.cfg.xml")
                                    .addAnnotatedClass(Persona.class)
                                    .buildSessionFactory();
        
        // Obtener la sesión
        Session session = factory.getCurrentSession();
        
        try {
            // Iniciar una transacción
            session.beginTransaction();

            // Ejecutar una consulta HQL para obtener el número de personas
            Long totalPersonas = (Long) session.createQuery("select count(*) from Persona").getSingleResult();

            System.out.println("Número total de personas: " + totalPersonas);

            // Confirmar la transacción
            session.getTransaction().commit();
        } finally {
            factory.close(); // Cerrar la fábrica de sesiones
        }
    }
}
```

En este ejemplo, usamos `count(*)` para obtener el número total de registros en la tabla Persona.

## Consideraciones al Obtener Datos con Hibernate

1. **Lazy Loading vs Eager Loading:**
   Hibernate utiliza un enfoque de **Lazy Loading** por defecto, lo que significa que las relaciones entre entidades no se cargan hasta que se accede a ellas explícitamente. Si necesitas cargar las relaciones de manera inmediata, puedes usar **Eager Loading** configurando las relaciones con `fetch = FetchType.EAGER`.
2. **Consultas de Proyección:**
   Si solo necesitas obtener ciertos campos de una entidad, puedes utilizar proyecciones en las consultas HQL, lo que te permite obtener solo las columnas necesarias.
3. **Manejo de Sesiones y Caché:**
   Hibernate utiliza un **caché de primer nivel** asociado a la sesión, lo que significa que si consultas la misma entidad varias veces dentro de la misma sesión, Hibernate no volverá a hacer la consulta a la base de datos, mejorando el rendimiento.
4. **Desempeño en Consultas Complejas:**
   Aunque Hibernate maneja la mayoría de las complejidades de la base de datos, las consultas muy complejas pueden requerir optimización, como el uso de índices o la escritura de consultas SQL específicas.


# 12. Repositorios en Hibernate (CEe)

En el contexto de Hibernate, un **repositorio** es un patrón de diseño que facilita el acceso a los datos persistentes mediante la encapsulación de las operaciones de la base de datos. En lugar de interactuar directamente con la sesión de Hibernate en todo el código, se recomienda centralizar el acceso a las entidades en una clase o conjunto de clases especializadas, conocidas como repositorios. Esto ayuda a mantener el código limpio y bien estructurado, especialmente cuando se trabaja con aplicaciones más grandes.

## ¿Qué es un Repositorio?

Un **repositorio** es un componente que se encarga de interactuar con la base de datos para realizar operaciones CRUD (Crear, Leer, Actualizar, Eliminar) sobre las entidades de la aplicación. El patrón de repositorio proporciona una capa de abstracción entre la base de datos y la lógica de la aplicación, lo que hace que el código sea más fácil de mantener, probar y extender.

## Funciones de un Repositorio

Un repositorio en Hibernate generalmente tiene las siguientes funciones:
- **Guardar entidades**: Insertar o actualizar objetos en la base de datos.
- **Buscar entidades**: Recuperar objetos desde la base de datos, utilizando criterios específicos (por ejemplo, por `id`, por `email`, etc.).
- **Eliminar entidades**: Eliminar objetos de la base de datos.
- **Actualizar entidades**: Modificar los valores de las propiedades de una entidad.

### Ejemplo de Implementación de un Repositorio en Hibernate

Supongamos que tienes una entidad `Persona` y deseas crear un repositorio para manejar las operaciones de persistencia de personas. El repositorio puede estar representado por una clase como la siguiente:

```java
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class PersonaRepository {

    private SessionFactory factory;

    public PersonaRepository() {
        factory = new Configuration().configure("hibernate.cfg.xml")
                                     .addAnnotatedClass(Persona.class)
                                     .buildSessionFactory();
    }

    public void guardarPersona(Persona persona) {
        Session session = factory.getCurrentSession();
        try {
            session.beginTransaction();
            session.saveOrUpdate(persona);
            session.getTransaction().commit();
        } finally {
            session.close();
        }
    }

    public Persona obtenerPersonaPorId(int id) {
        Session session = factory.getCurrentSession();
        Persona persona = null;
        try {
            session.beginTransaction();
            persona = session.get(Persona.class, id);
            session.getTransaction().commit();
        } finally {
            session.close();
        }
        return persona;
    }

    public void eliminarPersona(int id) {
        Session session = factory.getCurrentSession();
        try {
            session.beginTransaction();
            Persona persona = session.get(Persona.class, id);
            if (persona != null) {
                session.delete(persona);
            }
            session.getTransaction().commit();
        } finally {
            session.close();
        }
    }

    public void actualizarPersonaPorId(int id, Persona persona) {
        Session session = factory.getCurrentSession();
        try {
            session.beginTransaction();

            if (id != null) {
                persona.setId(id);
                session.update(persona);
            }
            session.getTransaction().commit();
        } finally {
            session.close();
        }
    }

    public void cerrar() {
        factory.close();
    }
}
```

#### Explicación del Repositorio

- `guardarPersona`: Este método recibe un objeto Persona y lo guarda o actualiza en la base de datos usando el método saveOrUpdate().
- `obtenerPersonaPorId`: Este método utiliza el método session.get() para obtener una persona por su id y devuelve el objeto recuperado.
- `eliminarPersona`: Este método elimina una persona de la base de datos dado su id utilizando session.delete().
- `actualizarPersonaPorId`: Este método actualiza una persona teniendo como referencia el id.
- `cerrar`: Este método cierra la sesión de Hibernate.

#### Ventajas de Usar Repositorios

- **Encapsulación del acceso a datos**: Los repositorios encapsulan la lógica de acceso a datos, lo que facilita su mantenimiento y hace que el código de la aplicación sea más limpio y comprensible.
- **Facilita las pruebas**: Al centralizar las operaciones de persistencia en un solo lugar, es más fácil realizar pruebas unitarias de los métodos de acceso a datos.
- **Separación de responsabilidades**: Los repositorios permiten separar la lógica de la base de datos de la lógica de negocio, lo que mejora la modularidad y la reutilización del código.
- **Control de transacciones**: Los repositorios permiten gestionar las transacciones de manera eficiente, asegurando que las operaciones de la base de datos se realicen de forma atómica.

Se hace evidente que los repositorios en Hibernate son fundamentales para desarrollar aplicaciones bien estructuradas, ya que proporcionan una capa de abstracción que permite gestionar las operaciones de persistencia sin exponer directamente la lógica de la base de datos en la capa de negocio. Al implementar un repositorio, se obtiene un código más limpio, modular y fácil de mantener, lo que facilita el desarrollo de aplicaciones escalables y robustas.

# 13. Relaciones 1-N en Hibernate (CEe)

En este apartado, exploraremos cómo modelar una relación **1-N** (uno a muchos) entre las entidades **Empresa** y **Persona** en Hibernate. En este ejemplo, una **Empresa** puede tener muchas **Personas** asociadas, pero una **Persona** solo puede estar asociada a una **Empresa**.

### 13.1. ¿Qué es una Relación 1-N?

Una relación **1-N** (uno a muchos) significa que una entidad **1** está relacionada con muchas instancias de otra entidad **N**. En este caso, una **Empresa** puede tener muchos **Empleados** (`Persona`), pero una **Persona** solo puede estar asociada a una **Empresa**.

### 13.2. Definición de las Clases Java

#### Clase Empresa (Entidad 1)

La clase `Empresa` representa la empresa que puede tener muchas **Personas** asociadas. En esta clase, la relación con `Persona` será modelada como una colección de objetos `Persona`.

```java
@Entity
@Table(name = "empresa")
public class Empresa {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "nombre")
    private String nombre;

    @OneToMany(mappedBy = "empresa", cascade = CascadeType.ALL)
    private List<Persona> personas;

    // Constructores, getters y setters
    public Empresa() {}

    public Empresa(String nombre) {
        this.nombre = nombre;
    }

    public void addPersona(Persona persona) {
        if (personas == null) {
            personas = new ArrayList<>();
        }
        personas.add(persona);
        persona.setEmpresa(this);  // Relación bidireccional
    }

    public List<Persona> getPersonas() {
        return personas;
    }

    public void setPersonas(List<Persona> personas) {
        this.personas = personas;
    }
}
```

- **@OneToMany(mappedBy = "empresa")**: Esta anotación indica que la relación entre `Empresa` y `Persona` es de uno a muchos. El campo `empresa` en la clase `Persona` mantiene la relación.
- **cascade = CascadeType.ALL**: Indica que las operaciones de persistencia sobre `Empresa` (como insert, update, delete) también se aplicarán automáticamente a las `Personas` relacionadas.

#### Clase Persona (Entidad N)

La clase `Persona` representa a una persona (empleado) que puede estar asociada a una sola **Empresa**. En esta clase, la relación con **Empresa** será modelada como una clave foránea (`empresa_id`), que apunta a la empresa a la que pertenece la persona.

```java
@Entity
@Table(name = "persona")
public class Persona {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "nombre")
    private String nombre;

    @ManyToOne
    @JoinColumn(name = "empresa_id")
    private Empresa empresa;

    // Constructores, getters y setters
    public Persona() {}

    public Persona(String nombre) {
        this.nombre = nombre;
    }

    public void setEmpresa(Empresa empresa) {
        this.empresa = empresa;
    }

    public Empresa getEmpresa() {
        return empresa;
    }
}
```

- **@ManyToOne**: Esta anotación indica que muchas instancias de `Persona` pueden estar relacionadas con un solo `Empresa`.
- **@JoinColumn(name = "empresa_id")**: Especifica la columna que almacena la clave foránea en la tabla `persona`, que hace referencia a la empresa al que pertenece esa persona.

### 13.3. Persistencia de las Entidades

Ahora que tenemos las clases mapeadas, vamos a ver cómo realizar operaciones de persistencia en una relación **1-N**.

#### Insertar una Empresa con Personas

En este caso, creamos una **Empresa** y le asignamos varias **Personas**. Al guardar la **Empresa**, las **Personas** se guardan automáticamente gracias al `CascadeType.ALL`.

```java
public void agregarEmpresaConPersonas() {
    Session session = factory.getCurrentSession();
    try {
        session.beginTransaction();

        // Crear una empresa
        Empresa empresa = new Empresa("TechCorp");

        // Crear personas y agregarlas a la empresa
        Persona persona1 = new Persona("Juan Pérez");
        Persona persona2 = new Persona("Ana García");

        empresa.addPersona(persona1);
        empresa.addPersona(persona2);

        // Guardar la empresa y las personas (gracias al cascade)
        session.save(empresa);

        session.getTransaction().commit();
    } finally {
        session.close();
    }
}
```

#### Consultar una Empresa con sus Personas

Para obtener una **Empresa** y todas las **Personas** asociadas, utilizamos el método `get()` de Hibernate o una consulta HQL, que nos permite obtener la **Empresa** y recorrer la colección de **Personas** asociadas.

```java
public void obtenerEmpresaConPersonas(int empresaId) {
    Session session = factory.getCurrentSession();
    try {
        session.beginTransaction();

        // Obtener empresa por ID
        Empresa empresa = session.get(Empresa.class, empresaId);

        // Mostrar personas de la empresa
        System.out.println("Empleados de la empresa " + empresa.getNombre() + ":");
        for (Persona persona : empresa.getPersonas()) {
            System.out.println(persona.getNombre());
        }

        session.getTransaction().commit();
    } finally {
        session.close();
    }
}
```

- Este método consulta la Empresa por su id y luego imprime los nombres de todas las Personas asociadas a esa Empresa.

#### Eliminar una Persona de una Empresa

Si necesitas eliminar una **Persona** de una **Empresa**, primero debes eliminarla de la lista de personas asociadas a la empresa y luego eliminarla de la base de datos.

```java
public void eliminarPersonaDeEmpresa(int empresaId, int personaId) {
    Session session = factory.getCurrentSession();
    try {
        session.beginTransaction();

        // Obtener la empresa por ID
        Empresa empresa = session.get(Empresa.class, empresaId);

        // Obtener la persona a eliminar
        Persona persona = session.get(Persona.class, personaId);

        // Eliminar la persona de la empresa
        empresa.getPersonas().remove(persona);
        session.delete(persona);  // Eliminar la persona de la base de datos

        session.getTransaction().commit();
    } finally {
        session.close();
    }
}
```

- Este método elimina una `Persona` de la base de datos y también la elimina de la lista de personas asociadas a la Empresa.

### 13.4. Consideraciones Finales

- La relación **1-N** entre **Empresa** y **Persona** se maneja en Hibernate utilizando las anotaciones `@OneToMany` en la **Empresa** y `@ManyToOne` en la **Persona**.
- Gracias a **CascadeType.ALL**, las operaciones de persistencia sobre **Empresa** también afectan a las **Personas** relacionadas.
- Este tipo de relaciones son comunes en sistemas empresariales donde una **Empresa** tiene muchos **Empleados** (`Personas`).
- Recuerda que cada clase correspondiente a una entidad nueva con la que trabajes debe ser añadida al archivo `hibernate.cfg.xml`.

# 14. Relaciones ManyToMany (CEe)

En las bases de datos, una relación **many-to-many** (muchos a muchos) es un tipo de relación en la que varios registros de una tabla pueden estar relacionados con varios registros de otra tabla. Este tipo de relación es común cuando hay una asociación recíproca entre dos entidades, y cada entidad puede estar asociada con múltiples registros de la otra entidad. Un ejemplo típico es una relación entre `Personas` y `Empresas`, donde una persona puede estar inscrito en varias empresas y, a su vez, una empresa puede tener múltiples personas.

En Hibernate, una relación **many-to-many** se mapea utilizando la anotación `@ManyToMany`. Hibernate se encarga de gestionar la tabla intermedia que representa la relación entre las dos entidades. En este apartado, exploraremos cómo definir y gestionar relaciones **many-to-many** utilizando Hibernate.

## 14.1. Conceptos Clave

### ¿Qué es una relación ManyToMany?

Una relación **many-to-many** implica que múltiples instancias de una entidad están relacionadas con múltiples instancias de otra entidad. En la base de datos, esta relación generalmente se modela mediante una tabla intermedia, que contiene las claves foráneas de las dos tablas relacionadas.

Por ejemplo:
- Una **Persona** puede trabajar en varias **Empresas**.
- Una **Empresa** puede tener varias **Personas** trabajando en ella.

En la base de datos, se puede crear una tabla intermedia `Persona_Empresa` para almacenar las relaciones entre las `Personas` y las `Empresas`.

## Ejemplo con `Persona` y `Empresa`

Para ilustrar cómo se define una relación **many-to-many** en Hibernate, usaremos el siguiente ejemplo:

- **Persona**: Representa a una persona.
- **Empresa**: Representa una empresa.
- Cada **Persona** puede trabajar en varias **Empresas**, y cada **Empresa** puede tener varias **Personas** trabajando en ella.

### 1. Definir las Clases `Persona` y `Empresa`

Primero, definimos las clases `Persona` y `Empresa` que estarán relacionadas mediante una relación **many-to-many**.

#### Clase `Persona`:

La clase `Persona` tiene una relación con varias entidades de `Empresa`, utilizando una colección para almacenar estas relaciones.

```java
import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
public class Persona {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nombre;
    
    @ManyToMany
    @JoinTable(
      name = "persona_empresa", 
      joinColumns = @JoinColumn(name = "persona_id"), 
      inverseJoinColumns = @JoinColumn(name = "empresa_id"))
    private Set<Empresa> empresas = new HashSet<>();
    
    // Constructor, getters y setters
}
```

#### Clase `Empresa`:

La clase `Empresa` también tiene una colección que almacena las `Personas` que trabajan en ella. Esta colección mapea la relación de vuelta desde el lado de la empresa hacia las personas asociadas.

```java
import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
public class Empresa {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nombre;

    @ManyToMany(mappedBy = "empresas")
    private Set<Persona> personas = new HashSet<>();
    
    // Constructor, getters y setters
}
```

### 2. Explicación de las Anotaciones

- **@ManyToMany**: En ambas clases (`Persona` y `Empresa`), usamos la anotación `@ManyToMany` para indicar que existe una relación **many-to-many** entre las dos entidades.
- **@JoinTable**: Esta anotación se usa para definir la tabla intermedia que almacena las relaciones entre las dos entidades. En nuestro caso, la tabla intermedia se llama `persona_empresa`, y tiene dos claves foráneas: `persona_id` y `empresa_id`.
- **@JoinColumn**: Especifica la columna que se utilizará como clave foránea en la tabla intermedia.
- **mappedBy**: En la clase `Empresa`, usamos `mappedBy = "empresas"` para indicar que la relación se maneja desde la clase `Persona`.
- La razón por la que no es necesario agregar una anotación `@JoinTable` en la clase `Empresa` cuando ya la tienes en la clase Persona se debe al uso de la propiedad `mappedBy` en la relación bidireccional en Hibernate. Cuando trabajamos con relaciones many-to-many en Hibernate, es común que la relación esté representada en una sola tabla intermedia que conecta las dos entidades. Hibernate maneja esto con el uso de las anotaciones `@ManyToMany` y `@JoinTable`, pero solo es necesario especificar `@JoinTable` en una de las dos entidades, ya que la relación es simétrica. Es decir, ambas entidades están relacionadas de manera equivalente, pero no necesitan definir las relaciones de manera duplicada.

### 3. Crear una Persona y Asignarla a Empresas

En este paso, puedes crear una nueva `Persona` y asignarle varias `Empresas` a la vez. Hibernate se encarga de gestionar la inserción en la tabla intermedia `Persona_Empresa`.

```java
public void agregarPersonaAEmpresas() {
    Session session = factory.getCurrentSession();
    try {
        session.beginTransaction();

        // Crear una nueva Persona
        Persona persona = new Persona("Juan Pérez");

        // Crear nuevas Empresas
        Empresa empresa1 = new Empresa("Google");
        Empresa empresa2 = new Empresa("Microsoft");

        // Relacionar Persona con Empresas
        persona.getEmpresas().add(empresa1);
        persona.getEmpresas().add(empresa2);

        // Guardar Persona (y las Empresas asociadas)
        session.save(persona);

        session.getTransaction().commit();
    } finally {
        session.close();
    }
}
```

### 4. Recuperar las Empresas de una Persona

Para obtener las empresas en las que trabaja una persona, simplemente recuperamos la `Persona` y accedemos a su conjunto de `Empresas`.

```java
public void obtenerEmpresasDePersona(Long personaId) {
    Session session = factory.getCurrentSession();
    try {
        session.beginTransaction();

        // Obtener persona por id
        Persona persona = session.get(Persona.class, personaId);

        if (persona != null) {
            System.out.println("Empresas de " + persona.getNombre() + ":");
            for (Empresa empresa : persona.getEmpresas()) {
                System.out.println(empresa.getNombre());
            }
        }

        session.getTransaction().commit();
    } finally {
        session.close();
    }
}
```

### 5. Consultas SQL con Relaciones ManyToMany

Al usar Hibernate, no es necesario escribir consultas SQL manualmente para recuperar las entidades relacionadas. Sin embargo, Hibernate genera automáticamente consultas SQL detrás de escenas para gestionar la relación. Estas consultas pueden incluir la selección de registros en la tabla intermedia para recuperar los registros de ambas entidades.

Por ejemplo, cuando recuperamos una `Persona` con sus `Empresas`, Hibernate realiza la siguiente consulta SQL:

```sql
SELECT * FROM persona WHERE id = ?;
SELECT * FROM empresa WHERE id IN (?, ?);
SELECT * FROM persona_empresa WHERE persona_id = ?;
```

### 6. Consideraciones Finales

Las relaciones **many-to-many** son muy comunes en bases de datos, e Hibernate facilita su implementación. La clave para definir estas relaciones en Hibernate es la anotación `@ManyToMany` y la tabla intermedia gestionada automáticamente. Sin embargo, es importante tener en cuenta las siguientes consideraciones:

- **Cuidado con el rendimiento**: Las relaciones **many-to-many** pueden generar una gran cantidad de consultas a la base de datos, especialmente cuando se manejan grandes volúmenes de datos. Es recomendable usar el mecanismo de **caché** de Hibernate o técnicas como **fetching** para optimizar el rendimiento.
- **Eliminación de relaciones**: Al eliminar una de las entidades relacionadas (por ejemplo, eliminar una `Persona`), es importante tener cuidado de no dejar registros huérfanos en la tabla intermedia.


