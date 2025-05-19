---
layout: default
title: UD06. Programación de bases de datos.
permalink: /bases-de-datos/ud06/teoria/
author: Teo Rojas
date: Abril 2025
abstract: Sinopsis de la unidad 06
---

# Índice UD06. Programación de bases de datos
1. [Introducción a los lenguajes de programación embebidos en bases de datos](#1-introducción-a-los-lenguajes-de-programación-embebidos-en-bases-de-datos)
2. Procedimientos almacenados
3. Funciones definidas por el usuario
4. Cursores
5. Manejo de errores y control de flujo en programación SQL
6. Triggers (Disparadores)
7. Consideraciones de rendimiento y seguridad en programación de bases de datos
8. Comparativa entre programar en el SGBD o en el lenguaje del backend
9. Creación y mantenimiento de scripts SQL

# 1. Introducción a los lenguajes de programación embebidos en bases de datos

Los lenguajes de programación embebidos en bases de datos, también conocidos como lenguajes procedurales embebidos, permiten definir lógica avanzada directamente en el sistema gestor de bases de datos (SGBD). A diferencia del lenguaje SQL estándar, orientado principalmente a consultas y modificaciones de datos, estos lenguajes ofrecen herramientas adicionales para el desarrollo de lógica de negocio compleja mediante procedimientos almacenados, funciones, disparadores (triggers) y estructuras de control avanzadas.

Estos lenguajes, tales como PL/SQL en Oracle, T-SQL en SQL Server o PL/pgSQL en PostgreSQL, permiten implementar algoritmos sofisticados que pueden ejecutarse directamente dentro del servidor de bases de datos, proporcionando múltiples ventajas. La ejecución directa en el servidor permite reducir el tráfico de red, ya que únicamente se transmiten los resultados finales al cliente, lo que disminuye considerablemente la cantidad de datos transferidos. Además, la lógica de negocio almacenada directamente en la base de datos aumenta la seguridad, ya que limita el acceso a los datos y evita manipulaciones externas indebidas. Otro beneficio clave es el mejor rendimiento, debido a que la ejecución en el servidor de bases de datos aprovecha al máximo sus recursos, optimizados para gestionar datos de manera eficiente. Finalmente, estos lenguajes permiten reutilizar código de forma centralizada, facilitando su accesibilidad a múltiples aplicaciones o usuarios y mejorando la consistencia y mantenibilidad del sistema.

Este tipo de programación resulta particularmente valiosa en entornos donde múltiples aplicaciones interactúan con la misma base de datos o cuando las operaciones implican un procesamiento intensivo de datos. El uso de procedimientos y funciones embebidas reduce significativamente la redundancia del código, mejora la eficiencia y mantiene la integridad del sistema.

MySQL es uno de los sistemas de gestión de bases de datos más populares que soporta programación embebida mediante su propio lenguaje procedural conocido como SQL Procedural Language (SQL/PSM). Este lenguaje permite crear procedimientos almacenados, funciones y disparadores utilizando estructuras de control como bucles, condiciones y manejo de excepciones. Los procedimientos almacenados en MySQL pueden encapsular múltiples instrucciones SQL, permitiendo realizar tareas complejas con un simple llamado desde las aplicaciones cliente. Además, MySQL ofrece funciones definidas por el usuario, ideales para operaciones que devuelven valores específicos y que se integran fácilmente en consultas SQL. Otro aspecto destacable es el manejo de cursores, que permiten recorrer y procesar conjuntos de resultados de forma secuencial, lo que es especialmente útil en operaciones que requieren procesamiento fila por fila.

Además, MySQL dispone de un potente mecanismo para el manejo de errores y excepciones que permite realizar acciones alternativas o recuperarse adecuadamente ante situaciones inesperadas. El control de flujo avanzado, combinado con el manejo robusto de excepciones, hace que la programación en MySQL sea muy versátil y eficaz para diversas necesidades empresariales y técnicas.

En esta unidad didáctica se profundizará en cada uno de estos elementos, ofreciendo ejemplos prácticos y detallados para ilustrar cómo implementar soluciones eficientes y seguras mediante la programación embebida en bases de datos, especialmente en el contexto de MySQL.

# 6.2. Procedimientos almacenados

En los temas anteriores se han visto distintas instrucciones SQL ejecutadas de forma aislada, lo cual es suficiente para comprender su funcionamiento individual. Sin embargo, en entornos reales, las aplicaciones no se comunican con la base de datos lanzando consultas sueltas, sino que ejecutan secuencias de instrucciones: validaciones, actualizaciones, cálculos, inserciones condicionales… Esto implica una interacción constante entre el software cliente (por ejemplo, una aplicación de escritorio o una web) y el servidor de base de datos, generando múltiples viajes de ida y vuelta, especialmente en redes remotas.

Para evitar esta dependencia y reducir el tráfico entre la aplicación y el servidor, existen los procedimientos almacenados. Se trata de bloques de código SQL que se crean una sola vez y se almacenan en el servidor, listos para ejecutarse cuando se necesiten. Estos procedimientos encapsulan toda la lógica necesaria para llevar a cabo una operación compleja, como insertar un registro validado, actualizar varios valores en cadena o devolver un resultado específico tras ejecutar varias consultas internas. Su uso es habitual en arquitecturas modernas, donde se busca separar la lógica de negocio (almacenada en la base de datos) del código cliente.

MySQL, al igual que otros SGBD, permite definir procedimientos mediante una sintaxis propia, compatible con el estándar SQL/PSM. Un procedimiento se crea con la instrucción `CREATE PROCEDURE`, y puede tener parámetros de entrada, salida o ambos. Su ejecución se realiza con `CALL`.

A continuación, se presentan varios ejemplos prácticos aplicados a la base de datos `dragonball`, utilizando la tabla `guerreros_z` y otras tablas auxiliares si fuera necesario.

Como primer ejemplo, puede crearse un procedimiento simple llamado `mostrar_guerreros`, que no recibe parámetros y simplemente muestra el contenido básico de la tabla `guerreros_z`:

```sql
DELIMITER //

CREATE PROCEDURE mostrar_guerreros()
BEGIN
    SELECT nombre, raza, nivel_poder
    FROM guerreros_z;
END //

DELIMITER ;
```

Este procedimiento puede ejecutarse desde MySQL con una simple llamada:

```sql
CALL mostrar_guerreros();
```

En otras ocasiones, puede ser útil que el procedimiento reciba un parámetro para personalizar su ejecución. Por ejemplo, si se desea buscar todos los guerreros de una determinada raza, se puede definir un procedimiento con un parámetro de entrada:

```sql
DELIMITER //

CREATE PROCEDURE buscar_por_raza(IN raza_buscada VARCHAR(50))
BEGIN
    SELECT nombre, nivel_poder
    FROM guerreros_z
    WHERE raza = raza_buscada;
END //

DELIMITER ;
```

La llamada a este procedimiento podría ser:

```sql
CALL buscar_por_raza('Saiyan');
```

Los procedimientos también permiten realizar operaciones de escritura, como inserciones o actualizaciones. Supongamos que se ha creado una tabla `combates`, con los campos `guerrero`, `enemigo`, `resultado` y `fecha`. Puede definirse un procedimiento `registrar_combate` que inserte automáticamente un nuevo combate:

```sql
CREATE TABLE IF NOT EXISTS combates (
    id INT AUTO_INCREMENT PRIMARY KEY,
    guerrero VARCHAR(50),
    enemigo VARCHAR(50),
    resultado VARCHAR(20),
    fecha DATE
);

DELIMITER //

CREATE PROCEDURE registrar_combate(
    IN g_z VARCHAR(50),
    IN enemigo VARCHAR(50),
    IN resultado VARCHAR(20),
    IN fecha DATE
)
BEGIN
    INSERT INTO combates (guerrero, enemigo, resultado, fecha)
    VALUES (g_z, enemigo, resultado, fecha);
END //

DELIMITER ;
```

De esta manera, desde el cliente se puede registrar un nuevo combate con una única orden:

```sql
CALL registrar_combate('Goku', 'Freezer', 'Victoria', '2025-04-16');
```

Otra posibilidad interesante es utilizar parámetros de salida. En el siguiente procedimiento, se devuelve el nivel de poder de un guerrero concreto en una variable que se puede consultar desde fuera:

```sql
DELIMITER //

CREATE PROCEDURE obtener_nivel_poder(
    IN nombre_guerrero VARCHAR(50),
    OUT poder INT
)
BEGIN
    SELECT nivel_poder INTO poder
    FROM guerreros_z
    WHERE nombre = nombre_guerrero;
END //

DELIMITER ;
```

Este procedimiento se ejecuta en dos pasos: primero se declara una variable en el cliente, y después se llama al procedimiento:

```sql
SET @poder_resultado = 0;
CALL obtener_nivel_poder('Gohan', @poder_resultado);
SELECT @poder_resultado;
```

En definitiva, los procedimientos almacenados permiten encapsular lógica de forma eficiente y segura, reduciendo la dependencia del código externo y mejorando la organización de las operaciones con la base de datos. MySQL permite eliminar procedimientos con `DROP PROCEDURE` y consultar su definición con `SHOW CREATE PROCEDURE nombre;`. Su uso es clave en el desarrollo profesional, especialmente cuando se quiere garantizar integridad, rendimiento y mantenimiento en aplicaciones con alta interacción con datos.