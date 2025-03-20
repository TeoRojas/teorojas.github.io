---
layout: default
title: UD04. Definición, Manipulación y Control de Datos.
permalink: /bases-de-datos/ud04/teoria/
author: Teo Rojas
date: Febrero 2025
abstract: Sinopsis de la unidad 04
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
   2.9. [Implementación de restricciones en MySQL](#29-implementación-de-restricciones-en-mysql)  
3. [Lenguaje de Manipulación de Datos (DML) en MySQL](#3-lenguaje-de-manipulación-de-datos-dml-en-mysql)  
   3.1. [La sentencia INSERT](#31-la-sentencia-insert)  
   3.2. [La sentencia SELECT](#32-la-sentencia-select)     
   3.3. [La sentencia UPDATE](#33-la-sentencia-update)  
   3.4. [La sentencia DELETE](#34-la-sentencia-delete)  
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
- **`tipo_de_dato`**: Especifica el tipo de dato que se almacenará (por ejemplo, `INT`, `VARCHAR`, `DATE`, etc.).
- **`restricciones`**: Pueden incluir `NOT NULL`, `UNIQUE`, `DEFAULT`, entre otras.
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
    - **Enumeraciones**: Selección entre datos previamente establecidos (enumerados).

    - **Enteros**:
        - `INT`: Número entero estándar, ocupa 4 bytes. Almacena valores entre -2.147.483.648 y 2.147.483.647. Se usa para números enteros sin decimales.
        - `TINYINT`: Entero muy pequeño, generalmente usado para valores entre -128 y 127 o de 0 a 255 sin signo. Se utiliza frecuentemente para almacenar valores booleanos (0 y 1).
        - `SMALLINT`: Entero pequeño, valores desde -32.768 a 32.767 (con signo).
        - `MEDIUMINT`: Entero mediano, para valores entre -32,768 a 32,767 (aprox. 2 bytes).
        - `INT`: Entero estándar (más amplio), típicamente -2,147,483,648 a 2,147,483,647.
        - `BIGINT`: Entero muy grande, entre -9 quintillones a 9 quintillones aproximadamente.

    - **Decimales**:
        - `FLOAT`: Número con decimales de precisión sencilla. Apropiado para números aproximados o cálculos rápidos.
        - `DOUBLE`: Número flotante de doble precisión. Mayor precisión que FLOAT pero menor precisión exacta que DECIMAL.
        - `DECIMAL(M, D)`: Almacena números exactos con decimales. La precisión `M` es el número total de dígitos, y `D` es el número de decimales. Por ejemplo `precio DECIMAL(8,2) -- admitirá números como 999999.99`.   

    - **Cadenas de caracteres**:
        - `VARCHAR(n)`: El más común. Cadena de caracteres de longitud variable hasta un máximo `n`. Almacena solo el tamaño necesario.
        - `CHAR(n)`: Cadena de longitud fija. Si el dato insertado es más corto que el valor definido, se rellena con espacios. Ideal para cadenas cortas y constantes.
        - `TEXT`: Para textos largos de hasta 65,535 caracteres (64KB aprox.). Útil para almacenar párrafos o información textual extensa.
        - `MEDIUMTEXT/LONGTEXT`: Versiones ampliadas de TEXT para almacenar datos mucho más grandes (hasta varios GB).        

    - **Fechas y tiempos**:
        - `DATE`: Almacena fechas en formato AAAA-MM-DD (año, mes, día), sin hora. Ejemplo: "2025-03-10".
        - `DATETIME`: Almacena fecha y hora combinadas, por ejemplo: 2025-03-10 16:45:30. No se modifica al cambiar la zona horaria.
        - `TIMESTAMP`: Similar a DATETIME pero basado en el huso horario del servidor. Se actualiza automáticamente en inserciones o modificaciones si se configura.
        - `TIME`: Almacena únicamente horas, minutos y segundos (HH:MM:SS).
        - `YEAR`: Almacena solamente el año en formato YYYY o YY.

    - **Valores Booleanos**:
        - `BOOL` y `BOOLEAN`: En realidad no son tipos de datos independientes, sino alias de `TINYINT(1)`. Almacenan los valores 0 (falso) o 1 (verdadero). 

    - **Tipos de datos `ENUM` (enumeraciones)**: 
        - El tipo de dato `ENUM` permite definir una columna que acepta únicamente un conjunto específico y limitado de valores predefinidos, garantizando que los datos almacenados sean válidos y coherentes. 
  
    - **Ejemplo de uso**:
        ```sql
        CREATE TABLE guerrero_z (
            id INT PRIMARY KEY AUTO_INCREMENT,             -- Identificador único de cada guerrero
            nombre VARCHAR(50) NOT NULL,                   -- Nombre del personaje
            raza ENUM('Saiyan', 'Saiyan Elite', 'Namekiano', 'Terrícola') NOT NULL, -- Seleccionar raza
            nivel_poder BIGINT UNSIGNED DEFAULT 0,         -- Nivel de poder actual
            fecha_nacimiento DATE,                         -- Fecha de nacimiento del personaje
            ultima_transformacion DATETIME,                -- Última transformación importante
            creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Fecha de creación del registro
            esta_vivo BOOLEAN DEFAULT TRUE,                -- Indica si el personaje sigue vivo o muerto
            historia TEXT,                                 -- Breve historia o descripción
            tiene_esferas BOOL DEFAULT FALSE               -- Indica si posee Esferas del Dragón
        );
        ```     

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

4. **`SHOW CREATE TABLE`**
    El comando `SHOW CREATE TABLE` proporciona la instrucción SQL utilizada para crear la tabla, incluyendo todas sus columnas, tipos de datos, restricciones y claves. Su sintaxis es la siguiente:

    ```sql
    SHOW CREATE TABLE nombre_de_la_tabla;
    ```

    Y en el ejemplo de la tabla anterior quedaría así:

    ```sql
    SHOW CREATE TABLE Personajes;
    ```

    Resultando lo siguiente:

    ```sql
        CREATE TABLE Personajes (
        id_personaje INT PRIMARY KEY,
        nombre VARCHAR(100),
        raza VARCHAR(50),
        nivel_poder INT,
        planeta_origen VARCHAR(100)
    )ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
    ```

    El comando `SHOW CREATE TABLE nombre_de_la_tabla` es muy interesante porque permite conocer la estructura exacta de una tabla, incluyendo todas sus restricciones, lo que facilita la comprensión de su diseño y reglas de integridad. Además, proporciona información detallada sobre el motor de almacenamiento utilizado y la codificación de caracteres aplicada, aspectos fundamentales para garantizar la compatibilidad y el rendimiento de la base de datos.

    Este comando resulta especialmente útil cuando se necesita replicar tablas en otras bases de datos o generar respaldos de su estructura, asegurando que la definición original se mantenga intacta y pueda ser restaurada o reutilizada fácilmente.

5. **Consideraciones Adicionales**
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

## 2.6. Consulta de la estructura de una tabla 

Cuando se trabaja con bases de datos, es fundamental poder inspeccionar la estructura de las tablas para conocer sus columnas, tipos de datos, claves y restricciones. MySQL proporciona varios comandos para obtener información detallada sobre la estructura de una tabla, lo que facilita la administración y el mantenimiento de la base de datos.

A continuación, exploraremos las formas más comunes de consultar la estructura de una tabla en la base de datos **DragonBallZ**.

1. **El comando `DESCRIBE` (`DESC`)**

    El comando **`DESCRIBE`** (o su versión abreviada **`DESC`**) permite obtener información esencial sobre la estructura de una tabla, incluyendo los nombres de las columnas, tipos de datos, si permiten valores nulos, claves y valores predeterminados. Su sintaxis es la siguiente:

    ```sql
    DESCRIBE nombre_de_la_tabla;
    ```

    O de forma abreviada:

    ```sql
    DESC nombre_de_la_tabla;
    ```

    Por ejemplo, para observar la estructura de la tabla anterior `Guerreros`, se puede ejecutar:

    ```sql
    DESC Guerreros;
    ```

    Que tendrá la siguiente salida esperada:

    ```bash
    +--------+-------------+------+-----+---------+----------------+
    | Field  | Type        | Null | Key | Default | Extra          |
    +--------+-------------+------+-----+---------+----------------+
    | id     | int         | NO   | PRI | NULL    | auto_increment |
    | nombre | varchar(50) | NO   |     | NULL    |                |
    | raza   | varchar(50) | YES  |     | NULL    |                |
    | poder  | int         | YES  |     | NULL    |                |
    +--------+-------------+------+-----+---------+----------------+
    4 rows in set (0,00 sec)
    ```

    En este ejemplo, se muestra la estructura de la tabla `Guerreros`. La primera columna (`Field`) indica el nombre de la columna, seguida por el tipo de datos (`Type`), si la columna permite valores nulos (`Null`), si es una clave (`Key`), el valor predeterminado (`Default`) y cualquier información adicional (`Extra`).

    La consulta `DESCRIBE` es útil para comprender la estructura de una tabla en una base de datos, lo que facilita la escritura de consultas y la manipulación de los datos almacenados en ella.

    Es interesante además conocer que se puede preceder directamente la base de datos concatenándola con un punto, (obviando así el paso de `USE nombre_de_la_base_de_datos` antes) de la siguiente forma:

    ```sql
    DESCRIBE DragonBallZ.Personajes;
    ```
    
    Donde `DragonBallZ` sería el nombre de la base de datos y `Guerreros` el de la tabla correspondiente.

2. **El comando `SHOW COLUMNS`**

    El comando `SHOW COLUMNS` proporciona información detallada sobre las columnas de una tabla, similar a `DESC`, pero con algunas diferencias en la forma en que presenta los datos. Su sintaxis es la siguiente:

    ```sql
    SHOW COLUMNS FROM nombre_de_la_tabla;
    ```

    Ejemplo:

    ```sql
    SHOW COLUMNS FROM Guerreros;
    ```

    La salida será similar a la obtenida con DESC, mostrando información detallada de cada columna en la tabla Guerreros.

## 2.7. Modificación de tablas en MySQL

A lo largo del ciclo de vida de una base de datos, es común que surja la necesidad de modificar la estructura de las tablas para adaptarlas a nuevos requisitos. MySQL permite realizar estos cambios mediante la instrucción **`ALTER TABLE`**, la cual facilita la adición, eliminación o modificación de columnas, la gestión de claves primarias y foráneas, así como el ajuste de restricciones.

En este apartado, utilizando la base de datos **`DragonBallZ`** como ejemplo, exploraremos las distintas formas de modificar una tabla.

1. **Renombrar una tabla: `RENAME TABLE`**

    En MySQL, se puede renombrar una tabla utilizando la instrucción `ALTER TABLE` seguida de la cláusula `RENAME TO`. Esto permite cambiar el nombre de una tabla existente sin perder los datos que contiene. Obsérvese la siguiente sintaxis:

    ```sql
    ALTER TABLE nombre_tabla_antiguo
    RENAME TO nombre_tabla_nuevo;
    ```

    Donde `nombre_tabla_antiguo` es el nombre actual de la tabla y `nombre_tabla_nuevo` es el nuevo nombre que se desea asignar a la tabla.

    supóngase que se quiere renombrar la tabla `Tecnicas` a `Ataques` en la base de datos de `DragonBallZ`.

    ```sql
    ALTER TABLE Tecnicas
    RENAME TO Ataques;
    ```

    Después de ejecutar la instrucción `ALTER TABLE`, la tabla `Tecnicas` habrá sido renombrada a `Ataques`.

    ```sql
    SHOW TABLES;
    +-----------------------+
    | Tables_in_DragonBallZ |
    +-----------------------+
    | Personajes            |
    | Ataques               |
    | Torneos               |
    | Razas                 |
    +-----------------------+
    ```

    Como resultado, la tabla `Tecnicas` ahora se mostrará como `Ataques` en la lista de tablas de la base de datos `DragonBallZ`.


1. **Agregar una nueva columna: `ADD COLUMN`**

    Para agregar una nueva columna a una tabla existente, se utiliza la instrucción `ALTER TABLE` junto con la instrucción `ADD COLUMN` con siguiente sintaxis:

    ```sql
    ALTER TABLE nombre_tabla
    ADD nombre_columna tipo_dato [restricciones];
    ```

    En nuestro ejemplo podría ser:

    ```sql
    ALTER TABLE Guerreros
    ADD COLUMN nivel INT DEFAULT 1;
    ````

    Este comando añade la columna `nivel` con un valor por defecto de 1.

    Por defecto, la nueva columna se añadirá al final de la tabla. Sin embargo, es posible modificar su ubicación según sea necesario. Para situarla en la primera posición, se puede añadir la cláusula `FIRST` al final del comando. Alternativamente, si se desea que la nueva columna aparezca inmediatamente después de una columna específica, se puede utilizar la cláusula `AFTER nombre_columna_previa`.

    ```sql
    ALTER TABLE Guerreros ADD COLUMN transformaciones INT AFTER raza;
    ```

2. **Modificar una columna existente: `MODIFY COLUMN`**

    Si necesitamos cambiar el tipo de dato o las restricciones de una columna, utilizamos MODIFY COLUMN con la siguiente sintaxis:

    ```sql
    ALTER TABLE nombre_tabla
    MODIFY COLUMN nombre_columna nuevo_tipo_dato [nuevas_restricciones];
    ```

    Por ejemplo, suponga que se quiere modificar la columna `nivel_poder` en la tabla `Personajes` para cambiar su tipo de datos de `INT` a `DECIMAL`.

    ```sql
    ALTER TABLE Personajes
    MODIFY COLUMN nivel_poder DECIMAL(10,2);
    ```

    Resultado esperado:

    ```sql
    +----------------+---------------+------+-----+---------+-------+
    | Field          | Type          | Null | Key | Default | Extra |
    +----------------+---------------+------+-----+---------+-------+
    | id_personaje   | int           | NO   | PRI | NULL    |       |
    | nombre         | varchar(100)  | YES  |     | NULL    |       |
    | raza           | varchar(50)   | YES  |     | NULL    |       |
    | nivel_poder    | decimal(10,2) | YES  |     | NULL    |       |
    | planeta_origen | varchar(100)  | YES  |     | NULL    |       |
    +----------------+---------------+------+-----+---------+-------+
    5 rows in set (0,00 sec)
    ```

    En este ejemplo, hemos modificado exitosamente la columna `nivel_poder` en la tabla Personajes para cambiar su tipo de datos a `DECIMAL` con una precisión de 10 dígitos y 2 decimales.

    La instrucción `ALTER TABLE` ofrece flexibilidad para realizar cambios en la estructura de una tabla existente en MySQL, lo que permite adaptar la base de datos a medida que cambian los requisitos del sistema o las necesidades de almacenamiento de datos.

3. **Cambiar el nombre de una columna: `CHANGE COLUMN`**

    Para cambiar el nombre de una columna en MySQL, se utiliza la instrucción `ALTER TABLE` junto con la cláusula `CHANGE COLUMN`. Esta cláusula permite cambiar el nombre de una columna y, opcionalmente, especificar un nuevo tipo de datos y restricciones para la columna.

    La sintaxis general para cambiar el nombre de una columna es la siguiente:

    ```sql
    ALTER TABLE nombre_tabla
    CHANGE COLUMN nombre_columna_antiguo nombre_columna_nuevo tipo_dato [restricciones];
    ```

    En este comando:

    - **nombre_tabla** representa el nombre de la tabla donde se encuentra la columna que se desea modificar.
    - **nombre_columna_antiguo** es el nombre actual de la columna que se va a renombrar.
    - **nombre_columna_nuevo** corresponde al nuevo nombre que se asignará a la columna.
    - **tipo_dato** define el tipo de datos que almacenará la columna.
    - **restricciones** son opciones adicionales que pueden aplicarse, como `NOT NULL`, `DEFAULT`, `UNIQUE`, entre otras, para garantizar la integridad y el correcto manejo de los datos.
    Supongase como ejemplo práctico que se requiere cambiar el nombre de la columna `raza` a `especie` en la tabla `Personajes` de la base de datos de `DragonBallZ`.

    ```sql
    ALTER TABLE Personajes
    CHANGE COLUMN raza especie VARCHAR(50);
    ```
    En este ejemplo, se cambia el nombre de la columna `raza` a `especie`y se mantiene el mismo tipo de datos `VARCHAR` con una longitud máxima de 50 caracteres.

    ```sql
    +----------------+---------------+------+-----+---------+-------+
    | Field          | Type          | Null | Key | Default | Extra |
    +----------------+---------------+------+-----+---------+-------+
    | id_personaje   | int           | NO   | PRI | NULL    |       |
    | nombre         | varchar(100)  | YES  |     | NULL    |       |
    | especie        | varchar(50)   | YES  |     | NULL    |       |
    | nivel_poder    | decimal(10,2) | YES  |     | NULL    |       |
    | planeta_origen | varchar(100)  | YES  |     | NULL    |       |
    +----------------+---------------+------+-----+---------+-------+
    5 rows in set (0,01 sec)
    ````

    Como resultado, la columna raza ha sido renombrada y la estructura de la tabla ha sido actualizada correctamente.

4. **Eliminar columna: `DROP COLUMN`**

    En MySQL, la instrucción `DROP` se utiliza en la modificación de tablas para eliminar elementos de la estructura de una tabla. Esto puede incluir la eliminación de columnas, índices, restricciones, claves externas u otros objetos asociados a la tabla.

    Para eliminar una columna de una tabla existente, se utiliza la instrucción `ALTER TABLE` junto con la cláusula `DROP COLUMN`. La sintaxis general para eliminar una columna es la siguiente:

    ```sql
    ALTER TABLE nombre_tabla
    DROP COLUMN nombre_columna;
    ````

    En este comando:

    - **nombre_tabla** representa el nombre de la tabla de la cual se eliminará la columna.  
    - **nombre_columna** es el nombre de la columna que se desea eliminar.  

    Como ejemplo práctico, supóngase que se desea eliminar la columna `planeta_origen`de la tabla `Personajes` en la base de datos `DragonBallZ`.

    ```sql
    ALTER TABLE Personajes
    DROP COLUMN planeta_origen;
    ```

    Este comando eliminará la columna `planeta_origen` de la tabla `Personajes`.


# 2.8. Borrado de tablas en MySQL

El borrado de una tabla en MySQL es una operación irreversible que elimina tanto la estructura como todos los datos almacenados en ella. MySQL proporciona varios comandos para eliminar tablas, dependiendo de si se desea conservar la estructura para futuras reutilizaciones o eliminarla por completo.

A continuación, exploraremos las diferentes formas de borrar una tabla en la base de datos **`DragonBallZ`**, así como las consideraciones y precauciones que deben tomarse antes de ejecutar estos comandos.

1. **Eliminación de una Tabla con `DROP TABLE`**

    El comando **`DROP TABLE`** se usa para eliminar completamente una tabla de la base de datos, eliminando tanto su estructura como todos los registros almacenados en ella. La sintaxis general para eliminar una tabla es la siguiente:

    ```sql
    DROP TABLE nombre_tabla;
    ```

    Por ejemplo, suponga que en la base de datos `DragonBallZ` se quiere eliminar la tabla `Tecnicas`, que almacena las técnicas de combate de los guerreros:

    ```sql
    DROP TABLE Tecnicas;
    ```

    Además, es posible eliminar varias tablas con un solo comando `DROP TABLE` separando los nombres de las tablas con comas:

    ```sql
    DROP TABLE IF EXISTS Tecnicas, Peleas;
    ```

    Bajo este comando hay que tener las siguientes precauciones:
    - Este comando elimina de manera permanente la tabla y **no se puede deshacer**.
    - Todos los datos almacenados en la tabla también se perderán.
    - Si la tabla eliminada estaba referenciada por una clave foránea en otra tabla, se generará un error a menos que se haya definido **`ON DELETE CASCADE`** en la relación.

2. **Eliminación Segura con `DROP TABLE IF EXISTS`**

    Si no se está seguro de si una tabla existe y se quiere evitar errores en la ejecución del comando, se puede usar `IF EXISTS`:

    ```sql
    DROP TABLE IF EXISTS Tecnicas;
    ```

    Este comando solo eliminará la tabla si existe en la base de datos, evitando errores en caso de que no esté definida.

3. **Borrado de Datos sin Eliminar la Estructura con `TRUNCATE TABLE`**

    Si solo se desean eliminar todos los datos de una tabla sin borrar su estructura, se puede utilizar `TRUNCATE TABLE`. A diferencia de `DROP TABLE`, este comando mantiene la estructura de la tabla para su posterior reutilización. Obsérvese el ejemplo siguiente:

    ```SQL
    TRUNCATE TABLE Tecnicas;
    ```

    | Característica            | DROP TABLE | TRUNCATE TABLE |
    |--------------------------|------------|---------------|
    | **Elimina los datos**    | Sí       | Sí          |
    | **Elimina la estructura**| Sí       | No         |
    | **Se puede revertir**    | No       | No         |
    | **Reinicia AUTO_INCREMENT** | Sí    | Sí         |
    | **Es más rápido**        | Depende del índice | Más rápido |


4. **Eliminación de una Tabla con Claves Foráneas**

    Si la tabla que se desea eliminar está referenciada por una clave foránea en otra tabla, MySQL impedirá su eliminación a menos que se haya definido la opción `ON DELETE CASCADE` en la relación.

    Si se intenta eliminar una tabla referenciada sin considerar esto, MySQL generará un error similar a:

    ```sql
    ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails
    ```

    Para evitar este problema, se puede realizar lo siguiente:
    - **Eliminar primero la clave foránea** en la tabla que la referencia:
    ```sql
    ALTER TABLE Peleas DROP FOREIGN KEY fk_id_tecnica;
    ```
    - **Luego eliminar la tabla referenciada:** 
    ```sql
    DROP TABLE Tecnicas;
    ```    

    Si la relación tenía `ON DELETE CASCADE`, la eliminación se propagará automáticamente y no será necesario eliminar manualmente la clave foránea.

## 2.9. Implementación de restricciones en MySQL

Las **restricciones** en MySQL son reglas aplicadas a las columnas de una tabla para garantizar la integridad, coherencia y validez de los datos almacenados. Estas restricciones ayudan a evitar la duplicación de registros, asegurar la integridad referencial y restringir valores no válidos. 

En este apartado, exploraremos cómo implementar restricciones en la base de datos **`DragonBallZ`**, aplicando diferentes tipos de reglas a estas tablas.

Las principales restricciones que se pueden implementar en MySQL son:

- **`NOT NULL`**: Evita que una columna acepte valores nulos.
- **`PRIMARY KEY`**: Combina **`NOT NULL`** y **`UNIQUE`** para identificar de manera única cada fila.
- **`FOREIGN KEY`**: Establece relaciones entre tablas para mantener la integridad referencial.
- **`UNIQUE`**: Garantiza que los valores de una columna sean únicos en toda la tabla.
- **`CHECK`**: Define condiciones que los valores de una columna deben cumplir.
- **`DEFAULT`**: Asigna un valor predeterminado si no se especifica otro al insertar un registro.

1. **Uso de `NOT NULL`**

    La restricción **`NOT NULL`** impide que una columna acepte valores nulos, asegurando que cada registro tenga información válida en dicha columna.

    ```sql
    CREATE TABLE Guerreros (
        id INT AUTO_INCREMENT,
        nombre VARCHAR(50) NOT NULL,
        raza VARCHAR(50) NOT NULL,
        poder INT NOT NULL,
        PRIMARY KEY (id)
    );
    ```

    En este ejemplo, las columnas `nombre`, `raza` y `poder` no pueden contener valores nulos.

2. **Uso de `PRIMARY KEY`**

    La **clave primaria (`PRIMARY KEY`)** es una combinación de `NOT NULL` y `UNIQUE`, utilizada para identificar de manera única cada fila de una tabla.

    ```sql
    CREATE TABLE Tecnicas (
        id INT AUTO_INCREMENT,
        nombre VARCHAR(100) NOT NULL,
        daño INT,
        PRIMARY KEY (id)
    );
    ```

    En este caso, `id` es la clave primaria de la tabla `Tecnicas`, asegurando que cada técnica tenga un identificador único.

3. **Uso de `FOREING KEY`**

    Las **claves foráneas (`FOREIGN KEY`)** permiten establecer relaciones entre tablas, garantizando que los valores en una columna de la tabla hija coincidan con los de la clave primaria en la tabla padre.

    ```sql
    CREATE TABLE Peleas (
        id INT AUTO_INCREMENT,
        fecha DATE NOT NULL,
        id_guerrero INT NOT NULL,
        PRIMARY KEY (id),
        FOREIGN KEY (id_guerrero) REFERENCES Guerreros(id)
            ON DELETE CASCADE
            ON UPDATE CASCADE
    );
    ```

    Aquí, `id_guerrero` en la tabla Peleas hace referencia a id en la tabla `Guerreros`, asegurando que no se pueda insertar un combate con un guerrero inexistente.

    - **`ON DELETE CASCADE`**: Si un guerrero es eliminado, todas sus peleas también se eliminarán.
    - **`ON UPDATE CASCADE`**: Si el identificador de un guerrero cambia, se actualizará automáticamente en la tabla Peleas.

    > Nota importante: La tabla `Peleas` que contiene la clave foránea debe crearse después de la tabla a la que apunta `Guerreros`. De no hacerlo así, el sistema generará errores porque la tabla que contiene la clave primaria aún no existe.

4. **Uso de `UNIQUE`**

    La restricción UNIQUE garantiza que los valores en una columna (o conjunto de columnas) sean únicos dentro de la tabla.
    ```sql
    CREATE TABLE Guerreros (
        id INT AUTO_INCREMENT,
        nombre VARCHAR(50) NOT NULL UNIQUE,
        raza VARCHAR(50),
        poder INT,
        PRIMARY KEY (id)
    );
    ```
    Aquí, ningún guerrero podrá tener el mismo nombre que otro.

5. **Uso de `CHECK`**

    La restricción **`CHECK`** permite definir condiciones que los valores de una columna deben cumplir.

    ```sql
    CREATE TABLE Transformaciones (
        id INT AUTO_INCREMENT,
        nombre VARCHAR(50) NOT NULL,
        nivel INT CHECK (nivel >= 1 AND nivel <= 10),
        PRIMARY KEY (id)
    );
    ```

    En este ejemplo, la columna `nivel` solo aceptará valores entre 1 y 10.

6. **Uso de `DEFAULT`**

    La restricción **`DEFAULT`** asigna un valor predeterminado a una columna cuando no se especifica uno en la inserción.

    ```sql
    CREATE TABLE Objetos (
        id INT AUTO_INCREMENT,
        nombre VARCHAR(50) NOT NULL,
        tipo VARCHAR(50) DEFAULT 'Desconocido',
        PRIMARY KEY (id)
    );
    ```

    Si al insertar un objeto no se proporciona un valor para tipo, se asignará automáticamente el valor '`Desconocido`'.

7. **Modificación de restricciones con `ALTER TABLE`**

    Si es necesario añadir, modificar o eliminar una restricción en una tabla existente, se puede utilizar `ALTER TABLE`.

    1. **Añadir una Restricción**

        - **Agregar `NOT NULL`**:
        
        ```sql
        ALTER TABLE Guerreros
        MODIFY COLUMN raza VARCHAR(50) NOT NULL;
        ```

        - **Agregar `UNIQUE`**:

        ```sql
        ALTER TABLE Guerreros
        ADD CONSTRAINT unique_nombre UNIQUE (nombre);
        ```

        - **Agregar `FOREIGN KEY`**:

        ```sql
        ALTER TABLE Peleas
        ADD CONSTRAINT fk_guerrero
        FOREIGN KEY (id_guerrero) REFERENCES Guerreros(id)
        ON DELETE CASCADE;
        ```

    2. **Eliminar una Restricción**

        - **Eliminar `UNIQUE`**:

        ```sql
        ALTER TABLE Guerreros
        DROP INDEX unique_nombre;
        ```

        - **Eliminar `FOREIGN KEY`**:

        ```sql
        ALTER TABLE Peleas
        DROP FOREIGN KEY fk_guerrero;
        ```

8. **Uso de la cláusual CONSTRAINT en restricciones**

    La cláusula **`CONSTRAINT`** en MySQL se utiliza para asignar nombres específicos a las restricciones, facilitando posteriormente su identificación y manipulación, especialmente cuando se necesita modificar o eliminar restricciones existentes con comandos como `ALTER TABLE`.

    La sintaxis general con la cláusula `CONSTRAINT` es la siguiente:

    ```sql
    CREATE TABLE nombre_tabla (
        columna1 tipo_dato,
        columna2 tipo_dato,
        CONSTRAINT nombre_restriccion PRIMARY KEY (columna1),
        CONSTRAINT nombre_restriccion_unique UNIQUE (columna2),
        CONSTRAINT nombre_restriccion_fk FOREIGN KEY (columna_foranea)
            REFERENCES tabla_referencia(columna_referencia)
            ON DELETE acción
            ON UPDATE acción
    );
    ```
    - `nombre_restriccion`: Permite identificar claramente la restricción en futuras operaciones (por ejemplo, modificaciones o eliminación de restricciones).
    - Facilita la gestión de restricciones, especialmente cuando se desean realizar modificaciones posteriores sobre la estructura de las tablas.

    Supongase que se quiere crear la tabla `Peleas`estableciendo una clave foránea que apunte a la tabla `Guerreros`, nombrando explícitamente dicha restricción:

    ```sql
    CREATE TABLE Peleas (
        id INT AUTO_INCREMENT PRIMARY KEY,
        fecha DATE NOT NULL,
        lugar VARCHAR(100),
        id_guerrero INT,
        CONSTRAINT fk_pelea_guerrero FOREIGN KEY (id_guerrero)
            REFERENCES Guerreros(id)
            ON DELETE CASCADE
            ON UPDATE CASCADE
    );
    ```
    En este ejemplo:
    - La cláusula CONSTRAINT fk_pelea_guerrero asigna un nombre específico (fk_pelea_guerrero) a la restricción de la clave foránea.
    - Esto permite posteriormente hacer referencia clara a la restricción en operaciones posteriores como, por ejemplo, eliminarla fácilmente con:

    ```sql
    ALTER TABLE Peleas
    DROP FOREIGN KEY fk_pelea_guerrero;
    ```

# 3. Lenguaje de Manipulación de Datos (DML) en MySQL

El **Lenguaje de Manipulación de Datos (DML, Data Manipulation Language)** en MySQL permite realizar operaciones **sobre los datos** almacenados en una base de datos. A diferencia del **Lenguaje de Definición de Datos (DDL)**, que se centra en la estructura de la base de datos (operaciones sobre las tablas y bases de datos), el DML permite insertar, actualizar, eliminar y recuperar registros de las tablas.

Las principales sentencias DML en MySQL son:
- **INSERT**: Para insertar nuevos registros en una tabla.
- **SELECT**: Para consultar información almacenada. (Debido a su complejidad, se tratará en el tema siguiente [UD05. El lenguaje de consulta de datos.](/bases-de-datos/ud05/teoria/)).
- **UPDATE**: Para modificar datos existentes.
- **DELETE**: Para eliminar registros.


En este apartado, utilizaremos la base de datos **DragonBallZ** para ilustrar cada una de estas operaciones.

## 3.1. La sentencia `INSERT`.

El comando **`INSERT`** se utiliza para agregar nuevos registros a una tabla. Su sintaxis básica es:

```sql
INSERT INTO nombre_tabla (columna1, columna2, ...)
VALUES (valor1, valor2, ...);
```

- **`INSERT INTO`**: Esta es la primera parte de la sintaxis y es obligatoria. Indica que estamos realizando una inserción de datos en una tabla específica.
- **Nombre de la tabla**: Después de `INSERT INTO`, se debe especificar el nombre de la tabla en la que se insertarán los datos.
- **Lista de columnas (opcional)**: A continuación del nombre de la tabla, opcionalmente se puede especificar una lista de columnas entre paréntesis. Esto indica en qué columnas se insertarán los valores. Si se omite esta parte, se insertarán valores en todas las columnas de la tabla en el orden en que se crearon.
- **Valores a insertar**: Después de la lista de columnas (si se proporciona), se utiliza la palabra clave `VALUES` seguida de una lista de valores entre paréntesis. Estos valores deben coincidir en número y tipo con las columnas especificadas en la lista de columnas (si se proporciona) o con todas las columnas de la tabla en el orden en que se crearon.

Como ejemplo práctico, imagínese que se está usando la base de datos `DragonBallZ` y se quiere insertar un guerrero sabiendo que las columnas de la tabla `Guerreros` son las siguientes:

```bash
mysql> DESCRIBE Guerreros;
+--------+-------------+------+-----+---------+----------------+
| Field  | Type        | Null | Key | Default | Extra          |
+--------+-------------+------+-----+---------+----------------+
| id     | int         | NO   | PRI | NULL    | auto_increment |
| nombre | varchar(50) | NO   |     | NULL    |                |
| raza   | varchar(50) | YES  |     | NULL    |                |
| poder  | int         | YES  |     | NULL    |                |
+--------+-------------+------+-----+---------+----------------+
```

El comando para insertar un guerrero de nombre Goku, de tipo Saiyajin y con nivel de poder 9000, sería el siguiente:  

```sql
INSERT INTO Guerreros (nombre, raza, poder)
VALUES ('Goku', 'Saiyajin', 9000);
```

El resultado esperado debería ser [^1]:

```bash
mysql> SELECT * FROM Guerreros;
+----+--------+----------+-------+
| id | nombre | raza     | poder |
+----+--------+----------+-------+
|  1 | Goku   | Saiyajin |  9000 |
+----+--------+----------+-------+
```
[^1]: Nótese que se está utilizando la sentencia `SELECT` para mostrar los datos de la tabla `Guerreros`, esta sentencia se explicará en profundidad en apartados posteriores.

También se pueden insertar múltiples registros en con una sola sentencia `INSERT`de la siguiente forma:

```sql
INSERT INTO Guerreros (nombre, raza, poder) 
VALUES 
('Vegeta', 'Saiyajin', 8500),
('Piccolo', 'Namekiano', 6000),
('Frieza', 'Mutante', 10000);
```
Quedanto la tabla `Guerreros` de la siguiente forma:

```bash
mysql> SELECT * FROM Guerreros;
+----+---------+-----------+-------+
| id | nombre  | raza      | poder |
+----+---------+-----------+-------+
|  1 | Goku    | Saiyajin  |  9000 |
|  2 | Vegeta  | Saiyajin  |  8500 |
|  3 | Piccolo | Namekiano |  6000 |
|  4 | Frieza  | Mutante   | 10000 |
+----+---------+-----------+-------+
```

Además, Si queremos insertar un registro sin especificar todas las columnas, se pueden omitir aquellas que tienen valores predeterminados:

```sql
INSERT INTO Guerreros (nombre, raza)
VALUES ('Krilin', 'Humano');
```

Finalmente se obtiene el siguiente resultado:

```bash
mysql> SELECT * FROM Guerreros;
+----+---------+-----------+-------+
| id | nombre  | raza      | poder |
+----+---------+-----------+-------+
|  1 | Goku    | Saiyajin  |  9000 |
|  2 | Vegeta  | Saiyajin  |  8500 |
|  3 | Piccolo | Namekiano |  6000 |
|  4 | Frieza  | Mutante   | 10000 |
|  5 | Krilin  | Humano    |  NULL |
+----+---------+-----------+-------+
```

De esta manera queda demostrado que la sentencia `INSERT` permite agregar registros a una tabla de manera flexible, ya sea especificando todas las columnas o únicamente las necesarias. En los siguientes apartados se explorará cómo recuperar, actualizar y eliminar estos datos para gestionar la información de manera eficiente.

## 3.2. La sentencia `SELECT`.

La sentencia `SELECT` es una de las instrucciones más importantes en SQL, ya que permite recuperar y mostrar información almacenada en una base de datos. Con esta sentencia es posible desde realizar cálculos sencillos hasta consultas complejas sobre tablas existentes.

Por ejemplo, es posible realizar operaciones matemáticas o cálculos directamente en consultas, incluso sin necesidad de consultar una tabla existente. Esto es útil para realizar cálculos rápidos o pruebas en tiempo real:

```bash
mysql> SELECT 1 + 5 AS suma;
+------+
| suma |
+------+
|    6 |
+------+
```

Como se observa, esta operación no requiere acceder a ninguna tabla física, demostrando que la sentencia `SELECT` permite obtener resultados directamente desde expresiones matemáticas.

No obstante, el uso más común de la sentencia `SELECT` es realizar consultas sobre tablas existentes. En este sentido, la estructura general y más simple de su sintaxis es la siguiente:

```sql
SELECT columna1, columna2, ...
FROM nombre_tabla;
```
- **`SELECT`**: Indica el inicio de la consulta y es obligatoria.
- **`columna1`, `columna2`, `...`**: Especifican las columnas que se desean obtener. Se utiliza el símbolo asterisco (*) para seleccionar todas las columnas disponibles.
- `FROM nombre_tabla`: Especifica la tabla desde la cual se extraen los datos.

Para visualizar su funcionamiento en un ejemplo práctico, supóngase una tabla llamada `Guerreros` con las columnas: `id`, `nombre`, `raza` y `nivel_poder`. Para seleccionar todas las columnas de esta tabla, la sentencia sería la siguiente:

```sql
SELECT * FROM Guerreros;
```
Resultado esperado:

```bash
+----+--------+--------------+-------------+
| id | nombre | raza         | nivel_poder |
+----+--------+--------------+-------------+
|  1 | Goku   | Saiyan       | 9500        |
|  2 | Vegeta | Saiyan Elite | 9000        |
|  3 | Gohan  | Saiyan       | 8000        |
+----+--------+--------------+-------------+
```

Si se quisieran seleccionar columnas específicas utilizando la sintaxis de la sentencia SELECT, se podría hacer de la siguiente manera:

```sql
SELECT nombre, raza 
FROM Guerreros;
```
Resultado esperado:

```bash
+--------+--------------+
| nombre | raza         |
+--------+--------------+
| Goku   | Saiyan       |
| Vegeta | Saiyan Elite |
| Gohan  | Saiyan       |
+--------+--------------+
```
También es posible utilizar alias para mejorar la claridad del resultado, especialmente cuando los nombres de las columnas originales no son suficientemente descriptivos o claros:

```bash
mysql> SELECT g.nombre AS guerrero, g.raza AS especie
    -> FROM Guerreros AS g;
+----------+--------------+
| guerrero | especie      |
+----------+--------------+
| Goku     | Saiyan       |
| Vegeta   | Saiyan Elite |
| Gohan    | Saiyan       |
+----------+--------------+
```
En este ejemplo, se utiliza un alias (g) para simplificar el nombre de la tabla y se crean alias para las columnas que mejoran la comprensión del resultado obtenido.

Además, se pueden concatenar columnas directamente en la consulta `SELECT` para mostrar el resultado en una columna temporal (sin modificar la tabla original). Por ejemplo, supóngase la tabla donde se almacena si un guerrero ha alcanzado el estado super, de nombre `SuperSaiyan_Status`:

```bash
+--------+--------------+-------+
| nombre | raza         | super |
+--------+--------------+-------+
| Goku   | Saiyan       | Super |
| Vegeta | Saiyan Elite | Super |
| Raditz | Saiyan       |       |
+--------+--------------+-------+
```

Podría realizarse la siguiente consulta usando concatenación:

```sql
SELECT nombre, CONCAT(super, '-', raza) AS super_raza_concatenado
FROM SuperSaiyan_Status;
```

Resultado esperado:

```bash
+--------+------------------------+
| nombre | super_raza_concatenado |
+--------+------------------------+
| Goku   | Super-Saiyan           |
| Vegeta | Super-Saiyan Elite     |
| Raditz | -Saiyan                |
+--------+------------------------+
```
También es posible omitir el guión separador si no se desea:

```sql
SELECT nombre, CONCAT(super, raza) AS super_raza_concatenado
FROM SuperSaiyan_Status;
```

La sentencia `SELECT` puede combinarse con otras cláusulas avanzadas como `WHERE`, `GROUP BY`, `HAVING`, `DISTINCT` u `ORDER BY`, aunque estos aspectos serán tratados en temas posteriores.


---
# 4. Control de datos y transacciones
## 4.1. Transacciones y procesamiento de transacciones
## 4.2. Políticas de bloqueo y control de concurrencia
### 4.2.1. Instalación de phpMyAdmin en Linux: Guía Paso a Paso

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

# 5. Chuletario Resumen de SQL


<div class="two-columns">
  <div markdown="1"> <!-- Columna izquierda  -->

# Create
Crear nueva Base de datos o tabla

```sql
CREATE DATABASE [IF NOT EXISTS] <nombre_bbdd>;
```

```sql
CREATE TABLE [IF NOT EXISTS] <nombre_tabla> (
    columna1 tipo_de_dato [restricciones],
    columna2 tipo_de_dato [restricciones],
    ...
    [restricciones_adicionales]
);
```

# Drop
Eliminar una Base de datos o tabla existentes

```sql
DROP DATABASE [IF EXISTS] <nombre_bbdd>;
DROP TABLE [IF EXISTS] <nombre_tabla>;
```

# Truncate
Eliminar la información de una tabla pero no la tabla

```sql
TRUNCATE TABLE  <nombre_tabla>;
```

# Alter
Añadir, modificar o eliminar restricciones o columnas en una tabla

```sql
ALTER TABLE <nombre_tabla>
ADD <nombre_columna> <tipo_dato>;

ALTER TABLE <nombre_tabla>
ALTER COLUMN <nombre_columna> <tipo_dato>;

ALTER TABLE <nombre_tabla>
DROP COLUMN <nombre_columna>;
```

  </div> 
  <div markdown="1"> <!-- Columna derecha  -->
    
# Tipos de datos.

- **Numéricos**: INT, SMALLINT, DECIMAL(i,j)
- **String**: CHAR, CHAR(n), VARCHAR(n)
- **Bit String**: BIT, BIT(n)
- **Fecha y tiempo**: DATE, TIME, TIME(i)
- **Timestamp**: TIMESTAMP
- **Predefinidos**: ENUM('opción1','opción2','etc')

# Insert
Insertar nuevos registros (tuplas) en una tabla

```sql
INSERT INTO <nombre_tabla> (columna1, ...)
VALUES (valor1, ...),
VALUES (valorN, ...);
```
##### No se necesita especificar los nombres de las columnas si se van a añadir valores para todas las columnas

# Select
Seleccionar/Mostrar datos de una tabla

```sql
SELECT <lista_columnas> 
FROM <nombre_tabla>;
```
##### Si se quieren mostrar todos los atributos poner un (*) en la lista_atributos

# Delete
Eliminar registros (tuplas) de una tabla

```sql
DELETE FROM <nombre_tabla> 
WHERE <condicion>;
```
##### Si no se añade la clausula WHERE, todos los registros serán eliminados

# Update

```sql
UPDATE <nombre_tabla> 
SET <nombre_columna> = <nuevo_valor>
WHERE <condicion>;
```

  </div>
</div>
