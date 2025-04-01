---
layout: default
title: UD05. Elaboración de diagramas de clases.
permalink: /entornos-de-desarrollo/ud05/teoria/
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
   3.3. [Agregación y Composición](#33-agregación-y-composición)  
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

Para ilustrar esta notación básica, obsérvese el siguiente ejemplo: una clase `Conductor` se relaciona con una clase `Coche` mediante una asociación unidireccional `conduce`. Esta relación refleja que un conductor utiliza un coche, sin necesidad de representar aún detalles internos como atributos o métodos:

![Diagrama de clases de conductor conduce coche](/entornos-de-desarrollo/imgs/ud05/ud05_conductorConduceCoche.svg)

En los apartados siguientes se abordará en detalle cómo se definen y representan las clases, atributos, métodos y su visibilidad, así como los distintos tipos de relaciones entre clases. y la simbología que se utilizará en el resto del tema. 

## 2.1. Clases: atributos, métodos y visibilidad

La notación de los diagramas de clases en UML permite representar gráficamente los elementos fundamentales de un sistema orientado a objetos. Cada clase se representa mediante un rectángulo dividido en tres secciones: el nombre de la clase (parte superior), sus atributos (parte central) y sus métodos (parte inferior). Por ejemplo, el siguiente diagrama muestra la clase `Coche`, con sus atributos privados (`marca`, `modelo` y `año`) y sus métodos públicos (`arrancar()`, `frenar()` y `acelerar(velocidad: int)`), todos con notación UML adecuada.

![Diagrama de clases de coche](/entornos-de-desarrollo/imgs/ud05/ud05_classCoche.svg)

Para cada atributo o método puede especificarse su visibilidad mediante los siguientes símbolos:
- `+` indica visibilidad **pública**: el atributo o método puede ser accedido desde cualquier otra clase.
- `-` indica visibilidad **privada**: solo puede ser accedido desde dentro de la propia clase.
- `#` indica visibilidad **protegida**: puede ser accedido desde la propia clase y desde clases hijas que hereden de ella.

Además, es habitual indicar el **tipo de dato** de cada atributo (por ejemplo, `modelo: string`) o el **tipo de valor de retorno** de los métodos (por ejemplo, `arrancar(): void`). También pueden incluirse los **parámetros de entrada** cuando el método lo requiera, con su tipo correspondiente.

También es posible reflejar **valores por defecto** para los atributos. Esto indica que, si no se proporciona un valor al crear un objeto, se asignará automáticamente uno predefinido. Por ejemplo, un atributo como `combustible: string = 'gasolina'` sugiere que todos los objetos de la clase tendrán ese valor salvo que se indique otro.

Por convención, se recomienda utilizar la notación **camelCase** para nombrar tanto los atributos como los métodos. Esto significa que el nombre comienza en minúscula y cada nueva palabra se inicia con mayúscula, como en `numeroMatricula` o `arrancarMotor()`. Esta convención mejora la legibilidad del diagrama y favorece la coherencia con los lenguajes de programación más comunes.

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

## 3.1. Asociación

La **asociación** es una de las relaciones más básicas y frecuentes en los diagramas de clases UML. Representa una **conexión estructural** entre dos o más clases, indicando que los objetos de una clase están relacionados con objetos de otra. Esta relación no implica necesariamente dependencia fuerte ni propiedad, sino simplemente una conexión entre entidades que necesitan conocerse para interactuar.

Se representa mediante una **línea recta** que conecta dos clases. En caso de ser **unidireccional**, se añade una flecha en el extremo que indica qué clase conoce a la otra.

Por ejemplo, en el siguiente diagrama se muestra que la clase `Conductor` se asocia con la clase `Coche` mediante la relación `conduce`. Esta es una asociación unidireccional: el conductor necesita conocer el coche que conduce, pero el coche no tiene por qué conocer al conductor.

![Asociación simple entre Conductor y Coche](/entornos-de-desarrollo/imgs/ud05/ud05_conductorConduceCoche.svg)

Este tipo de asociación es muy habitual en sistemas orientados a objetos donde una clase necesita interactuar con otra sin que exista necesariamente una relación de jerarquía o composición.

En este tipo de asociaciones, suele existir un **rol** para describir la función que cada clase desempeña **dentro de esa relación**. Los roles se colocan junto a los extremos de la línea de asociación, indicando el papel que cumple cada clase dentro del vínculo.

En el siguiente ejemplo, `Conductor` tiene el rol de **usuario**, mientras que `Coche` adopta el rol de **vehículo**. La flecha indica que es el conductor el que conduce al vehículo. Esta representación añade claridad al diagrama, sobre todo cuando las clases participan en múltiples asociaciones.

![Asociación con roles entre Conductor y Coche](/entornos-de-desarrollo/imgs/ud05/ud05_conductorConduceCocheRoles.svg)

Los **roles no son instancias**, sino **etiquetas semánticas** que aclaran cómo se comporta cada clase en esa asociación concreta.

Es posible también que una clase pueda estar asociada con varias clases diferentes. Esto ocurre cuando múltiples clases tienen una relación semejante con una misma entidad. En este ejemplo, `Conductor`, `Pasajero` y `Técnico` están todos asociados con la clase `Coche`, cada uno cumpliendo un rol distinto:

- El `Conductor` **conduce** el coche (rol: `usuario`).
- El `Pasajero` **viaja** en el coche (rol: `ocupante`).
- El `Técnico` **arregla** al coche (rol: `mecánico` o `responsable`).

![Asociación múltiple con roles](/entornos-de-desarrollo/imgs/ud05/ud05_ConductorPasajeroTecnicoCocheRoles.svg)

Estas asociaciones múltiples pueden facilitar la comprensión del modelo en situaciones reales donde una misma clase (como `Coche`) se relaciona con varios actores desde distintos enfoques funcionales.

### 3.1.1. Multiplicidades en las asociaciones

En UML, las asociaciones pueden especificar **multiplicidades** en sus extremos para indicar cuántos objetos de una clase pueden estar relacionados con cuántos objetos de la otra. Esta información aparece junto a los extremos de la línea de asociación.

Las multiplicidades más comunes incluyen:

- `1`: exactamente un objeto.
- `0..1`: cero o uno (es opcional).
- `*`: cero o más objetos.
- `1..*`: uno o más objetos.
- `n..m`: un número dentro de un rango específico.

Por ejemplo, si se desea representar que **un coche puede ser arreglado por uno o varios técnicos**, se usaría la multiplicidad `1..*` en el extremo del `Técnico`. Esto indicaría que, aunque siempre debe haber al menos un técnico asociado, puede haber muchos:

![Asociación múltiplicidad](/entornos-de-desarrollo/imgs/ud05/ud05_tecnicosArreglanVehiculo.svg)

Esta notación permite expresar restricciones importantes en el diseño del sistema, asegurando que ciertas relaciones existan siempre o tengan una cantidad mínima o máxima de instancias involucradas.


### 3.1.2. Restricciones en asociaciones múltiples

En ciertos casos, una clase puede estar asociada con varias clases posibles, pero debe cumplirse la condición de que **solo una de esas asociaciones pueda activarse a la vez**. Esto se denomina **restricción de exclusividad**.

Un ejemplo podría ser el caso de una clase `Conductor` que puede conducir tres tipos de vehículos: `Coche`, `Camión`o `Motocicleta`, pero **nunca a más de uno al mismo tiempo**. Aunque la clase `Conductor` se asocia con las tres clases de vehículo, se establece una restricción que impide que un mismo conductor conduzca varios tipos simultáneamente. Esta situación puede representarse en UML mediante una **línea discontinua con la etiqueta `{or}`**, que indica la exclusividad entre asociaciones.

![Asociación con restricciones](/entornos-de-desarrollo/imgs/ud05/ud05_asociacionConRestriccion.svg)


Este tipo de restricción resulta útil en contextos donde se deben modelar decisiones o asignaciones mutuamente excluyentes, como en sistemas logísticos o de asignación de recursos.

### 3.1.3. Clase asociación

En ciertas ocasiones, la relación entre dos clases no puede representarse únicamente mediante una línea de asociación, ya que dicha relación incluye información adicional que no pertenece de forma exclusiva a ninguna de las dos clases. En estos casos, se recurre a la figura de la **clase de asociación**.

Una clase de asociación es una clase especial que se utiliza para **modelar una relación que posee atributos propios**. Este tipo de clase permite capturar detalles adicionales sobre la conexión entre dos entidades. Se representa gráficamente con una **línea discontinua** que la une a la asociación entre las clases implicadas.

Para ilustrar este concepto, puede considerarse el caso de una autoescuela en la que se desea modelar la relación entre los objetos de tipo `Conductor` (alumnos) y `Coche`. Aunque inicialmente podría parecer suficiente con una asociación directa, se identifican detalles adicionales como la **fecha de la práctica**, la **duración** de la sesión o el **tipo de conducción** (urbana, interurbana, nocturna…). Estos datos no pertenecen únicamente a `Conductor` ni a `Coche`, sino a la relación concreta entre ambos en un contexto específico.

En este caso, es apropiado introducir una clase de asociación llamada `ClasePractica`. Esta nueva clase contendría atributos como `fecha`, `duracion` o `tipo`, que por simplicidad de diagrama no se representarán, y se relaciona mediante una línea discontinua con la asociación entre `Conductor` y `Coche`.

![Asociación con clase asociación](/entornos-de-desarrollo/imgs/ud05/ud05_claseAsociacion.svg)

Gracias a esta estructura, es posible representar situaciones como que un mismo conductor realice varias clases prácticas en diferentes coches, o que un mismo coche sea utilizado por diferentes conductores en distintas sesiones. De este modo, se enriquece el modelo y se obtiene un diseño más fiel a la realidad.

El uso de clases de asociación resulta especialmente útil cuando en la implementación se requeriría una tabla intermedia con atributos propios, tal como ocurre habitualmente en bases de datos relacionales.

Este recurso, aunque menos frecuente que las asociaciones simples o con multiplicidad, permite representar relaciones complejas de forma más completa y precisa dentro de los diagramas de clases UML.

## 3.2. Herencia

La **herencia** es una relación fundamental en los diagramas de clases UML que permite representar jerarquías entre clases en un sistema orientado a objetos. Esta relación indica que una clase hija (también llamada subclase) **hereda** los atributos y métodos definidos en una clase padre (o superclase), pudiendo además extender o modificar su comportamiento.

La herencia refleja una relación del tipo **“es un”**, en la que las subclases son una especialización de la clase general. Gracias a ella, se favorece la **reutilización de código** y la **organización lógica** del sistema, agrupando comportamientos comunes en una clase base y definiendo diferencias específicas en las clases derivadas.

En UML, la herencia se representa mediante una línea con un **triángulo blanco** que apunta desde la subclase hacia la superclase. Esta notación deja clara la relación de generalización/especialización.

![Diagrama de clases herencia SuperClase-SubClase](/entornos-de-desarrollo/imgs/ud05/ud05_herenciaSuperSubClase.svg)

Por ejemplo, considérese una empresa de transporte en la que existen diferentes tipos de empleados: conductores y técnicos. Ambos comparten ciertas características como el nombre, la antigüedad o el número de identificación, pero cada uno tiene funciones específicas. En este caso, puede definirse una superclase `Empleado`, de la cual derivan las clases `Conductor` y `Técnico`.

La clase `Conductor` puede representar empleados que conducen vehículos asignados, mientras que `Técnico` hace referencia a quienes realizan tareas de mantenimiento. Aunque ambos comparten atributos y parte del comportamiento, también presentan diferencias claras que justifican su especialización.

Esta jerarquía puede representarse en UML como se muestra en el siguiente diagrama:

![Diagrama de clases herencia Empleado-Conductor-Técnico](/entornos-de-desarrollo/imgs/ud05/ud05_herenciaEmpleadoConductorTecnico.svg)

Gracias a esta estructura, se pueden modelar sistemas más organizados, en los que las clases hijas heredan automáticamente los atributos y métodos generales definidos en la clase padre. Esto permite evitar duplicaciones, mantener la coherencia del diseño y facilita la futura evolución del sistema.

En sistemas más complejos, puede utilizarse el concepto de **clase abstracta**, que representa una entidad genérica que no puede ser instanciada directamente, pero que sirve como base común para clases más específicas. En UML, una clase abstracta se representa con su nombre en *cursiva* o se indica con la etiqueta `{abstract}`.

Por último, es importante distinguir entre **herencia** y **asociación**. La herencia se emplea cuando existe una relación jerárquica del tipo “es un”, como en el caso de que un `Conductor` **es un** `Empleado`. En cambio, la asociación se utiliza para modelar relaciones estructurales o funcionales entre objetos que colaboran pero no comparten una jerarquía, como cuando un `Conductor` **conduce un** `Coche`. Esta diferenciación es clave para representar correctamente la lógica del sistema.

## 3.3. Agregación y Composición

En UML existen dos formas principales de representar relaciones "todo-parte" entre clases: la **agregación** y la **composición**. Ambas indican que una clase contiene o se relaciona estructuralmente con otras, pero **difieren en el grado de dependencia** entre los elementos.

### Agregación

La **agregación** representa una relación estructural en la que el objeto todo contiene o agrupa a otras clases, pero sin poseerlas en sentido estricto. Las partes **pueden existir de forma independiente** del todo. Si el objeto principal desaparece, las partes pueden seguir existiendo por separado o asociarse a otros objetos.

En UML, se representa con una **línea con un rombo blanco (`◇`)** en el extremo del objeto contenedor. 

![Diagrama de clases Agregación](/entornos-de-desarrollo/imgs/ud05/ud05_agregacion.svg)

Por ejemplo, un `Coche` puede tener asociado un:

- `Remolque`: que se engancha y desengancha cuando se necesita.
- `Seguro`: un contrato que cubre el coche, pero puede cambiarse, renovarse o anularse.
- `GPS`: un dispositivo que puede instalarse, extraerse o ser compartido entre varios coches.

Estas relaciones representan una vinculación **estructural**, pero no de dependencia vital entre las clases.

Cada uno de estos elementos está conectado funcionalmente al coche, pero **no forman parte de su estructura esencial**. Pueden seguir existiendo aunque el coche deje de utilizarse o desaparezca del sistema.

### Composición

La **composición**, en cambio, representa una relación mucho más fuerte. Indica que el objeto todo **posee completamente** a sus partes, y que estas **no pueden existir de forma independiente**. El ciclo de vida de las partes está completamente ligado al del contenedor.

En UML, se representa con una **línea con un rombo negro (`◆`)** en el extremo del objeto contenedor. 

![Diagrama de clases Composición](/entornos-de-desarrollo/imgs/ud05/ud05_composicion.svg)

Por ejemplo, un `Coche` está formado por componentes como:

- `Ruedas`
- `Chasis`
- `Sistema de frenos`

Estos elementos forman parte **inseparable** de la estructura interna del coche. No se comparten con otros vehículos ni se gestionan de forma aislada.

Si el coche se elimina del sistema, sus ruedas o su sistema de frenos dejan también de tener sentido como entidades.

### Diferencias clave

| Aspecto                  | Agregación                          | Composición                          |
|--------------------------|--------------------------------------|--------------------------------------|
| Existencia independiente | Sí, los objetos pueden seguir vivos | No, dependen del objeto contenedor   |
| Ciclo de vida            | Independiente                       | Compartido                          |
| Representación UML       | Rombo blanco (`◇`)                  | Rombo negro (`◆`)                   |
| Ejemplo                  | `Coche` con `Remolque`, `GPS`       | `Coche` con `Ruedas`, `Chasis`      |

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

# 5. Generación de Código y Diagramas

Una de las grandes ventajas de utilizar herramientas de modelado como los diagramas de clases UML es la posibilidad de **automatizar tareas** en el desarrollo de software. Entre estas tareas, destacan dos procesos complementarios: la **generación de código a partir de diagramas** y la **generación de diagramas a partir de código existente**.

Estas capacidades permiten ahorrar tiempo, reducir errores y mantener una coherencia directa entre el diseño y la implementación. En el caso de equipos grandes o proyectos complejos, esta sincronización resulta especialmente útil para documentar y mantener el sistema actualizado a lo largo de su ciclo de vida.

En los siguientes apartados se explorarán ambos procesos, con ejemplos y herramientas que permiten pasar fácilmente de un modelo UML a un código fuente funcional, y viceversa.

## 5.1. Generación de código a partir de diagramas de clases

Una funcionalidad muy útil presente en muchas herramientas de modelado es la generación automática de código a partir de diagramas de clases. Este proceso, conocido como *forward engineering*, permite transformar un modelo UML en la estructura base del código fuente, respetando nombres de clases, atributos, métodos y, en algunos casos, relaciones de herencia o asociación.

Por ejemplo, si en el diseño se ha definido una clase `Coche` con atributos como `marca` y `modelo`, y métodos como `arrancar()` y `frenar()`, una herramienta CASE puede generar un archivo con esa estructura ya escrita en el lenguaje de programación deseado. Esto ahorra tiempo en la fase de implementación inicial y permite mantener coherencia entre lo diseñado y lo programado.

Un ejemplo sencillo de cómo se vería ese código generado a partir de un diagrama podría ser el siguiente en Python:

```python
class Coche:
   def __init__(self, marca: str, modelo: str):
      self.marca = marca
      self.modelo = modelo

   def arrancar(self):
      print("El coche ha arrancado.")

   def frenar(self):
      print("El coche está frenando.")
```

Este tipo de código puede ser generado automáticamente por herramientas como **StarUML**, **Enterprise Architect** o **Modelio**. En particular, **Modelio** es una opción gratuita, multiplataforma y con soporte para Linux, que permite diseñar diagramas de clases y exportarlos a código en diferentes lenguajes, incluyendo Java y C++. Aunque su soporte para Python es limitado, sigue siendo una alternativa potente para explorar este tipo de automatizaciones.

Por otro lado, herramientas como **PlantUML**, que se integran como plugin en editores como Visual Studio Code, no están orientadas a generar código desde el diagrama, sino más bien al revés: permiten generar diagramas a partir de descripciones textuales. Son muy útiles para documentación técnica, pero no se consideran herramientas CASE.

La generación de código a partir de diagramas no implica que el programa esté completamente funcional, ya que la lógica de negocio deberá implementarse manualmente. Sin embargo, permite establecer una estructura inicial clara y coherente con el diseño, especialmente útil en fases tempranas del desarrollo o en entornos colaborativos donde varios miembros deben trabajar sobre una misma base común.

## 5.2. Generación de diagramas de clases a partir del código

Además de poder generar código a partir de diagramas, muchas herramientas permiten realizar el proceso inverso: **analizar el código existente** y generar automáticamente un diagrama de clases que represente su estructura. Este proceso se conoce como *reverse engineering* y resulta especialmente útil para documentar proyectos ya desarrollados o para comprender código fuente ajeno.

El análisis inverso permite visualizar las clases definidas en un proyecto, sus atributos, métodos y relaciones entre ellas, como herencia o asociaciones. Así, se obtiene una representación visual que facilita la comprensión del sistema, la identificación de errores de diseño o la detección de dependencias no deseadas.

Por ejemplo, si se tiene un archivo de Python como el siguiente:

```python
class Vehiculo:
   def __init__(self, marca: str):
      self.marca = marca

class Coche(Vehiculo):
   def __init__(self, marca: str, modelo: str):
      super().__init__(marca)
      self.modelo = modelo
```

Una herramienta con capacidades de ingeniería inversa podría detectar que `Coche` hereda de `Vehiculo`, y que ambas clases contienen atributos y constructores, generando automáticamente el diagrama de clases correspondiente.

Existen múltiples herramientas que permiten generar diagramas a partir del código, tanto gratuitas como comerciales. Algunas de las más conocidas son:

- **ObjectAid** (plugin para Eclipse), muy usado en entornos Java.
- **Visual Paradigm** (versión Community y comercial), compatible con múltiples lenguajes.
- **Pyreverse** (incluido en Pylint), permite generar diagramas UML a partir de código Python.
- **PlantUML** (en combinación con plugins), aunque requiere trabajo manual para integrar con el análisis de código.

Este tipo de herramientas es muy útil en proyectos heredados o en entornos donde no se trabajó previamente con diseño UML. Permite reconstruir la arquitectura visual del sistema y utilizarla como soporte para refactorización, ampliaciones o documentación.

La ingeniería inversa no siempre produce diagramas perfectos, ya que depende de la calidad del código fuente y de la cantidad de información que pueda extraerse. Aun así, es una herramienta poderosa para mantener el sistema alineado con su representación visual y para fomentar el análisis estructurado en fases de mantenimiento o evolución del software.
