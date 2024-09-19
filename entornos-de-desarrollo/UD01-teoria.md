---
layout: default
title: UD01. Reconocimiento de elementos del desarrollo de software.
permalink: /entornos-de-desarrollo/ud01/teoria/
author: Teo Rojas
date: Septiembre 2024
abstract: Explora los fundamentos del desarrollo de software, desde el análisis de los tipos y funciones de los lenguajes de programación hasta la comprensión del ciclo completo de desarrollo de software, incluyendo codificación, pruebas y mantenimiento. Esta unidad proporciona una base sólida para entender cómo se construyen y se mantienen los programas informáticos modernos.

---

# Índice
1. [Introducción.](#1-introducción)
2. [Conceptos de programa informático y de aplicación informática.](#2-conceptos-de-programa-informático-y-de-aplicación-informática)
3. [El lenguaje de programación.](#3-el-lenguaje-de-programación)
4. [Código fuente, código objeto y código ejecutable; máquinas virtuales.](#4-código-fuente-código-objeto-y-código-ejecutable-máquinas-virtuales)
5. [Proceso de obtención de código ejecutable a partir del código fuente; herramientas implicadas.](#5-proceso-de-obtención-de-código-ejecutable-a-partir-del-código-fuente-herramientas-implicadas)
6. [Fases del desarrollo de una aplicación.](#6-fases-del-desarrollo-de-una-aplicación)
7. [Implementación de metodologías ágiles: Scrum.](#7-implementación-de-metodologías-ágiles-scrum)

# 1. Introducción

Este tema aborda los componentes fundamentales del desarrollo de software, proporcionando una base sólida para entender cómo se construyen y mantienen las aplicaciones modernas. Exploraremos desde los conceptos básicos de los programas informáticos hasta las complejidades de las interacciones entre software y hardware, preparando el terreno para una comprensión profunda de cómo los desarrolladores utilizan diversas herramientas y lenguajes para crear soluciones efectivas.


# 2. Conceptos de programa informático y de aplicación informática

Un **programa informático** es un conjunto de instrucciones codificadas destinadas a ser ejecutadas por una computadora. Estos programas son fundamentales para el funcionamiento del hardware y los sistemas operativos. Ejemplos incluyen controladores de dispositivo y sistemas de gestión de archivos.

Los programas informáticos interactúan estrechamente con los componentes físicos del sistema, como la memoria, el procesador y los periféricos. Utilizan la memoria para almacenar datos y instrucciones, el procesador para ejecutar las instrucciones, y los periféricos para realizar tareas como imprimir documentos o recoger entradas de los usuarios.

Por otro lado, una **aplicación informática** es un tipo de programa diseñado específicamente para ayudar a los usuarios a realizar tareas concretas. Ejemplos de aplicaciones informáticas incluyen procesadores de texto como Microsoft Word, hojas de cálculo como Excel, y navegadores web como Chrome.

## 2.1. Diferencia entre programa informático y aplicación informática
La principal diferencia radica en su propósito y nivel de interacción con el usuario. Mientras que los programas informáticos operan principalmente en el fondo para gestionar el hardware y el sistema, las aplicaciones informáticas están orientadas a interactuar directamente con los usuarios para realizar tareas específicas.

---

***Ejercicio 2.1.*** *Selecciona la respuesta correcta. Para desarrollar un programa informático que funcione en una computadora:*
- *Es imprescindible redactar las instrucciones en código binario para que el hardware pueda interpretarlas.*
- *Basta con redactar el programa en cualquier lenguaje de programación para que se ejecute inmediatamente.*
- *Es necesario escribir el programa en un lenguaje de programación y utilizar herramientas de software que lo conviertan en código binario.*
- *Los programas informáticos no se escriben manualmente; son parte integrante de los sistemas operativos.*

# 3. El lenguaje de programación

Un **lenguaje de programación** es un conjunto formal de instrucciones que se utiliza para controlar el comportamiento de una máquina, especialmente una computadora. Permite a los programadores especificar de manera precisa sobre qué datos debe operar una computadora, cómo deben ser almacenados y transmitidos, y qué acciones debe tomar bajo diversas circunstancias.

## 3.1. Tipos de lenguajes de programación

Existen varios tipos de lenguajes de programación, cada uno diseñado con propósitos específicos:
- **Lenguajes de bajo nivel**: Cercanos al hardware, como el lenguaje ensamblador.
- **Lenguajes de alto nivel**: Más alejados del hardware y más cercanos al lenguaje humano, como Python, Java y C++.

## 3.2. Características de los lenguajes más difundidos

Los lenguajes de programación más difundidos suelen tener características como:
- **Sintaxis clara y concisa**: Facilitan la escritura y comprensión del código.
- **Amplia comunidad de desarrolladores**: Ofrecen un gran soporte y recursos de aprendizaje.
- **Bibliotecas y frameworks abundantes**: Proporcionan herramientas para ampliar las funcionalidades básicas y facilitar el desarrollo de aplicaciones.

Basado en varios rankings y mediciones populares, los 5 lenguajes de programación más populares a la fecha de hoy (Septiembre de 2024) son:

**1º. Python.** Extremadamente versátil y ampliamente utilizado para desarrollo web, análisis de datos, inteligencia artificial, y más, debido a su sintaxis simple y poderosas librerías.

```python
# Programa simple en Python para imprimir "Hola Mundo"
print("Hola Mundo")
```

**2º. Java.** Conocido por su independencia de plataforma y robusto ecosistema de librerías, Java se utiliza extensivamente en entornos empresariales, desarrollo de aplicaciones Android y desarrollo de grandes sistemas.

```java
// Programa simple en Java para imprimir "Hola Mundo"
public class HolaMundo {
    public static void main(String[] args) {
        System.out.println("Hola Mundo");
    }
}
```

**3º. C.** Apreciado por su rendimiento y eficiencia, C sigue siendo fundamental en la programación de sistemas, sistemas embebidos y escenarios donde es necesario manipular directamente el hardware.

```c
// Programa simple en C para imprimir "Hola Mundo"
#include <stdio.h>

int main() {
    printf("Hola Mundo\n");
    return 0;
}
```

**4º. C++.** Un lenguaje diseñado para implementaciones de sistemas complejos donde el rendimiento y el uso de recursos son críticos. Se utiliza ampliamente en desarrollo de juegos, sistemas en tiempo real y software que requiere cálculos de alto rendimiento.

```cpp
// Programa simple en C++ para imprimir "Hola Mundo"
#include <iostream>

int main() {
    std::cout << "Hola Mundo" << std::endl;
    return 0;
}
```

**5º. JavaScript.** Dominante en el desarrollo web, este lenguaje es esencial para el desarrollo front-end y se utiliza cada vez más en el lado del servidor a través de entornos como Node.js.

```javascript
// Programa simple en JavaScript para imprimir "Hola Mundo"
console.log("Hola Mundo");
```

# 4. Código fuente, código objeto y código ejecutable; máquinas virtuales

El proceso de desarrollo de software involucra varias etapas de transformación del código, empezando por el **código fuente** que es escrito por desarrolladores en un lenguaje de programación de alto nivel. Este código fuente es luego compilado en **código objeto**, una forma intermedia que la máquina puede entender pero que aún no es ejecutable. Finalmente, el **código objeto** es enlazado con las bibliotecas necesarias para producir un **archivo ejecutable** que la computadora puede correr directamente. Este flujo asegura que el software sea desarrollado de manera eficiente y pueda operar en diferentes plataformas de hardware si se utiliza una máquina virtual.

## 4.1. Código Fuente
El **código fuente** es el conjunto de instrucciones y declaraciones escritas por el programador en un lenguaje de programación legible y de alto nivel (como Java, Python o C++). Este código es el que se escribe y se mantiene durante el desarrollo del software.

## 4.2. Código Objeto
El **código objeto** es un código intermedio, concretamente es una versión del código fuente traducida por un compilador a un formato que la máquina puede entender (unos y ceros), pero que no es directamente ejecutable. 

Este código está compuesto por instrucciones en un formato de lenguaje máquina que son específicas para una arquitectura de hardware particular. Se entiende que solo se genera una vez que el código fuente está libre de errores sintácticos y semánticos.

## 4.3. Código Ejecutable
El **código ejecutable** es el resultado final del proceso de compilación, que incluye el código objeto vinculado con las librerías necesarias para crear un programa que pueda ejecutarse directamente en la computadora.

### Ejemplo del proceso de transformación del código
En este ejemplo se describe el proceso por que el que se involucran las etapas de la transformación del código.

Comienzas escribiendo el código en Java para un programa simple que imprime "Hola Mundo". Este es tu **código fuente.** A continuación (con javac HolaMundo.java) utilizas el compilador de Java (javac) para convertir tu código fuente en **código objeto** (bytecode). 

Este paso transforma el código legible por humanos en un formato que la JVM puede entender pero no ejecutar directamente (HolaMundo.class).

Por último la Máquina Virtual de Java (JVM) ejecuta el archivo HolaMundo.class. Aquí se interpreta o se compila justo a tiempo (JIT) en **código ejecutable** (código máquina), permitiendo que el programa se ejecute en el hardware.

## 4.4. Reconocimiento de las características de la generación de código intermedio para su ejecución en máquinas virtuales

Las **máquinas virtuales** (como la JVM para Java o el CLR para .NET) utilizan un tipo especial de código intermedio (**código objeto**) conocido como **bytecode**. Este bytecode es generado a partir del código fuente y puede ser ejecutado en cualquier plataforma que tenga instalada la máquina virtual correspondiente. La ventaja de este sistema es que permite la portabilidad del software, pues el mismo código intermedio puede ejecutarse en diferentes tipos de hardware sin necesidad de recompilar. Las máquinas virtuales interpretan este bytecode en tiempo de ejecución, convirtiéndolo en instrucciones de máquina específicas del hardware en el que se está ejecutando.

---

***Ejercicio 4.1.*** *Relaciona los tipos de código con su característica más relevante, escribiendo el número asociado a la característica en el hueco correspondiente.*

| *Tipo de Código*             | *Características*                                           |
|------------------------------|-------------------------------------------------------------|
| *1. Código Fuente*           | *1. Escrito en Lenguaje Máquina pero no ejecutable.*        |
| *2. Código Objeto*           | *2. Escrito en algún Lenguaje de Programación de alto nivel, pero no ejecutable.*|
| *3. Código Ejecutable*       | *3. Escrito en Lenguaje Máquina y directamente ejecutable.* |

# 5. Proceso de obtención de código ejecutable a partir del código fuente; herramientas implicadas

El proceso de convertir código fuente en código ejecutable implica varias herramientas clave que optimizan y verifican el código a lo largo de diversas etapas.

## 5.1. Traductores de Lenguajes
Los traductores de lenguajes son herramientas fundamentales en la programación que convierten el código fuente escrito en un lenguaje de alto nivel a un formato que la máquina puede comprender y ejecutar. Existen varios tipos de traductores, cada uno con una función específica:

- **Compiladores**: Transforman el código fuente completo en código máquina de una vez, lo que puede ser más eficiente en tiempo de ejecución.
- **Intérpretes**: Ejecutan instrucciones de programa línea por línea, lo que permite una depuración y pruebas más sencillas durante el desarrollo.
- **Compiladores Justo a Tiempo (JIT)**: Combinan características de compiladores e intérpretes, compilando bloques de código en tiempo de ejecución para mejorar el rendimiento sin perder flexibilidad.

Estos traductores son esenciales para evaluar la funcionalidad y optimizar el rendimiento del software en diferentes entornos de hardware y sistemas operativos.

## 5.2. Depuradores
Los depuradores son herramientas cruciales que ayudan a los programadores a identificar y corregir errores de código. Funcionan permitiendo:

- **Puntos de Interrupción**: Detener la ejecución del programa en puntos específicos para examinar el estado actual de la ejecución.
- **Inspección de Variables**: Verificar los valores de las variables en diferentes etapas de la ejecución para entender el comportamiento del programa.
- **Ejecución Paso a Paso**: Avanzar a través del código línea por línea para observar cómo cambian los valores y cómo fluye la ejecución.

La utilización de depuradores es fundamental para garantizar la calidad y la funcionalidad del software, permitiendo a los desarrolladores entender mejor el flujo de ejecución y corregir errores antes de la implementación final.

Estas herramientas, traductores y depuradores, son vitales en el desarrollo de software, permitiendo la transformación eficiente del código fuente en aplicaciones ejecutables robustas y libres de errores.

# 6. Fases del desarrollo de una aplicación

El desarrollo de aplicaciones informáticas sigue un proceso estructurado que se divide en varias fases clave, cada una de las cuales juega un papel crucial en asegurar la calidad y la eficacia del software final. A continuación, se describen estas fases en detalle:

## 6.1. Análisis
En esta fase inicial, se identifican los requisitos funcionales y no funcionales del sistema y las necesidades de los usuarios. Se lleva a cabo una recopilación de requisitos mediante entrevistas, cuestionarios y reuniones con stakeholders. El objetivo es definir claramente lo que el software debe hacer para satisfacer las demandas y resolver los problemas existentes.

- **Requisitos funcionales:** Qué funciones tendrá que realizar la aplicación. Qué respuesta dará la aplicación ante todas las entradas. Cómo se comportará la aplicación en situaciones inesperadas.
- **Requisitos no funcionales:** Tiempos de respuesta del programa, legislación aplicable, tratamiento ante la simultaneidad de peticiones, etc.

## 6.2. Diseño
Basándose en los requisitos analizados, esta fase implica planificar la arquitectura del sistema y diseñar la interfaz de usuario y la experiencia del usuario (UI/UX). Se elaboran diagramas y modelos para visualizar la estructura y el flujo del software, asegurando que todos los componentes funcionarán juntos de manera cohesiva.

Es en esta fase donde se toman decisiones como las entidades y relaciones de las bases de datos, el SGBD a usar, la selección del lenguaje de programación, etc.

## 6.3. Codificación
En la fase de codificación, los desarrolladores escriben el código fuente utilizando lenguajes de programación adecuados. Esta fase transforma los diseños y modelos en un software funcional, siguiendo las mejores prácticas de programación para crear un código limpio, eficiente y seguro.

## 6.4. Pruebas
Una vez desarrollado el software, se realizan pruebas exhaustivas para asegurar que cumple con los requisitos y que está libre de errores. Las pruebas pueden ser manuales o automatizadas e incluyen pruebas unitarias, de integración, de sistema y de aceptación del usuario. No obstante las más importantes son:

- **Pruebas unitarias:** Consisten en probar, una a una, las diferentes partes de software y comprobar su funcionamiento (por separado, de manera independiente). JUnit es el entorno de pruebas para Java.
- **Pruebas de integración:** Se realizan una vez que se han realizado con éxito las pruebas unitarias y consistirán en comprobar el funcionamiento del sistema completo: con todas sus partes interrelacionadas.

## 6.5. Despliegue y explotación
Esta fase implica la implementación y el despliegue del software en un entorno de producción, donde los usuarios finales pueden comenzar a utilizarlo. 

Después de que el software ha sido probado y aprobado para su lanzamiento, se despliega en un entorno de producción. Dependiendo del tamaño y la naturaleza del software, esto puede realizarse en etapas y grupos pequeños o de una sola vez.

También se monitoriza el rendimiento del software para garantizar que opera eficientemente en condiciones reales.

## 6.6. Mantenimiento
El mantenimiento es una fase continua que comienza después del despliegue. Incluye la actualización del software, la corrección de errores y la mejora de funcionalidades. Esta fase asegura que el software sigue siendo útil y eficaz a lo largo del tiempo frente a nuevas necesidades y tecnologías emergentes.

## 6.7. Evaluación y Retiro 
Eventualmente, el software puede necesitar ser reemplazado o retirado. Antes de que esto ocurra, se realiza una evaluación final para determinar la eficacia del software y decidir los próximos pasos, como actualizaciones, re-ingeniería o retirada del software.

## 6.8. Documentación
La fase de documentación es fundamental en el desarrollo de software y puede ser considerada parte integral de varias fases del ciclo de vida del software. Aquí te explico cómo se integra la documentación durante el proceso:

1. Durante la Planificación y Análisis de Requisitos.
- Documentación de Requisitos: Se documentan las necesidades del usuario y los requisitos funcionales y técnicos del sistema. Esto sirve como un contrato entre los stakeholders y los desarrolladores.

2. En la Fase de Diseño: Documentación Técnica. 
- Se crean diagramas de arquitectura, modelos de datos, y especificaciones de diseño que describen cómo el sistema debe ser construido.

3. Durante la Implementación o Codificación. 
- Comentarios en el Código: Los desarrolladores documentan su código para explicar la lógica y las decisiones de implementación. Esto es crucial para el mantenimiento y la futura escalabilidad del software.

4. En la Fase de Pruebas.
- Documentación de Pruebas: Se documentan los casos de prueba, los resultados de las pruebas y los problemas encontrados. Esto ayuda a validar la cobertura de las pruebas y facilita la resolución de defectos.

5. Después del Despliegue.
- Manuales de Usuario y Documentación de Soporte: Se proporciona documentación que ayuda a los usuarios finales a entender cómo utilizar el software y cómo resolver problemas comunes.

6. Durante el Mantenimiento.
- Documentación de Mantenimiento: Se actualiza la documentación existente para reflejar los cambios, las mejoras y las correcciones de errores que se realizan durante el mantenimiento del software.

Incluir la documentación como parte integral de cada fase garantiza que todos los aspectos del sistema estén bien documentados, lo que reduce los malentendidos y mejora la calidad y la mantenibilidad del software.

Cada una de estas fases es esencial para el desarrollo exitoso de aplicaciones informáticas y debe ser cuidadosamente gestionada para garantizar que el producto final cumpla con las expectativas y requisitos establecidos.

# 7. Implementación de metodologías ágiles: Scrum

## 7.1. ¿Qué es SCRUM?
Scrum es un marco de trabajo para la gestión de proyectos que promueve la comunicación efectiva, la colaboración y el control sobre el proceso de desarrollo mediante ciclos iterativos y entregas incrementales de productos. Es ampliamente utilizado en el desarrollo de software y otras áreas donde se requiere manejar proyectos complejos.

## 7.2. Objetivos
El objetivo principal de Scrum es facilitar un proceso de desarrollo que sea adaptable, rápido y eficaz, capaz de entregar productos de alta calidad que cumplan con los requisitos del cliente en un ambiente de cambio continuo.

## 7.3. El manifiesto ágil
El manifiesto ágil, que es la base filosófica detrás de Scrum y otras metodologías ágiles, enfatiza:
- Individuos e interacciones sobre procesos y herramientas.
- Software funcionando sobre documentación extensiva.
- Colaboración con el cliente sobre negociación contractual.
- Respuesta ante el cambio sobre seguir un plan.

## 7.4. Ciclo de trabajo
El ciclo de trabajo en Scrum se divide en Sprints, periodos fijos durante los cuales se crea un producto incrementable. Cada Sprint sigue una estructura de planificación, ejecución, revisión y retrospección.

## 7.5. Roles
Scrum define varios roles claves, cada uno con responsabilidades específicas que facilitan la gestión y la ejecución del proyecto:
- **Product Owner:** El rol del Product Owner es crucial porque actúa como el punto de enlace entre el mercado, los clientes y el equipo técnico. Su capacidad para entender y comunicar las necesidades del negocio, **priorizar el trabajo** y tomar decisiones informadas es esencial para el éxito del proyecto ágil. 
Un Product Owner efectivo puede significar la diferencia entre un producto que satisface perfectamente las necesidades del mercado y uno que no logra impactar.
- **Scrum Master:** ayuda al equipo a entender y aplicar Scrum y sus prácticas. Se asegura de que el equipo trabaje según los principios de Scrum. Además ayuda al equipo a mejorar su dinámica, eficiencia y cohesión. Trabaja para eliminar obstáculos que puedan impedir que el equipo alcance sus objetivos del sprint. Parte de su responsabilidad es proteger al equipo de interrupciones y distracciones externas, facilitando un ambiente óptimo donde puedan concentrarse en las tareas del sprint.
- **Equipo de Desarrollo:** Realiza el trabajo técnico para desarrollar el producto.
- **Cliente:** Actúa como un stakeholder clave que proporciona requisitos iniciales y continua retroalimentación a lo largo del proyecto para asegurar que el producto final cumpla sus expectativas y necesidades.

## 7.6. Artefactos
Los artefactos en Scrum son herramientas o documentos que proporcionan información clave sobre el progreso del proyecto y sus requisitos:
- **Product Backlog:** Lista de todas las características deseadas en el producto.
- **Sprint Backlog:** Conjunto de ítems del Product Backlog seleccionados para el Sprint, junto con un plan para entregar el incremento del producto y alcanzar el objetivo del Sprint.
- **Incremento:** Suma de todos los ítems del Product Backlog completados durante el Sprint.
- **Artefacto:** Un artefacto es cualquier documento o herramienta que el equipo Scrum usa para capturar y compartir información del proyecto.

## 7.7. Reuniones
Scrum utiliza varias reuniones estructuradas para maximizar la claridad y eficiencia:
- **Sprint Planning:** Donde se decide qué se va a trabajar en el Sprint.
- **Daily Scrum:** Reuniones diarias para sincronizar actividades y crear un plan para las próximas 24 horas.
- **Sprint Review:** Para revisar el trabajo hecho y adaptar el Product Backlog si es necesario.
- **Sprint Retrospective:** Para mejorar el proceso y el rendimiento del equipo.

## 7.8. Estimaciones
En Scrum, las estimaciones ayudan a determinar la cantidad de trabajo y el tiempo necesario para completar las tareas del proyecto:
- **Planning Poker:** Una técnica lúdica que utiliza cartas con números de la sucesión de Fibonacci para estimar el esfuerzo de las tareas. Cada miembro del equipo tiene un mazo de cartas, y en cada ronda de estimación, todos seleccionan una carta que represente su estimación del esfuerzo necesario.
- **Baraja de Planificación:** Cada integrante del equipo dispone de una baraja de cartas numéricas, generalmente basadas en la sucesión de Fibonacci, para asignar puntos de esfuerzo a cada tarea, lo que promueve el consenso y evita los sesgos en las estimaciones individuales.

## 7.9. SCRUM Board
El Scrum Board es una herramienta visual que ayuda al equipo a ver el progreso durante el Sprint, mostrando todas las tareas del Sprint Backlog categorizadas en diferentes estados:
- **Pendiente:** Tareas que aún no han comenzado.
- **En Progreso:** Tareas que están activamente siendo trabajadas.
- **A la Espera:** Tareas que están bloqueadas o en espera de recursos o información.
- **Validado:** Tareas que han sido completadas y revisadas.
- **Visualización:** Se suelen utilizar colores, pegatinas y fotos de los participantes para facilitar la visualización del progreso y la asignación de tareas.

## 7.10. El contrato ágil
El contrato ágil se adapta a las necesidades cambiantes del proyecto y fomenta una colaboración continua:
- **Backlog de Producto Bien Definido:** Fundamental para establecer expectativas claras sobre los entregables.
- **Ítem 'Completado':** Necesidad de definir claramente qué significa que una tarea está terminada.
- **Demostraciones y Feedback Continuo:** Cruciales para asegurar que el producto satisface las necesidades del cliente.
- **Cambio de Requisitos:** El marco ágil permite ajustar prioridades y añadir nuevos requisitos sin desestabilizar el proyecto.
- **Clausulas de Finalización Anticipada:** Comunes en contratos ágiles, estas cláusulas permiten la terminación del proyecto bajo ciertas condiciones, como el cumplimiento de los objetivos antes de lo esperado.

## 7.11. Ejemplo práctico de SCRUM
Supongamos que un equipo está desarrollando una aplicación móvil de Lista de Tareas. 

### Objetivo
Desarrollar una aplicación móvil básica de lista de tareas que permita a los usuarios crear, editar, eliminar y clasificar tareas.

### Descripción del Proyecto
Los estudiantes trabajarán en equipos para diseñar y desarrollar una aplicación móvil. La aplicación debe tener una interfaz de usuario intuitiva y funcionalidades básicas para manejar tareas diarias.

### Roles
- **Product Owner:** Un profesor o un estudiante seleccionado que será responsable de mantener el Product Backlog y priorizar las tareas.
- **Scrum Master:** Un estudiante que facilitará las reuniones Scrum y ayudará a resolver cualquier impedimento que el equipo encuentre.
- **Equipo de Desarrollo:** Los estudiantes que programarán la aplicación.

### Artefactos
- **Product Backlog:** Lista inicial de requisitos (historias de usuario) proporcionada, que puede incluir:
  - Como usuario, quiero agregar nuevas tareas para gestionar lo que necesito hacer.
  - Como usuario, quiero marcar las tareas como completadas para llevar un seguimiento de mi progreso.
  - Como usuario, quiero editar las tareas para actualizar detalles o correcciones.
  - Como usuario, quiero eliminar tareas que ya no son necesarias.
  - Como usuario, quiero ordenar las tareas por fecha o prioridad.
- **Sprint Backlog:** Selección de historias de usuario que el equipo se compromete a completar durante el primer Sprint.
- **Incremento:** La versión funcional de la aplicación al final de cada Sprint.

### Sprints
Cada Sprint debería durar una semana. Al final de cada Sprint, el equipo deberá mostrar un incremento funcional de la aplicación.

### Proceso
1. **Sprint Planning:** Decidir qué historias de usuario se incluirán en el primer Sprint.
2. **Daily Scrum:** Reuniones diarias cortas para discutir el progreso, los impedimentos y el próximo paso.
3. **Desarrollo:** Programación y diseño de la aplicación según las historias de usuario seleccionadas.
4. **Sprint Review:** Presentación del trabajo realizado al Product Owner y otros stakeholders (puede incluir otros equipos o profesores).
5. **Sprint Retrospective:** Discusión sobre qué fue bien, qué se puede mejorar y cómo implementar esos cambios en el próximo Sprint.

### Evaluación
- **Funcionalidad de la Aplicación:** ¿La aplicación funciona como se esperaba según los criterios de aceptación de las historias de usuario?
- **Colaboración y Comunicación:** ¿Cómo trabajó el equipo juntos? ¿Fueron efectivas las reuniones Scrum?
- **Proceso y Mejoras:** ¿Qué procesos implementados fueron efectivos y cuáles necesitan ajustes?

### Entregables
- Aplicación móvil funcionando al final del último Sprint.
- Documentación breve que describa el trabajo realizado, los problemas encontrados, y cómo se solucionaron.

