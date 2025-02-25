---
layout: default
title: UD04. Definición, Manipulación y Control de Datos.
permalink: /bases-de-datos/ud04/teoria/
author: Teo Rojas
date: Febrero 2025
abstract: Sinopsis de la unidad 05
---

# Índice

1. [Introducción a MySQL](#1-introducción-a-mysql)  
   1.1. [Instalación de MySQL](#11-instalación-de-mysql)  
2. [Lenguaje de Definición de Datos (DDL) en MySQL](#2-lenguaje-de-definición-de-datos-ddl-en-mysql)  
   2.1. [Creación de bases de datos en MySQL](#21-creación-de-bases-de-datos-en-mysql)  
   2.2. [Modificación de bases de datos en MySQL](#22-modificación-de-bases-de-datos-en-mysql)  
   2.3. [Borrado de bases de datos en MySQL](#23-borrado-de-bases-de-datos-en-mysql)  
   2.4. [Creación de tablas en MySQL](#24-creación-de-tablas-en-mysql)  
   2.5. [Creacion de tablas con foraneidad](#25-creacion-de-tablas-con-foraneidad)  
   2.6. [Consulta de la estructura de una tabla](#26-consulta-de-la-estructura-de-una-tabla)  
   2.7. [Modificación de tablas en MySQL](#27-modificación-de-tablas-en-mysql)  
   2.8. [Borrado de tablas en MySQL](#28-borrado-de-tablas-en-mysql)  
   2.9. [Renombrado de tablas en MySQL](#29-renombrado-de-tablas-en-mysql)  
   2.10. [Implementación de restricciones en MySQL](#210-implementación-de-restricciones-en-mysql)  
3. [Lenguaje de Manipulación de Datos (DML) en MySQL](#3-lenguaje-de-manipulación-de-datos-dml-en-mysql)  
   3.1. [La sentencia INSERT](#31-la-sentencia-insert)  
   3.2. [La sentencia UPDATE](#32-la-sentencia-update)  
   3.3. [La sentencia DELETE](#33-la-sentencia-delete)  
4. [Control de datos y transacciones](#4-control-de-datos-y-transacciones)  
   4.1. [Transacciones y procesamiento de transacciones](#41-transacciones-y-procesamiento-de-transacciones)  
   4.2. [Políticas de bloqueo y control de concurrencia](#42-políticas-de-bloqueo-y-control-de-concurrencia)  
   4.3. [Herramientas gráficas para la edición y control de datos](#43-herramientas-gráficas-para-la-edición-y-control-de-datos)

# 1. Introducción a MySQL

MySQL es uno de los sistemas gestores de bases de datos relacionales de código abierto más utilizados en el mundo. Basado en el lenguaje SQL, permite almacenar, organizar y recuperar información de forma eficiente mediante tablas interrelacionadas, lo que garantiza la integridad y consistencia de los datos. Su popularidad se debe a su robustez, versatilidad y facilidad de uso, lo que lo hace adecuado tanto para pequeñas aplicaciones web como para grandes sistemas empresariales.

El origen de MySQL se remonta a los años noventa, cuando fue desarrollado por Michael Widenius, Allan Larsson y David Axmark. A lo largo de su evolución, MySQL pasó a formar parte de MySQL AB, fue adquirida por Sun Microsystems y, posteriormente, por Oracle Corporation. A pesar de estos cambios en la propiedad, ha mantenido su esencia de ser un sistema eficiente y escalable, respaldado por una amplia comunidad de desarrolladores y usuarios.

Entre sus principales características destaca la posibilidad de elegir entre distintos motores de almacenamiento, como InnoDB—con soporte completo a transacciones y garantía de integridad referencial—y MyISAM, que ofrece mayor velocidad en operaciones de lectura. Además, su compatibilidad con diversos sistemas operativos y lenguajes de programación lo convierte en una opción versátil para integrar bases de datos en múltiples entornos.

MySQL resalta también por su equilibrio entre rendimiento y facilidad de administración, lo que facilita la puesta en marcha y el mantenimiento de proyectos, incluso para usuarios con conocimientos básicos en bases de datos.

## 1.1. Instalación de MySQL

La instalación de MySQL es un proceso sencillo y adaptable a diferentes sistemas operativos, ya sean basados en Unix (como Linux y macOS) o en Windows. Existen instaladores gráficos y paquetes precompilados que permiten configurar MySQL sin necesidad de ajustes complejos, lo que facilita el arranque rápido de proyectos.

Durante la instalación se establecen parámetros esenciales, tales como la configuración de la contraseña para el usuario root, la ubicación de los archivos de datos y las opciones básicas de seguridad. Una vez instalado, la configuración se gestiona a través de archivos específicos (por ejemplo, my.cnf en sistemas Unix o my.ini en Windows) que permiten ajustar parámetros relacionados con el rendimiento, la asignación de memoria y la selección del motor de almacenamiento.

Adicionalmente, herramientas de administración como phpMyAdmin ofrecen interfaces gráficas basadas en web que permiten gestionar la creación de bases de datos, definir tablas, establecer relaciones y ejecutar consultas SQL de forma interactiva. Este entorno facilita no solo la instalación y configuración inicial, sino también la administración diaria del sistema, ayudando a optimizar el rendimiento y mantener la integridad de los datos a medida que crecen las necesidades del proyecto.

### 1.1.1. Instalación de MysQL en Linux: Guía Paso a Paso

A continuación, se explica paso a paso cómo instalar y configurar MySQL en un sistema operativo Linux utilizando la terminal. Cada comando incluye una explicación de lo que hace:

1. **Actualizar la lista de paquetes disponibles**
    ```bash
    sudo apt update
    ```
    Este comando actualiza la base de datos local de paquetes disponibles, descargando la información más reciente sobre los paquetes y actualizaciones desde los repositorios configurados en tu sistema.

2. **Instalar actualizaciones del sistema**
    ```bash
    sudo apt upgrade
    ```
    Este comando instala las actualizaciones disponibles para los paquetes ya instalados en tu sistema. Esto es importante para asegurarte de que tu sistema esté en su versión más reciente y sea compatible con nuevas instalaciones.
    > Nota: Si se solicita confirmar la instalación de las actualizaciones, escribe "Y" y presiona Enter.

3. **Instalar el servidor MySQL**
    ```bash
    sudo apt install mysql-server
    ```
    Este comando descarga e instala el paquete de MySQL Server desde los repositorios. Este es el software que se encargará de gestionar las bases de datos en tu sistema.

4. **Acceder a la consola de MySQL**
    ```bash
    sudo mysql
    ```
    Este comando te permite acceder a la consola de MySQL como el usuario root (administrador), utilizando permisos elevados necesarios para interactuar con el servidor de bases de datos.

5. **Interacción con el Prompt de MySQL**
    El prompt de MySQL proporciona información en tiempo real sobre el estado de la ejecución de comandos, ayudando al usuario a comprender qué está ocurriendo. Por ejemplo:

    ```sql
    ->: Indica que se espera la siguiente línea del comando.
    ': Señala que se espera el cierre de una comilla simple.
    ": Señala que se espera el cierre de una comilla doble.
    mysql>: Indica que el sistema está listo para recibir una nueva consulta.
    ```

    Estas indicaciones facilitan la interacción con la consola, permitiendo detectar errores de sintaxis y confirmar que los comandos se han ejecutado correctamente.

5. **Configurar la contraseña del usuario root**
    Dentro de la consola de MySQL, escribe el siguiente comando:
    ```sql
    ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '8888';
    ```
    Este comando modifica el usuario root para que utilice el método de autenticación clásico de MySQL y establece la contraseña "8888".
    - `ALTER USER`: Modifica un usuario existente.
    - `'root'@'localhost'`: Especifica el usuario root y su acceso local.
    - `IDENTIFIED WITH mysql_native_password`: Cambia el método de autenticación al método clásico.
    - `BY '8888'`: Asigna la contraseña 8888 al usuario root.


6. **Salir de la consola MySQL**
    
    Escribe `exit`y presiona Enter para salir de la consola.
    ```sql
    exit
    ```

7. **Verificar el acceso a MySQL**
    Ahora, puedes ingresar a MySQL usando el siguiente comando:
    ```bash
    mysql -u root -p
    ```
    Este comando lanza el cliente de MySQL e indica que iniciarás sesión como el usuario `root`. El parámetro -p solicita que ingreses la contraseña, que en este caso es '8888'.

### 1.1.2. Instalación de phpMyAdmin en Linux: Guía Paso a Paso

Estos son los pasos que seguiste para instalar y configurar phpMyAdmin utilizando solo cuatro comandos. Cada uno se explica detalladamente para que comprendas su función.

1. **Instalar phpMyAdmin**
    ```bash
    sudo apt install phpmyadmin
    ```
    Este comando descarga e instala phpMyAdmin junto con las dependencias necesarias. Durante la instalación se te pedirá:
    - Seleccionar apache2 como el servidor web (usa las teclas de flecha y presiona Enter).
    - Si se te pregunta si deseas configurar phpMyAdmin con dbconfig-common, selecciona Sí.
    - Configurar una contraseña para phpMyAdmin o utilizar la misma que configuraste para MySQL.

2. **Copiar el archivo de configuración de phpMyAdmin a Apache**
    ```bash
    sudo cp /etc/phpmyadmin/apache.conf /etc/apache2/conf-available/phpmyadmin.conf
    ```
    Este comando copia el archivo de configuración predeterminado de phpMyAdmin a la carpeta de configuraciones disponibles de Apache (`/etc/apache2/conf-available/`). Esto permite que Apache reconozca y gestione correctamente phpMyAdmin como un servicio.

3. **Habilitar la configuración de phpMyAdmin en Apache**
    ```bash
    sudo a2enconf phpmyadmin
    ```
    Este comando habilita el archivo de configuración de phpMyAdmin en Apache para que esté activo. Apache utilizará esta configuración para gestionar cómo sirve phpMyAdmin.

4. **Recargar Apache**
    ```bash
    systemctl reload apache2
    ```
    Este comando recarga la configuración de Apache para que los cambios realizados (la habilitación de phpMyAdmin) surtan efecto.

5. **Acceder a phpMyAdmin**
    Para acceder a la interfaz web de phpMyAdmin:
    1. Abre tu navegador y ve a: http://localhost/phpmyadmin
    2. Inicia sesión con tus credenciales de MySQL:
        - **Usuario**: root
        - **Contraseña**: La que configuraste al instalar MySQL (por ejemplo, 8888)

# 2. Lenguaje de Definición de Datos (DDL) en MySQL

El Lenguaje de Definición de Datos (DDL) es un subconjunto de SQL que se utiliza para definir, modificar y eliminar la estructura de objetos en una base de datos. En MySQL, el DDL se emplea para crear bases de datos, tablas, índices, vistas y otros objetos, permitiendo establecer de forma precisa el diseño lógico y físico de la información. Con DDL se pueden:

- Crear nuevos objetos (con el comando **CREATE**).
- Modificar la estructura de objetos existentes (con **ALTER**).
- Eliminar objetos que ya no se necesitan (con **DROP**).
- Borrar todos los registros de una tabla sin eliminar su estructura (con **TRUNCATE**).

El uso adecuado del DDL es fundamental para garantizar que la base de datos esté optimizada y cumpla con las reglas de integridad y consistencia de la información.

## 2.1. Creación de bases de datos en MySQL

La creación de una base de datos es el primer paso para definir el entorno donde se almacenarán y gestionarán los datos. En MySQL, esto se hace mediante el comando **CREATE DATABASE**, por tanto, para crear una base de datos, se utiliza la siguiente instrucción:

```sql
CREATE DATABASE nombre_de_la_base;
```

Por ejemplo, para crear una base de datos llamada DragonBallZ, se puede ejecutar:

```sql
CREATE DATABASE DragonBallZ;
```

Esta instrucción crea una base de datos vacía en el servidor MySQL. Es importante que el nombre de la base de datos sea único y siga las convenciones de nombres sin espacios ni caracteres especiales.

1. **Diferenciación entre mayúsculas y minúsculas**
    MySQL trata los comandos SQL de forma insensible a las mayúsculas y minúsculas, por lo que tanto SELECT como select se interpretan de igual manera. No obstante, la sensibilidad en cuanto a mayúsculas y minúsculas sí se aplica a los nombres de bases de datos y tablas, lo que puede variar según la configuración del sistema; por ejemplo, "BaseDatos" y "basedatos" podrían referirse a entidades diferentes.

    Aunque MySQL ignora las diferencias en la mayoría de los comandos, es recomendable escribir las palabras clave (como `SELECT`, `FROM`, etc.) en mayúsculas para facilitar la legibilidad y el mantenimiento del código.

1. **Opciones Adicionales: Juego de Caracteres e Intercalación**

    MySQL permite especificar opciones adicionales durante la creación de la base de datos, como el juego de caracteres y la intercalación, lo que es esencial para manejar correctamente datos en múltiples idiomas. Un ejemplo de cómo definir estas opciones es:

    ```sql
    CREATE DATABASE DragonBallZ
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_general_ci;
    ```
    En este ejemplo:
    - **CHARACTER SET utf8mb4**: Define el juego de caracteres para soportar una amplia variedad de símbolos, incluidos emojis.
    - **COLLATE utf8mb4_general_ci**: Establece la intercalación que determina cómo se comparan y ordenan los caracteres (en este caso, sin distinguir entre mayúsculas y minúsculas).

2. **Verificar la Creación de la Base de Datos**
    Para confirmar que la base de datos se ha creado correctamente, se puede listar todas las bases de datos en el servidor utilizando:

    ```sql
    SHOW DATABASES;
    ```
    Este comando mostrará una lista con todas las bases de datos disponibles, permitiéndote verificar que `DragonBallZ` aparece en la lista.

3. **Seleccionar la Base de Datos**
    Antes de empezar a trabajar con ella, es necesario seleccionar la base de datos recién creada con el comando `USE`:

    ```sql
    USE tienda_online;
    ```
    Este comando establece `DragonBallZ` como la base de datos activa, permitiendo la ejecución de comandos DDL y DML en su contexto.

4. **Cargar base de datos desde un archivo externo**
    Otra forma de ejecutar comandos SQL es almacenarlos en un fichero de texto y mandarlo a ejecución mediante el comando `source`, que recibe como parámetro un fichero de comandos y ejecuta uno por uno todos ellos. Por ejemplo, para cargar la base de datos `DragonBallZ` a partir de un script de creación guardado en /home/teo/crear_bdd_dragonBall.sql **y desde dentro de MySQL**, se utiliza el siguiente comando:

    ```sql
    source /home/teo/crear_bdd_dragonBall.sql;
    ```

    También es posible ejecutar los comandos de un fichero de texto desde la consola, esto es,  en modo batch, redirigiendo al cliente mysql un fichero de entrada. Esto es útil para tareas administrativas donde se ejecutan varios ficheros de comandos, además de otras tareas de mantenimiento del servidor a través de un shell script:

    ```bash
    mysql -u root -pPassUsuario <crear_bbdd_dragonBall.sql
    ```

5. **Crear Base de Datos Solo si No Existe (en scripts)**

    Una característica muy útil de MySQL es la posibilidad de utilizar la cláusula `IF NOT EXISTS` junto con el comando **CREATE DATABASE**. Esta opción permite que el servidor verifique si la base de datos ya existe antes de intentar crearla, lo que evita errores en scripts o procesos automatizados.

    Por ejemplo, para crear la base de datos **DragonBallZ** únicamente si aún no ha sido creada, se puede usar la siguiente instrucción:

    ```sql
    CREATE DATABASE IF NOT EXISTS DragonBallZ
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_general_ci;
    ```
    En este comando:
    - **`IF NOT EXISTS`**: Indica que MySQL debe comprobar la existencia de la base de datos DragonBallZ antes de crearla. Si la base de datos ya existe, el comando se ignora sin generar un error.
    - **`CHARACTER SET utf8mb4 y COLLATE utf8mb4_general_ci`**: Especifican el juego de caracteres y la intercalación que se utilizarán, asegurando que la base de datos maneje correctamente una amplia variedad de caracteres, incluidos los emojis, y que las comparaciones de texto sean consistentes.

    Esta opción es especialmente valiosa en entornos donde se ejecutan múltiples scripts de mantenimiento o instalación, ya que garantiza que la ejecución del script no se interrumpa por intentar recrear una base de datos que ya existe.

## 2.2. Modificación de bases de datos en MySQL

La modificación de una base de datos en MySQL implica realizar cambios en las configuraciones y propiedades de la base de datos sin necesidad de recrearla desde cero. Esto se logra mediante el uso del comando **ALTER DATABASE**, el cual permite ajustar aspectos como el juego de caracteres, la regla de comparación (collation) y otras opciones de configuración.

En este apartado, utilizaremos la base de datos **DragonBallZ** como ejemplo para ilustrar estas modificaciones.

1. **Instrucción ALTER DATABASE**

    La instrucción **ALTER DATABASE** se utiliza para modificar las propiedades de una base de datos existente. Su sintaxis básica es la siguiente:

    ```sql
    ALTER DATABASE nombre_de_la_base_de_datos
    [CHARACTER SET nombre_del_juego_de_caracteres]
    [COLLATE nombre_de_la_regla_de_comparacion];
    ```

    Esta sintaxis permite cambiar el juego de caracteres y la intercalación (collation) de la base de datos.

2. **Ejemplos de Modificación**

    - **Modificar juego de caracteres e intercalación**. Para cambiar el juego de caracteres y la intercalación predeterminados de la base de datos DragonBallZ, se utiliza el siguiente comando:
    ```sql
    ALTER DATABASE DragonBallZ
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;
    ```
    Este comando actualiza las propiedades de la base de datos para que, de forma predeterminada, las nuevas tablas creadas en **DragonBallZ** hereden el juego de caracteres `utf8mb4` y la intercalación `utf8mb4_unicode_ci`. Esto es fundamental para el manejo correcto de datos en múltiples idiomas y para soportar una amplia gama de caracteres especiales, incluidos los emojis.

    - **Modificar únicamente el juego de caracteres**. Si se desea modificar solo el juego de caracteres, se puede ejecutar:
    ```sql
    ALTER DATABASE DragonBallZ
    CHARACTER SET utf8mb4;
    ```
    Con este comando se cambia el conjunto de caracteres predeterminado a `utf8mb4`, lo que permite almacenar una amplia gama de caracteres Unicode, ideal para textos en varios idiomas, incluido el japonés.

    - **Modificar únicamente la regla de comparación**. Para cambiar solo la intercalación (la forma en que se comparan y ordenan los caracteres) de la base de datos, se utiliza:
    ```sql
    ALTER DATABASE DragonBallZ
    COLLATE utf8mb4_unicode_ci;
    ```
    Este comando ajusta la regla de comparación a `utf8mb4_unicode_ci`, la cual es sensible a mayúsculas y minúsculas de forma adecuada para múltiples idiomas.

3. **Consideraciones Adicionales**
    Al modificar una base de datos en MySQL es importante tener en cuenta lo siguiente:

    - **Impacto en las tablas y datos**: Los cambios en el juego de caracteres y la intercalación pueden afectar cómo se almacenan, comparan y ordenan los datos existentes. Es fundamental probar estos cambios en un entorno de desarrollo antes de aplicarlos en producción.
    - **Otras opciones de configuración**: Además de modificar el juego de caracteres y la intercalación, la instrucción ALTER DATABASE puede utilizarse para ajustar otras configuraciones o establecer privilegios de acceso específicos.
    - **Copia de seguridad**: Antes de realizar modificaciones importantes, se recomienda hacer una copia de seguridad completa de la base de datos DragonBallZ.
    - **Verificación**: Siempre es buena práctica listar las bases de datos con SHOW DATABASES; para confirmar los cambios realizados.
    
    Con estos comandos y consideraciones, puedes adaptar y optimizar la configuración de la base de datos DragonBallZ sin necesidad de recrearla desde cero, asegurando que se cumplan los requisitos de compatibilidad y rendimiento que requiere tu aplicación.  

## 2.3. Borrado de bases de datos en MySQL

El borrado de una base de datos en MySQL es una operación crítica e irreversible, ya que elimina de forma permanente la estructura y todos los datos almacenados en dicha base. Esta tarea se realiza mediante el comando **`DROP DATABASE`**, que debe usarse con precaución y siempre después de haber realizado una copia de seguridad adecuada. Para borrar una base de datos, se utiliza la siguiente instrucción:

```sql
DROP DATABASE DragonBallZ;
```
En este ejemplo, el comando elimina la base de datos `DragonBallZ` junto con todas sus tablas, vistas, índices, procedimientos almacenados y cualquier otro objeto asociado. Por lo tanto hay que tener en cuenta algunas consideraciones importantes:
- **Irreversibilidad**: Una vez ejecutado el comando, la eliminación es definitiva. Es fundamental contar con una copia de seguridad actualizada antes de proceder.
- **Verificación Previa**: Se recomienda listar todas las bases de datos con `SHOW DATABASES;` para confirmar que se está eliminando la base de datos correcta.
- **Impacto en las Aplicaciones**: Asegúrate de que ninguna aplicación o proceso dependa de la base de datos a borrar para evitar interrupciones o pérdida de funcionalidad.
- **Entorno de Producción**: En sistemas productivos, es aconsejable realizar esta operación en un entorno de pruebas o bajo la supervisión de un administrador de bases de datos para minimizar riesgos.

Después de ejecutar este comando, el prompt de MySQL proporcionará mensajes de retroalimentación que confirmen la eliminación. Si vuelves a listar las bases de datos usando `SHOW DATABASES;`, notarás que `DragonBallZ` ya no aparece en la lista.

Con estas precauciones, el borrado de la base de datos `DragonBallZ` se puede realizar de forma segura y controlada.

## 2.4. Creación de tablas en MySQL

La creación de tablas es un proceso fundamental en el diseño de bases de datos, ya que define la estructura en la que se almacenarán los datos. En MySQL, el comando **`CREATE TABLE`** permite definir el esquema de cada tabla, especificando los nombres de las columnas, sus tipos de datos, restricciones y claves (como la clave primaria o las claves foráneas). La sintaxis general para crear una tabla es la siguiente:

```sql
CREATE TABLE [IF NOT EXISTS] nombre_de_la_tabla (
    columna1 tipo_de_dato [restricciones],
    columna2 tipo_de_dato [restricciones],
    ...
    [restricciones_adicionales]
);
```
- **`IF NOT EXISTS`**: Opcional, evita errores si la tabla ya existe.
- **`nombre_de_la_tabla`**: Es el nombre que identificará a la tabla.
- **`tipo_de_dato`**: Especifica el tipo de dato que se almacenará (por ejemplo, INT, VARCHAR, DATE, etc.).
- **`restricciones`**: Pueden incluir NOT NULL, UNIQUE, DEFAULT, entre otras.
- **`restricciones_adicionales`**: Especificaran otros tipos de restricciones como foraneidad, etc (se verá en el apartado 2.5. Creación de tablas con foraneidad).

Considerando la base de datos de ejemplo **DragonBallZ**, imaginemos que queremos crear una tabla para almacenar información sobre personajes de la serie. La tabla podría incluir columnas para el identificador, el nombre del personaje, su raza y su nivel de poder. Primero, seleccionamos la base de datos:

```sql
USE DragonBallZ;
```

A continuación, creamos la tabla **Personajes**:

```sql
CREATE TABLE IF NOT EXISTS Personajes (
    id INT AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    raza VARCHAR(50),
    nivel_poder INT,
    PRIMARY KEY (id)
);
```

En este ejemplo:

- **`id`**: Es un entero autoincremental que sirve como clave primaria para identificar de forma única cada registro.
- **`nombre`**: Es una cadena de hasta 50 caracteres y no puede ser nula, garantizando que cada personaje tenga un nombre definido.
- **`raza`**: Es una cadena que almacena la raza del personaje (por ejemplo, Saiyajin, Humano, Namekiano, etc.).
- **`nivel_poder`**: Es un entero que puede representar el poder o nivel del personaje.
- Se utiliza la opción **`IF NOT EXISTS`** para evitar errores en caso de que la tabla ya exista.

1. **Tipos de datos**
    MySQL admite una variedad de tipos de datos que pueden utilizarse para definir las columnas de una tabla. Aunque se verán más adelante de forma más completa, como aperitivo debes saber que algunos de los tipos de datos más comunes son:

    - **Enteros**: `INT`, `BIGINT`, `SMALLINT`, etc.
    - **Decimales**: `DECIMAL`, `FLOAT`, `DOUBLE`, etc.
    - **Cadenas de Caracteres**: `VARCHAR`, `CHAR`, `TEXT`, etc.
    - **Fechas y Tiempos**: `DATE`, `DATETIME`, `TIMESTAMP`, etc.
    - **Valores Booleanos**: `BOOL`, `BOOLEAN`.

2. **Tipos de restricciones**    
    Las restricciones se utilizan para aplicar reglas adicionales a las columnas de una tabla. Aunque se verán más adelante de forma más completa, como aperitivo debes saber algunas restricciones comunes:

    - **Clave Primaria** (`PRIMARY KEY`): Identifica de manera única cada fila de la tabla y garantiza que no haya valores duplicados en la columna especificada como clave primaria.
    - **Clave Foránea** (`FOREIGN KEY`): Establece una relación entre dos tablas, especificando que los valores de una columna de una tabla deben coincidir con los valores de otra columna en otra tabla.
    - **Restricciones de Unicidad** (`UNIQUE`): Garantiza que no haya valores duplicados en la columna especificada.
    - **Restricciones de Comprobación** (`CHECK`): Permite especificar una condición que deben cumplir los valores de una columna.

3. **Ejemplo**
    A continuación se muestra un ejemplo de creación de una tabla simple en MySQL. Creación de la tabla de Personajes:

    ```sql
    CREATE TABLE Personajes (
        id_personaje INT PRIMARY KEY,
        nombre VARCHAR(100),
        raza VARCHAR(50),
        nivel_poder INT,
        planeta_origen VARCHAR(100)
    );
    ```
    En este ejemplo, se crea una tabla llamada `Personajes` que almacena información sobre los personajes de Dragon Ball. La tabla tiene columnas para el ID del personaje, nombre, raza, nivel de poder y planeta de origen.

4. **Consideraciones Adicionales**
    - Antes de crear una tabla, es importante planificar la estructura de la misma, incluyendo todas las columnas necesarias y las restricciones aplicables.
    - Es posible modificar la estructura de una tabla existente utilizando la instrucción `ALTER TABLE`, que permite agregar, modificar o eliminar columnas, así como aplicar o quitar restricciones.
    - Al diseñar una base de datos, **es importante normalizar las tablas** para evitar la redundancia de datos y garantizar la integridad de los mismos.

## 2.5. Creacion de tablas con foraneidad

Cuando se diseña una base de datos relacional, es fundamental establecer relaciones entre las tablas para asegurar la integridad de los datos. Esto se logra mediante el uso de claves foráneas, que permiten vincular una columna (o conjunto de columnas) de una tabla con la clave primaria de otra. En este apartado, exploraremos en detalle cómo crear tablas con foraneidad, explicando conceptos como la integridad referencial y las opciones de `CASCADE` para operaciones de actualización y eliminación, utilizando ejemplos basados en la base de datos **DragonBallZ**.

Una **clave foránea** (`FOREIGN KEY`) es un atributo o conjunto de atributos en una tabla que hace referencia a la clave primaria de otra tabla. Su propósito es garantizar que el valor almacenado en la columna foránea exista en la tabla referenciada, manteniendo la integridad referencial de los datos. Esto significa que no se puede insertar un valor en la columna foránea si no existe en la clave primaria de la tabla padre. Por lo tanto, **es fundamental crear primero la tabla que contiene la clave primaria a la que se hará referencia, y luego crear la tabla que incorpora la clave foránea.s**.

La sintaxis básica para definir una clave foránea en el momento de crear una tabla es la siguiente:

```sql
CREATE TABLE nombre_tabla (
    columna1 tipo_de_dato [restricciones],
    columna2 tipo_de_dato [restricciones],
    ...
    FOREIGN KEY (columna_foranea) REFERENCES tabla_referencia(columna_referencia)
        [ON DELETE acción]
        [ON UPDATE acción]
)
```
- **`columna_foranea`**: Es la columna de la tabla actual que contendrá los valores que deben existir en la tabla referenciada.
- **tabla_referencia(`columna_referencia`)**: Es la tabla y columna (usualmente la clave primaria) a la que se hace referencia.
- **`ON DELETE` acción** y **`ON UPDATE` acción**: Son opciones que definen qué sucede cuando se elimina o actualiza un registro en la tabla referenciada.

1. **Opciones de Acción: `CASCADE`, `SET NULL`, `RESTRICT`, etc**
    Cuando se define una clave foránea, es posible especificar acciones para los eventos de eliminación y actualización en la tabla padre. Las opciones más comunes son:
    - `CASCADE`:
        - `ON DELETE CASCADE`: Si se elimina un registro en la tabla referenciada, se eliminarán automáticamente todos los registros de la tabla hija que dependen de ese registro.
        - `ON UPDATE CASCADE`: Si se actualiza el valor de la clave primaria en la tabla referenciada, el cambio se propagará automáticamente a la tabla hija.

    - `SET NULL`:
        - `ON DELETE SET NULL`: Si se elimina el registro en la tabla padre, el valor de la columna foránea en la tabla hija se establecerá en NULL (esto requiere que la columna foránea permita valores nulos).
        - `ON UPDATE SET NULL`: Si se actualiza la clave primaria, los valores correspondientes en la tabla hija se fijarán en NULL.

    - `RESTRICT`:
        - `ON DELETE RESTRICT` / `ON UPDATE RESTRICT`: Impide la eliminación o actualización en la tabla referenciada si existen registros relacionados en la tabla hija. Es la opción predeterminada en muchos casos.

    - `NO ACTION`: Similar a `RESTRICT`, pero se evalúa al final de la transacción.

2. **Ejemplo con la Base de Datos DragonBallZ**
    Supongamos que en nuestra base de datos DragonBallZ queremos gestionar dos tablas: una para almacenar información de los `Guerreros` y otra para registrar las `Peleas` en las que participan. En este ejemplo, cada pelea debe estar asociada a un solo guerrero, por lo que en la tabla de `Peleas` se establecerá una clave foránea que haga referencia a la clave primaria de la tabla `Guerreros`.

    Primero, se crea la tabla **Guerreros** con un identificador único para cada guerrero:

    ```sql
    CREATE TABLE IF NOT EXISTS Guerreros (
        id INT AUTO_INCREMENT,
        nombre VARCHAR(50) NOT NULL,
        raza VARCHAR(50),
        poder INT,
        PRIMARY KEY (id)
    );
    ```

    Ahora, creamos la tabla Peleas, que incluye una columna para referenciar el guerrero que participa en cada pelea. Además, utilizamos la opción `ON DELETE CASCADE` para que, si se elimina un guerrero, automáticamente se borren todas sus peleas registradas.

    ```sql
    CREATE TABLE IF NOT EXISTS Peleas (
        id INT AUTO_INCREMENT,
        fecha DATE NOT NULL,
        lugar VARCHAR(100),
        id_guerrero INT,
        resultado VARCHAR(20),
        PRIMARY KEY (id),
        FOREIGN KEY (id_guerrero) REFERENCES Guerreros(id)
            ON DELETE CASCADE
            ON UPDATE CASCADE
    );
    ```

    En este ejemplo:
    - La columna `id_guerrero` en la tabla `Peleas` es una clave foránea que hace referencia a la columna `id` de la tabla `Guerreros`.
    - La opción `ON DELETE CASCADE` asegura que si se elimina un guerrero, también se eliminarán todas las peleas en las que participaba.
    - La opción `ON UPDATE CASCADE` permite que, si se actualiza el identificador del guerrero (lo cual es poco común, pero posible en ciertos escenarios), el cambio se propague automáticamente a la tabla Peleas.

3. **Ventajas del Uso de Claves Foráneas**
    - Integridad Referencial: Garantiza que los datos relacionados entre tablas sean consistentes. No se podrán insertar valores en la columna foránea que no existan en la tabla padre.
    - Mantenimiento Simplificado: Con acciones en cascada, las modificaciones o eliminaciones en la tabla principal se propagan automáticamente, evitando registros huérfanos.
    - Claridad en el Modelo de Datos: Definir relaciones explícitas ayuda a documentar el modelo de la base de datos, facilitando su comprensión y mantenimiento.