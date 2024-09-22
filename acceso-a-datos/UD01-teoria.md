---
layout: default
title: UD01. Gestión de la información almacenada en Ficheros.
permalink: /acceso-a-datos/ud01/teoria/
author: Teo Rojas
date: Septiembre 2024
abstract: Sinopsis de la unidad 01
---

# Índice
1. [Introducción](#1-introducción)


# 1. Introducción
El acceso a datos es un pilar fundamental en el desarrollo de aplicaciones modernas. En este primer tema, nos adentraremos en los conceptos esenciales que nos permitirán gestionar la información almacenada en ficheros y directorios de manera eficiente. Aprenderemos cómo interactuar con estos recursos, comprendiendo su estructura y funcionamiento.

Exploraremos las clases y métodos que facilitan las operaciones de lectura y escritura, así como las diversas formas de acceso a ficheros. Además, abordaremos el manejo de ficheros XML y la importancia de los analizadores sintácticos para trabajar con datos estructurados.

A medida que avancemos, nos familiarizaremos con el tratamiento de excepciones, lo que nos permitirá desarrollar aplicaciones más seguras y eficientes. Este conocimiento es vital para cualquier desarrollador que busque construir soluciones que manejen datos de forma efectiva.

# 2. Clases asociadas a las operaciones de gestión de ficheros y directorios
Un fichero es, en su esencia, un conjunto de bits almacenado en un dispositivo de almacenamiento, como un disco duro, una memoria USB o la nube. Esta definición básica encierra un mundo de posibilidades y funciones. Los ficheros son la unidad fundamental en la que se organiza la información en un sistema informático, permitiendo su creación, modificación y eliminación. Cada fichero es tratado como una entidad única que puede contener datos, ya sean texto, imágenes, audio o cualquier otro tipo de información digital.

## 2.1. Persistencia de los Ficheros

La persistencia se refiere a la capacidad de los datos para existir más allá de la ejecución de un programa. En el contexto de los ficheros, esto significa que la información contenida en ellos no se pierde una vez que la aplicación que los creó ha finalizado su ejecución. Los ficheros son persistentes porque permanecen almacenados en un dispositivo hasta que son explícitamente eliminados o modificados. Esta característica es crucial en el desarrollo de aplicaciones, ya que permite a los usuarios guardar información de manera duradera y acceder a ella en cualquier momento. La persistencia es esencial para la gestión de datos, permitiendo la recuperación y el uso de información en diferentes sesiones de trabajo.

## 2.2 Estructura de un Fichero

Los ficheros están organizados en tres secciones importantes: ruta, nombre y extensión. Comprender esta estructura es fundamental para realizar operaciones de gestión de ficheros de manera efectiva.

1. **Ruta**: La ruta es la dirección completa donde se encuentra un fichero en el sistema de archivos. Incluye todas las carpetas o directorios que conducen al fichero, comenzando desde la raíz del sistema. Por ejemplo, en un sistema operativo tipo Unix, una ruta podría ser `/home/usuario/documentos/ejemplo.txt`. La ruta es esencial para localizar y acceder a un fichero.

2. **Nombre**: El nombre es la parte identificativa del fichero, que generalmente describe su contenido o propósito. Por ejemplo, en el nombre `ejemplo.txt`, "ejemplo" es el nombre del fichero. Es importante que los nombres sean descriptivos y significativos para facilitar la búsqueda y la organización. 

3. **Extensión**: La extensión es una secuencia de caracteres que sigue al nombre del fichero, precedida por un punto. Indica el tipo de contenido que el fichero almacena y, a menudo, determina qué programas pueden abrirlo. En el caso de `ejemplo.txt`, la extensión `.txt` indica que se trata de un fichero de texto. Las extensiones son importantes porque ayudan al sistema operativo a asociar el fichero con las aplicaciones adecuadas para su visualización o edición.

Es fundamental destacar que, dentro de una misma ruta, un fichero debe tener un nombre (junto con su extensión) único; sin embargo, pueden existir dos ficheros con el mismo nombre en diferentes rutas. Esta característica permite organizar la información de manera jerárquica y evita confusiones al acceder a los datos.

## 2.3. ¿Cómo es un fichero por dentro?

Para comprender cómo se gestionan y manipulan los ficheros, es crucial entender su estructura interna. Un fichero, desde el punto de vista del almacenamiento, está compuesto por una serie de bloques de datos que se organizan de manera secuencial en el dispositivo de almacenamiento. Cada uno de estos bloques contiene una porción de la información total del fichero.

### 1. Estructura de Datos

En términos de estructura de datos, un fichero puede ser visto como un conjunto de registros, donde cada registro puede contener diferentes tipos de datos. Por ejemplo, en un fichero de texto, cada línea puede considerarse un registro. En el caso de un fichero de base de datos, los registros pueden contener múltiples campos, donde cada campo representa un tipo de dato específico (como un número, una cadena de texto o una fecha).

### 2. Organización del Contenido

Los ficheros pueden ser organizados de varias maneras, dependiendo del tipo de información que almacenan y del acceso que se desea realizar. Algunas de las organizaciones más comunes son:

- **Secuencial**: Los datos se almacenan uno tras otro, lo que significa que se accede a ellos en el mismo orden en que fueron escritos. Este tipo de organización es eficiente para lecturas y escrituras en bloque, pero no es ideal para acceder a información específica de manera rápida.

- **Aleatoria**: Los datos se almacenan de tal manera que se puede acceder a ellos en cualquier orden. Esto es útil para aplicaciones que requieren acceso rápido a registros específicos, como bases de datos.

### 3. Metadata

Además de los datos en sí, un fichero contiene información adicional conocida como metadata. La metadata incluye detalles sobre el fichero, como su tamaño, fecha de creación, fecha de modificación y permisos de acceso. Esta información es esencial para que el sistema operativo gestione los ficheros de manera efectiva y para que los usuarios comprendan las propiedades del fichero.

### 4. Formato de Archivo

El formato de un fichero es otro aspecto importante a considerar. Cada tipo de fichero tiene un formato específico que determina cómo se organizan los datos dentro de él. Por ejemplo, un fichero de texto plano almacena datos en un formato legible por humanos, mientras que un fichero binario puede contener datos en un formato que solo puede ser interpretado por programas específicos. Algunos formatos de fichero son estándar y ampliamente utilizados, como `.txt`, `.csv`, `.xml`, y otros son específicos de aplicaciones, como `.docx` para documentos de Word o `.jpg` para imágenes.

### 5. Ejemplo de un Fichero de Texto

Para ilustrar cómo es un fichero por dentro, imagina un sencillo fichero de texto que contiene el texto:

>"Hola, mundo! Bienvenido al curso de Acceso a Datos. 
> Hoy aprenderemos sobre la gestión de ficheros"

Internamente, este fichero se almacena como una secuencia de caracteres en código ASCII o UTF-8, donde cada carácter ocupa un byte. Las líneas están separadas por caracteres de nueva línea, y el sistema operativo interpreta estos caracteres para mostrar el texto de forma legible.

En resumen, un fichero es una estructura compleja que combina datos y metadata, organizada de diversas maneras según su uso y formato. Entender cómo es un fichero por dentro es fundamental para manejar correctamente las operaciones de gestión de ficheros y directorios que exploraremos a continuación.

## 2.4. Ficheros en Java

En Java, la gestión de ficheros se lleva a cabo principalmente a través de dos bibliotecas: `java.io` y `java.nio`. Ambas proporcionan un conjunto de clases y métodos para realizar operaciones de entrada/salida (I/O), pero tienen diferencias significativas en su enfoque y funcionalidad.

### 1. java.io

La biblioteca `java.io` es la API tradicional de Java para la entrada y salida de datos. Proporciona clases para trabajar con flujos de datos, como `InputStream` y `OutputStream`, que permiten leer y escribir bytes, así como `Reader` y `Writer`, que son utilizados para trabajar con caracteres. 

### 2. java.nio

La biblioteca `java.nio` (New I/O) fue introducida en Java 1.4 para proporcionar una manera más eficiente y flexible de manejar operaciones de entrada/salida. Esta biblioteca introduce conceptos como buffers y canales.

### Diferencias entre java.io y java.nio

La principal diferencia entre `java.io` y `java.nio` radica en su enfoque hacia la I/O. Mientras que `java.io` se basa en el modelo de flujo secuencial, `java.nio` utiliza un modelo basado en buffers y canales que permite un procesamiento más eficiente y no bloqueante. Esto hace que `java.nio` sea más adecuado para aplicaciones que requieren un alto rendimiento, como servidores y aplicaciones de red, mientras que `java.io` puede ser más sencillo y suficiente para tareas más simples.

En conclusión, elegir entre `java.io` y `java.nio` depende de las necesidades específicas de la aplicación. Para operaciones sencillas, `java.io` puede ser suficiente, pero para aplicaciones más complejas y con requerimientos de rendimiento, `java.nio` es la opción preferida.

# 3. Formas de acceso a un fichero

Las operaciones y accesos sobre ficheros se dividen en varias categorías esenciales que permiten la gestión eficiente de los datos. Estas operaciones incluyen **creación**, **apertura**, **lectura**, **escritura** y **cierre** del fichero. A continuación, se detallan cada una de estas operaciones:

## 3.1. Creación del Fichero
La creación de un fichero es el primer paso para poder almacenar información. En esta operación, se especifica el nombre y la ruta del fichero, y se reserva un espacio en el dispositivo de almacenamiento. Dependiendo del sistema operativo y del lenguaje de programación, se pueden establecer permisos y atributos en el momento de la creación.

- **Ejemplo**: En Java, se puede crear un fichero utilizando la clase `File` y su método `createNewFile()`.

## 3.2. Apertura del Fichero
Una vez creado, el siguiente paso es abrir el fichero. Esta operación permite que el programa acceda al fichero y lo prepare para operaciones de lectura o escritura. Al abrir un fichero, se puede especificar el modo de acceso, que puede ser de solo lectura, solo escritura o lectura/escritura.

- **Ejemplo**: En Java, se puede abrir un fichero utilizando clases como `FileInputStream`, `FileOutputStream`, `FileReader` o `FileWriter`, dependiendo de si se quiere acceder a bytes o caracteres.

## 3.3. Lectura del Fichero
La lectura del fichero implica extraer datos del mismo y utilizarlos en el programa. Dependiendo del formato del fichero, esta operación puede realizarse de manera secuencial o aleatoria. La lectura puede ser de bytes, caracteres o líneas, y es fundamental para procesar la información almacenada.

Esta operación es no bloqueante, lo que significa que el programa puede continuar su ejecución mientras se están leyendo los datos. Dependiendo del formato del fichero, la lectura puede realizarse de manera secuencial o aleatoria, y puede ser de bytes, caracteres o líneas.


- **Ejemplo**: En Java, se puede leer un fichero de texto utilizando `BufferedReader` para facilitar la lectura de líneas completas.

## 3.4. Escritura en el Fichero
La escritura en el fichero permite guardar datos en él. Esta operación puede sobrescribir datos existentes o agregar nuevos datos al final del fichero, dependiendo del modo de apertura utilizado. La escritura debe manejarse cuidadosamente para evitar la pérdida de información.

Esta operación es bloqueante, lo que significa que el programa se detiene hasta que la operación de escritura se completa. Esta característica es importante, ya que garantiza que los datos se escriban de manera correcta y segura. Aquí es donde entra en juego la apertura y cierre del fichero en el flujo de datos: abrir el fichero asegura que está listo para la escritura y cerrarlo garantiza que todos los datos se hayan guardado correctamente.

- **Ejemplo**: En Java, se puede escribir en un fichero utilizando `FileWriter` o `PrintWriter`, permitiendo la escritura de caracteres o líneas de texto.

## 3.5. Cierre del Fichero
Una vez que se han completado las operaciones de lectura y escritura, es crucial cerrar el fichero. Esta operación libera los recursos asociados al fichero y garantiza que todos los datos se hayan guardado correctamente. No cerrar un fichero puede llevar a pérdidas de datos y a problemas de rendimiento.

- **Ejemplo**: En Java, se debe llamar al método `close()` en el objeto del fichero, lo que asegura que todos los flujos de datos se cierren adecuadamente.

## 3.6. Formas de Acceso a un Fichero

Las formas de acceso a un fichero se pueden clasificar en dos métodos principales: **acceso secuencial** y **acceso aleatorio**.

### 1. Acceso Secuencial
En el acceso secuencial, los datos se leen o escriben en el orden en que se encuentran en el fichero. Este método es simple y eficiente para la lectura y escritura de grandes volúmenes de datos en bloques. Las características incluyen:

- **Lectura/escritura de datos uno tras otro**: Los datos se procesan de forma lineal, desde el inicio hasta el final del fichero.
- **Ideal para grandes ficheros**: Es más eficiente cuando se necesita procesar toda la información, como en archivos de registros o logs.
- **Limitaciones**: No es adecuado para acceder a registros específicos sin leer primero todos los datos anteriores, lo que puede ser ineficiente.
- **Ejemplo**: La reproducción de una cinta de cassette. Al escuchar una cinta, debes avanzar o retroceder de forma lineal, y solo puedes escuchar una canción tras otra en el orden en que están grabadas. Este proceso es similar al acceso secuencial, donde los datos se procesan uno tras otro.

### 2. Acceso Aleatorio
El acceso aleatorio permite leer o escribir datos en cualquier orden, sin necesidad de seguir una secuencia. Esto es posible gracias a técnicas que permiten saltar directamente a la posición deseada en el fichero. Las características incluyen:

- **Acceso directo a registros específicos**: Se pueden leer o modificar datos sin tener que recorrer todo el fichero.
- **Eficiencia en búsquedas**: Es más adecuado para aplicaciones que requieren acceso rápido a registros específicos, como bases de datos.
- **Requiere más gestión**: Puede ser más complejo de implementar, ya que se necesita conocer la estructura y el formato del fichero para poder acceder a las posiciones correctas.
- **Ejemplo**: La navegación por un sitio web. Puedes hacer clic en cualquier enlace de la página para ir a diferentes secciones o páginas sin seguir un orden específico. Esto es similar al acceso aleatorio, donde puedes acceder a cualquier parte de la información almacenada sin necesidad de seguir un recorrido lineal.

# 4. Clases de gestión de flujos de datos y ficheros

La gestión de flujos de datos y ficheros es un aspecto esencial en el desarrollo de aplicaciones que requieren manipulación de información. Aunque la biblioteca `java.io` proporciona un conjunto de clases que facilitan la entrada y salida de datos, permitiendo trabajar con ficheros de manera eficiente, su capacidad para manejar las cuatro operaciones básicas -crear, borrar, copiar y mover- no es total, pudiendo solo manejar de manera perfecta las de crear y borrar, pero **no las de copiar y mover**.

En contraste, la biblioteca `java.nio` ofrece funcionalidades más robustas y modernas para la gestión de flujos de datos y ficheros. Con `java.nio`, es posible realizar operaciones de copia y movimiento de ficheros de manera más eficiente y con menos código, lo que la convierte en la biblioteca preferida para el estudio del flujo de datos.

En este apartado, exploraremos las principales clases de `java.io` que se utilizan para gestionar ficheros y flujos de datos, así como las operaciones que se pueden llevar a cabo con ellas, desde la creación de ficheros hasta su manipulación y cierre. Conocer estas herramientas es fundamental para desarrollar aplicaciones robustas y efectivas que interactúan con el sistema de archivos.


## 4.1. Clase Path

La clase `Path` es fundamental en la biblioteca `java.nio` y representa la ubicación de un fichero o directorio en el sistema de archivos. Es parte del paquete `java.nio.file` y permite manipular y obtener información sobre rutas de manera efectiva.

### Características y Uso

- **Representación de Rutas**: Un objeto `Path` puede representar rutas relativas o absolutas. Esto proporciona flexibilidad al trabajar con diferentes ubicaciones de ficheros.
  
- **Métodos Útiles**:
  - `getFileName()`: Devuelve el nombre del fichero o directorio en la ruta.
  - `getParent()`: Devuelve la ruta del directorio que contiene el fichero.
  - `toAbsolutePath()`: Convierte la ruta relativa a su forma absoluta.

### Ejemplo de Uso
```java
Path path = Paths.get("ruta/del/fichero.txt");
String nombreFichero = path.getFileName().toString();
Path directorioPadre = path.getParent();
Path rutaAbsoluta = path.toAbsolutePath();
```

## 4.2. Clase Files

La clase `Files` es una clase de utilidad que proporciona métodos estáticos para realizar operaciones de entrada y salida (I/O) sobre ficheros y directorios. También está en el paquete `java.nio.file` y facilita tareas comunes, como lectura, escritura, copia, y eliminación de ficheros.

### 4.2.1. Características y Uso

- **Operaciones Comunes:** `Files` permite realizar una variedad de operaciones, incluyendo:
- **Lectura de Ficheros:** Usando métodos como `readAllLines()` para leer líneas de un fichero en una lista.
- **Escritura de Ficheros:** Métodos como `write()` permiten escribir datos en un fichero, creando el fichero si no existe.
- **Copia y Movimiento:** Métodos como `copy()` y `move()` permiten manipular ficheros de forma eficiente.

### Ejemplo de Uso
```java
Path sourcePath = Paths.get("ruta/origen.txt");
Path destinationPath = Paths.get("ruta/destino.txt");

// Copiar un fichero
Files.copy(sourcePath, destinationPath, StandardCopyOption.REPLACE_EXISTING);

// Leer todas las líneas de un fichero
List<String> lineas = Files.readAllLines(sourcePath);
```

### 4.2.2. Clase Files - Listar directorio
### 4.2.2. Clase Files - Escribir ficheros binarios
### 4.2.2. Clase Files - Leer ficheros binarios
### 4.2.2. Clase Files - Escribir y Leer ficheros de caracteres
### 4.2.2. Clase Files - Copia y Movimiento


## 4.2. Clase FileSystem

La clase `FileSystem` representa un sistema de archivos y proporciona métodos para interactuar con él, o en otras palabras, se utiliza para obtener referencias al sistema de archivos. Ten en cuenta que es muy posible que en algún momento necesites acceder a información sobre las rutas y tipos de ficheros disponibles en el sistema.

### Características y Uso

- **Acceso a la Raíz**: `FileSystem` permite obtener la ruta raíz del sistema de archivos, lo que es útil para crear rutas absolutas.

- **Operaciones de Tipo de Fichero**: Puedes consultar los tipos de ficheros disponibles, así como realizar operaciones relacionadas con las capacidades del sistema de archivos.

- **Obtención de la Instancia**: Se obtiene mediante la clase `FileSystems`, que proporciona el método `getDefault()`.

### Ejemplo de Uso

```java
FileSystem fs = FileSystems.getDefault();
Path raiz = fs.getRootDirectories().iterator().next(); // Obtiene la raíz del sistema de archivos
```