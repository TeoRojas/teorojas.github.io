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