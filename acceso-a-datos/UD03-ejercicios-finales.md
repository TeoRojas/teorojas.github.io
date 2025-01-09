---
layout: default
title: UD03. Gestión de la persistencia de los datos con herramientas de mapeo objeto-relacional (ORM). Ejercicios finales.
permalink: /acceso-a-datos/ud03/ejercicios-finales/
author: Teo Rojas
date: Diciembre 2024
abstract:
---

# Índice

1. [Ejercicio Práctico 1: Gestión de Estudiantes, Cursos y Notas](#ejercicio-práctico-1-gestión-de-estudiantes-cursos-y-notas)
2. [Ejercicio Práctico 2: Gestión de Empresas, Departamentos y Empleados](#ejercicio-práctico-2-gestión-de-empresas-departamentos-y-empleados)
3. [Ejercicio Práctico 3: Gestión de Proyectos, Participantes y Tareas](#ejercicio-práctico-3-gestión-de-proyectos-participantes-y-tareas)
4. [Rúbrica](#4-rúbrica)

---

# Ejercicio Práctico 1: Gestión de Estudiantes, Cursos y Notas

**Objetivo:**  
Desarrollar una aplicación Java utilizando Hibernate que gestione estudiantes, los cursos en los que están inscritos y las notas que han obtenido, utilizando relaciones **many-to-many** y **one-to-many**.

**Requisitos del ejercicio:**

1. Define las entidades `Estudiante`, `Curso` y `Nota` con los siguientes atributos:
   - `Estudiante`: `id`, `nombre`, `apellido`, `email`.
   - `Curso`: `id`, `nombre`, `descripcion`.
   - `Nota`: `id`, `valor`, `fecha`, `curso`, `estudiante`.
2. Configura las siguientes relaciones:
   - **Many-to-Many** entre `Estudiante` y `Curso` (un estudiante puede inscribirse en varios cursos y un curso puede tener varios estudiantes).
   - **One-to-Many** entre `Curso` y `Nota` (cada curso puede tener muchas notas asociadas).
3. Implementa un CRUD completo para cada entidad (`Estudiante`, `Curso`, `Nota`) con las siguientes operaciones:
   - Crear un nuevo registro.
   - Leer un registro por su identificador.
   - Actualizar un registro existente.
   - Eliminar un registro existente (asegurando la integridad referencial).
4. Inserta al menos tres estudiantes, dos cursos y cinco notas en la base de datos.
5. Implementa una funcionalidad que permita:
   - Consultar las notas de un estudiante en un curso específico.
   - Obtener la lista de estudiantes inscritos en un curso y sus respectivas notas.
6. Asegúrate de gestionar las excepciones y mantener la consistencia de los datos.

**Instrucciones:**

1. Configura tu entorno de trabajo con Hibernate y una base de datos (MySQL o H2).
2. Diseña las entidades y mapea las relaciones many-to-many y one-to-many.
3. Inserta y consulta los datos solicitados utilizando métodos de persistencia y consulta de Hibernate.
4. Prueba todas las funcionalidades y prepara una breve presentación sobre el funcionamiento de tu aplicación.

**Evaluación:**  
Se valorará la correcta implementación del CRUD, las relaciones many-to-many y one-to-many, la integridad de los datos y la gestión adecuada de las excepciones.

---

# Ejercicio Práctico 2: Gestión de Empresas, Departamentos y Empleados

**Objetivo:**  
Desarrollar una aplicación Java que gestione empresas, sus departamentos y los empleados asignados a estos, utilizando relaciones **one-to-many** y **many-to-one**.

**Requisitos del ejercicio:**

1. Define las entidades `Empresa`, `Departamento` y `Empleado` con los siguientes atributos:
   - `Empresa`: `id`, `nombre`, `industria`.
   - `Departamento`: `id`, `nombre`, `empresa`.
   - `Empleado`: `id`, `nombre`, `apellido`, `puesto`, `departamento`.
2. Configura las siguientes relaciones:
   - **One-to-Many** entre `Empresa` y `Departamento` (una empresa puede tener varios departamentos).
   - **Many-to-One** entre `Empleado` y `Departamento` (un empleado pertenece a un único departamento).
3. Implementa un CRUD completo para cada entidad (`Empresa`, `Departamento`, `Empleado`) con las siguientes operaciones:
   - Crear un nuevo registro.
   - Leer un registro por su identificador.
   - Actualizar un registro existente.
   - Eliminar un registro existente (asegurando la integridad referencial).
4. Inserta al menos dos empresas, tres departamentos y cinco empleados en la base de datos.
5. Implementa una funcionalidad que permita:
   - Consultar todos los empleados de un departamento.
   - Mostrar los departamentos de una empresa y el número de empleados en cada uno.
6. Asegúrate de gestionar las excepciones y mantener la consistencia de los datos.

**Instrucciones:**

1. Configura tu entorno de trabajo con Hibernate y una base de datos (MySQL o H2).
2. Diseña las entidades y mapea las relaciones one-to-many y many-to-one.
3. Inserta y consulta los datos solicitados utilizando métodos de persistencia y consulta de Hibernate.
4. Asegúrate de manejar las excepciones y mantener la integridad referencial en las operaciones.

**Evaluación:**  
Se valorará la correcta implementación del CRUD, las relaciones one-to-many y many-to-one, la integridad de los datos y la gestión adecuada de las excepciones.

---

# Ejercicio Práctico 3: Gestión de Proyectos, Participantes y Tareas

**Objetivo:**  
Desarrollar una aplicación Java que gestione proyectos, los participantes que trabajan en ellos y las tareas asignadas, utilizando relaciones **many-to-many** y **one-to-many**.

**Requisitos del ejercicio:**

1. Define las entidades `Proyecto`, `Participante` y `Tarea` con los siguientes atributos:
   - `Proyecto`: `id`, `nombre`, `fecha_inicio`, `fecha_fin`.
   - `Participante`: `id`, `nombre`, `apellido`, `rol`.
   - `Tarea`: `id`, `descripcion`, `estado`, `fecha_entrega`, `proyecto`, `participante`.
2. Configura las siguientes relaciones:
   - **Many-to-Many** entre `Proyecto` y `Participante` (un proyecto puede tener varios participantes y un participante puede estar en varios proyectos).
   - **One-to-Many** entre `Proyecto` y `Tarea` (un proyecto puede tener muchas tareas).
3. Implementa un CRUD completo para cada entidad (`Proyecto`, `Participante`, `Tarea`) con las siguientes operaciones:
   - Crear un nuevo registro.
   - Leer un registro por su identificador.
   - Actualizar un registro existente.
   - Eliminar un registro existente (asegurando la integridad referencial).
4. Inserta al menos dos proyectos, tres participantes y cinco tareas en la base de datos.
5. Implementa una funcionalidad que permita:
   - Consultar todas las tareas asignadas a un participante en un proyecto.
   - Mostrar todos los participantes de un proyecto y las tareas asignadas a cada uno.
6. Asegúrate de gestionar las excepciones y mantener la consistencia de los datos.

**Instrucciones:**

1. Configura el entorno de trabajo con Hibernate y una base de datos (MySQL o H2).
2. Diseña las entidades y mapea las relaciones many-to-many y one-to-many.
3. Inserta y consulta los datos solicitados utilizando métodos de persistencia y consulta de Hibernate.
4. Asegúrate de manejar las excepciones y mantener la integridad referencial en las operaciones.

**Evaluación:**  
Se valorará la correcta implementación del CRUD, las relaciones many-to-many y one-to-many, la integridad de los datos y la gestión adecuada de las excepciones.

# 4. Rúbrica

- **CEa**: Se ha instalado la herramienta ORM.
- **CEb**: Se ha configurado la herramienta ORM.
- **CEc**: Se han definido los ficheros de mapeo.
- **CEd**: Se han aplicado mecanismos de persistencia a los objetos.
- **CEe**: Se han desarrollado aplicaciones que modifican y recuperan objetos persistentes.
- **CEf**: Se han desarrollado aplicaciones que realizan consultas usando el lenguaje SQL.
- **CEg**: Se han gestionado las transacciones.

**El criterio CEg incluye la defensa, presentación y documentación y valdrá un 35% de la nota final de este RA,** el resto de puntuación se repartirá equitativamente entre los CEs restantes.

**Documentación:**
- Incluir comentarios en el código para explicar la lógica y las decisiones de diseño.
- Crear un documento de diseño que describa la estructura de las entidades, las relaciones ORM y cualquier decisión importante que se haya tomado.
- Explicar el enfoque para gestionar la integridad referencial y las excepciones.

## 4.1. Rúbrica de Evaluación

| Criterio de Evaluación       | Puntuación (0-5) | Observaciones |
|------------------------------|-------------------|---------------|
| **CEa**: Instalación de la herramienta ORM |                   |               |
| **CEb**: Configuración de la herramienta ORM |                   |               |
| **CEc**: Definición de los ficheros de mapeo |                   |               |
| **CEd**: Persistencia de objetos |                   |               |
| **CEe**: Modificación y recuperación de objetos persistentes |                   |               |
| **CEf**: Consultas con SQL |                   |               |
| **CEg**: Gestión de transacciones y presentación |                   |               |

**Total: /40 puntos**

## 4.2. Notas para la Defensa

- Cada alumno deberá presentar su trabajo, explicando:
  - La estructura de las entidades y las relaciones ORM.
  - La funcionalidad implementada (CRUD, consultas, transacciones).
  - Las decisiones de diseño relacionadas con la persistencia y la gestión de excepciones.
- Se evaluará la claridad y organización de la presentación, así como la capacidad para responder preguntas y defender su enfoque.

## 4.3. Instrucciones Adicionales

- Los estudiantes deben entregar su código fuente y la documentación en PDF de **un solo ejercicio** en la tarea de Moodle habilitada a tal efecto.
- La defensa del ejercicio tendrá lugar en clase, donde cada alumno dispondrá de 5 minutos para presentar su trabajo y 5 minutos aproximadamente para responder preguntas.
