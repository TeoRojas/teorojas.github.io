---
layout: default
title: UD05. El lenguaje de consulta de datos.
permalink: /bases-de-datos/ud05/teoria/
author: Teo Rojas
date: Marzo 2024
abstract: Sinopsis de la unidad 05
---

# Índice UD05. El Lenguaje de Consulta de Datos

1. [Introducción y objetivos del lenguaje de consulta](#1-introducción-y-objetivos-del-lenguaje-de-consulta)  
2. [Ejecución de consultas en MySQL](#2-ejecución-de-consultas-en-mysql)  
3. [Sintaxis básica de SELECT: repaso esencial](#3-sintaxis-básica-de-select-repaso-esencial)  
4. [Cláusula WHERE y operadores de comparación](#4-cláusula-where-y-operadores-de-comparación)  
   4.1. [Operadores lógicos: AND, OR, NOT](#41-operadores-lógicos-and-or-not)  
   4.2. [Operadores especiales: BETWEEN, IN, LIKE, IS NULL](#42-operadores-especiales-between-in-like-is-null)  
   4.3. [Operadores de comparación, lógicos y precedencia](#43-operadores-de-comparación-lógicos-y-precedencia)  
   4.4. [Cálculos aritméticos y en columnas](#44-cálculos-aritméticos-y-en-columnas)  
   4.5. [Expresiones condicionales con CASE WHEN](#45-expresiones-condicionales-con-case-when)     
5. [Funciones de agregación](#5-funciones-de-agregación)  
   5.1. [COUNT(), SUM(), AVG(), MAX(), MIN()](#51-count-sum-avg-max-min)  
6. [Agrupaciones y filtros sobre agrupaciones](#6-agrupaciones-y-filtros-sobre-agrupaciones)  
   6.1. [GROUP BY](#61-group-by)  
   6.2. [HAVING](#62-having)  
7. [Ordenación de resultados](#7-ordenación-de-resultados)  
8. [Subconsultas](#8-subconsultas)  
   8.1. [Ubicación y anidación de subconsultas](#81-ubicación-y-anidación-de-subconsultas)  
   8.2. [Subconsultas correlacionadas](#82-subconsultas-correlacionadas)  
   8.3. [Subconsultas en FROM y SELECT](#83-subconsultas-en-from-y-select)  
   8.4. [Rendimiento de subconsultas](#84-rendimiento-de-subconsultas)  
9. [Operadores de conjunto](#9-operadores-de-conjunto)  
   9.1. [UNION y UNION ALL](#91-union-y-union-all)  
   9.2. [INTERSECT y EXCEPT (limitaciones en MySQL)](#92-intersect-y-except-limitaciones-en-mysql)  
10. [Consultas multitabla](#10-consultas-multitabla)  
    10.1. [INNER JOIN](#101-inner-join)  
    10.2. [LEFT JOIN y RIGHT JOIN](#102-left-join-y-right-join)  
    10.3. [OUTER JOIN (emulación en MySQL)](#103-outer-join-emulación-en-mysql)  
    10.4. [CROSS JOIN](#104-cross-join)  
11. [Consultas con alias y funciones escalares](#11-consultas-con-alias-y-funciones-escalares)  
    11.1. [Funciones matemáticas, de cadena, fecha y conversión](#111-funciones-matemáticas-de-cadena-fecha-y-conversión)  
12. [Vistas y consultas anidadas](#12-vistas-y-consultas-anidadas)  
13. [Optimización y rendimiento de consultas](#13-optimización-y-rendimiento-de-consultas)  
14. [Práctica guiada: consulta avanzada sobre esquema relacional de ejemplo](#14-práctica-guiada-consulta-avanzada-sobre-esquema-relacional-de-ejemplo)


# 1. Introducción y objetivos del lenguaje de consulta

El lenguaje de consulta de datos, conocido habitualmente por sus siglas en inglés DQL (*Data Query Language*), forma parte del lenguaje SQL y está orientado a la obtención de información almacenada en bases de datos relacionales. Su instrucción principal es `SELECT`, la cual permite recuperar y visualizar los datos según distintos criterios definidos por el usuario.

A diferencia de otros subconjuntos del SQL, como el DDL (para definir estructuras) o el DML (para modificar datos), el DQL no altera el contenido ni la estructura de la base de datos, sino que permite consultarla para obtener resultados organizados, filtrados y agrupados. Este tipo de operaciones es esencial para todo tipo de aplicaciones que requieren mostrar datos al usuario o generar informes a partir de los registros existentes.

El uso eficaz del lenguaje de consulta permite extraer información útil de grandes volúmenes de datos, aplicar condiciones y relaciones entre tablas, realizar cálculos, agrupar, ordenar, resumir o incluso generar nuevas vistas. El dominio del DQL constituye una competencia esencial en el perfil de cualquier desarrollador de bases de datos o programador que trabaje con sistemas de gestión de bases de datos relacionales (SGBDR).

Este tema tiene como objetivo principal que el estudiante aprenda a construir consultas SQL para acceder a la información de forma eficiente, comprendiendo la sintaxis, las posibilidades del lenguaje y las estrategias para optimizar los resultados obtenidos. Para ello, se explorarán desde las consultas más sencillas hasta aquellas que combinan varias tablas, subconsultas, funciones agregadas o filtros avanzados.

# 2. Ejecución de consultas en MySQL

Una vez comprendido qué es el lenguaje de consulta de datos (DQL), el siguiente paso es aprender a ejecutar consultas en un entorno real. En este caso, trabajaremos con MySQL, uno de los sistemas de gestión de bases de datos relacionales más utilizados tanto en entornos académicos como profesionales.

MySQL permite ejecutar consultas SQL a través de diferentes interfaces:

- **Línea de comandos (MySQL Shell o Cliente CLI):** Es la forma más directa y ligera. Se escribe directamente la consulta SQL tras conectarse a la base de datos.  
- **Interfaces gráficas (como MySQL Workbench o phpMyAdmin):** Facilitan la interacción con la base de datos mediante formularios, editores SQL con resaltado de sintaxis y herramientas visuales para explorar tablas, relaciones o resultados de las consultas.  
- **Desde lenguajes de programación:** Como PHP, Python o Java, que integran el SQL dentro del código fuente para acceder y mostrar resultados en aplicaciones reales.

### Ejemplo básico en línea de comandos:

Supongamos que ya existe una base de datos llamada `dragonball`, y que contiene una tabla llamada `guerreros_z`. Una consulta sencilla para visualizar todos los personajes registrados sería:

```sql
SELECT * FROM guerreros_z;
```

Este comando selecciona todos los campos (`*`) y todas las filas de la tabla `guerreros_z`. El sistema devolverá, por ejemplo, algo como esto:

| id_guerrero | nombre   | raza      | nivel_poder |
|-------------|----------|-----------|-------------|
| 1           | Goku     | Saiyan    | 9500        |
| 2           | Vegeta   | Saiyan    | 9000        |
| 3           | Krilin   | Humano    | 4000        |

### Buenas prácticas al ejecutar consultas:

- Asegúrate de estar conectado a la base de datos correcta usando `USE dragonball;`.
- Termina siempre cada consulta con punto y coma `;`.
- Usa el editor SQL (Workbench, phpMyAdmin o similar) para ver los resultados de forma tabulada y más cómoda.
- Si los datos no se muestran o la consulta falla, revisa el nombre exacto de las tablas y campos, ya que MySQL distingue entre mayúsculas y minúsculas dependiendo del sistema operativo.

# 3. Sintaxis básica de SELECT: repaso esencial

La instrucción `SELECT` se ha visto en el tema anterior, pero como es el pilar central del lenguaje de consulta de datos en este apartado se realizará un breve repaso. 

La instrucción `SELECT` permite recuperar información almacenada en una o varias tablas de la base de datos. Su estructura básica es muy sencilla y sirve como punto de partida para consultas más avanzadas que se verán a lo largo de este tema.

La sintaxis general de una consulta `SELECT` es la siguiente:

```sql
SELECT columnas FROM nombre_tabla;
```

Si se quiere seleccionar todas las columnas, se puede usar el asterisco `*`:

```sql
SELECT * FROM nombre_tabla;
```

### Ejemplo con Dragon Ball

Supongamos que tenemos una tabla llamada `guerreros_z` con información sobre los personajes principales de la saga:

| id_guerrero | nombre   | raza    | nivel_poder |
|-------------|----------|---------|-------------|
| 1           | Goku     | Saiyan  | 9500        |
| 2           | Vegeta   | Saiyan  | 9200        |
| 3           | Gohan    | Saiyan-mestizo  | 8700        |
| 4           | Piccolo  | Namek   | 7500        |
| 5           | Krilin   | Humano  | 4000        |

La siguiente consulta selecciona todos los datos de la tabla:

```sql
SELECT * FROM guerreros_z;
```

Si solo queremos obtener el nombre y la raza de cada guerrero:

```sql
SELECT nombre, raza FROM guerreros_z;
```

Y si se quiere ver únicamente los niveles de poder:

```sql
SELECT nivel_poder FROM guerreros_z;
```

### Consideraciones importantes

- El orden de los campos en la cláusula `SELECT` determina el orden en el que aparecerán las columnas en el resultado.
- Si repites el mismo campo dos veces, aparecerá duplicado en el resultado.
- Puedes combinar campos de diferentes tipos (texto, números, fechas) siempre que existan en la tabla.
- Aunque puedes escribir las palabras clave (`SELECT`, `FROM`) en minúsculas, se recomienda usar mayúsculas por claridad y buenas prácticas.

A partir de este punto comenzaremos a filtrar resultados, ordenar, agrupar y realizar cálculos en las consultas. Pero todo parte siempre de la estructura base de la sentencia `SELECT`.

# 4. Cláusula WHERE y operadores de comparación

La cláusula `WHERE` se utiliza en las consultas `SELECT` para filtrar los resultados que se obtienen de una tabla. En lugar de devolver todos los registros, como hace un `SELECT *`, esta cláusula permite especificar una condición lógica que los registros deben cumplir para ser incluidos en el resultado.

La estructura básica es:

```sql
SELECT columnas
FROM nombre_tabla
WHERE condición;
```

La condición puede ser tan simple como una comparación numérica o textual, o tan compleja como una expresión lógica con varios operadores.

### Ejemplo con Dragon Ball

Imaginemos que trabajamos con la tabla `guerreros_z`:

| id_guerrero | nombre   | raza           | nivel_poder |
|-------------|----------|----------------|-------------|
| 1           | Goku     | Saiyan         | 9500        |
| 2           | Vegeta   | Saiyan         | 9200        |
| 3           | Gohan    | Saiyan-mestizo | 8700        |
| 4           | Piccolo  | Namek          | 7500        |
| 5           | Krilin   | Humano         | 4000        |

Si se quiere consultar solo los guerreros con un nivel de poder superior a 9000, la consulta sería:

```sql
SELECT nombre, nivel_poder
FROM guerreros_z
WHERE nivel_poder > 9000;
```

Resultado:

| nombre | nivel_poder |
|--------|-------------|
| Goku   | 9500        |

Si se quiere buscar únicamente a los guerreros de raza "Saiyan":

```sql
SELECT nombre, raza
FROM guerreros_z
WHERE raza = 'Saiyan';
```

Resultado:

| nombre  | raza   |
|---------|--------|
| Goku    | Saiyan |
| Vegeta  | Saiyan |

La cláusula `WHERE` es fundamental para casi cualquier consulta práctica, ya que permite centrarse solo en la información relevante. A partir de este punto, iremos ampliando su uso combinándola con operadores lógicos, condiciones múltiples, expresiones más complejas y subconsultas.

## 4.1. Operadores lógicos: AND, OR, NOT

Los operadores lógicos permiten combinar múltiples condiciones dentro de una cláusula `WHERE`, ofreciendo así una mayor precisión a la hora de filtrar los resultados en una consulta. Los tres operadores lógicos principales en SQL son:

- `AND`: se utiliza cuando se quieren cumplir **todas** las condiciones al mismo tiempo.
- `OR`: se utiliza cuando basta con que se cumpla **una** de las condiciones.
- `NOT`: se utiliza para **negar** una condición, es decir, excluir los registros que la cumplen.

### Ejemplo con Dragon Ball

Partimos de la tabla `guerreros_z`:

| id_guerrero | nombre   | raza           | nivel_poder |
|-------------|----------|----------------|-------------|
| 1           | Goku     | Saiyan         | 9500        |
| 2           | Vegeta   | Saiyan         | 9200        |
| 3           | Gohan    | Saiyan-mestizo | 8700        |
| 4           | Piccolo  | Namek          | 7500        |
| 5           | Krilin   | Humano         | 4000        |

#### Operador `AND`

Si se quiere buscar guerreros que sean de raza `Saiyan` y tengan un nivel de poder superior a 9000:

```sql
SELECT nombre, raza, nivel_poder
FROM guerreros_z
WHERE raza = 'Saiyan' AND nivel_poder > 9000;
```

Resultado:

| nombre | raza   | nivel_poder |
|--------|--------|-------------|
| Goku   | Saiyan | 9500        |
| Vegeta | Saiyan | 9200        |

#### Operador `OR`

Si se quiere buscar guerreros cuyo nivel de poder sea inferior a 5000 **o** que pertenezcan a la raza `Namek`:

```sql
SELECT nombre, raza, nivel_poder
FROM guerreros_z
WHERE nivel_poder < 5000 OR raza = 'Namek';
```

Resultado:

| nombre  | raza  | nivel_poder |
|---------|-------|-------------|
| Krilin  | Humano| 4000        |
| Piccolo | Namek | 7500        |

#### Operador `NOT`

Si se quiere consultar todos los guerreros que **no** sean de raza `Saiyan`:

```sql
SELECT nombre, raza
FROM guerreros_z
WHERE NOT raza = 'Saiyan';
```

Resultado:

| nombre  | raza           |
|---------|----------------|
| Gohan   | Saiyan-mestizo |
| Piccolo | Namek          |
| Krilin  | Humano         |

El uso de operadores lógicos permite combinar múltiples condiciones en una misma consulta y construir filtros mucho más potentes y flexibles. En los próximos apartados veremos cómo añadir expresiones aún más específicas mediante operadores especiales y agrupaciones.


## 4.2. Operadores especiales: BETWEEN, IN, LIKE, IS NULL

Además de los operadores lógicos tradicionales, SQL ofrece una serie de operadores especiales que permiten escribir condiciones más expresivas y legibles. Estos operadores son muy útiles cuando se trabaja con rangos de valores, listas o patrones de texto.

#### Operador `BETWEEN`

Este operador permite comprobar si un valor se encuentra dentro de un rango determinado (ambos extremos incluidos).

```sql
SELECT nombre, nivel_poder
FROM guerreros_z
WHERE nivel_poder BETWEEN 8000 AND 9500;
```

Resultado:

| nombre  | nivel_poder |
|---------|-------------|
| Goku    | 9500        |
| Vegeta  | 9200        |
| Gohan   | 8700        |

#### Operador `IN`

Permite comprobar si un valor está dentro de una lista de valores concretos. Es más limpio y legible que usar múltiples condiciones con `OR`.

```sql
SELECT nombre, raza
FROM guerreros_z
WHERE raza IN ('Saiyan', 'Humano');
```

Resultado:

| nombre  | raza           |
|---------|----------------|
| Goku    | Saiyan         |
| Vegeta  | Saiyan         |
| Gohan   | Saiyan-mestizo |
| Krilin  | Humano         |

#### Operador `LIKE`

Se utiliza para buscar patrones dentro de cadenas de texto. Es sensible a mayúsculas/minúsculas en algunos SGBD.

- `%` representa cualquier secuencia de caracteres.
- `_` representa un solo carácter.

Ejemplo: buscar guerreros cuyo nombre empiece por 'G':

```sql
SELECT nombre
FROM guerreros_z
WHERE nombre LIKE 'G%';
```

Resultado:

| nombre |
|--------|
| Goku   |
| Gohan  |

#### Operador `IS NULL`

Este operador se utiliza para comprobar si un valor está vacío (NULL). No se puede usar el signo `=` para comparar con NULL.

Supongamos que algunos guerreros aún no tienen definido su nivel de poder:

| id_guerrero | nombre  | raza   | nivel_poder |
|-------------|---------|--------|-------------|
| 6           | Yamcha  | Humano | NULL        |

Consulta para obtener los guerreros sin nivel de poder asignado:

```sql
SELECT nombre
FROM guerreros_z
WHERE nivel_poder IS NULL;
```

Resultado:

| nombre |
|--------|
| Yamcha |

Estos operadores especiales amplían enormemente la capacidad de filtrado en SQL, permitiendo escribir condiciones potentes con muy poco código.

## 4.3. Operadores de comparación, lógicos y precedencia

En SQL, es habitual combinar varios operadores dentro de una misma cláusula `WHERE`. Para obtener resultados correctos, es importante entender cómo se comportan los operadores de comparación y lógicos, y en qué orden se evalúan. Este orden se llama **precedencia de operadores**.

### Operadores de comparación

Se utilizan para comparar valores entre columnas y literales. Devuelven un resultado booleano (`TRUE` o `FALSE`), que determina si una fila cumple la condición.

Los más comunes son:

- `=` igual a  
- `<>` distinto de  
- `>` mayor que  
- `<` menor que  
- `>=` mayor o igual que  
- `<=` menor o igual que

Ejemplo: mostrar guerreros con nivel de poder distinto de 9500

```sql
SELECT nombre, nivel_poder
FROM guerreros_z
WHERE nivel_poder <> 9500;
```

### Combinación con operadores lógicos

Cuando se combinan múltiples condiciones con `AND`, `OR` y `NOT`, es importante tener en cuenta la **precedencia**:

1. `NOT` se evalúa primero.  
2. Después, `AND`.  
3. Por último, `OR`.

Esto significa que la siguiente consulta:

```sql
SELECT nombre, raza, nivel_poder
FROM guerreros_z
WHERE raza = 'Saiyan' OR raza = 'Namek' AND nivel_poder > 8000;
```

se evalúa como si escribiéramos:

```sql
SELECT nombre, raza, nivel_poder
FROM guerreros_z
WHERE raza = 'Saiyan' OR (raza = 'Namek' AND nivel_poder > 8000);
```

Para evitar errores o confusión, se recomienda siempre **usar paréntesis** para agrupar las condiciones según la lógica deseada.

## Ejemplo práctico con Dragon Ball

Supongamos la siguiente tabla `guerreros_z`:

| id_guerrero | nombre   | raza           | nivel_poder |
|-------------|----------|----------------|-------------|
| 1           | Goku     | Saiyan         | 9500        |
| 2           | Vegeta   | Saiyan         | 9200        |
| 3           | Gohan    | Saiyan-mestizo | 8700        |
| 4           | Piccolo  | Namek          | 7500        |
| 5           | Krilin   | Humano         | 4000        |
| 6           | Yamcha   | Humano         | NULL        |

Consulta: mostrar guerreros que sean Saiyans **o** que no sean humanos y tengan nivel de poder mayor a 8000.

```sql
SELECT nombre, raza, nivel_poder
FROM guerreros_z
WHERE raza = 'Saiyan' OR (raza <> 'Humano' AND nivel_poder > 8000);
```

Resultado:

| nombre  | raza           | nivel_poder |
|---------|----------------|-------------|
| Goku    | Saiyan         | 9500        |
| Vegeta  | Saiyan         | 9200        |
| Gohan   | Saiyan-mestizo | 8700        |

Comprender la precedencia de los operadores es esencial para que las condiciones se apliquen tal como se espera y para evitar errores lógicos en los resultados.


## 4.4. Cálculos aritméticos y en columnas

En SQL es posible realizar operaciones matemáticas directamente en las consultas, tanto con valores numéricos como entre columnas de una tabla. Esto resulta útil cuando se necesita calcular porcentajes, promedios o mostrar resultados ajustados sin modificar los datos originales de la base de datos.

Las operaciones básicas disponibles son:

- `+` suma  
- `-` resta  
- `*` multiplicación  
- `/` división  
- `%` módulo (puede variar según el sistema gestor)

### Ejemplo con Dragon Ball

Se parte de la tabla `guerreros_z`, que contiene los niveles de poder base de los personajes. Si se desea calcular el **nivel de poder entrenado**, tras una mejora del 20 %, se puede multiplicar el nivel original por 1.2:

```sql
SELECT nombre, nivel_poder, nivel_poder * 1.2 AS nivel_entrenado
FROM guerreros_z;
```

Resultado:

| nombre  | nivel_poder | nivel_entrenado |
|---------|-------------|------------------|
| Goku    | 9500        | 11400.0          |
| Vegeta  | 9200        | 11040.0          |
| Gohan   | 8700        | 10440.0          |
| Piccolo | 7500        | 9000.0           |
| Krilin  | 4000        | 4800.0           |
| Yamcha  | NULL        | NULL             |

### Cálculos entre columnas

Si se dispusiera de una tabla `combates` con columnas como `daño_realizado` y `daño_recibido`, se podrían efectuar operaciones entre ellas, como calcular el balance de daño:

```sql
SELECT nombre_guerrero, daño_realizado - daño_recibido AS balance
FROM combates;
```

### Consideraciones

- Si alguno de los campos involucrados en el cálculo contiene `NULL`, el resultado también será `NULL`.
- Es recomendable utilizar alias (`AS`) para renombrar el resultado de los cálculos y facilitar la lectura del resultado.
- Estos cálculos se realizan en tiempo de ejecución y no modifican los valores almacenados en las tablas.

Este tipo de operaciones permite obtener resultados más precisos y personalizados en las consultas, sin necesidad de almacenar información redundante en la base de datos.

## 4.5. Expresiones condicionales con CASE WHEN

En SQL, la cláusula `CASE` permite devolver valores diferentes en una misma columna dependiendo de una condición. Es equivalente a una estructura condicional del tipo `if-else` en programación y resulta útil para mostrar textos personalizados, categorizar datos, o establecer etiquetas según ciertos criterios. Su sintaxis es la siguiente:

```sql
SELECT columna,
       CASE
           WHEN condición1 THEN resultado1
           WHEN condición2 THEN resultado2
           ELSE resultado_por_defecto
       END AS nombre_columna
FROM tabla;
```

La cláusula `CASE` se evalúa en orden: la primera condición que se cumple determina el valor que se devolverá. Si ninguna condición se cumple, se devuelve lo indicado en `ELSE`. Si no se incluye `ELSE` y ninguna condición se cumple, se devuelve `NULL`.

## Ejemplo con Dragon Ball

Se parte de la tabla `guerreros_z`, con los siguientes campos: `nombre`, `raza`, `nivel_poder`, `cantidad_transformaciones`.

### Mostrar una columna llamada `estado_transformacion` según los criterios:

- Si la `cantidad_transformaciones` es mayor que 0 **y** la raza es 'Saiyan', se muestra `'¡Super Saiyan!'`
- Si la `cantidad_transformaciones` es 0, se muestra `'Sin transformaciones'`
- Si el guerrero es `'Piccolo'`, se muestra `'Orange_Piccolo'`
- Si el guerrero es `'Freezer'`, se muestra `'Black_Freezer'`
- En el resto de casos, se muestra `'Transformado'`

```sql
SELECT nombre, raza, cantidad_transformaciones,
       CASE
           WHEN nombre = 'Piccolo' THEN 'Orange_Piccolo'
           WHEN nombre = 'Freezer' THEN 'Black_Freezer'
           WHEN raza = 'Saiyan' AND cantidad_transformaciones > 0 THEN '¡Super Saiyan!'
           WHEN cantidad_transformaciones = 0 THEN 'Sin transformaciones'
           ELSE 'Transformado'
       END AS estado_transformacion
FROM guerreros_z;
```

Resultado esperado:

| nombre     | raza               | cantidad_transformaciones | estado_transformacion |
|------------|--------------------|----------------------------|------------------------|
| Goku       | Saiyan             | 6                          | ¡Super Saiyan!        |
| Vegeta     | Saiyan             | 4                          | ¡Super Saiyan!        |
| Gohan      | Saiyan             | 4                          | ¡Super Saiyan!        |
| Piccolo    | Namekiano          | 1                          | Orange_Piccolo        |
| Trunks     | Saiyan             | 2                          | ¡Super Saiyan!        |
| Freezer    | Emperador del Mal  | 5                          | Black_Freezer         |
| Cell       | Bio-Androide       | 3                          | Transformado          |
| Majin Buu  | Majin              | 3                          | Transformado          |
| Goten      | Saiyan             | 1                          | ¡Super Saiyan!        |
| Krilin     | Humano             | 0                          | Sin transformaciones  |

## Consideraciones

- Las condiciones de `CASE` pueden utilizar operadores lógicos (`AND`, `OR`) y comparativos (`=`, `>`, `<`, etc.).
- Se puede anidar un `CASE` dentro de otro si se requiere más detalle.
- Se recomienda utilizar `CASE` cuando se desee mostrar etiquetas o valores derivados sin modificar los datos originales.

El uso de `CASE` permite enriquecer los resultados de las consultas, ofreciendo interpretaciones más legibles o categorizadas a partir de los datos almacenados.


# 5. Funciones de agregación

Las funciones de agregación permiten realizar cálculos sobre un conjunto de filas, devolviendo un único valor como resultado. Estas funciones se utilizan habitualmente en combinación con la cláusula `GROUP BY`, aunque también pueden emplearse sin agrupar, por ejemplo, para obtener totales o promedios generales.

Las funciones de agregación más comunes en SQL son:

- `COUNT()`: cuenta el número de filas.
- `SUM()`: suma los valores de una columna numérica.
- `AVG()`: calcula la media aritmética.
- `MAX()`: devuelve el valor máximo.
- `MIN()`: devuelve el valor mínimo.

Estas funciones son especialmente útiles cuando se quiere analizar grandes volúmenes de datos y extraer información estadística, como totales de ventas, medias de puntuaciones o número de registros que cumplen una condición determinada.

En los siguientes apartados se estudiará cada una de estas funciones con ejemplos del universo de Dragon Ball, aplicados sobre tablas como `guerreros_z` o `combates`.

## 5.1. COUNT(), SUM(), AVG(), MAX(), MIN()

Las funciones de agregación permiten obtener información resumida a partir de múltiples registros. A continuación se describen las más utilizadas, aplicadas a la tabla `guerreros_z`, que contiene información sobre los personajes del universo Dragon Ball.

### Función `COUNT()`

La función `COUNT()` devuelve el número total de filas que cumplen una determinada condición, o simplemente el total de filas si no se especifica ninguna.

Contar cuántos guerreros hay registrados:

```sql
SELECT COUNT(*) AS total_guerreros
FROM guerreros_z;
```

Contar cuántos guerreros tienen nivel de poder definido (excluyendo `NULL`):

```sql
SELECT COUNT(nivel_poder) AS guerreros_con_poder
FROM guerreros_z;
```

### Función `SUM()`

La función `SUM()` suma todos los valores de una columna numérica. Es útil para obtener totales.

Calcular la suma total del poder de todos los guerreros:

```sql
SELECT SUM(nivel_poder) AS poder_total
FROM guerreros_z;
```

### Función `AVG()`

La función `AVG()` devuelve el promedio (media aritmética) de los valores de una columna numérica.

Calcular el nivel medio de poder entre los guerreros registrados:

```sql
SELECT AVG(nivel_poder) AS poder_medio
FROM guerreros_z;
```

### Función `MAX()` y `MIN()`

Estas funciones devuelven, respectivamente, el valor más alto y el más bajo de una columna.

Obtener el mayor nivel de poder registrado:

```sql
SELECT MAX(nivel_poder) AS poder_maximo
FROM guerreros_z;
```

Obtener el nivel de poder más bajo (que no sea NULL):

```sql
SELECT MIN(nivel_poder) AS poder_minimo
FROM guerreros_z;
```

### Advertencia habitual: error al combinar agregaciones con columnas no agregadas

Una de las situaciones más comunes que puede provocar error en consultas SQL es intentar combinar una función de agregación con una columna que no está siendo agrupada ni agregada. Por ejemplo:

```sql
SELECT nombre, MAX(nivel_poder) AS nivel_poder_maximo
FROM guerreros_z;
```

Esta consulta provocará un error porque se está solicitando el valor máximo de `nivel_poder`, pero al mismo tiempo se pretende obtener el campo `nombre`, el cual no forma parte de una función de agregación ni está agrupado mediante `GROUP BY`.

El motor de base de datos no puede determinar automáticamente qué nombre corresponde al valor máximo, ya que podría haber varios registros con distintos nombres y un mismo nivel de poder. Por tanto, según el modo SQL configurado en MySQL, esta consulta se considera ambigua y no se permite.

### Soluciones posibles:

- Utilizar una **subconsulta** (se explicará más adelante en el tema) para obtener el nombre del guerrero cuyo poder es el máximo:

    ```sql
    SELECT nombre, nivel_poder
    FROM guerreros_z
    WHERE nivel_poder = (
    SELECT MAX(nivel_poder)
    FROM guerreros_z
    );
    ```
- O simplemente no incluir el campo `nombre` si no se va a agrupar ni se desea un resultado detallado:

    ```sql
    SELECT MAX(nivel_poder) AS nivel_poder_maximo
    FROM guerreros_z;
    ```

Comprender esta limitación es clave para construir consultas correctas y evitar errores de ambigüedad al trabajar con funciones de agregación.

# 6. Agrupaciones y filtros sobre agrupaciones

Las funciones de agregación se vuelven aún más potentes cuando se combinan con la cláusula `GROUP BY`, que permite agrupar registros según los valores de una o varias columnas y aplicar cálculos agregados a cada grupo. Además, mediante la cláusula `HAVING`, es posible aplicar condiciones a los resultados agrupados, filtrando los grupos que cumplen ciertos criterios.

## Sintaxis general

```sql
SELECT columna_agrupada, función_agregada
FROM nombre_tabla
GROUP BY columna_agrupada;
```

## Ejemplo con Dragon Ball

Se parte de una tabla `guerreros_z` con los siguientes datos:

| id_guerrero | nombre   | raza           | nivel_poder |
|-------------|----------|----------------|-------------|
| 1           | Goku     | Saiyan         | 9500        |
| 2           | Vegeta   | Saiyan         | 9200        |
| 3           | Gohan    | Saiyan-mestizo | 8700        |
| 4           | Piccolo  | Namek          | 7500        |
| 5           | Krilin   | Humano         | 4000        |
| 6           | Yamcha   | Humano         | NULL        |

### Agrupación por raza

Si se quiere obtener la media de poder por raza, se puede agrupar la información de esta forma:

```sql
SELECT raza, AVG(nivel_poder) AS poder_medio
FROM guerreros_z
GROUP BY raza;
```

Resultado:

| raza           | poder_medio |
|----------------|-------------|
| Saiyan         | 9350.0      |
| Saiyan-mestizo | 8700.0      |
| Namek          | 7500.0      |
| Humano         | 4000.0      |

El valor `NULL` del guerrero Yamcha se omite automáticamente en los cálculos de la media, ya que las funciones de agregación no tienen en cuenta los valores nulos.

### Filtro con `HAVING`

Si se quiere mostrar únicamente aquellas razas cuyo nivel medio de poder supere los 8000 puntos, se puede utilizar la cláusula `HAVING`:

```sql
SELECT raza, AVG(nivel_poder) AS poder_medio
FROM guerreros_z
GROUP BY raza
HAVING AVG(nivel_poder) > 8000;
```

Resultado:

| raza           | poder_medio |
|----------------|-------------|
| Saiyan         | 9350.0      |
| Saiyan-mestizo | 8700.0      |

A diferencia de `WHERE`, que se aplica antes de agrupar los datos, `HAVING` se aplica después, y solo puede utilizarse con columnas agregadas o presentes en el `GROUP BY`.

En los siguientes apartados se verá cómo combinar `GROUP BY`, `HAVING`, operadores y funciones de forma avanzada para obtener estadísticas complejas a partir de datos distribuidos por categorías.

## 6.1. GROUP BY

La cláusula `GROUP BY` permite agrupar registros de una tabla según el valor de una o varias columnas. Una vez agrupados, se pueden aplicar funciones de agregación como `COUNT()`, `AVG()`, `SUM()`, `MAX()` o `MIN()` sobre cada grupo.

Esta funcionalidad es útil cuando se desea obtener estadísticas por categoría, como el total de guerreros por raza, la media de poder por planeta o la cantidad de combates por personaje. Su sintaxis es la siguiente:

```sql
SELECT columna_agrupada, función_agregada
FROM tabla
GROUP BY columna_agrupada;
```

### Ejemplo con Dragon Ball

Dada la tabla `guerreros_z`:

| id_guerrero | nombre   | raza           | nivel_poder |
|-------------|----------|----------------|-------------|
| 1           | Goku     | Saiyan         | 9500        |
| 2           | Vegeta   | Saiyan         | 9200        |
| 3           | Gohan    | Saiyan-mestizo | 8700        |
| 4           | Piccolo  | Namek          | 7500        |
| 5           | Krilin   | Humano         | 4000        |
| 6           | Yamcha   | Humano         | NULL        |

### Contar guerreros por raza

```sql
SELECT raza, COUNT(*) AS cantidad
FROM guerreros_z
GROUP BY raza;
```

Resultado:

| raza           | cantidad |
|----------------|----------|
| Saiyan         | 2        |
| Saiyan-mestizo | 1        |
| Namek          | 1        |
| Humano         | 2        |

### Obtener el nivel de poder máximo por raza

```sql
SELECT raza, MAX(nivel_poder) AS poder_maximo
FROM guerreros_z
GROUP BY raza;
```

Resultado:

| raza           | poder_maximo |
|----------------|---------------|
| Saiyan         | 9500          |
| Saiyan-mestizo | 8700          |
| Namek          | 7500          |
| Humano         | 4000          |

### Consideraciones

- Todas las columnas seleccionadas deben estar agregadas con funciones o incluidas en el `GROUP BY`.
- Si se utiliza `GROUP BY` sin funciones de agregación, su efecto será similar a un `SELECT DISTINCT`.
- La cláusula `GROUP BY` se ejecuta antes de `HAVING` y después de `WHERE`.

En el siguiente apartado se verá cómo aplicar filtros a los resultados agrupados utilizando la cláusula `HAVING`.

## 6.2. HAVING

La cláusula `HAVING` se utiliza para filtrar los resultados de una consulta que utiliza `GROUP BY`. A diferencia de `WHERE`, que filtra filas antes de agrupar, `HAVING` actúa después de que los datos han sido agrupados, permitiendo aplicar condiciones sobre los resultados de funciones de agregación como `SUM()`, `AVG()`, `COUNT()`, etc. Su sintaxis es la siguiente:

```sql
SELECT columna_agrupada, función_agregada
FROM tabla
GROUP BY columna_agrupada
HAVING condición_sobre_agrupación;
```

### Ejemplo con Dragon Ball

Dada la tabla `guerreros_z`:

| id_guerrero | nombre   | raza           | nivel_poder |
|-------------|----------|----------------|-------------|
| 1           | Goku     | Saiyan         | 9500        |
| 2           | Vegeta   | Saiyan         | 9200        |
| 3           | Gohan    | Saiyan-mestizo | 8700        |
| 4           | Piccolo  | Namek          | 7500        |
| 5           | Krilin   | Humano         | 4000        |
| 6           | Yamcha   | Humano         | NULL        |

### Obtener las razas cuyo nivel de poder medio supera los 8000

```sql
SELECT raza, AVG(nivel_poder) AS poder_medio
FROM guerreros_z
GROUP BY raza
HAVING AVG(nivel_poder) > 8000;
```

Resultado:

| raza           | poder_medio |
|----------------|-------------|
| Saiyan         | 9350.0      |
| Saiyan-mestizo | 8700.0      |

### Obtener razas con al menos 2 guerreros

```sql
SELECT raza, COUNT(*) AS total
FROM guerreros_z
GROUP BY raza
HAVING COUNT(*) >= 2;
```

Resultado:

| raza   | total |
|--------|--------|
| Saiyan | 2     |
| Humano | 2     |

### Consideraciones

- `HAVING` solo se puede usar en consultas que contienen `GROUP BY` o funciones de agregación.
- Se puede utilizar junto con `WHERE`. En ese caso, `WHERE` filtra los datos antes de agrupar y `HAVING` después.
- Para mejorar el rendimiento, se recomienda aplicar condiciones en `WHERE` siempre que sea posible, y dejar `HAVING` únicamente para filtrar sobre agregados.

La cláusula `HAVING` es esencial cuando se necesita refinar los resultados agrupados y obtener únicamente aquellos que cumplen ciertos criterios cuantitativos o agregados.

# 7. Ordenación de resultados

En SQL, la cláusula `ORDER BY` permite ordenar los resultados de una consulta según los valores de una o varias columnas. Esta ordenación puede realizarse en orden ascendente (`ASC`) o descendente (`DESC`). Por defecto, si no se indica nada, se aplicará orden ascendente.

Esta funcionalidad resulta especialmente útil cuando se quiere presentar la información de forma clara, ordenada por nombre, nivel de poder, fecha, puntuación, etc. Su sintaxis es la siguiente:

```sql
SELECT columnas
FROM tabla
ORDER BY columna1 [ASC|DESC], columna2 [ASC|DESC];
```

## Ejemplo con Dragon Ball

Dada la tabla `guerreros_z`:

| id_guerrero | nombre   | raza           | nivel_poder |
|-------------|----------|----------------|-------------|
| 1           | Goku     | Saiyan         | 9500        |
| 2           | Vegeta   | Saiyan         | 9200        |
| 3           | Gohan    | Saiyan-mestizo | 8700        |
| 4           | Piccolo  | Namek          | 7500        |
| 5           | Krilin   | Humano         | 4000        |
| 6           | Yamcha   | Humano         | NULL        |

### Ordenar por nivel de poder de forma descendente

```sql
SELECT nombre, nivel_poder
FROM guerreros_z
ORDER BY nivel_poder DESC;
```

Resultado:

| nombre  | nivel_poder |
|---------|-------------|
| Goku    | 9500        |
| Vegeta  | 9200        |
| Gohan   | 8700        |
| Piccolo | 7500        |
| Krilin  | 4000        |
| Yamcha  | NULL        |

**Nota:** Los valores `NULL` aparecen normalmente al final en orden descendente y al principio en orden ascendente, aunque este comportamiento puede variar según el sistema gestor.

### Ordenar primero por raza (ascendente) y luego por nivel de poder (descendente)

```sql
SELECT nombre, raza, nivel_poder
FROM guerreros_z
ORDER BY raza ASC, nivel_poder DESC;
```

Esto agrupa a los guerreros por raza y, dentro de cada grupo, los ordena de mayor a menor poder. Resultado esperado:

| nombre  | raza           | nivel_poder |
|---------|----------------|-------------|
| Krilin  | Humano         | 4000        |
| Yamcha  | Humano         | NULL        |
| Piccolo | Namek          | 7500        |
| Gohan   | Saiyan-mestizo | 8700        |
| Goku    | Saiyan         | 9500        |
| Vegeta  | Saiyan         | 9200        |

## Consideraciones

- Es posible ordenar por columnas que no están incluidas en la cláusula `SELECT`, aunque no es una práctica habitual.
- También se puede ordenar por el número de posición de la columna (`ORDER BY 2 DESC`), aunque es menos legible.
- Se recomienda evitar el uso de índices numéricos en `ORDER BY` (por ejemplo, `ORDER BY 2`) a favor de nombres de columnas, ya que mejora la legibilidad del código.
- La cláusula `ORDER BY` se coloca siempre al final de la consulta, después de `WHERE`, `GROUP BY` y `HAVING`.
- Si no se especifica `ASC` o `DESC`, se aplica por defecto el orden ascendente.

La correcta aplicación de `ORDER BY` mejora la claridad de los resultados y permite presentar los datos con mayor utilidad según el contexto.



















<!--



---
---
---

<div style="display: flex; align-items: center; gap: 40px;">
    <div>
        <img src="/bases-de-datos/imgs/ud05/ud05_innerJoin.svg" alt="Inner Join" />
    </div>
<div class="language-sql highlighter-rouge"><div class="highlight"><pre class="highlight"><code><table class="rouge-table"><tbody><tr><td class="rouge-gutter gl"><pre class="lineno">1
2
3
</pre></td><td class="rouge-code"><pre><span class="k">SELECT</span> <span class="o">*</span>
<span class="k">FROM</span> <span class="n">A</span>
<span class="k">INNER</span> <span class="k">JOIN</span> <span class="n">B</span> <span class="k">ON</span> <span class="n">A</span><span class="p">.</span><span class="k">key</span> <span class="o">=</span> <span class="n">B</span><span class="p">.</span><span class="k">key</span>
</pre></td></tr></tbody></table></code></pre></div></div>
</div>


<div style="display: flex; align-items: center; gap: 40px;">
    <div>
        <img src="/bases-de-datos/imgs/ud05/ud05_fullJoin.svg" alt="Full Join" />
    </div>
<div class="language-sql highlighter-rouge"><div class="highlight"><pre class="highlight"><code><table class="rouge-table"><tbody><tr><td class="rouge-gutter gl"><pre class="lineno">1
2
3
</pre></td><td class="rouge-code"><pre><span class="k">SELECT</span> <span class="o">*</span>
<span class="k">FROM</span> <span class="n">A</span>
<span class="k">FULL</span> <span class="k">JOIN</span> <span class="n">B</span> <span class="k">ON</span> <span class="n">A</span><span class="p">.</span><span class="k">key</span> <span class="o">=</span> <span class="n">B</span><span class="p">.</span><span class="k">key</span>
</pre></td></tr></tbody></table></code></pre></div></div>
</div>


<div style="display: flex; align-items: center; gap: 40px;">
    <div>
        <img src="/bases-de-datos/imgs/ud05/ud05_fullJoinNull.svg" alt="Full Join Null" />
    </div>
<div class="language-sql highlighter-rouge"><div class="highlight"><pre class="highlight"><code><table class="rouge-table"><tbody><tr><td class="rouge-gutter gl"><pre class="lineno">1
2
3
4
5
</pre></td><td class="rouge-code"><pre><span class="k">SELECT</span> <span class="o">*</span>
<span class="k">FROM</span> <span class="n">A</span>
<span class="k">FULL</span> <span class="k">JOIN</span> <span class="n">B</span> <span class="k">ON</span> <span class="n">A</span><span class="p">.</span><span class="k">key</span> <span class="o">=</span> <span class="n">B</span><span class="p">.</span><span class="k">key</span>
<span class="k">WHERE</span> <span class="n">A</span><span class="p">.</span><span class="k">key</span> <span class="k">IS</span> <span class="k">NULL</span> <span class="k">OR</span>
<span class="n">B</span><span class="p">.</span> <span class="k">key</span> <span class="k">IS</span> <span class="k">NULL</span>
</pre></td></tr></tbody></table></code></pre></div></div>
</div>

<div style="display: flex; align-items: center; gap: 40px;">
    <div>
        <img src="/bases-de-datos/imgs/ud05/ud05_leftJoin.svg" alt="Left Join" />
    </div>
<div class="language-sql highlighter-rouge"><div class="highlight"><pre class="highlight"><code><table class="rouge-table"><tbody><tr><td class="rouge-gutter gl"><pre class="lineno">1
2
3
</pre></td><td class="rouge-code"><pre><span class="k">SELECT</span> <span class="o">*</span>
<span class="k">FROM</span> <span class="n">A</span>
<span class="k">LEFT</span> <span class="k">JOIN</span> <span class="n">B</span> <span class="k">ON</span> <span class="n">A</span><span class="p">.</span><span class="k">key</span> <span class="o">=</span> <span class="n">B</span><span class="p">.</span><span class="k">key</span>
</pre></td></tr></tbody></table></code></pre></div></div>
</div>

<div style="display: flex; align-items: center; gap: 40px;">
    <div>
        <img src="/bases-de-datos/imgs/ud05/ud05_leftJoinNull.svg" alt="Left Join Null" />
    </div>
<div class="language-sql highlighter-rouge"><div class="highlight"><pre class="highlight"><code><table class="rouge-table"><tbody><tr><td class="rouge-gutter gl"><pre class="lineno">1
2
3
4
</pre></td><td class="rouge-code"><pre><span class="k">SELECT</span> <span class="o">*</span>
<span class="k">FROM</span> <span class="n">A</span>
<span class="k">LEFT</span> <span class="k">JOIN</span> <span class="n">B</span> <span class="k">ON</span> <span class="n">A</span><span class="p">.</span><span class="k">key</span> <span class="o">=</span> <span class="n">B</span><span class="p">.</span><span class="k">key</span>
<span class="k">WHERE</span> <span class="n">B</span><span class="p">.</span><span class="k">Key</span> <span class="k">IS</span> <span class="k">NULL</span>
</pre></td></tr></tbody></table></code></pre></div></div>
</div>

<div style="display: flex; align-items: center; gap: 40px;">
    <div>
        <img src="/bases-de-datos/imgs/ud05/ud05_rightJoin.svg" alt="Right Join" />
    </div>
<div class="language-sql highlighter-rouge"><div class="highlight"><pre class="highlight"><code><table class="rouge-table"><tbody><tr><td class="rouge-gutter gl"><pre class="lineno">1
2
3
</pre></td><td class="rouge-code"><pre><span class="k">SELECT</span> <span class="o">*</span>
<span class="k">FROM</span> <span class="n">A</span>
<span class="k">RIGHT</span> <span class="k">JOIN</span> <span class="n">B</span> <span class="k">ON</span> <span class="n">A</span><span class="p">.</span><span class="k">key</span> <span class="o">=</span> <span class="n">B</span><span class="p">.</span><span class="k">key</span>
</pre></td></tr></tbody></table></code></pre></div></div>
</div>

<div style="display: flex; align-items: center; gap: 40px;">
    <div>
        <img src="/bases-de-datos/imgs/ud05/ud05_rightJoinNull.svg" alt="Right Join Null" />
    </div>
<div class="language-sql highlighter-rouge"><div class="highlight"><pre class="highlight"><code><table class="rouge-table"><tbody><tr><td class="rouge-gutter gl"><pre class="lineno">1
2
3
4
5
</pre></td><td class="rouge-code"><pre><span class="k">SELECT</span> <span class="o">*</span>
<span class="k">FROM</span> <span class="n">A</span>
<span class="k">RIGHT</span>
<span class="k">JOIN</span> <span class="n">B</span> <span class="k">ON</span> <span class="n">A</span><span class="p">.</span><span class="k">key</span> <span class="o">=</span> <span class="n">B</span><span class="p">.</span><span class="k">key</span>
<span class="k">WHERE</span> <span class="n">B</span><span class="p">.</span><span class="k">key</span> <span class="k">IS</span> <span class="k">NULL</span>
</pre></td></tr></tbody></table></code></pre></div></div>
</div>

-->

# XX. Chuletario Resumen de SQL


<div class="two-columns">
  <div markdown="1"> <!-- Columna izquierda  -->

# Create
Crear nueva Base de datos o tabla

```sql
CREATE DATABASE [IF NOT EXISTS] <nombre_bbdd>;
CREATE TABLE [IF NOT EXISTS] <nombre_tabla>;
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

# Insert
Insertar nuevos registros (tuplas) en una tabla

```sql
INSERT INTO <nombre_tabla> (nombre_col1, ...)
VALUES (valor1, ...),
VALUES (valorN, ...);
```
##### No se necesita especificar los nombres de las columnas si se van a añadir valores para todas las columnas

# Select
Seleccionar/Mostrar datos de una tabla

```sql
SELECT <lista_atributos> 
FROM <nombre_tabla>;
```
##### Si se quieren mostrar todos los atributos poner un (*) en la lista_atributos





  </div> 
  <div markdown="1"> <!-- Columna derecha  -->
    
# Tipos de datos.

- **Numéricos**: INT, SMALLINT, DECIMAL(i,j)
- **String**: CHAR, CHAR(n), VARCHAR(n)
- **Bit String**: BIT, BIT(n)
- **Fecha y tiempo**: DATE, TIME, TIME(i)
- **Timestamp**: TIMESTAMP

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


# In
Filtrar resultados de una consulta comparando una columna con una lista de valores específicos

```sql
SELECT <lista_atributos> 
FROM <nombre_tabla>
WHERE columna1 IN (otro_select);
```

# Null
Comprobar que un valor es desconocido/inexistente

```sql
<nombre_atributo> IN [NOT] NULL
```

# Order By
Ordenar los resultados de una consulta

```sql
SELECT * FROM <nombre_tabla>
ORDER BY <nombre_atributo> <ASC/DESC>
```
##### ASC para mostrar orden ascendente, DESC para mostrar orden descendente


  </div>
</div>


