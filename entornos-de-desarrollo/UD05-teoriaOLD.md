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
2. [Introducción a los Diagramas de Clases](#2-introducción-a-los-diagramas-de-clases)  
   2.1. [Importancia en el desarrollo de aplicaciones](#21-importancia-en-el-desarrollo-de-aplicaciones)  
   2.2. [Relación con otros diagramas UML](#22-relación-con-otros-diagramas-uml)  
3. [Elementos de un Diagrama de Clases](#3-elementos-de-un-diagrama-de-clases)  
   3.1. [Clases y objetos](#31-clases-y-objetos)  
   3.2. [Atributos y métodos](#32-atributos-y-métodos)  
   3.3. [Relaciones entre clases](#33-relaciones-entre-clases)  
   &emsp;&emsp;3.3.1. [Asociación](#331-asociación)  
   &emsp;&emsp;3.3.2. [Herencia](#332-herencia)  
   &emsp;&emsp;3.3.3. [Composición](#333-composición)  
   &emsp;&emsp;3.3.4. [Agregación](#334-agregación) 
4. [Herramientas para la Creación de Diagramas de Clases](#4-herramientas-para-la-creación-de-diagramas-de-clases)  
   4.1. [Herramientas CASE y su utilidad](#41-herramientas-case-y-su-utilidad)  
   4.2. [Plugins y extensiones en entornos de desarrollo](#42-plugins-y-extensiones-en-entornos-de-desarrollo)  
5. [Elaboración de Diagramas de Clases](#5-elaboración-de-diagramas-de-clases)  
   5.1. [Identificación de clases en un sistema](#51-identificación-de-clases-en-un-sistema)  
   5.2. [Modelado de atributos y métodos](#52-modelado-de-atributos-y-métodos)  
   5.3. [Aplicación de patrones de diseño en diagramas de clases](#53-aplicación-de-patrones-de-diseño-en-diagramas-de-clases) 
6. [Validación y Optimización de Diagramas de Clases](#6-validación-y-optimización-de-diagramas-de-clases)  
   6.1. [Revisión de coherencia y redundancias](#61-revisión-de-coherencia-y-redundancias)  
   6.2. [Optimización de relaciones entre clases](#62-optimización-de-relaciones-entre-clases)  


<!--  
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

# 2. Introducción a los Diagramas de Clases

Los diagramas de clases son una de las herramientas más utilizadas en la modelización de sistemas orientados a objetos. Estos diagramas permiten visualizar la estructura de un sistema de software, mostrando las clases que lo componen, sus atributos, métodos y las relaciones entre ellas. Se utilizan en todas las etapas del desarrollo de software, desde el análisis y diseño hasta la implementación y mantenimiento.

En el desarrollo de software, los diagramas de clases desempeñan un papel fundamental al proporcionar una representación estática del sistema. A diferencia de otros diagramas UML que se centran en el comportamiento y la dinámica del sistema, los diagramas de clases se enfocan en la organización estructural de los datos y las relaciones entre los distintos elementos del sistema.

La utilidad de los diagramas de clases no se limita únicamente a la representación gráfica del código, sino que también ayudan a mejorar la comunicación entre los miembros del equipo de desarrollo y a mantener la coherencia del diseño a lo largo del ciclo de vida del software.

## 2.1. Importancia en el desarrollo de aplicaciones

El uso de diagramas de clases en el desarrollo de software ofrece numerosos beneficios, entre los que destacan:

1. **Claridad en el diseño**: Al representar visualmente las clases y sus interacciones, los diagramas de clases permiten comprender de manera intuitiva la estructura del sistema.
2. **Facilitación de la comunicación**: Son una herramienta clave para la documentación y la comunicación entre los distintos actores del proyecto, como desarrolladores, diseñadores, analistas y clientes.
3. **Estandarización**: Al utilizar notación UML, los diagramas de clases garantizan un lenguaje común que facilita la comprensión y el intercambio de información entre equipos.
4. **Mejor mantenimiento y evolución del software**: La existencia de un modelo claro facilita la localización de errores, la incorporación de nuevas funcionalidades y la optimización del código.

Por ejemplo, en el desarrollo de un sistema de gestión de estudiantes, un diagrama de clases puede mostrar las clases `Estudiante`, `Curso` y `Profesor`, junto con sus atributos y métodos. Esto ayuda a visualizar cómo se relacionan estos elementos y qué operaciones pueden realizarse sobre ellos.

```python
class Estudiante:
    def __init__(self, nombre, edad, matricula):
        self.nombre = nombre
        self.edad = edad
        self.matricula = matricula

class Curso:
    def __init__(self, nombre, codigo):
        self.nombre = nombre
        self.codigo = codigo

class Profesor:
    def __init__(self, nombre, especialidad):
        self.nombre = nombre
        self.especialidad = especialidad
```

En este caso, la representación visual en un diagrama de clases ayudaría a entender mejor la estructura del sistema y a detectar posibles mejoras en el diseño antes de implementar el código.

En los siguientes apartados, exploraremos cómo los diagramas de clases se relacionan con otros diagramas UML y cómo pueden ser generados y utilizados en diferentes entornos de desarrollo.

## 2.2. Relación con otros diagramas UML

Los diagramas de clases son una parte fundamental del lenguaje de modelado unificado (UML, por sus siglas en inglés) y tienen una estrecha relación con otros tipos de diagramas UML utilizados en el desarrollo de software. A través de estos diagramas, se puede representar tanto la estructura estática de un sistema como su comportamiento dinámico.

### Relación con los Diagramas de Caso de Uso

Los diagramas de caso de uso proporcionan una visión general del sistema desde el punto de vista del usuario. Mientras que estos diagramas muestran cómo los actores interactúan con el sistema y qué funcionalidades están disponibles, los diagramas de clases complementan esta visión al definir las estructuras internas necesarias para implementar esas funcionalidades.

Por ejemplo, un sistema de gestión de biblioteca puede tener un caso de uso para "Prestar libro", donde un usuario solicita un préstamo. El diagrama de clases correspondiente definiría las entidades involucradas, como `Libro`, `Usuario` y `Préstamo`, estableciendo sus relaciones y comportamientos.

### Relación con los Diagramas de Secuencia

Los diagramas de secuencia representan la comunicación y el flujo de mensajes entre objetos a lo largo del tiempo. A diferencia de los diagramas de clases, que son estáticos, los diagramas de secuencia muestran cómo los objetos interactúan dinámicamente en la ejecución de un caso de uso.

Por ejemplo, en un sistema de compra en línea, un diagrama de secuencia podría representar la interacción entre las clases `Cliente`, `Pedido` y `Pago`, mostrando el orden en que se envían los mensajes para completar una transacción.

```python
class Cliente:
    def __init__(self, nombre):
        self.nombre = nombre

    def realizar_pedido(self, pedido):
        return f"Pedido {pedido.id} realizado por {self.nombre}"

class Pedido:
    def __init__(self, id, total):
        self.id = id
        self.total = total

class Pago:
    def procesar_pago(self, pedido):
        return f"Pago de {pedido.total} procesado"

# Simulación de interacción
cliente = Cliente("Carlos")
pedido = Pedido(101, 150.0)
pago = Pago()

print(cliente.realizar_pedido(pedido))
print(pago.procesar_pago(pedido))
```
### Relación con los Diagramas de Actividad
Los diagramas de actividad son útiles para modelar flujos de trabajo y procesos dentro de un sistema. Pueden mostrar cómo interactúan las clases definidas en un diagrama de clases para completar un flujo de negocio específico.

Por ejemplo, en un sistema de reserva de vuelos, un diagrama de actividad puede describir el proceso de compra de un boleto, desde la selección del vuelo hasta la confirmación del pago. El diagrama de clases correspondiente definiría las entidades Vuelo, Pasajero y Reserva, asegurando que las interacciones en el flujo de trabajo tengan una estructura bien definida.

### Importancia de la Integración de Diagramas UML
El uso combinado de diferentes diagramas UML ayuda a capturar la complejidad de los sistemas de software desde múltiples perspectivas:

- Los diagramas de clases proporcionan la estructura estática del sistema.
- Los diagramas de caso de uso muestran las funcionalidades desde el punto de vista del usuario.
- Los diagramas de secuencia detallan la interacción dinámica entre los objetos.
- Los diagramas de actividad ilustran los procesos y flujos de trabajo.
Esta integración permite a los desarrolladores y diseñadores construir sistemas bien estructurados, facilitando la comunicación y reduciendo errores en la implementación.


## 2.3. Herramientas para la Creación de Diagramas de Clases
Para crear diagramas de clases de manera eficiente y profesional, existen diversas herramientas especializadas que permiten modelar, visualizar y compartir estos diagramas de forma clara y estructurada. Estas herramientas pueden ser tanto de escritorio como en línea, y cada una ofrece diferentes características para facilitar el diseño y documentación del software.

### 2.3.1. Herramientas de Código Abierto y Gratuitas

- **PlantUML** es una herramienta de modelado basada en texto que permite generar diagramas de clases a partir de descripciones en un lenguaje simple y estructurado. Se integra fácilmente en editores de código como Visual Studio Code y en plataformas como GitHub. Ejemplo de sintaxis en PlantUML:

    ```typescript
    @startuml
    class Estudiante {
        - nombre: string
        - edad: int
        - matricula: string
        + inscribirse()
    }
    @enduml
    ```

    Este código genera un diagrama visual en el que se representa la clase `Estudiante` con sus atributos y métodos.

- [**Dia**](http://dia-installer.de/download/index.html) es una herramienta sencilla y liviana que permite crear diagramas UML de manera gráfica, sin necesidad de escribir código. Es ideal para usuarios que prefieren una interfaz visual sin utilizar lenguajes de marcado.

- [**Draw.io**](https://draw.io/) (ahora conocido como diagrams.net) es una de las herramientas más utilizadas para la creación de diagramas UML, incluyendo diagramas de clases. Es una plataforma en línea gratuita que permite diseñar diagramas de manera intuitiva sin necesidad de instalar software adicional. Es ampliamente utilizada por su flexibilidad y compatibilidad con múltiples plataformas.

    Draw.io ofrece una interfaz visual amigable que permite arrastrar y soltar elementos fácilmente, facilitando la creación de diagramas sin necesidad de conocimientos avanzados en diseño gráfico. Además, cuenta con una amplia biblioteca de elementos UML, que incluye plantillas para diagramas de clases, diagramas de secuencia y otros diagramas UML, lo que agiliza el proceso de modelado. Una de sus principales ventajas es la capacidad de colaboración en equipo, ya que permite guardar y compartir diagramas en la nube a través de servicios como Google Drive, OneDrive y Dropbox, además de ofrecer la posibilidad de exportarlos en formatos como PNG, SVG y PDF. Asimismo, Draw.io se integra con plataformas como GitHub y GitLab, lo que facilita su uso en entornos de desarrollo y permite documentar software dentro de repositorios de manera eficiente.

### 2.3.2. Herramientas Profesionales y Comerciales

- **Enterprise Architect**. Es una de las herramientas más utilizadas en entornos empresariales, ya que permite modelado UML avanzado y generación de código a partir de los diagramas. Ofrece soporte para bases de datos y arquitecturas empresariales.

- **Microsoft Visio**. Visio es una herramienta de modelado visual que permite diseñar diagramas UML mediante una interfaz gráfica intuitiva. Es ampliamente utilizada en entornos corporativos por su integración con el ecosistema de Microsoft.

- **Lucidchart** es una aplicación web que permite crear diagramas de clases de manera colaborativa. Es fácil de usar y permite exportar los diagramas en múltiples formatos.

### 2.3.3. Selección de la Herramienta Adecuada

La elección de una herramienta dependerá de diversos factores, como la facilidad de uso, la integración con otros sistemas, el nivel de personalización requerido y la colaboración en equipo. Para proyectos individuales o educativos, herramientas como **PlantUML** y **Draw.io** pueden ser suficientes, mientras que para entornos empresariales se recomienda el uso de Enterprise Architect o Microsoft Visio.

En los siguientes apartados, exploraremos cómo utilizar estas herramientas en el proceso de modelado y cómo pueden integrarse en los entornos de desarrollo de software.

## **Ejercicio Práctico: Creación de un Diagrama de Clases**

En este ejercicio, los alumnos deben **crear el siguiente diagrama de clases** utilizando tres herramientas diferentes: **Draw.io, PlantUML y Dia**.  

A continuación, se presenta el **diagrama de clases de un coche**, donde se definen los atributos y métodos de la clase `Coche`.

**Diagrama de Clases: Coche**

![Diagrama de clases de coche](/entornos-de-desarrollo/imgs/ud05/ud05_classCoche.svg)

### **Ejemplo de código para PlantUML**
Si utilizan PlantUML, pueden generar el diagrama escribiendo el siguiente código en su editor compatible con PlantUML:

```typescript
@startuml
class Coche {
    - marca: string
    - modelo: string
    - año: int
    + arrancar(): void
    + frenar(): void
    + acelerar(velocidad: int): void
}
@enduml
```

# 3. Elementos de un Diagrama de Clases

Los diagramas de clases son una de las representaciones más utilizadas en UML para modelar sistemas orientados a objetos. Permiten visualizar la estructura de un sistema, definiendo sus clases, atributos, métodos y las relaciones entre ellas. Estos diagramas son esenciales en la fase de diseño de software, ya que proporcionan una representación clara y organizada de los componentes del sistema y su interacción.

En un diagrama de clases, cada clase se representa mediante un rectángulo dividido en tres secciones: el nombre de la clase en la parte superior, los atributos en la sección intermedia y los métodos en la parte inferior. Además, se pueden establecer relaciones entre las clases para modelar cómo interactúan dentro del sistema.

A continuación, exploraremos los principales elementos que componen un diagrama de clases, empezando por la diferencia entre clases y objetos.

## 3.1. Clases y objetos

En la Programación Orientada a Objetos, una **clase** es una plantilla o modelo que define las propiedades y comportamientos de un conjunto de objetos similares. Una **clase** especifica atributos (datos o variables) y métodos (funciones) que sus objetos podrán utilizar.

Un **objeto**, por otro lado, es una instancia concreta de una clase. Cada objeto tiene su propio conjunto de valores para los atributos definidos en la clase, lo que le permite diferenciarse de otros objetos de la misma clase.

Volviendo al ejemplo visto en apartados anteriores y teniendo en cuenta el siguiente código:

```python
class Coche:
    def __init__(self, marca, modelo, año):
        self.marca = marca
        self.modelo = modelo
        self.año = año

    def arrancar(self):
        return f"El {self.marca} {self.modelo} está arrancando."

    def frenar(self):
        return f"El {self.marca} {self.modelo} ha frenado."

    def acelerar(self, velocidad):
        return f"El {self.marca} {self.modelo} está acelerando a {velocidad} km/h."

# Creación de objetos (instancias de la clase Coche)
coche1 = Coche("Toyota", "Corolla", 2022)
coche2 = Coche("Ford", "Fiesta", 2019)

print(coche1.arrancar())  # Output: El Toyota Corolla está arrancando.
print(coche2.acelerar(100))  # Output: El Ford Fiesta está acelerando a 100 km/h.
```

En este ejemplo:
- `Coche` es una **clase** que define atributos (`marca`, `modelo`, `año`) y métodos (`arrancar`, `frenar`, `acelerar`).
- `coche1` y `coche2` son **objetos** que representan instancias concretas de la clase `Coche`.
Cada objeto tiene valores propios para los atributos `marca`, `modelo` y `año`, pero comparten los mismos métodos definidos en la clase.

Por lo tanto, el diagrama UML de la clase `Coche`, se representaría como se observó en el apartado anterior:

![Diagrama de clases de coche](/entornos-de-desarrollo/imgs/ud05/ud05_classCoche.svg)

Este diagrama indica que `Coche` tiene tres atributos (`marca`, `modelo`, `año`) y tres métodos (`arrancar()`, `frenar()`, `acelerar()`), siguiendo la estructura estándar de UML.

## 3.2. Atributos y métodos

Dentro de una clase en un diagrama de clases UML, se pueden definir dos tipos principales de elementos: **atributos** y **métodos**. 

Los **atributos** son variables que pertenecen a una clase y almacenan información sobre el estado de sus objetos. Cada objeto tiene sus propios valores para estos atributos, lo que le permite diferenciarse de otros objetos de la misma clase.

En UML, los atributos se representan dentro de la clase con la siguiente sintaxis:
```scss
+ nombre_atributo: tipo
```
Donde:
- `+/-/#` indica que el atributo es **público/privado/protegido**.
- `nombre_atributo` es el nombre del atributo.
- `tipo` indica el tipo de dato del atributo.

Obsérvese el siguiente ejemplo:
```python
class Persona:
    def __init__(self, nombre, edad, dni):
        self.nombre = nombre
        self.edad = edad
        self.dni = dni

persona1 = Persona("Juan", 30, "12345678A")
print(persona1.nombre)  # Output: Juan
print(persona1.edad)    # Output: 30
```

En este ejemplo, la clase `Persona` tiene los atributos `nombre`, `edad` y `dni`, que representan la información básica de cada objeto de tipo `Persona`. Por tanto el diagrama UML de esta clase `Persona`queda reflejado a continuación.

![Diagrama de clases de persona1](/entornos-de-desarrollo/imgs/ud05/ud05_classPersona1.svg)

Por otro lado, los **métodos** son funciones definidas dentro de una clase y describen los comportamientos que los objetos pueden ejecutar. Los métodos pueden modificar los atributos de la clase o interactuar con otros objetos.

En UML, los métodos se representan de la siguiente manera:

```scss
+ nombre_metodo(parametros): tipo_retorno
```

Donde:
- `+` indica que el método es público.
- `nombre_metodo` es el nombre del método.
- `parametros` son los valores de entrada que el método puede recibir.
- `tipo_retorno` indica el tipo de dato que devuelve el método (opcional en Python).

Obsérvese el siguiente ejemplo:
```python
class Persona:
    def __init__(self, nombre, edad):
        self.nombre = nombre
        self.edad = edad

    def saludar(self):
        return f"Hola, soy {self.nombre} y tengo {self.edad} años."

persona1 = Persona("Ana", 25)
print(persona1.saludar())  # Output: Hola, soy Ana y tengo 25 años.
```

Aquí, el método `saludar()` devuelve un mensaje personalizado con el nombre y la edad de la persona. Quedando su diagrama UML correspondiente de la siguiente forma:

![Diagrama de clases de persona2](/entornos-de-desarrollo/imgs/ud05/ud05_classPersona2.svg)

## 3.3. Relaciones entre clases

En los diagramas de clases UML, las **relaciones entre clases** representan la forma en que los objetos interactúan entre sí en un sistema orientado a objetos. Estas relaciones permiten definir cómo una clase depende de otra y qué tipo de vínculo existe entre ellas.  

Las principales relaciones entre clases en UML son:

- **Asociación**
- **Herencia**
- **Composición**
- **Agregación**

Cada una de estas relaciones tiene un significado particular y se utiliza en diferentes contextos dentro del diseño de software.

### 3.3.1. Asociación

La **asociación** es la relación más común entre clases en UML y se usa cuando una clase **hace referencia** a otra dentro de su estructura. Esta relación indica que los objetos de una clase pueden interactuar con los de otra sin que necesariamente uno dependa completamente del otro. 

Cuando se dice que una clase depende completamente de otra, hace referencia a que su existencia o funcionalidad está totalmente ligada a la otra clase.

En el caso de la **asociación, no hay una dependencia completa**, ya que los objetos pueden existir de manera independiente y solo se vinculan para interactuar. Un ejemplo podría ser cuando aparece un dominio de un problema en el que un `Curso` puede existir aunque no tenga un `Profesor` asignado o viceversa.

Es interesante conocer que, existen diferentes tipos de asociación según la cardinalidad y la dirección de la relación:

1. **Asociación unidireccional**: Una clase conoce a otra, pero no al revés.
2. **Asociación bidireccional**: Ambas clases se conocen entre sí.
3. **Asociación con multiplicidad**: Se especifica cuántos objetos de una clase pueden estar asociados con cuántos objetos de otra.

La **asociación unidireccional** se da cuando **una clase conoce a otra**, pero la segunda no conoce a la primera. Se representa en UML con una línea con una **flecha (`------->`)** que indica la dirección de la relación. Obsérvese el siguiente ejemplo:

```python
class Profesor:
    def __init__(self, nombre: str):
        self.nombre = nombre

class Curso:
    def __init__(self, titulo: str, profesor: Profesor):
        self.titulo = titulo
        self.profesor = profesor  # Asociación unidireccional

profesor1 = Profesor("Sr. Rojas")
curso1 = Curso("1º DAM", profesor1)

print(f"El curso {curso1.titulo} es impartido por {curso1.profesor.nombre}.")
# Output: El curso 1º DAM es impartido por Sr. Rojas.
```

En este código, `Curso` tiene una asociación unidireccional con `Profesor`, lo que significa que un `Curso` conoce a su `Profesor`, pero `Profesor` no conoce a `Curso`. Esta definición quedaría representada por el siguiente diagrama UML:

![Diagrama de clases profesor-curso-asociacion-unidireccional](/entornos-de-desarrollo/imgs/ud05/ud05_profesor-curso-asociacion-unidireccional.svg)

En la **asociación bidireccional**, ocurre que **ambas clases se conocen entre sí**. Se representa en UML con una línea sin flechas o con **flechas en ambos extremos (`<------>`)**. Obsérvese el siguiente ejemplo:

```python
class Profesor:
    def __init__(self, nombre: str):
        self.nombre = nombre
        self.cursos = []  # Lista de cursos asociados

    def agregar_curso(self, curso):
        self.cursos.append(curso)

class Curso:
    def __init__(self, titulo: str, profesor: Profesor):
        self.titulo = titulo
        self.profesor = profesor
        profesor.agregar_curso(self)  # Asociación bidireccional

profesor1 = Profesor("Sr. Rojas")
curso1 = Curso("1º DAM", profesor1)
curso2 = Curso("Bases de Datos", profesor1)

print(f"El profesor {profesor1.nombre} imparte los cursos: {[curso.titulo for curso in profesor1.cursos]}.")
# Output: El profesor Sr. Rojas imparte los cursos: ['1º DAM', 'Bases de Datos'].
```

En este caso, la bidireccionalidad queda registrada porque `Profesor` conoce sus `Cursos` y `Curso` conoce a su `Profesor`. Esta definición quedaría representada por el siguiente diagrama UML:

![Diagrama de clases profesor-curso-asociacion-bidireccional](/entornos-de-desarrollo/imgs/ud05/ud05_profesor-curso-asociacion-bidireccional.svg)

Por último, la **asociación con multiplicidad** especifica cuántos objetos de una clase pueden estar relacionados con cuántos objetos de otra. Se representa con **números en los extremos de la relación**.

| Notación UML | Significado                         |
|-------------|-------------------------------------|
| `1`         | Un solo objeto.                    |
| `0..1`      | Cero o un objeto (opcional).       |
| `*`         | Cero o más objetos.                |
| `1..*`      | Al menos un objeto

Obsérvese el siguiente ejemplo:

```python
class Estudiante:
    def __init__(self, nombre: str):
        self.nombre = nombre

class Curso:
    def __init__(self, titulo: str):
        self.titulo = titulo
        self.estudiantes = []  # Asociación *

    def agregar_estudiante(self, estudiante: Estudiante):
        self.estudiantes.append(estudiante)

curso1 = Curso("1º DAM")
estudiante1 = Estudiante("Melissa")
estudiante2 = Estudiante("Carlos")

curso1.agregar_estudiante(estudiante1)
curso1.agregar_estudiante(estudiante2)

print(f"El curso {curso1.titulo} tiene inscritos: {[est.nombre for est in curso1.estudiantes]}.")
# Output: El curso 1º DAM tiene inscritos: ['Melissa', 'Carlos'].
```

Si se observa detenidamente el código anterior, se puede llegar a la conclusión de que un `curso` puede tener como mínimo cero `estudiantes`, y como máximo muchos. Por tanto en este caso quedaría reflejado con la notación del **asterisco más la flecha (`*------>`)**

![Diagrama de clases estudiante-curso-asociacion-multiplicidad](/entornos-de-desarrollo/imgs/ud05/ud05_estudiante-curso-asociacion-multiplicidad.svg)

### 3.3.2. Herencia

La **herencia** es una de las relaciones más importantes en la Programación Orientada a Objetos y en UML. Se utiliza para definir una **relación "es un"** entre una clase padre (superclase) y una o varias clases hijas (subclases).  

El objetivo de la herencia es **reutilizar código**, permitiendo que una subclase herede atributos y métodos de su superclase y, si es necesario, sobrescriba o amplíe su comportamiento.

La herencia permite que una clase hija obtenga los atributos y métodos de una clase padre, facilitando la reutilización del código. La clase padre, también conocida como superclase, define las características y comportamientos generales, mientras que la clase hija, o subclase, hereda estas propiedades y puede extenderlas (agregar nuevos métodos y/o atributos en la subclase sin afectar al padre) o modificar su funcionalidad. En este proceso, las subclases pueden sobrescribir métodos de la superclase para ajustarlos a sus necesidades o agregar nuevos métodos y atributos sin alterar la estructura original de la superclase. De esta forma, la herencia favorece la extensibilidad del código y permite modelar relaciones jerárquicas entre entidades de manera más eficiente.

En UML, la herencia se representa con una **línea con un triángulo blanco (`--------▷`) apuntando hacia la superclase**.

- **Superclase** (Clase padre): Es la clase base de la que heredan otras clases.
- **Subclase** (Clase hija): Es una clase que hereda atributos y métodos de la superclase.
- **Sobreescritura de métodos**: Las subclases pueden redefinir métodos de la superclase para ajustarlos a sus necesidades.
- **Extensibilidad**: Se pueden agregar nuevos métodos y atributos en la subclase sin modificar la superclase.

Obsérvese el siguiente ejemplo:

```python
class Persona:
    def __init__(self, nombre: str, edad: int):
        self.nombre = nombre
        self.edad = edad

    def presentarse(self) -> str:
        return f"Hola, soy {self.nombre} y tengo {self.edad} años."

class Profesor(Persona):
    def __init__(self, nombre: str, edad: int, especialidad: str):
        super().__init__(nombre, edad)  # Hereda atributos de Persona
        self.especialidad = especialidad

    def enseñar(self) -> str:
        return f"Soy {self.nombre} y enseño {self.especialidad}."

class Estudiante(Persona):
    def __init__(self, nombre: str, edad: int, curso: str):
        super().__init__(nombre, edad)  # Hereda atributos de Persona
        self.curso = curso

    def estudiar(self) -> str:
        return f"Soy {self.nombre} y estudio en {self.curso}."

# Creación de objetos
profesor1 = Profesor("Sr. Rojas", 40, "Bases de Datos")
estudiante1 = Estudiante("Melissa", 19, "1º DAM")

# Ejemplo de herencia en acción
print(profesor1.presentarse())  # Output: Hola, soy Sr. Rojas y tengo 40 años.
print(profesor1.enseñar())       # Output: Soy Sr. Rojas y enseño Bases de Datos.
print(estudiante1.presentarse()) # Output: Hola, soy Melissa y tengo 19 años.
print(estudiante1.estudiar())    # Output: Soy Melissa y estudio en 1º DAM.
```

En este código, `Profesor` y `Estudiante` **heredan** de `Persona`, por lo que comparten los atributos `nombre` y `edad`, así como el método `presentarse()`. Además `Profesor` tiene su propio atributo `especialidad` y el método `enseñar()`, mientras que `Estudiante` tiene `curso` y `estudiar()`. Esto quedaría reflejado con el siguiente diagrama UML:

![Diagrama de clases persona-profesor-estudiante-herencia](/entornos-de-desarrollo/imgs/ud05/ud05_persona-profesor-estudiante-herencia.svg)

Es importante destacar que las subclases pueden **sobreescribir métodos** de la superclase para modificar su comportamiento. En el siguiente ejemplo, `presentarse()` es redefinido en `Profesor` y `Estudiante`.

```python
class Persona:
    def __init__(self, nombre: str, edad: int):
        self.nombre = nombre
        self.edad = edad

    def presentarse(self) -> str:
        return f"Hola, soy {self.nombre} y tengo {self.edad} años."

class Profesor(Persona):
    def presentarse(self) -> str:
        return f"Soy el profesor {self.nombre}, tengo {self.edad} años y enseño en 1º DAM."

class Estudiante(Persona):
    def presentarse(self) -> str:
        return f"Soy {self.nombre}, estudiante de 1º DAM y tengo {self.edad} años."

profesor1 = Profesor("Sr. Rojas", 40)
estudiante1 = Estudiante("Melissa", 19)

print(profesor1.presentarse())  # Output: Soy el profesor Sr. Rojas, tengo 40 años y enseño en 1º DAM.
print(estudiante1.presentarse()) # Output: Soy Melissa, estudiante de 1º DAM y tengo 19 años.
```
![Diagrama de clases persona-profesor-estudiante-herencia-sobreescrita](/entornos-de-desarrollo/imgs/ud05/ud05_persona-profesor-estudiante-herencia-sobreescrita.svg)

### 3.3.3. Composición

La **composición** es un tipo de relación entre clases en la que una **clase forma parte de otra y no puede existir sin ella**. En otras palabras, **una clase contiene instancias de otra clase y controla completamente su ciclo de vida**.  

A diferencia de una asociación, donde los objetos pueden existir por separado, en una **composición** el objeto contenido **no puede existir sin** el objeto contenedor.

Por ejemplo, en una asociación, un Profesor puede existir sin un Curso. En cambio, en una composición, un Coche no puede existir sin su Motor.

En UML, la composición se representa con un **rombo relleno (`--------◆`)** en el extremo de la clase contenedora, indicando que si esta se elimina, los objetos que contiene también desaparecen.

supóngase que se quiere modelar la relación entre un `Coche` y su `Motor`. Un coche **siempre** tiene un motor, y si el coche deja de existir, su motor también desaparecería.

```python
class Motor:
    def __init__(self, tipo: str):
        self.tipo = tipo

class Coche:
    def __init__(self, marca: str, modelo: str, tipo_motor: str):
        self.marca = marca
        self.modelo = modelo
        self.motor = Motor(tipo_motor)  # Composición: el Coche "posee" el Motor

    def descripcion(self) -> str:
        return f"El {self.marca} {self.modelo} tiene un motor {self.motor.tipo}."

# Creación de un coche (el motor se crea dentro del coche)
coche1 = Coche("Toyota", "Corolla", "Gasolina")

print(coche1.descripcion())
# Output: El Toyota Corolla tiene un motor Gasolina.
```

En este ejemplo se entiende que un `Coche` **contiene** un `Motor` como parte de su estructura, de hecho el **rombo relleno** del diagrama indica **composición**, es decir, `Motor` no puede existir sin `Coche`.

![Diagrama de clases motor-coche-composicion](/entornos-de-desarrollo/imgs/ud05/ud05_motor-coche-composicion.svg)

### 3.3.4. Agregación

La **agregación** es una relación entre clases en la que una clase contiene instancias de otra, pero a diferencia de la composición, los objetos pueden existir independientemente. En otras palabras, una clase "posee" objetos de otra clase, pero estos no dependen completamente de ella y pueden seguir existiendo si la clase contenedora es eliminada.

En UML, la agregación se representa con un **rombo vacío (`--------◇`)** en el extremo de la clase contenedora, indicando que esta puede contener instancias de otra clase sin control total sobre su ciclo de vida.

Supóngase que se quiere modelar la relación entre una `Escuela` y sus `Estudiantes`. Un estudiante **pertenece** a una escuela, pero si la escuela cierra, los estudiantes siguen existiendo y pueden cambiarse a otra escuela.

```python
class Estudiante:
    def __init__(self, nombre: str):
        self.nombre = nombre

class Escuela:
    def __init__(self, nombre: str):
        self.nombre = nombre
        self.estudiantes = []  # Relación de agregación

    def agregar_estudiante(self, estudiante: Estudiante):
        self.estudiantes.append(estudiante)

escuela1 = Escuela("Instituto Central")
estudiante1 = Estudiante("Melissa")
estudiante2 = Estudiante("Carlos")

escuela1.agregar_estudiante(estudiante1)
escuela1.agregar_estudiante(estudiante2)

print(f"La escuela {escuela1.nombre} tiene estudiantes como {[est.nombre for est in escuela1.estudiantes]}.")
# Output: La escuela Instituto Central tiene estudiantes como ['Melissa', 'Carlos'].
```

En este caso, `Escuela` contiene una lista de `Estudiantes`, pero los estudiantes pueden seguir existiendo sin la escuela. Además, si `Escuela` se elimina, los `Estudiantes` no desaparecen (entre terribles sufrimientos), ya que pueden ser asignados a otra escuela. Esto representa una agregación, porque Estudiante puede existir sin Escuela.

![Diagrama de clases estudiante-escuela-agregacion](/entornos-de-desarrollo/imgs/ud05/ud05_estudiante-escuela-agregacion.svg)


# 4. Herramientas para la Creación de Diagramas de Clases

La creación de diagramas de clases UML es una tarea clave en el análisis y diseño de sistemas orientados a objetos. Para facilitar este proceso, existen diversas herramientas que automatizan la generación de estos diagramas y permiten documentar visualmente la estructura del software. A continuación, se presentan los dos enfoques más comunes: el uso de herramientas CASE y el uso de extensiones o complementos en entornos de desarrollo integrados (IDEs).

## 4.1. Herramientas CASE y su utilidad

Las herramientas **CASE** (*Computer-Aided Software Engineering*) son aplicaciones diseñadas para asistir al desarrollo del software en sus distintas fases, incluyendo la planificación, análisis, diseño, codificación, pruebas y mantenimiento.

En lo que respecta a los diagramas de clases UML, estas herramientas permiten crear, editar y visualizar diagramas con facilidad, automatizando parte del trabajo y garantizando la coherencia entre diseño y código.

Algunas de sus utilidades principales son:

- Proporcionan una **interfaz visual amigable**, que permite arrastrar y soltar elementos para construir diagramas.
- Permiten **mantener la trazabilidad** entre diferentes artefactos del software, como clases, métodos y relaciones.
- Ayudan a **documentar el sistema** de forma clara y estandarizada.
- En muchos casos, permiten la **generación de código** a partir del diagrama o la **ingeniería inversa**, es decir, la creación automática del diagrama a partir del código fuente.

Entre las herramientas CASE más conocidas se encuentran:

- **StarUML**: potente, multiplataforma, con soporte para múltiples tipos de diagramas UML.
- **Enterprise Architect**: muy utilizada en entornos empresariales.
- **Visual Paradigm**: destaca por su integración con metodologías ágiles y herramientas de modelado de base de datos.
- **Draw.io** (actualmente **diagrams.net**): aunque no es una herramienta CASE en sentido estricto, ofrece plantillas UML y es muy accesible.

Estas herramientas son especialmente útiles en entornos académicos y profesionales donde se requiere una planificación detallada del sistema.

## 4.2. Plugins y extensiones en entornos de desarrollo

Muchos entornos de desarrollo actuales, como **Visual Studio Code**, **Eclipse** o **IntelliJ IDEA**, ofrecen extensiones que permiten trabajar directamente con diagramas UML desde el propio editor de código.

Algunas características destacables de estos plugins son:

- Posibilidad de **generar diagramas UML a partir del código fuente** (ingeniería inversa).
- Permiten **mantener sincronizado** el modelo visual con el código en tiempo real.
- Algunos incluyen soporte para lenguajes de marcado como **PlantUML**, que permiten describir diagramas mediante texto plano.

Por ejemplo:

- **PlantUML** puede integrarse en múltiples editores y generar diagramas a partir de un sencillo script, lo que resulta ideal para control de versiones.
- En **Visual Studio Code**, existen extensiones como `PlantUML` o `Draw.io Integration`, que permiten diseñar diagramas sin salir del entorno de desarrollo.
- En **Eclipse**, se dispone del plugin `Papyrus`, que añade capacidades UML completas.

Este tipo de herramientas resulta especialmente útil cuando se trabaja en proyectos reales donde se busca **agilidad**, integración con el flujo de trabajo y **automatización**.


# 4. Herramientas para la Creación de Diagramas de Clases

La creación de diagramas de clases UML es una parte fundamental en el diseño y análisis de sistemas orientados a objetos. Para facilitar esta tarea, se dispone de diversas herramientas que permiten representar visualmente la estructura del software de forma clara, estandarizada y automatizada. Estas herramientas se pueden clasificar principalmente en dos enfoques: las herramientas CASE y los *plugins* o complementos integrados en entornos de desarrollo.

## 4.1. Herramientas CASE y su utilidad

Las herramientas CASE, acrónimo de *Computer-Aided Software Engineering*, están diseñadas para asistir en el desarrollo del software a lo largo de todas sus fases, incluyendo el análisis, diseño, codificación, pruebas y mantenimiento. En el contexto de los diagramas de clases UML, este tipo de herramientas permiten construir modelos visuales de las clases, sus atributos, métodos y relaciones de una forma eficiente y precisa.

Una de las principales ventajas de las herramientas CASE es su interfaz visual, que permite arrastrar y soltar los elementos del diagrama sin necesidad de codificar manualmente la estructura. Además, muchas de estas herramientas permiten mantener la coherencia entre el diseño y el código, facilitando la trazabilidad y la documentación del sistema. Otra funcionalidad habitual es la generación automática de código a partir del modelo diseñado, así como la posibilidad inversa: generar el modelo visual a partir del código fuente existente, lo que se conoce como ingeniería inversa.

Entre las herramientas más utilizadas en esta categoría se encuentran StarUML, Enterprise Architect, Visual Paradigm y Draw.io (ahora conocido como diagrams.net). Aunque esta última no es una herramienta CASE en sentido estricto, ofrece plantillas específicas para UML y es ampliamente utilizada por su accesibilidad, integración con plataformas en la nube y facilidad de uso. Todas ellas permiten modelar de forma estandarizada los sistemas, y resultan especialmente útiles en entornos educativos o profesionales donde se exige una planificación detallada del software.

## 4.2. Plugins y extensiones en entornos de desarrollo

Además de las herramientas CASE independientes, muchos entornos de desarrollo modernos incorporan extensiones o plugins que permiten trabajar con diagramas UML directamente desde el editor de código. Esta integración mejora la productividad al evitar el cambio constante entre aplicaciones y permite mantener sincronizados el diseño visual y el código fuente.

En entornos como Visual Studio Code, Eclipse o IntelliJ IDEA, es posible instalar extensiones que ofrecen funcionalidades avanzadas para trabajar con UML. Algunas de estas herramientas permiten generar automáticamente diagramas a partir del código, facilitando la documentación técnica del proyecto sin esfuerzo adicional. Otras, como las que integran PlantUML, permiten escribir diagramas utilizando texto estructurado que se transforma en imágenes, lo que resulta ideal para entornos con control de versiones, ya que el diagrama puede mantenerse junto al código y versionarse como cualquier otro archivo.

PlantUML es un ejemplo destacable de esta filosofía. Gracias a su compatibilidad con múltiples editores y su simplicidad sintáctica, se ha convertido en una herramienta habitual en proyectos de software reales. También existen extensiones para integrar Draw.io directamente en Visual Studio Code, o el plugin Papyrus en Eclipse, que proporciona un entorno UML completo dentro del propio IDE.

Es importante destacar que, aunque PlantUML permite crear diagramas UML, no debe considerarse una herramienta CASE. Se trata más bien de un plugin o herramienta auxiliar, enfocada exclusivamente en la generación de diagramas a partir de texto, y no en la gestión completa del ciclo de vida del software como sí hacen las herramientas CASE tradicionales. Por ello, debe clasificarse dentro de las extensiones para entornos de desarrollo y no como herramienta CASE.

Estas soluciones integradas son especialmente prácticas cuando se busca agilidad, integración con el flujo de trabajo diario y automatización en la documentación del diseño. Permiten incorporar el modelado visual dentro del ciclo habitual de desarrollo sin necesidad de herramientas externas, lo que mejora la eficiencia y la coherencia del proyecto.

# 5. Elaboración de Diagramas de Clases

Una vez comprendidos los elementos y tipos de relaciones entre clases, el siguiente paso es poner en práctica estos conocimientos mediante la elaboración de diagramas de clases aplicados a sistemas concretos. Este proceso implica analizar el dominio del problema, identificar los elementos clave del sistema y estructurarlos en clases, atributos, métodos y relaciones que reflejen el comportamiento del software a diseñar. La calidad del análisis previo y la claridad en la estructuración de las clases determinan en gran medida la utilidad del diagrama como herramienta de planificación, modelado, comunicación técnica y validación del diseño antes del desarrollo.

Los diagramas de clases permiten visualizar la arquitectura del sistema de forma estructurada, identificar responsabilidades, anticipar problemas de acoplamiento o redundancia, y servir como base para la generación de código o para la creación de pruebas unitarias. Esta fase del desarrollo es especialmente importante en proyectos grandes o colaborativos, donde múltiples personas deben comprender el sistema desde una misma perspectiva visual. Además, el diseño orientado a objetos no solo se aplica al código, sino que comienza desde el modelado conceptual, donde se definen las entidades que dan forma al software. Por ello, una correcta elaboración del diagrama de clases tiene impacto directo en la mantenibilidad y calidad del sistema final.

## 5.1. Identificación de clases en un sistema

El primer paso en la elaboración de un diagrama de clases es identificar las entidades relevantes del dominio que pueden representarse como clases. Este proceso, conocido como análisis orientado a objetos, se basa en examinar detenidamente los requerimientos del sistema y extraer de ellos los elementos clave. Para ello, es útil leer atentamente los enunciados o descripciones funcionales del sistema y subrayar los sustantivos, ya que suelen corresponderse con posibles clases.

Por ejemplo, en un sistema para la gestión de una biblioteca, aparecen términos como "libro", "usuario", "préstamo", "bibliotecario" o "catálogo". Todos ellos son buenos candidatos a convertirse en clases. Sin embargo, no basta con detectar sustantivos: es necesario valorar si esas entidades tienen atributos propios, comportamientos específicos o si forman parte de una relación relevante con otras entidades. Las clases deben representar conceptos con significado propio dentro del sistema. También se debe evitar sobrecargar el modelo con clases que no tienen identidad propia o cuya función puede cubrirse con atributos u objetos auxiliares.

Además de los sustantivos, los verbos y acciones pueden ayudar a identificar métodos que formarán parte de esas clases. Una vez identificadas las clases candidatas, es posible clasificarlas, agruparlas jerárquicamente, establecer relaciones entre ellas y descartar aquellas que no aporten valor. En este punto, también se recomienda aplicar principios como el de responsabilidad única (SRP), que permite dividir clases muy complejas en otras más simples y cohesionadas. Un buen criterio para definir una clase es que sea capaz de responder por sí misma a un conjunto limitado de responsabilidades claramente relacionadas.

## 5.2. Modelado de atributos y métodos

Después de identificar las clases principales del sistema, se procede a definir los atributos y métodos de cada una de ellas. Los atributos representan el estado interno de un objeto y suelen corresponderse con características o propiedades. Por su parte, los métodos reflejan el comportamiento de los objetos, es decir, las acciones que pueden realizar o que se pueden ejecutar sobre ellos.

La elección de atributos y métodos debe estar basada en el análisis del dominio. Es recomendable partir de ejemplos concretos y formular preguntas como: ¿qué información debe almacenar esta clase?, ¿qué operaciones tiene sentido que realice?, ¿qué comportamiento se espera de ella en el sistema? Cuanto más específico y concreto sea el análisis, más preciso y útil será el diagrama.

Por ejemplo, una clase `Libro` puede tener atributos como `titulo`, `autor` y `ISBN`, y métodos como `prestar()`, `devolver()` o `reservar()`. Además, debe decidirse la visibilidad de cada elemento (`+` público, `-` privado, `#` protegido) y representarla adecuadamente en el diagrama. También puede indicarse el tipo de dato (`str`, `int`, `bool`, `etc`.) y si un atributo es estático, constante o derivado.

Un buen modelado de atributos y métodos no solo facilita la comprensión del sistema, sino que también permite mantener la cohesión y la responsabilidad única de cada clase, principios fundamentales del diseño orientado a objetos. Asimismo, permite prever los puntos de extensión futura y anticiparse a la reutilización de componentes en otros sistemas similares. Las clases bien modeladas reflejan con fidelidad la lógica del negocio y se convierten en el esqueleto funcional del software.

## 5.3. Aplicación de patrones de diseño en diagramas de clases

En sistemas más complejos, es común emplear patrones de diseño para resolver problemas recurrentes en la estructuración de clases y objetos. Estos patrones son soluciones probadas y reutilizables que mejoran la mantenibilidad, flexibilidad y escalabilidad del software. Además, aportan un lenguaje compartido entre desarrolladores, facilitando la comprensión del diseño incluso antes de revisar el código.

Los patrones de diseño más comunes, como `Singleton`, `Factory`, `Observer`, `Strategy` o `Decorator`, tienen representaciones específicas en diagramas de clases UML. Aplicar un patrón no significa seguirlo al pie de la letra, sino adaptar su estructura al contexto del sistema. Lo importante es entender el problema que resuelve y la lógica subyacente que lo hace eficaz.

Por ejemplo, el patrón `Observer` implica una relación uno a muchos entre una clase `Observable` y múltiples `Observers`, que deben actualizarse cuando el estado del objeto observado cambia. Este patrón se representa en UML mediante una clase sujeto que mantiene una lista de observadores y métodos como `attach()` y `notify()`. Otro ejemplo es el patrón `Factory`, que permite delegar la creación de objetos en una clase especializada, aislando la lógica de instanciación del resto del sistema.

El uso adecuado de patrones permite anticipar necesidades de evolución del software y mejorar la comunicación entre desarrolladores, ya que estos esquemas son ampliamente conocidos y documentados. En un diagrama de clases, es habitual incluir los nombres de los patrones aplicados para facilitar su identificación y comprensión. Incluso pueden combinarse varios patrones en un mismo sistema, siempre que se mantenga la claridad del modelo.

En definitiva, los patrones de diseño aportan una capa de abstracción que enriquece los diagramas de clases, ayudando a resolver problemas de diseño con soluciones reconocidas por la comunidad de desarrollo. Su aplicación adecuada permite crear sistemas más robustos, extensibles y alineados con las buenas prácticas de la ingeniería del software moderna.

