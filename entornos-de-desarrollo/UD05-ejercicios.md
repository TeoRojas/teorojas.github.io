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
