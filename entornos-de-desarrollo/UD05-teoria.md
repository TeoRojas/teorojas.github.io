---
layout: default
title: UD05. Elaboración de diagramas de clases.
permalink: /entornos-de-desarrollo/ud05/teoria/
author: Teo Rojas
date: Febrero 2025
abstract:

---

# Índice
1. [Fundamentos de la Programación Orientada a Objetos](#1-fundamentos-de-la-programación-orientada-a-objetos)  
   1.1. [Principios básicos de la POO](#11-principios-básicos-de-la-poo)  
   1.2. [Clases y objetos: definición y diferencias](#12-clases-y-objetos-definición-y-diferencias)  
   1.3. [Métodos y atributos: visibilidad y comportamiento](#13-métodos-y-atributos-visibilidad-y-comportamiento)   
   &emsp;&emsp;1.3.1. [Visibilidad de los atributos y métodos](#131-visibilidad-de-los-atributos-y-métodos)  
   &emsp;&emsp;1.3.2. [Métodos de acceso (guetters y setters)](#132-métodos-de-acceso-getters-y-setters)  
   &emsp;&emsp;1.3.3. [Métodos estáticos y de clase](#133-métodos-estáticos-y-de-clase)  
   1.4. [Relación entre objetos y clases en el diseño de software](#14-relación-entre-objetos-y-clases-en-el-diseño-de-software)  
   1.5. [Conceptos clave en la Programación Orientada a Objetos](#15-conceptos-clave-en-la-programación-orientada-a-objetos)  

<!--
2. [Introducción a los Diagramas de Clases](#2-introducción-a-los-diagramas-de-clases)  
   2.1. [Importancia en el desarrollo de aplicaciones](#21-importancia-en-el-desarrollo-de-aplicaciones)  
   2.2. [Relación con otros diagramas UML](#22-relación-con-otros-diagramas-uml)  
3. [Herramientas para la Creación de Diagramas de Clases](#3-herramientas-para-la-creación-de-diagramas-de-clases)  
   3.1. [Herramientas CASE y su utilidad](#31-herramientas-case-y-su-utilidad)  
   3.2. [Plugins y extensiones en entornos de desarrollo](#32-plugins-y-extensiones-en-entornos-de-desarrollo)  
4. [Elementos de un Diagrama de Clases](#4-elementos-de-un-diagrama-de-clases)  
   4.1. [Clases y objetos](#41-clases-y-objetos)  
   4.2. [Atributos y métodos](#42-atributos-y-métodos)  
   4.3. [Relaciones entre clases](#43-relaciones-entre-clases)  
   &emsp;&emsp;4.3.1. [Asociación](#431-asociación)  
   &emsp;&emsp;4.3.2. [Herencia](#432-herencia)  
   &emsp;&emsp;4.3.3. [Composición](#433-composición)  
   &emsp;&emsp;4.3.4. [Agregación](#434-agregación)  
5. [Elaboración de Diagramas de Clases](#5-elaboración-de-diagramas-de-clases)  
   5.1. [Identificación de clases en un sistema](#51-identificación-de-clases-en-un-sistema)  
   5.2. [Modelado de atributos y métodos](#52-modelado-de-atributos-y-métodos)  
   5.3. [Aplicación de patrones de diseño en diagramas de clases](#53-aplicación-de-patrones-de-diseño-en-diagramas-de-clases)  
6. [Validación y Optimización de Diagramas de Clases](#6-validación-y-optimización-de-diagramas-de-clases)  
   6.1. [Revisión de coherencia y redundancias](#61-revisión-de-coherencia-y-redundancias)  
   6.2. [Optimización de relaciones entre clases](#62-optimización-de-relaciones-entre-clases)  
7. [Uso de Diagramas de Clases en el Desarrollo de Aplicaciones](#7-uso-de-diagramas-de-clases-en-el-desarrollo-de-aplicaciones)  
   7.1. [Generación de código a partir de diagramas](#71-generación-de-código-a-partir-de-diagramas)  
   7.2. [Integración con bases de datos](#72-integración-con-bases-de-datos)  
   7.3. [Implementación en entornos reales](#73-implementación-en-entornos-reales)  
8. [Casos Prácticos y Ejercicios](#8-casos-prácticos-y-ejercicios)  
   8.1. [Modelado de una aplicación de gestión de biblioteca](#81-modelado-de-una-aplicación-de-gestión-de-biblioteca)  
   8.2. [Creación de un diagrama de clases para un sistema de ventas](#82-creación-de-un-diagrama-de-clases-para-un-sistema-de-ventas)  
   8.3. [Evaluación de un diagrama de clases y propuesta de mejoras](#83-evaluación-de-un-diagrama-de-clases-y-propuesta-de-mejoras)  
9. [Pruebas y Documentación de Diagramas de Clases](#9-pruebas-y-documentación-de-diagramas-de-clases)  
   9.1. [Métodos de validación de diseño](#91-métodos-de-validación-de-diseño)  
   9.2. [Generación de documentación técnica](#92-generación-de-documentación-técnica)  
-->

# 1. Fundamentos de la Programación Orientada a Objetos

La **Programación Orientada a Objetos (POO)** es un paradigma de programación que organiza el software en torno a **objetos**, los cuales representan entidades del mundo real y pueden interactuar entre sí. Este enfoque facilita el desarrollo de aplicaciones más modulares, reutilizables y mantenibles. En la POO, el software se estructura a partir de **clases**, que actúan como modelos o plantillas, y **objetos**, que son instancias concretas de esas clases. Cada objeto tiene atributos, que representan su estado, y métodos, que definen su comportamiento.

Este paradigma es ampliamente utilizado en lenguajes modernos como Python, Java y C++, y resulta esencial en el desarrollo de aplicaciones empresariales, videojuegos, sistemas embebidos y muchas otras áreas. Su fortaleza radica en la capacidad de modelar sistemas complejos de manera intuitiva, basándose en conceptos extraídos del mundo real.

## 1.1. Principios básicos de la POO

La POO se fundamenta en cuatro principios esenciales que permiten organizar el código de manera eficiente y escalable. 

El primero de estos principios es la **abstracción**, que consiste en modelar solo los aspectos esenciales de una entidad, omitiendo detalles innecesarios. Esto facilita la creación de objetos que representen elementos del mundo real sin necesidad de conocer su funcionamiento interno. Por ejemplo, en un sistema de vehículos, podríamos definir una clase `Vehiculo` con características generales como `marca` y `modelo`, dejando que cada tipo específico de vehículo implemente sus propias funcionalidades. En Python, la abstracción se puede lograr mediante el uso de clases base y métodos abstractos, como se muestra en el siguiente código:

```python
from abc import ABC, abstractmethod

class Vehiculo(ABC):
    def __init__(self, marca, modelo):
        self.marca = marca
        self.modelo = modelo

    @abstractmethod
    def arrancar(self):
        pass

class Coche(Vehiculo):
    def arrancar(self):
        return f"El coche {self.marca} {self.modelo} está arrancando."

mi_coche = Coche("Toyota", "Corolla")
print(mi_coche.arrancar())
```

En este código La clase `Vehiculo` es una clase abstracta que define un método `arrancar()`, el cual debe ser implementado por cualquier subclase que herede de ella. La clase `Coche` extiende `Vehiculo` y proporciona su propia implementación de `arrancar()`. Al crear un objeto `mi_coche` y llamar a su método `arrancar()`, se imprime un mensaje indicando que el coche está en marcha. Este enfoque permite definir una estructura base (`Vehiculo`) que otras clases pueden extender, asegurando que todas implementen el método `arrancar()`.

Otro principio clave es el **encapsulamiento**, que protege los datos de un objeto evitando su modificación directa desde fuera de la clase. Esto se logra mediante atributos privados y métodos de acceso que permiten modificar y obtener los valores de manera controlada. En Python, los atributos privados se indican con un **doble guion bajo** (`__`) y se acceden mediante métodos específicos. Por ejemplo, en una cuenta bancaria, el saldo debería ser privado para evitar modificaciones no autorizadas:

```python
class CuentaBancaria:
    def __init__(self, titular, saldo):
        self.titular = titular
        self.__saldo = saldo  # Atributo privado

    def depositar(self, cantidad):
        if cantidad > 0:
            self.__saldo += cantidad
        return self.__saldo

    def retirar(self, cantidad):
        if 0 < cantidad <= self.__saldo:
            self.__saldo -= cantidad
        return self.__saldo

    def obtener_saldo(self):
        return self.__saldo

cuenta = CuentaBancaria("Alice", 1000)
print(cuenta.obtener_saldo())  # Accede al saldo de forma segura
```

El tercer principio es la **herencia**, que permite que una clase hija herede atributos y métodos de una clase padre, promoviendo la reutilización del código. Esto significa que una clase más específica puede heredar las características generales de una clase más abstracta y extender su funcionalidad. Por ejemplo, si tenemos una clase `Animal`, podemos definir una clase `Perro` que herede sus características y agregue nuevos comportamientos:

```python
class Animal:
    def __init__(self, nombre):
        self.nombre = nombre

    def hacer_sonido(self):
        return "Sonido genérico"

class Perro(Animal):
    def hacer_sonido(self):
        return "Guau!"

mi_perro = Perro("Rex")
print(mi_perro.hacer_sonido())  # Output: Guau!
```

Por último, el **polimorfismo** permite que diferentes clases respondan de manera distinta a un mismo método, facilitando la flexibilidad del código. Gracias a este principio, podemos definir un mismo método en distintas clases con implementaciones específicas. En el siguiente ejemplo, una clase `Ave` define un método `volar`, pero una subclase como `Pinguino` lo redefine para indicar que los pingüinos no pueden volar:

```python
class Ave:
    def volar(self):
        return "Esta ave puede volar."

class Pinguino(Ave):
    def volar(self):
        return "Los pingüinos no pueden volar."

def mostrar_vuelo(ave):
    print(ave.volar())

loro = Ave()
pinguino = Pinguino()

mostrar_vuelo(loro)     # Output: Esta ave puede volar.
mostrar_vuelo(pinguino) # Output: Los pingüinos no pueden volar.
```

Estos cuatro principios fundamentales trabajan en conjunto para mejorar la modularidad y mantenibilidad del código. Gracias a la abstracción, encapsulamiento, herencia y polimorfismo, los desarrolladores pueden construir sistemas escalables y fáciles de modificar. En los siguientes apartados, exploraremos cómo estos principios se representan a través de los **diagramas de clases**, una herramienta esencial en el diseño de software.

## 1.2. Clases y objetos: definición y diferencias

En la Programación Orientada a Objetos, las **clases** y los **objetos** son los pilares fundamentales sobre los cuales se estructura el software. Una **clase** se puede entender como un molde o plantilla que define un conjunto de características y comportamientos compartidos por un grupo de elementos similares. Un **objeto**, en cambio, es una instancia concreta de una clase, con valores específicos en sus atributos y la capacidad de ejecutar los métodos definidos en la clase.

Para ilustrarlo mejor, pensemos en una clase `Coche`. Todos los coches tienen ciertas características comunes, como una marca, un modelo y un color, y también pueden realizar acciones como arrancar, acelerar o frenar. Sin embargo, cada coche concreto, como un Toyota Corolla rojo o un Ford Fiesta azul, representa un objeto único basado en la plantilla general de la clase `Coche`.

En **Python**, la declaración de una clase se realiza con la palabra clave `class`, mientras que la creación de objetos se realiza instanciando la clase. Veamos un ejemplo:

```python
class Coche:
    def __init__(self, marca, modelo, color):
        self.marca = marca
        self.modelo = modelo
        self.color = color

    def arrancar(self):
        return f"El {self.marca} {self.modelo} de color {self.color} ha arrancado."

# Creación de objetos (instancias de la clase Coche)
coche1 = Coche("Toyota", "Corolla", "rojo")
coche2 = Coche("Ford", "Fiesta", "azul")

print(coche1.arrancar())  # Output: El Toyota Corolla de color rojo ha arrancado.
print(coche2.arrancar())  # Output: El Ford Fiesta de color azul ha arrancado.
```

En este ejemplo, `Coche` es la clase que define las características comunes de los coches, y `coche1` y `coche2` son objetos que contienen valores concretos para cada atributo. El método `__init__` es un **constructor**, una función especial que se ejecuta automáticamente al crear un objeto, inicializando sus atributos con valores específicos.

La diferencia esencial entre una clase y un objeto radica en su función. **La clase es un concepto abstracto**, una plantilla que describe cómo serán los objetos, mientras que **los objetos son representaciones concretas de esa plantilla**, con datos y comportamientos específicos. Siguiendo la analogía de los coches, la clase sería el diseño de fábrica que define cómo se construyen los vehículos, mientras que cada coche que circula por la calle es un objeto único basado en ese diseño.

Otra característica importante de los objetos es que pueden cambiar su estado a lo largo del tiempo mediante la modificación de sus atributos. Por ejemplo, podemos actualizar el color de un coche después de pintarlo:

```python
coche1.color = "negro"
print(f"El coche ahora es de color {coche1.color}.")  # Output: El coche ahora es de color negro.
```

Además de los atributos, los objetos pueden tener métodos que representan acciones o comportamientos asociados a la clase. En Python, los métodos son simplemente funciones definidas dentro de una clase y que operan sobre los atributos del objeto. En nuestro ejemplo, `arrancar()` es un método que describe la acción de encender el coche.

El concepto de **autorreferencia** es otro aspecto clave en la POO. Dentro de una clase, el objeto que se está manipulando en un momento dado se hace referencia a través del parámetro `self`. Este parámetro es obligatorio en todos los métodos de una clase en Python y permite acceder a los atributos del objeto que está ejecutando el método. En otras palabras, `self` actúa como un puente entre la definición de la clase y los valores concretos que tiene cada objeto.

Para finalizar, es importante recalcar que en la mayoría de los lenguajes orientados a objetos, incluidos Python, Java y C++, las clases y los objetos se utilizan para organizar el código de manera estructurada, permitiendo dividir grandes sistemas en piezas más pequeñas y manejables. Gracias a este enfoque, es posible construir aplicaciones más escalables y mantenibles, ya que el comportamiento y la estructura de los datos están encapsulados en unidades lógicas llamadas objetos.

En el siguiente apartado, exploraremos en profundidad los métodos y atributos, detallando cómo estos elementos permiten a los objetos interactuar con su entorno y almacenar información relevante para su comportamiento.

## 1.3. Métodos y atributos: visibilidad y comportamiento

En la Programación Orientada a Objetos, los **métodos** y **atributos** son los elementos fundamentales que conforman una clase y sus objetos. Los atributos representan el **estado** de un objeto, mientras que los métodos definen su **comportamiento**. A través de los atributos, un objeto puede almacenar información relevante para su existencia, mientras que con los métodos puede realizar acciones y responder a estímulos dentro del sistema en el que opera.

Los atributos son **variables** asociadas a un objeto que definen sus características. En Python, los atributos pueden ser definidos directamente dentro del método `__init__`, que actúa como el constructor de la clase. Por otro lado, los métodos son **funciones** definidas dentro de una clase que operan sobre los atributos del objeto y pueden modificar su estado.

Veamos un ejemplo sencillo en Python:

```python
class Persona:
    def __init__(self, nombre, edad):
        self.nombre = nombre
        self.edad = edad

    def saludar(self):
        return f"Hola, mi nombre es {self.nombre} y tengo {self.edad} años."

persona1 = Persona("Carlos", 30)
print(persona1.saludar())  # Output: Hola, mi nombre es Carlos y tengo 30 años.
```

En este ejemplo, `nombre` y `edad` son atributos que almacenan información sobre una persona, mientras que el método `saludar()` define un comportamiento asociado a la clase.

### 1.3.1. Visibilidad de los atributos y métodos

Uno de los aspectos clave en el diseño de clases es la **visibilidad** de los atributos y métodos, es decir, qué partes del programa pueden acceder y modificar estos elementos. Python ofrece tres niveles de visibilidad:

- **Pública:** Los atributos y métodos públicos pueden ser accedidos y modificados desde cualquier parte del programa. Se definen sin ninguna convención especial.
- **Protegida:** Se indica con un guion bajo `_atributo`, sugiriendo que el atributo o método no debe ser accedido directamente fuera de la clase, aunque sigue siendo accesible.
- **Privada:** Se indica con dos guiones bajos `__atributo`, restringiendo el acceso al atributo dentro de la propia clase.

Veamos un ejemplo donde aplicamos distintos niveles de visibilidad:

```python
class CuentaBancaria:
    def __init__(self, titular, saldo):
        self.titular = titular  # Atributo público
        self._moneda = "EUR"    # Atributo protegido
        self.__saldo = saldo    # Atributo privado

    def depositar(self, cantidad):
        if cantidad > 0:
            self.__saldo += cantidad

    def retirar(self, cantidad):
        if 0 < cantidad <= self.__saldo:
            self.__saldo -= cantidad

    def obtener_saldo(self):
        return self.__saldo

cuenta = CuentaBancaria("Ana", 500)
print(cuenta.titular)      # Acceso permitido
print(cuenta._moneda)      # Acceso posible, aunque no recomendado
# print(cuenta.__saldo)    # Error: atributo privado

# Acceder al saldo solo a través del método público
print(cuenta.obtener_saldo())  # Output: 500
```

Aquí, `titular` es un atributo público accesible sin restricciones, `_moneda` es un atributo protegido que no debería modificarse directamente, y `__saldo` es privado, lo que impide su acceso fuera de la clase.

### 1.3.2. Métodos de acceso (getters y setters)

Para permitir el acceso y modificación de atributos privados sin comprometer la seguridad del objeto, se utilizan **métodos de acceso**, conocidos como **getters y setters**. Estos métodos proporcionan una interfaz controlada para obtener y modificar los valores de los atributos privados.

```python
class Producto:
    def __init__(self, nombre, precio):
        self.nombre = nombre
        self.__precio = precio  # Atributo privado

    def get_precio(self):
        return self.__precio

    def set_precio(self, nuevo_precio):
        if nuevo_precio > 0:
            self.__precio = nuevo_precio

producto = Producto("Ordenador", 1200)
print(producto.get_precio())  # Output: 1200

producto.set_precio(1000)
print(producto.get_precio())  # Output: 1000
```

En este ejemplo, el método `get_precio()` permite acceder al precio del producto, mientras que `set_precio(nuevo_precio)` permite modificar su valor, pero solo si el nuevo precio es válido.

### 1.3.3. Métodos estáticos y de clase

Además de los métodos normales que operan sobre un objeto específico, existen dos tipos especiales de métodos en Python: **métodos estáticos** y **métodos de clase**.

Los **métodos estáticos** se definen con `@staticmethod` y no dependen de una instancia de la clase. Se usan cuando la funcionalidad del método no requiere acceso a los atributos del objeto.

```python
class Utilidades:
    @staticmethod
    def convertir_euros_a_dolares(euros):
        return euros * 1.1  # Ejemplo de conversión

print(Utilidades.convertir_euros_a_dolares(50))  # Output: 55.0
```

Por otro lado, los **métodos de clase** se definen con `@classmethod` y reciben un parámetro `cls`, que representa la propia clase en lugar de una instancia específica.

```python
class Empleado:
    incremento_sueldo = 1.05

    def __init__(self, nombre, sueldo):
        self.nombre = nombre
        self.sueldo = sueldo

    @classmethod
    def modificar_incremento(cls, nuevo_incremento):
        cls.incremento_sueldo = nuevo_incremento

Empleado.modificar_incremento(1.10)
print(Empleado.incremento_sueldo)  # Output: 1.10
```

Estos métodos son útiles cuando se necesita modificar o consultar atributos compartidos por todas las instancias de la clase.


En definitiva, los métodos y atributos son esenciales en la definición y funcionamiento de las clases. Mientras que los atributos permiten almacenar información sobre un objeto, los métodos definen su comportamiento y cómo interactúa con el entorno. La correcta gestión de la visibilidad de los atributos garantiza la seguridad y robustez del código, evitando accesos indebidos. Además, los métodos de acceso y los métodos especiales como `@staticmethod` y `@classmethod` amplían la funcionalidad de las clases y permiten una mejor organización del código.

En el siguiente apartado, exploraremos la relación entre los objetos y clases dentro del diseño de software, analizando cómo se utilizan para estructurar sistemas complejos de manera eficiente.


## 1.4. Relación entre objetos y clases en el diseño de software

En la Programación Orientada a Objetos, las **clases** y los **objetos** no existen de forma aislada, sino que se relacionan entre sí para construir sistemas complejos. La forma en que los objetos interactúan determina la arquitectura y el diseño del software, asegurando modularidad y reutilización del código.

Las relaciones entre clases pueden adoptar distintas formas, dependiendo de cómo interactúan y dependen unas de otras. Existen tres tipos fundamentales de relaciones en el diseño de software: **asociación, composición y herencia**.

La **asociación** se produce cuando un objeto hace referencia a otro dentro de su estructura. Esta relación implica que los objetos pueden interactuar entre sí, pero sin que uno dependa completamente del otro. Un ejemplo clásico es la relación entre un **Profesor** y un **Curso**. Un profesor puede impartir varios cursos, y un curso puede tener varios profesores.

```python
class Profesor:
    def __init__(self, nombre):
        self.nombre = nombre

class Curso:
    def __init__(self, titulo, profesor):
        self.titulo = titulo
        self.profesor = profesor

profesor1 = Profesor("Dr. Pérez")
curso1 = Curso("Matemáticas", profesor1)

print(curso1.profesor.nombre)  # Output: Dr. Pérez
```

En este caso, `Curso` contiene un atributo `profesor`, lo que permite establecer una relación entre ambos objetos sin que dependan completamente uno del otro.

La **composición** es una relación más fuerte en la que un objeto está compuesto por otros objetos más pequeños. En este caso, los objetos internos no pueden existir sin el objeto principal. Un buen ejemplo es la relación entre un **Coche** y su **Motor**: un coche tiene un motor, y si el coche deja de existir, su motor también.

```python
class Motor:
    def __init__(self, tipo):
        self.tipo = tipo

class Coche:
    def __init__(self, marca, modelo):
        self.marca = marca
        self.modelo = modelo
        self.motor = Motor("Gasolina")  # Composición

coche1 = Coche("Toyota", "Corolla")
print(coche1.motor.tipo)  # Output: Gasolina
```

Aquí, el objeto `Motor` es parte del `Coche`, y si el coche es eliminado, su motor también desaparece.

La **herencia** permite que una clase derive de otra, heredando sus atributos y métodos. Esto permite modelar relaciones de tipo "es un" entre clases. Por ejemplo, un **Perro** es un tipo de **Animal**, por lo que puede heredar características generales de una clase `Animal` y agregar sus propias particularidades.

```python
class Animal:
    def __init__(self, nombre):
        self.nombre = nombre

class Perro(Animal):
    def ladrar(self):
        return "Guau!"

perro1 = Perro("Rex")
print(perro1.ladrar())  # Output: Guau!
```

En este caso, `Perro` hereda de `Animal`, lo que le permite compartir atributos como `nombre` sin necesidad de redefinirlos.

El uso correcto de las relaciones entre clases permite diseñar software de manera **modular y escalable**. La asociación facilita la interacción entre diferentes entidades sin generar dependencias rígidas. La composición permite organizar los objetos de manera estructurada, asegurando que cada componente cumpla una función específica. Por último, la herencia favorece la reutilización del código, evitando repeticiones innecesarias y permitiendo modificaciones más ágiles en la arquitectura del software.

Comprender cómo se relacionan las clases y los objetos es fundamental para diseñar sistemas bien estructurados, donde cada parte del código tenga una función clara. En el siguiente apartado, exploraremos cómo estas relaciones pueden representarse visualmente a través de los **diagramas de clases**, una herramienta esencial en el modelado de software.

## 1.5. Conceptos clave en la Programación Orientada a Objetos

En la Programación Orientada a Objetos (POO) existen ciertos conceptos fundamentales que permiten comprender mejor su estructura y funcionamiento. Estos términos son esenciales para entender cómo se diseñan y organizan los sistemas basados en objetos.

- **Atributo**: un **atributo** es una característica o propiedad de una clase. Representa datos asociados a un objeto y define su estado. En una clase `Persona`, por ejemplo, los atributos pueden ser `nombre` y `edad`.

    ```python
    class Persona:
        def __init__(self, nombre, edad):
            self.nombre = nombre
            self.edad = edad
    ```
 
- **Clase**: una **clase** es una plantilla o molde a partir del cual se crean objetos. Define atributos y métodos que determinan el comportamiento de sus instancias.
- **Objeto**: un **objeto** es una instancia concreta de una clase, con valores específicos en sus atributos y la capacidad de ejecutar métodos.

    ```python
    persona1 = Persona("Carlos", 30)  # Objeto de la clase Persona
    ```

- **Instancia**: una **instancia anónima** se refiere a un objeto que se crea sin asignarlo a una variable. Es útil cuando el objeto solo se usa temporalmente.

    ```python
    print(Persona("Ana", 25).nombre)  # Output: Ana
    ```

- **Jerarquía de clases**: la **jerarquía de clases** es una estructura que organiza las clases en niveles, donde las clases más generales se ubican en la parte superior y las clases más específicas en niveles inferiores, heredando características de las superiores.
- **Mensajes**: en POO, los **mensajes** son las interacciones entre objetos mediante la invocación de métodos. Cuando un objeto llama a un método de otro objeto, está enviando un mensaje.

    ```python
    class Perro:
        def ladrar(self):
            return "Guau!"

    perro1 = Perro()
    print(perro1.ladrar())  # Output: Guau!
    ```
 
- **UML**: el **Unified Modeling Language (UML)** es un lenguaje de modelado que permite representar sistemas orientados a objetos mediante diagramas. Su propósito es visualizar y documentar la arquitectura del software.Realmente es un estándar gráfico para modelar sistemas orientados a objetos. No define cómo se implementará el sistema, sino cómo está estructurado.
- **CASE**: las herramientas **CASE** (*Computer-Aided Software Engineering*) son programas diseñados para facilitar el desarrollo de software, incluyendo modelado de clases y generación de código a partir de diagramas UML.
- **OMG**: el **Object Management Group (OMG)** es una organización responsable del desarrollo y mantenimiento de estándares relacionados con la POO, como UML y CORBA.
- **OO**: significa **Orientación a Objetos**, mientras que **POO** se refiere a **Programación Orientada a Objetos**, que es la aplicación de este paradigma en el desarrollo de software.


Estos conceptos forman la base de la POO y su correcta comprensión es clave para el desarrollo eficiente de software orientado a objetos. En los siguientes apartados exploraremos cómo estas ideas se representan mediante diagramas UML, facilitando la planificación y documentación del diseño de software.
