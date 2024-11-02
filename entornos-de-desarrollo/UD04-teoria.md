---
layout: default
title: UD04. Optimización, control de versiones y documentación.
permalink: /entornos-de-desarrollo/ud04/teoria/
author: Teo Rojas
date: Noviembre 2024
abstract:

---

# Índice
1. [Introducción](#1-introducción)
2. Refactorización
3. Control de versiones y Github
   1. ¿Qué es el control de versiones?
   2. ¿Qué es Git?
   3. Introducción a GitHub: concepto y características
   4. Configuración de un repositorio en GitHub
   5. Comandos básicos de Git y su uso en GitHub
   6. Integración de GitHub con el entorno de desarrollo
   7. Uso de GitHub para el control de versiones integrado
4. Trabajo colaborativo y Github
5. Documentación efectiva

# 3. Control de versiones y GitHub

## 3.1. ¿Qué es el control de versiones?

El control de versiones es una herramienta que te permite registrar los cambios en uno o más archivos con el tiempo. Así, puedes acceder a versiones anteriores de tu trabajo siempre que lo necesites. Esto es crucial para trabajar en proyectos propios y sobre todo con otros desarrolladores, ya que facilita la gestión de cambios y asegura que se mantenga un historial ordenado de quién hizo qué y cuándo.

## 3.2. Qué es Git

Git es un sistema de control de versiones distribuido diseñado para manejar desde pequeños hasta muy grandes proyectos con velocidad y eficiencia. Creado por Linus Torvalds en 2005 para la gestión del desarrollo del núcleo de Linux, Git ha evolucionado para ser utilizado en una gran variedad de proyectos de software en todo el mundo.

### Características principales de Git:
- **Distribuido:** Cada desarrollador tiene una copia local del historial de desarrollo completo, lo que permite trabajar de manera descentralizada y sin la necesidad de una conexión constante a un servidor central.
- **Eficiencia:** Maneja grandes repositorios y grandes archivos con rapidez, gracias a su diseño que optimiza el manejo de diferencias entre archivos.
- **Seguridad:** Utiliza un modelo de datos que asegura la integridad criptográfica de cada etapa del desarrollo, protegiendo el código contra corrupción o alteración.
- **Flexible:** Permite a los desarrolladores elegir entre múltiples flujos de trabajo, como integración continua o desarrollo basado en características, adaptándose a las necesidades de equipos de cualquier tamaño.

Git se ha convertido en el estándar de facto para el control de versiones en el desarrollo de software moderno, siendo utilizado por individuos, equipos pequeños y grandes organizaciones por igual.

### Conceptos básicos de Git

Git introduce varios conceptos fundamentales que son esenciales para su funcionamiento. Comprender estos conceptos te ayudará a utilizar Git de manera más efectiva en tus proyectos.

- **Repositorio:** Un **repositorio** en Git es un contenedor virtual para tu proyecto que almacena toda la información necesaria para mantener las versiones y el historial de todos los archivos. Puede ser local (en tu propia computadora) o remoto (alojado en un servidor como GitHub).

- **Directorio de trabajo (Working Directory):** El **directorio de trabajo** es la carpeta de tu proyecto en la que trabajas día a día. Aquí es donde están todos tus archivos, y donde realizas cambios, como agregar nuevos archivos o modificar los existentes. Es el espacio donde puedes ver y editar el contenido actual de tu proyecto.

- **Área de preparación (Staging Area):** El **área de preparación** es como una lista temporal de cambios en tu proyecto que quieres guardar más adelante. En esta lista puedes decidir qué cambios específicos deseas conservar y cuáles no, antes de hacer un guardado definitivo. Así tienes el control sobre qué elementos estarán en la versión final y cuáles prefieres dejar fuera por ahora.

- **Commit:** Un **commit** es como hacer una foto de los cambios en tu proyecto en un momento específico. Es una manera de guardar una versión de tu trabajo para que puedas volver a ella más adelante si lo necesitas. Cada *commit* tiene un mensaje que describe lo que has cambiado, ayudándote a recordar el progreso y los ajustes que has hecho.

- **Rama (Branch):** Una **rama** es similar a una línea de tiempo paralela para tu proyecto. Te permite trabajar en una copia del proyecto sin afectar la versión principal. Puedes hacer todos los cambios que quieras en esa rama y luego decidir si quieres combinarlos con la versión principal más adelante. Esto es útil para probar nuevas ideas o trabajar en diferentes características sin arriesgar el proyecto principal.

- **Fusionar (Merge):** **Fusionar** o *merge* es el proceso de combinar los cambios de dos ramas diferentes. Cuando terminas de trabajar en una rama secundaria, puedes fusionar esos cambios de vuelta a tu rama principal (por ejemplo, *master*) para integrar los cambios en el proyecto general.

Cada uno de estos conceptos juega un papel crucial en el manejo de proyectos con Git y facilita una gestión efectiva del código en entornos de desarrollo colaborativos.


## 3.3. Introducción a GitHub: concepto y características

GitHub es una plataforma de hospedaje de código para el control de versiones y la colaboración. Permite a múltiples personas trabajar juntas en proyectos desde cualquier parte del mundo. GitHub, que utiliza Git como su sistema de control de versiones subyacente, es ampliamente utilizado por millones de desarrolladores para compartir código y construir negocios.

### Características clave de GitHub:
- **Repositorios Remotos:** Los usuarios pueden almacenar sus proyectos en línea en repositorios que son accesibles desde cualquier lugar, facilitando la colaboración y el respaldo de datos.
- **Interfaz de Usuario Gráfica:** Aunque Git puede ser operado completamente desde la línea de comandos, GitHub ofrece una interfaz web amigable para realizar tareas como la revisión de código, la gestión de proyectos y la documentación.
- **Pull Requests y Revisión de Código:** Los desarrolladores pueden contribuir a un proyecto enviando 'pull requests', que son propuestas de cambio que otros pueden revisar antes de que sean integradas al proyecto principal.
- **Gestión de Problemas (Issues):** GitHub proporciona herramientas para rastrear problemas, lo que permite a los equipos manejar bugs, solicitudes de características y otras tareas directamente dentro del repositorio.
- **Automatización a través de GitHub Actions:** Permite la automatización de flujos de trabajo, como pruebas automáticas y despliegues, integrados directamente en el ciclo de vida del desarrollo de software.
- **Integraciones de Terceros:** GitHub se integra con una variedad de herramientas y servicios externos, permitiendo a los equipos ampliar su flujo de trabajo con funciones adicionales como la integración continua y la monitorización de la calidad del código.

GitHub no solo simplifica la gestión de proyectos de software, sino que también ha fomentado una comunidad global donde los desarrolladores pueden compartir, colaborar y mejorar su software de manera continua.

## 3.4. Configuración de un repositorio en GitHub

Configurar un repositorio en GitHub es un proceso fundamental para comenzar a trabajar en cualquier proyecto colaborativo. Aquí te guiaré a través de los pasos esenciales para configurar un nuevo repositorio.

### 3.4.1. En Remoto (web Github)

**Paso 1: Crear un nuevo repositorio**

1. **Iniciar sesión en GitHub:** Asegúrate de estar conectado a tu cuenta de [GitHub](https://github.com/).
2. **Ir a la página principal:** Haz clic en tu perfil de usuario y selecciona 'Your repositories'.
3. **Crear nuevo repositorio:** Haz clic en el botón 'New' situado en la parte superior derecha de la página de repositorios.
4. **Configurar opciones del repositorio:**
   - **Nombre del Repositorio:** Elige un nombre descriptivo que refleje el propósito del proyecto.
   - **Descripción (opcional):** Proporciona una breve descripción del repositorio.
   - **Visibilidad del Repositorio:** Decide si quieres que el repositorio sea público (visible para todos) o privado (visible solo para ti y aquellos a quienes otorgues acceso).


**Paso 2: Configuración inicial**

1. **Inicializar con README:** Marca esta opción para crear automáticamente un archivo `README.md` en tu repositorio, que puedes utilizar para describir el proyecto.
2. **Agregar .gitignore:** GitHub ofrece una lista de plantillas .gitignore que puedes utilizar para ignorar automáticamente los archivos no deseados en tus commits.
3. **Elegir una licencia:** Si planeas compartir tu código, seleccionar una licencia es crucial. GitHub proporciona varias opciones que puedes incluir automáticamente.
4. **Generar un Token de Acceso Personal (PAT):** Como medida de seguridad, GitHub requiere autenticación mediante un **Token de Acceso Personal (PAT)** a modo de contraseña. Para crear un PAT, sigue estos pasos:
   - Dirígete a [GitHub Settings > Developer settings > Personal access tokens](https://github.com/settings/tokens).
   - Haz clic en **Generate new token/Generate new token (classic)**.
   - **[Muy importante] Selecciona el alcance de los permisos que necesitas**. Para acceso completo al repositorio, selecciona `repo`.
   - Haz clic en **Generate token** al final de la página.
   - Te generará un token similar a éste: 
   ```bash
   github_pat_xxxxxxxxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
   ```
   - **Copia el token generado** y guárdalo en un lugar seguro, ya que no podrás verlo nuevamente.

### 3.4.2. En Local (tu PC)

**Paso 1: Instalar Git**

Si no tienes Git instalado en tu **máquina local**, necesitarás instalarlo para interactuar con tu repositorio localmente:

1. **Descargar Git:** Ve a [https://git-scm.com](https://git-scm.com) y descarga el instalador apropiado para tu sistema operativo.
2. **Instalar Git:** Sigue las instrucciones del instalador para completar la instalación.
3. **Verificar la instalación:** Abre tu terminal y ejecuta el comando `git --version` para asegurarte de que Git está correctamente instalado.

#### Instalación de Git en Linux/Ubuntu
Alternativamente, en sistemas **Linux/Ubuntu**, puedes instalar Git directamente desde la terminal usando el siguiente comando:

```bash
sudo apt install git
```
Este comando descargará e instalará Git en tu sistema. Una vez finalizada la instalación, puedes verificarla ejecutando `git --version` en la terminal.

**Paso 2: Configuración de la identidad de usuario en Git**

Después de instalar Git, es importante configurar tu identidad de usuario en tu máquina local. Esto evitará que aparezca el mensaje de error "Identidad del autor desconocido" al hacer commits. Esta configuración establece el nombre y correo electrónico que se usarán en los commits que realices.

Para configurar tu identidad, abre la terminal y ejecuta los comandos necesarios para:

- **user.name**: Especificar el nombre que deseas asociar a tus commits (por ejemplo, "Teo Rojas").
- **user.email**: Añadir tu correo electrónico asociado a tu cuenta de GitHub o al servicio que estés utilizando.

```bash
git config --global user.name "Teo Rojas"
git config --global user.email "tuemail@example.com"
```
Con esta configuración, Git incluirá tu identidad en cada commit que realices, asegurando que todos tus cambios sean correctamente atribuibles a ti.

**Paso 3: Clonar el repositorio**

Para trabajar en tu máquina local, primero necesitas clonar el repositorio desde GitHub.

1. **Clonar el repositorio:** Dirígete a tu repositorio en GitHub y haz clic en el botón 'Code'. Copia la URL proporcionada (HTTPS).

2. **Abre tu terminal:** Navega al directorio donde deseas clonar el repositorio en tu máquina local.
   ```bash
   git clone [URL del repositorio]
   ```
   Sustituye `[URL del repositorio]` por la URL que copiaste anteriormente.

4. **Ejecutar el comando de clonación:**
   En la terminal, ejecuta el siguiente comando para clonar el repositorio, sustituyendo `[URL del repositorio]` con la URL que copiaste en el paso 1.


**Paso 4: Realizar cambios locales y subirlos a GitHub**

Una vez que tienes tu proyecto clonado localmente, puedes empezar a realizar cambios en el código. Aquí te muestro cómo guardar esos cambios en GitHub:

1. **Realizar Cambios:**
   - Abre los archivos del proyecto en tu editor de código favorito.
   - Realiza las modificaciones necesarias en tu código.
   - Realiza un `git status` para comprobar los archivos que han sido modificados desde el último `commit`.
   ```bash
   git status
   ```
2. **Agregar los cambios al área de Staging:**
   - Abre tu terminal y navega al directorio del proyecto.
   - Para agregar todos los archivos modificados al área de staging, utiliza el comando:
     ```bash
     git add .
     ```
     O si prefieres agregar solo algunos archivos, utiliza:
     ```bash
     git add [nombre del archivo]
     ```
3. **Hacer un Commit:**
   - Una vez que todos los cambios deseados están en el área de staging, debes hacer un commit, que es como tomar una "foto" del estado actual del proyecto:
     ```bash
     git commit -m "Descripción breve de los cambios realizados"
     ```
     Reemplaza `"Descripción breve de los cambios realizados"` con un mensaje que explique qué has cambiado y por qué.

4. **Subir los cambios al repositorio de GitHub:**
   - Asegúrate de estar en la rama correcta donde deseas subir tus cambios, por ejemplo, `main` o `master`.
   - Utiliza el siguiente comando para subir tus cambios a GitHub:
     ```bash
     git push origin [nombre de la rama remota]
     ```
     Reemplaza `[nombre de la rama remota]` con el nombre de la rama a la que estás subiendo, por ejemplo, `main` (este dato debes de comprobarlo en GitHub.com).

5. **Autenticación con el Token de Acceso Personal (PAT):**
   Durante el proceso de subir los cambios al servidor remoto, se te pedirá que introduzcas tus credenciales:
   - **Usuario:** Ingresa tu nombre de usuario de GitHub.
   - **Contraseña:** En lugar de la contraseña, **pega tu Token de Acceso Personal (PAT)**. A continuación tienes las instrucciones de cómo crear un `PAT`:

6. **Verificar en GitHub.com:**
   - Una vez subidos los cambios, puedes ir a tu repositorio en GitHub y verificar que los cambios estén presentes. Además, puedes revisar el historial de commits para ver el detalle de cada cambio.


