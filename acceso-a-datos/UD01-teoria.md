---
layout: default
title: UD01. Gestión de la información almacenada en Ficheros.
permalink: /acceso-a-datos/ud01/teoria/
author: Teo Rojas
date: Septiembre 2024
abstract: Sinopsis de la unidad 01
---

# Índice
# Índice
1. [Introducción](#1-introducción)
2. [Clases asociadas a las operaciones de gestión de ficheros y directorios](#2-clases-asociadas-a-las-operaciones-de-gestión-de-ficheros-y-directorios)
   - [2.1. Persistencia de los Ficheros](#21-persistencia-de-los-ficheros)
   - [2.2 Estructura de un Fichero](#22-estructura-de-un-fichero)
   - [2.3. ¿Cómo es un fichero por dentro?](#23-cómo-es-un-fichero-por-dentro)
   - [2.4. Ficheros en Java](#24-ficheros-en-java)
3. [Formas de acceso a un fichero](#3-formas-de-acceso-a-un-fichero)
   - [3.1. Creación del Fichero](#31-creación-del-fichero)
   - [3.2. Apertura del Fichero](#32-apertura-del-fichero)
   - [3.3. Lectura del Fichero](#33-lectura-del-fichero)
   - [3.4. Escritura en el Fichero](#34-escritura-en-el-fichero)
   - [3.5. Cierre del Fichero](#35-cierre-del-fichero)
   - [3.6. Formas de Acceso a un Fichero: acceso secuencial y aleatorio](#36-formas-de-acceso-a-un-fichero-acceso-secuencial-y-aleatorio)
4. [Clases de gestión de flujos de datos y ficheros](#4-clases-de-gestión-de-flujos-de-datos-y-ficheros)
   - [4.1. Clase Path](#41-clase-path)
   - [4.2. Clase Files](#42-clase-files)
       - [4.2.1. Características y Uso](#421-características-y-uso)
       - [4.2.2. Clase Files - Listar directorio](#422-clase-files---listar-directorio)
       - [4.2.3. Clase Files - Escribir ficheros binarios](#423-clase-files---escribir-ficheros-binarios)
       - [4.2.4. Clase Files - Leer ficheros binarios](#424-clase-files---leer-ficheros-binarios)
       - [4.2.5. Clase Files - Escribir y Leer ficheros de caracteres](#425-clase-files---escribir-y-leer-ficheros-de-caracteres)
       - [4.2.6. Clase Files - Copia y Movimiento](#426-clase-files---copia-y-movimiento)
5. [4.2. Clase FileSystem](#42-clase-filesystem)



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

## 3.6. Formas de Acceso a un Fichero: acceso secuencial y aleatorio

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

La clase `Files` de la biblioteca `java.nio.file` proporciona métodos eficientes para realizar operaciones de entrada y salida en ficheros y directorios. Uno de los usos comunes de esta clase es listar el contenido de un directorio. A través de la clase `Files`, los desarrolladores pueden acceder fácilmente a todos los ficheros y subdirectorios que se encuentran en una ruta específica.

#### Listar Ficheros en un Directorio

Para listar los ficheros en un directorio, se puede utilizar el método `list()` de la clase `Files`, que devuelve un flujo (`Stream`) de objetos `Path` que representan los ficheros contenidos en el directorio. Esto permite iterar sobre los ficheros de manera eficiente y realizar operaciones adicionales según sea necesario.

#### Ejemplo de Uso

A continuación, se presenta un ejemplo de cómo listar todos los ficheros en un directorio:

```java
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.io.IOException;

public class ListarDirectorio {
    public static void main(String[] args) {
        Path directorio = Paths.get("ruta/del/directorio"); // Reemplaza con tu ruta

        try {
            // Listar y imprimir los nombres de los ficheros en el directorio
            Files.list(directorio).forEach(System.out::println);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
```
#### Explicación del Código

- **Definición de la Ruta**: Se define la ruta del directorio utilizando `Paths.get()`.
- **Listar Ficheros**: Se utiliza `Files.list(directorio)` para obtener un flujo de `Path` que representa todos los ficheros en el directorio.
- **Impresión Simplificada**: Con `forEach(System.out::println)`, se imprimen directamente los nombres de los ficheros.
- **Manejo de Excepciones**: Se utiliza un bloque `try-catch` para manejar posibles excepciones, como `IOException`.

#### Beneficios
- **Modularidad**: Encapsular la lógica de listado en una clase hace que el código sea más modular y fácil de mantener.
- **Reusabilidad**: La clase ListarDirectorio puede reutilizarse en otras partes del programa.

### 4.2.3. Clase Files - Escribir ficheros binarios

La clase `Files` en la biblioteca `java.nio.file` también permite escribir datos en ficheros binarios de manera sencilla y eficiente. Esto es útil cuando se necesita almacenar información en un formato que no es texto, como imágenes, archivos de audio o datos serializados.

#### Escribir Ficheros Binarios

Escribir ficheros en formato binario es una práctica común y útil en programación, especialmente cuando se requiere un manejo eficiente de datos, se trabaja con aplicaciones específicas o se busca preservar la integridad de estructuras complejas.

A continuación se detalla las utilidades importantes:

- **Eficiencia de Almacenamiento**: Los datos binarios suelen ocupar menos espacio en disco que su representación en texto, lo que es especialmente útil para grandes volúmenes de datos.

- **Velocidad de Lectura y Escritura**: Los ficheros binarios pueden ser leídos y escritos más rápidamente que los ficheros de texto, ya que no requieren convertir datos entre diferentes formatos.

- **Preservación de Datos Complejos**: Permite almacenar estructuras de datos complejas, como objetos de clases, matrices, o registros, de manera que se puedan recuperar en su forma original.

- **Formatos Específicos**: Muchos formatos de archivo, como imágenes (JPEG, PNG), audio (MP3, WAV) y vídeo (MP4), utilizan almacenamiento binario. Escribir datos en formato binario es esencial para trabajar con estas aplicaciones.

- **Menor Riesgo de Corrupción de Datos**: Al trabajar con datos binarios, se reduce el riesgo de corrupción que puede ocurrir al procesar datos de texto (por ejemplo, cambios en la codificación de caracteres).

- **Seguridad**: Los ficheros binarios son más difíciles de leer y manipular manualmente que los ficheros de texto, lo que puede añadir una capa de seguridad en algunos casos.

Para escribir en un fichero binario, se puede utilizar el método `write()` de la clase `Files`, que acepta una ruta y un conjunto de bytes a escribir. A continuación, se presenta un ejemplo simple de cómo hacerlo:

#### Ejemplo de Uso

```java
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.io.IOException;

public class EscribirFicheroBinario {
    public static void main(String[] args) {
        Path path = Paths.get("ruta/del/fichero.bin"); // Reemplaza con tu ruta
        byte[] datos = { 65, 66, 67, 68, 69 }; // Datos en formato binario (A, B, C, D, E)

        try {
            // Escribir los datos en el fichero binario
            Files.write(path, datos);
            System.out.println("Datos escritos correctamente en " + path.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
```
#### Explicación del Código
- **Definición de la Ruta**: Se define la ruta del fichero binario utilizando `Paths.get()`.
- **Datos en Formato Binario**: Se crea un array de bytes que representa los datos a escribir en el fichero.
- **Escribir en el Fichero**: Se utiliza `Files.write(path, datos)` para escribir los datos en el fichero binario. Este método crea el fichero si no existe o lo sobrescribe si ya existe.
- **Manejo de Excepciones**: Se utiliza un bloque `try-catch` para manejar posibles excepciones, como `IOException`, que pueden ocurrir al intentar escribir en el fichero.

### 4.2.4. Clase Files - Leer ficheros binarios

La clase `Files` de la biblioteca `java.nio.file` no solo permite escribir ficheros binarios, sino que también proporciona métodos eficientes para leer estos ficheros. La lectura de ficheros binarios es fundamental en muchas aplicaciones, especialmente cuando se trabaja con formatos de datos que no son texto, como imágenes, audio o datos serializados.

#### Leer Ficheros Binarios

Para leer un fichero binario, se puede utilizar el método `readAllBytes()` de la clase `Files`, que lee todo el contenido del fichero y lo devuelve como un array de bytes. Alternativamente, también se puede usar `newInputStream()` para obtener un flujo de entrada que permite leer los datos de forma más controlada.

#### Ejemplo de Uso

A continuación, se presenta un ejemplo simple de cómo leer un fichero binario y mostrar su contenido en formato hexadecimal:

```java
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.io.IOException;

public class LeerFicheroBinario {
    public static void main(String[] args) {
        Path path = Paths.get("ruta/del/fichero.bin"); // Reemplaza con tu ruta

        try {
            // Leer todos los bytes del fichero
            byte[] datos = Files.readAllBytes(path);

            // Mostrar los datos en formato hexadecimal
            for (byte b : datos) {
                System.out.printf("%02X ", b);
            }
            System.out.println(); // Nueva línea al final
        } catch (IOException e) {
            System.out.println("Ocurrió un error al leer el fichero.");
            e.printStackTrace();
        }
    }
}
```

#### Explicación del Código
- **Definición de la Ruta**: Se define la ruta del fichero binario utilizando `Paths.get()`.
- **Leer los Bytes**: Se utiliza `Files.readAllBytes(path)` para leer todos los bytes del fichero y almacenarlos en un array de bytes.
- **Mostrar Datos**: Se itera sobre el array de bytes y se imprime cada byte en formato hexadecimal utilizando `System.out.printf()`. Esto es útil para visualizar datos binarios de una manera más comprensible.
- **Manejo de Excepciones**: Se utiliza un bloque `try-catch` para manejar posibles excepciones, como `IOException`, que pueden ocurrir al intentar leer el fichero.

#### Alternativa: Usar Flujo de Entrada
Otra forma de leer ficheros binarios es utilizando un flujo de entrada:

```java
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class LeerFicheroConFlujo {
    public static void main(String[] args) {
        Path path = Paths.get("ruta/del/fichero.bin"); // Reemplaza con tu ruta

        try (InputStream inputStream = Files.newInputStream(path)) {
            int byteDato;
            while ((byteDato = inputStream.read()) != -1) {
                System.out.printf("%02X ", byteDato); // Imprime en formato hexadecimal
            }
            System.out.println(); // Nueva línea al final
        } catch (IOException e) {
            System.out.println("Ocurrió un error al leer el fichero.");
            e.printStackTrace();
        }
    }
}
```
#### Desglose del Código
A continuación tienes un pequeño desglose del código.

#### Importaciones:
- **`import java.io.IOException;`**: Importa la clase `IOException` para manejar excepciones relacionadas con operaciones de entrada/salida.
- **`import java.io.InputStream;`**: Importa la clase `InputStream`, que se utiliza para leer bytes de un flujo.
- **`import java.nio.file.Files;`**: Importa la clase `Files`, que proporciona métodos para manipular ficheros y directorios.
- **`import java.nio.file.Path;`** y **`import java.nio.file.Paths;`**: Importan las clases necesarias para trabajar con rutas de ficheros.

#### Definición de la Clase:
- **`public class LeerFicheroConFlujo;`**: Declara la clase pública `LeerFicheroConFlujo`, que contiene el método `main()`.

#### Método main():
- **`Path path = Paths.get("ruta/del/fichero.bin");`**: Define la ruta del fichero que se desea leer. Debe ser reemplazada por la ruta correspondiente en el sistema.

#### Bloque try-with-resources:
- **`try (InputStream inputStream = Files.newInputStream(path));`**: Abre un flujo de entrada para el fichero especificado. La construcción "try-with-resources" asegura que el flujo se cierre automáticamente al final del bloque.

#### Lectura de Bytes:
- **`int byteDato;`**: Declara una variable para almacenar el byte leído.
- **`while ((byteDato = inputStream.read()) != -1);`**: Lee bytes del flujo uno por uno hasta que no haya más bytes (es decir, hasta que `read()` devuelva -1).
- **`System.out.printf("%02X ", byteDato);`**: Imprime cada byte en formato hexadecimal. El formato `%02X` asegura que cada byte se muestre como un número hexadecimal de dos dígitos.

#### Nueva Línea:
- **`System.out.println();`**: Imprime una nueva línea al final del listado de bytes.

#### Manejo de Excepciones:
- **`catch (IOException e);`**: Captura cualquier excepción `IOException` que pueda ocurrir durante la lectura del fichero.
- **`System.out.println("Ocurrió un error al leer el fichero.");`**: Imprime un mensaje de error.
- **`e.printStackTrace();`**: Imprime la traza de la pila para ayudar a diagnosticar el problema.

### 4.2.5. Clase Files - Escribir y Leer ficheros de caracteres

La clase `Files` de la biblioteca `java.nio.file` no solo se utiliza para manejar ficheros binarios, sino que también es muy efectiva para trabajar con ficheros de caracteres. Esto es especialmente útil cuando se necesita almacenar o procesar texto, como documentos, configuraciones o cualquier tipo de información basada en texto.

#### Escribir Ficheros de Caracteres

Para escribir texto en un fichero, se puede utilizar el método `write()` de la clase `Files`. Este método permite especificar la ruta del fichero y el contenido a escribir en forma de una lista de cadenas o una colección de caracteres.

#### Ejemplo de Escritura

A continuación, se muestra un ejemplo simple de cómo escribir texto en un fichero:

```java
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.io.IOException;
import java.util.Arrays;

public class EscribirFicheroTexto {
    public static void main(String[] args) {
        Path path = Paths.get("ruta/del/fichero.txt"); // Reemplaza con tu ruta

        try {
            // Escribir texto en el fichero
            Files.write(path, Arrays.asList("Línea 1", "Línea 2", "Línea 3"));
            // Para una sola línea
            // Files.writeString(path, "Hola Mundo");
            System.out.println("Texto escrito correctamente en " + path.toString());
        } catch (IOException e) {
            System.out.println("Ocurrió un error al escribir en el fichero.");
            e.printStackTrace();
        }
    }
}
```
#### Leer Ficheros de Caracteres
Para leer texto de un fichero, se puede utilizar el método readAllLines() de la clase Files, que devuelve una lista de cadenas, donde cada cadena representa una línea del fichero.

#### Ejemplo de Lectura
A continuación, se presenta un ejemplo de cómo leer texto de un fichero:

```java
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.io.IOException;
import java.util.List;

public class LeerFicheroTexto {
    public static void main(String[] args) {
        Path path = Paths.get("ruta/del/fichero.txt"); // Reemplaza con tu ruta

        try {
            // Leer todas las líneas del fichero
            List<String> lineas = Files.readAllLines(path);
            // Files.readString(path); para una sola línea
            lineas.forEach(System.out::println); // Imprimir cada línea
        } catch (IOException e) {
            System.out.println("Ocurrió un error al leer el fichero.");
            e.printStackTrace();
        }
    }
}
```
#### Explicación del Código

1. **Escribir en el Fichero**:
   - Se define la ruta del fichero utilizando `Paths.get()`.
   - Se utiliza `Files.write()` para escribir líneas de texto en el fichero. Si el fichero no existe, se crea; si ya existe, se sobrescribe.

2. **Leer del Fichero**:
   - Se define la ruta del fichero nuevamente.
   - Se utiliza `Files.readAllLines()` para leer todo el contenido del fichero, que se devuelve como una lista de cadenas.
   - Se imprimen las líneas utilizando un bucle `forEach`.

### 4.2.6. Clase Files - Copia y Movimiento

La clase `Files` en la biblioteca `java.nio.file` también proporciona métodos para copiar y mover ficheros y directorios de manera sencilla y eficiente. Estas operaciones son esenciales en muchas aplicaciones, ya que permiten gestionar los recursos de archivos sin complicaciones.

#### Copia de Ficheros

Para copiar un fichero, se utiliza el método `copy()` de la clase `Files`. Este método permite especificar la ruta del fichero origen y la ruta de destino, y ofrece opciones para manejar ficheros que ya existen.

#### Ejemplo de Copia

A continuación, se muestra un ejemplo de cómo copiar un fichero:

```java
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.io.IOException;

public class CopiarFichero {
    public static void main(String[] args) {
        Path origen = Paths.get("ruta/del/fichero.txt"); // Reemplaza con tu ruta
        Path destino = Paths.get("ruta/del/fichero_copiado.txt");

        try {
            // Copiar el fichero
            Files.copy(origen, destino);
            System.out.println("Fichero copiado correctamente a " + destino.toString());
        } catch (IOException e) {
            System.out.println("Ocurrió un error al copiar el fichero.");
            e.printStackTrace();
        }
    }
}
```
#### Movimiento de ficheros
Para mover un fichero, se utiliza el método `move()` de la clase `Files`, que permite cambiar la ubicación de un fichero de manera similar a la copia.

#### Ejemplo de Movimiento
A continuación, se presenta un ejemplo de cómo mover un fichero:

```java
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.io.IOException;

public class MoverFichero {
    public static void main(String[] args) {
        Path origen = Paths.get("ruta/del/fichero.txt"); // Reemplaza con tu ruta
        Path destino = Paths.get("ruta/nueva/del/fichero_movido.txt");

        try {
            // Mover el fichero
            Files.move(origen, destino);
            System.out.println("Fichero movido correctamente a " + destino.toString());
        } catch (IOException e) {
            System.out.println("Ocurrió un error al mover el fichero.");
            e.printStackTrace();
        }
    }
}
```

#### Explicación del Código

1. **Copia de Ficheros**:
   - Se definen las rutas del fichero origen y destino utilizando `Paths.get()`.
   - Se utiliza `Files.copy(origen, destino)` para copiar el fichero. Si el fichero de destino ya existe, se puede manejar mediante opciones adicionales.

2. **Movimiento de Ficheros**:
   - Similar al proceso de copia, se definen las rutas del fichero origen y destino.
   - Se utiliza `Files.move(origen, destino)` para mover el fichero a la nueva ubicación.


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