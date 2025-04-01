---
layout: default
title: UD05. Elaboración de diagramas de clases.
permalink: entornos-de-desarrollo/ud05/ejercicios/
author: Teo Rojas
date: Febrero 2025
abstract: Sinopsis de la unidad 05
---

# Índice

1. [Ejercicio 1: Asociación - Sistema de Hospital](#1-ejercicio-1-asociacion-sistema-de-hospital)  
2. [Ejercicio 2: Herencia - Vehículos de Transporte](#2-ejercicio-2-herencia-vehiculos-de-transporte)  
3. [Ejercicio 3: Composición - Ordenador y Componentes](#3-ejercicio-3-composicion-ordenador-y-componentes)  
4. [Ejercicio 4: Agregación - Biblioteca y Libros](#4-ejercicio-4-agregacion-biblioteca-y-libros)  
5. [Ejercicio 5: Caso Completo - Universidad](#5-ejercicio-5-caso-completo-universidad)  
6. [Actividad Final de Investigación y Aplicación Práctica](#actividad-de-investigación-y-aplicación-práctica-modelado-uml-y-generación-de-código)


## **Ejercicio 1: Asociación - Sistema de Hospital**
**Descripción:**  
Modela un diagrama UML donde un **Médico** puede atender a varios **Pacientes** y cada **Paciente** puede ser atendido por un solo **Médico**. Además, cada **Médico** pertenece a un **Hospital**, pero un **Hospital** puede tener varios **Médicos**.  

### **Instrucciones:**  
1. Representa las clases `Médico`, `Paciente` y `Hospital`.  
2. Define las asociaciones con multiplicidad adecuada.  
3. Usa flechas unidireccionales o bidireccionales según corresponda.  

### **Ejemplo de relaciones:**  
- Un **Médico** puede atender **muchos Pacientes**, pero cada **Paciente** solo tiene **un Médico**.  
- Un **Hospital** puede tener **varios Médicos**, pero un **Médico** solo pertenece a un **Hospital**.  

---

## **Ejercicio 2: Herencia - Vehículos de Transporte**  
**Descripción:**  
Crea un **diagrama UML** donde una superclase `Vehículo` sea la base de dos subclases `Automóvil` y `Motocicleta`.  

### **Instrucciones:**  
1. Define la superclase `Vehículo` con atributos y métodos genéricos como `marca`, `modelo`, `velocidad_maxima()` y `arrancar()`.  
2. Modela las subclases `Automóvil` y `Motocicleta`, heredando de `Vehículo`.  
3. Agrega métodos específicos para cada subclase (`abrir_maletero()` en `Automóvil` y `hacer_caballito()` en `Motocicleta`).  

### **Ejemplo de relaciones:**  
- `Automóvil` y `Motocicleta` **heredan** de `Vehículo`.  
- Todos los **vehículos** tienen **marca y modelo**, pero cada tipo puede tener características propias.  

---

## **Ejercicio 3: Composición - Ordenador y Componentes**  
**Descripción:**  
Crea un **diagrama UML** donde una clase `Ordenador` tenga **composición** con `Procesador` y `MemoriaRAM`.  

### **Instrucciones:**  
1. Define la clase `Ordenador` con atributos generales (`marca`, `modelo`).  
2. Crea las clases `Procesador` y `MemoriaRAM`, indicando que `Ordenador` **contiene** instancias de ellas.  
3. Usa una relación de **composición (`◆`)**, indicando que **si un `Ordenador` se destruye, también lo hacen sus componentes**.  

### **Ejemplo de relaciones:**  
- `Ordenador` tiene **un** `Procesador` y **una o más** `MemoriaRAM`.  
- Si el `Ordenador` se elimina, los componentes **no pueden existir por separado**.  

---

## **Ejercicio 4: Agregación - Biblioteca y Libros**  
**Descripción:**  
Crea un **diagrama UML** donde una `Biblioteca` tiene muchos `Libros`, pero los `Libros` pueden existir sin la `Biblioteca`.  

### **Instrucciones:**  
1. Define la clase `Biblioteca` con atributos como `nombre` y `ubicación`.  
2. Define la clase `Libro` con atributos como `título` y `autor`.  
3. Usa una relación de **agregación (`◇`)**, indicando que **una `Biblioteca` tiene `Libros`, pero los `Libros` pueden existir sin una `Biblioteca`**.  

### **Ejemplo de relaciones:**  
- Una `Biblioteca` tiene **muchos** `Libros`, pero los `Libros` pueden estar en diferentes bibliotecas o existir por sí solos.  

---

## **Ejercicio 5: Caso Completo - Universidad**  
**Descripción:**  
Modela un sistema de universidad con las siguientes reglas:  
- `Universidad` **agrega** múltiples `Facultades` (`◇` - Agregación).  
- Cada `Facultad` tiene varios `Profesores`, pero los `Profesores` pueden existir fuera de una `Facultad`.  
- Un `Profesor` **imparte** varios `Cursos` (Asociación).  
- Cada `Curso` tiene muchos `Estudiantes`, y cada `Estudiante` puede estar en varios `Cursos` (Asociación de muchos a muchos).  
- `Profesor` y `Estudiante` **heredan** de `Persona` (`△` - Herencia).  

### **Instrucciones:**  
1. Modela `Universidad`, `Facultad`, `Profesor`, `Estudiante` y `Curso`.  
2. Usa correctamente las relaciones **Asociación, Agregación, Herencia**.  
3. Define correctamente la **multiplicidad** en cada relación.  

---

### **¿Cómo resolver los ejercicios?**  
1. **Dibujar en papel o en herramientas UML** como **Draw.io, PlantUML o Dia**.  
2. **Definir atributos y métodos esenciales** en cada clase.  
3. **Aplicar la relación correcta** (`→` Asociación, `◇` Agregación, `◆` Composición, `△` Herencia).  
4. **Incluir multiplicidad** (`1`, `0..1`, `*`, etc.).  

Estos ejercicios ayudarán a los estudiantes a **comprender cómo modelar correctamente relaciones en UML** y aplicarlas en problemas reales.  


# Actividad de Investigación y Aplicación Práctica: Modelado UML y Generación de Código

## Objetivo

El objetivo de esta actividad es que los alumnos, organizados en grupos de cuatro personas, **investiguen, diseñen y desarrollen** una solución técnica a un problema cotidiano utilizando **diagramas de clases UML** y **generación automática de código**. Esta actividad pretende reforzar los conocimientos adquiridos sobre modelado orientado a objetos, relaciones entre clases y uso de herramientas CASE.

## Desarrollo de la Actividad

Cada grupo deberá:

1. Elegir uno de los problemas propuestos o plantear uno propio, previa aprobación del docente.
2. Analizar el problema e identificar las entidades involucradas.
3. Diseñar un **diagrama de clases UML completo**, representando atributos, métodos y relaciones.
4. Usar una herramienta de modelado UML que permita la **generación automática del esqueleto del código** (por ejemplo: Modelio, StarUML, Visual Paradigm...).
5. Importar el diagrama y **generar el código base**.
6. Implementar parte de la lógica funcional en el lenguaje de programación elegido.
7. Preparar una **presentación breve (10 minutos)**, que será diferente del archivo Markdown de documentación, en la que:
   - Expongan el diagrama UML y lo justifiquen.
   - Expliquen qué herramienta han utilizado.
   - Muestren el código generado y modificado.
   - Realicen una pequeña demostración funcional.

## Requisitos Técnicos

- El diagrama UML debe incluir al menos:
  - **Tres** o más relaciones entre clases (herencia, asociación, composición o agregación).
  - Visibilidad (+, -, #), tipos de datos y métodos.
- El código generado debe estar en el lenguaje que prefiera el alumnado y estructurado según el modelo UML.
- Deben documentar en un archivo Markdown los pasos seguidos y las conclusiones del grupo.

## Propuestas de Problema

Los grupos pueden elegir uno de los siguientes problemas:

### Opción A: Gestión de una Biblioteca Escolar

Diseñar un sistema que modele una biblioteca con libros, estudiantes y préstamos. Los estudiantes pueden solicitar libros si están disponibles, y el sistema debe reflejar quién tiene cada ejemplar.

### Opción B: Sistema de Reservas de Vehículos

Modelar un sistema donde usuarios (conductores) puedan reservar vehículos (coches o furgonetas) para su uso personal o profesional. Los vehículos pueden tener accesorios (GPS, remolque) y deben registrarse mantenimientos periódicos.

### Opción C: Plataforma de Cursos Online

Crear una estructura para una plataforma educativa donde profesores imparten cursos, los alumnos se inscriben y se gestionan las sesiones, evaluaciones y certificados. Se debe incluir el control de fechas, estados y roles del sistema.

## Evaluación vinculada al RA05: Elaboración y uso de Diagramas de Clases

Esta actividad será evaluada teniendo en cuenta los Criterios de Evaluación del Resultado de Aprendizaje 5 (RA05), que valora la capacidad del alumnado para diseñar, interpretar y generar diagramas de clases utilizando herramientas apropiadas.

### Rúbrica de evaluación por criterios

| Criterio de Evaluación | Evidencia esperada                                                                 | Ponderación |
|------------------------|------------------------------------------------------------------------------------|-------------|
| **CEa.** Identifica los conceptos básicos de la POO. | Presentación inicial donde se definen clases, atributos, métodos y relaciones. | 10% |
| **CEb.** Instala el módulo del IDE para usar diagramas UML. | Evidencia del entorno configurado o herramienta operativa (capturas, demostración en directo). | 5% |
| **CEc.** Identifica herramientas para diagramas de clases. | Justificación de la herramienta utilizada (Modelio, StarUML, etc.) y sus características. | 10% |
| **CEd.** Interpreta diagramas de clases. | Defensa oral clara del diagrama elaborado, explicando cada elemento y su funcionalidad. | 10% |
| **CEe.** Traza diagramas de clases desde especificaciones. | Diagrama UML elaborado a partir del problema planteado. | 20% |
| **CEf.** Genera código a partir de un diagrama de clases. | Código generado automáticamente desde la herramienta y completado con lógica funcional. | 20% |
| **CEg.** Genera diagramas de clases mediante ingeniería inversa. | *[Opcional]* Diagrama obtenido a partir de clases escritas previamente o detectadas por la herramienta. | 10% |
| **Defensa oral y argumentación técnica** | Claridad en la exposición del proceso seguido, participación de todos los miembros. | 10% |
| **Documentación del trabajo** | Memoria explicativa que incluya el diagrama, el código, la herramienta empleada y las decisiones tomadas. | 5% |

### Nota final

> La nota final será la suma ponderada de todos los apartados anteriores. Se valorará especialmente la coherencia entre el diagrama UML, el código generado y la argumentación técnica durante la exposición.




