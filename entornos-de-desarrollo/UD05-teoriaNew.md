---
layout: default
title: UD05. Elaboración de diagramas de clases.
permalink: /entornos-de-desarrollo/ud05/teoriaNew/
author: Teo Rojas
date: Febrero 2025
abstract:

---
# Índice

1. [Introducción a los Diagramas de Clases](#1-introducción-a-los-diagramas-de-clases)  
   1.1. [Importancia en el desarrollo de aplicaciones](#11-importancia-en-el-desarrollo-de-aplicaciones)   
2. [Notación de los diagramas de clases](#2-notación-de-los-diagramas-de-clases)  
   2.1. [Clases: atributos, métodos y visibilidad](#21-clases-atributos-métodos-y-visibilidad)  
   2.2. [Objetos: instanciación y representación](#22-objetos-instanciación-y-representación)  
3. [Relaciones entre Clases](#3-relaciones-entre-clases)  
   3.1. [Asociación](#31-asociación)  
   3.2. [Herencia](#32-herencia)  
   3.3. [Composición](#33-composición)  
   3.4. [Agregación](#34-agregación)  
   3.5. [Relación de uso y dependencia](#35-relación-de-uso-y-dependencia)  
4. [Herramientas para la Creación de Diagramas de Clases](#4-herramientas-para-la-creación-de-diagramas-de-clases)  
   4.1. [Herramientas CASE y su instalación](#41-herramientas-case-y-su-instalación)  
   4.2. [Plugins y extensiones en entornos de desarrollo](#42-plugins-y-extensiones-en-entornos-de-desarrollo)  
5. [Generación de Código y Diagramas](#5-generación-de-código-y-diagramas)  
   5.1. [Generación de código a partir de diagramas de clases](#51-generación-de-código-a-partir-de-diagramas-de-clases)  
   5.2. [Generación de diagramas de clases a partir del código](#52-generación-de-diagramas-de-clases-a-partir-del-código)  


# 1. Introducción a los Diagramas de Clases

Los diagramas de clases son una herramienta esencial para representar la estructura estática de un sistema en el desarrollo de aplicaciones orientadas a objetos. Permiten visualizar clases, atributos, métodos y relaciones, ayudando a diseñar el sistema antes de codificarlo.

Facilitan la planificación, comunicación y documentación dentro del equipo de desarrollo, y permiten identificar errores de diseño en fases tempranas. También sirven como referencia para mantenimiento y ampliaciones futuras.

Forman parte del estándar UML (Unified Modeling Language), un lenguaje que surgió principalmente para modelar sistemas orientados a objetos. Aunque su uso se ha extendido a otros ámbitos, UML sigue siendo clave para representar conceptos como clases, herencia o asociaciones.

Este tema abordará la notación de los diagramas de clases, sus elementos fundamentales y las herramientas disponibles para su creación, incluyendo la generación automática de código y diagramas.

## 1.1. Importancia en el desarrollo de aplicaciones

La utilidad de los diagramas de clases radica en su capacidad para representar de forma visual la estructura de un sistema antes de escribir una sola línea de código. Esto los convierte en una herramienta valiosa tanto en la fase de diseño como en la de comunicación técnica.

Permiten entender y definir cómo se organizan las clases, cómo interactúan entre sí y qué responsabilidades asume cada una. Gracias a esto, se detectan posibles errores de diseño de forma anticipada, se mejora la planificación y se refuerza la coherencia interna del sistema.

En entornos colaborativos, los diagramas de clases ayudan a mantener una visión compartida del proyecto y sirven como documentación viva. Además, reflejan con claridad los principios de la programación orientada a objetos, para los que fueron originalmente concebidos, y por tanto son ideales para planificar software basado en este paradigma.

# 2. Notación de los diagramas de clases

La notación de los diagramas de clases en UML establece una forma estandarizada de representar gráficamente los elementos estructurales de un sistema. Cada clase se dibuja mediante un rectángulo dividido en secciones, y las relaciones entre ellas se representan mediante líneas con símbolos específicos.

Este lenguaje visual permite describir cómo se organiza el sistema, cómo se conectan las distintas clases y qué tipo de vínculos existen entre ellas. A través de esta notación se puede entender el modelo conceptual sin necesidad de ver el código fuente, lo que facilita la comunicación entre los miembros del equipo de desarrollo.

Para ilustrar esta notación básica, obsérvese el siguiente ejemplo: una clase `Coche` se relaciona con una clase `Motor` mediante una asociación unidireccional. Esta relación indica que un coche está compuesto por un motor, o depende de él, sin necesidad de representar aún detalles internos como atributos o métodos:

![Diagrama de clases de coche-motor](/entornos-de-desarrollo/imgs/ud05/ud05_cocheMotor.svg)

En este apartado se introducirá la estructura general de los diagramas y la simbología que se utilizará en el resto del tema. En los apartados siguientes se abordará en detalle cómo se definen y representan las clases, atributos, métodos y su visibilidad, así como los distintos tipos de relaciones entre clases. y la simbología que se utilizará en el resto del tema. En los apartados siguientes se abordará en detalle cómo se definen y representan las clases, atributos, métodos y su visibilidad, así como los distintos tipos de relaciones entre clases.


## 2.1. Clases: atributos, métodos y visibilidad

La notación de los diagramas de clases en UML permite representar gráficamente los elementos fundamentales de un sistema orientado a objetos. Cada clase se representa mediante un rectángulo dividido en tres secciones: el nombre de la clase (parte superior), sus atributos (parte central) y sus métodos (parte inferior). Por ejemplo, el siguiente diagrama muestra la clase `Coche`, con sus atributos privados (`marca`, `modelo` y `año`) y sus métodos públicos (`arrancar()`, `frenar()` y `acelerar(velocidad: int)`), todos con notación UML adecuada.

![Diagrama de clases de coche](/entornos-de-desarrollo/imgs/ud05/ud05_classCoche.svg)

Para cada atributo o método puede especificarse su visibilidad mediante los siguientes símbolos:
- `+` indica visibilidad pública.
- `-` indica visibilidad privada.
- `#` indica visibilidad protegida.

Además, es habitual indicar el **tipo de dato** de cada atributo (por ejemplo, `modelo: string`) o el tipo de **valor de retorno** de los métodos (por ejemplo, `arrancar(): void`). También pueden incluirse los **parámetros de entrada** cuando el método lo requiera, con su tipo correspondiente.

Es posible también reflejar valores por defecto para los atributos. Esto indica que, si no se proporciona un valor al crear un objeto, se asignará automáticamente uno predefinido. Por ejemplo, un atributo como `combustible: string = 'gasolina'` sugiere que todos los objetos de la clase tendrán ese valor salvo que se indique otro.

Este tipo de detalle no siempre se representa en diagramas básicos, pero sí es útil en fases más avanzadas del modelado o cuando se quiere documentar el comportamiento por omisión de una clase.

## 2.2. Objetos: instanciación y representación

En programación orientada a objetos, una clase actúa como un molde o plantilla a partir del cual se crean objetos concretos. Estos objetos se denominan **instancias** de esa clase. Mientras que la clase define la estructura y el comportamiento comunes (atributos y métodos), cada objeto representa una entidad específica con valores particulares.

Por ejemplo, la clase `Coche` puede definir los atributos `marca`, `modelo` y `año`, pero cada coche instanciado tendrá valores distintos para esos atributos. Uno podría ser un `Toyota Corolla de 2020`, y otro un `Peugeot 308 de 2018`. Ambos comparten la misma estructura definida por la clase, pero se diferencian en sus datos.

El proceso de creación de un objeto se conoce como **instanciación**. En lenguajes como Python, esto se hace mediante el uso de un constructor:

```python
coche1 = Coche("Toyota", "Corolla", 2020)
coche2 = Coche("Peugeot", "308", 2018)
```

En UML, los objetos pueden representarse mediante **diagramas de objetos**, que son una variante de los diagramas de clases, pero centrados en una situación concreta en un momento dado de ejecución. En lugar de mostrar una clase general, se representa un objeto con su nombre subrayado, seguido de su clase, y sus valores actuales:

![Diagrama de objeto de coche1](/entornos-de-desarrollo/imgs/ud05/ud05_coche1Object.svg)

Esta representación resulta útil para ilustrar ejemplos concretos, validar el diseño del sistema y comprobar que las instancias siguen correctamente el modelo definido por las clases.

En resumen, mientras los diagramas de clases muestran lo que **puede** existir en el sistema, los diagramas de objetos muestran lo que **realmente está ocurriendo** en un momento determinado de la ejecución.

# 3. Relaciones entre Clases

En un sistema orientado a objetos, las clases rara vez actúan de forma aislada. Lo habitual es que estén conectadas entre sí mediante diferentes tipos de relaciones que reflejan cómo interactúan, se organizan o dependen unas de otras. Comprender estas relaciones es esencial para diseñar una arquitectura coherente, reutilizable y fácil de mantener.

UML proporciona una notación precisa para representar estas relaciones, lo que permite expresar conceptos como dependencia, composición, agregación, herencia o asociación de forma clara y estructurada. Cada una de estas relaciones tiene un significado semántico propio y unas implicaciones específicas en el diseño del sistema.

Por ejemplo, algunas clases pueden colaborar directamente entre ellas (asociación), otras pueden formar parte de estructuras jerárquicas (herencia), o bien componer entidades complejas a partir de otras más simples (composición y agregación). También puede existir una relación más débil de dependencia, que indica que una clase utiliza a otra sin establecer una relación permanente.

Representar estas relaciones en los diagramas de clases es clave para comprender la lógica del sistema, identificar responsabilidades, detectar acoplamientos innecesarios y aplicar principios de diseño como la responsabilidad única o la inversión de dependencias.

En los siguientes apartados se explicarán en detalle los distintos tipos de relaciones entre clases y su notación específica en UML.


