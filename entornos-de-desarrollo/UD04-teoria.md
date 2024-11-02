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
3. [Control de versiones y GitHub](#3-control-de-versiones-y-github)
   1. [¿Qué es el control de versiones?](#31-qué-es-el-control-de-versiones)
   2. [¿Qué es Git?](#32-qué-es-git)
      - [Características principales de Git](#características-principales-de-git)
      - [Conceptos básicos de Git](#conceptos-básicos-de-git)
   3. [Introducción a GitHub: concepto y características](#33-introducción-a-github-concepto-y-características)
   4. [Configuración de un repositorio en GitHub](#34-configuración-de-un-repositorio-en-github)
      - [En Remoto (web GitHub)](#341-en-remoto-web-github)
      - [En Local (tu PC)](#342-en-local-tu-pc)
   5. [Comandos básicos de Git y su uso en GitHub](#35-comandos-básicos-de-git-y-su-uso-en-github)
      - [3.5.1. Configuración y estado](#351-configuración-y-estado)
      - [3.5.2. Gestión de archivos y seguimiento de cambios](#352-gestión-de-archivos-y-seguimiento-de-cambios)
      - [3.5.3. Sincronización con GitHub](#353-sincronización-con-github)
      - [3.5.4. Trabajo con ramas](#354-trabajo-con-ramas)
      - [3.5.5. Gestión de versiones y revertir cambios](#355-gestión-de-versiones-y-revertir-cambios)
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

## 3.5. Comandos básicos de Git y su uso en GitHub

Git cuenta con una serie de comandos esenciales para gestionar los cambios en un proyecto y trabajar de manera colaborativa. En este apartado, exploraremos algunos de los comandos más utilizados en Git y cómo se aplican en el flujo de trabajo de GitHub. Aprenderemos a configurar la identidad de usuario, consultar el estado de los archivos, realizar commits, y utilizar otras funcionalidades clave que facilitan el control de versiones y la colaboración en equipo.

### 3.5.1. Configuración y estado

Antes de comenzar a trabajar con Git, es importante realizar una configuración inicial que establecerá la identidad del usuario en el proyecto y ayudará a mantener un seguimiento de los cambios. Además, conocer el estado del repositorio nos permite ver qué archivos han cambiado y cuáles están listos para ser confirmados.

#### Configuración de usuario (`git config`)

Para asegurar que cada commit está asociado con el usuario adecuado, Git permite configurar el nombre y el correo electrónico del usuario. Esta configuración es fundamental, ya que toda actividad dentro del proyecto quedará registrada con estos datos.

- `git config --global user.name "Tu Nombre"`: Configura el nombre del usuario de forma global.
- `git config --global user.email "tuemail@example.com"`: Configura el correo electrónico del usuario de forma global.

La configuración global se aplica a todos los proyectos en el sistema. Si necesitas una configuración específica para un proyecto, puedes omitir `--global` para aplicarla solo en el repositorio actual.

#### Comprobar el estado del repositorio (`git status`)

El comando `git status` permite verificar el estado de los archivos en el repositorio, mostrando cuáles han sido modificados, cuáles están en el área de preparación, y cuáles no han sido incluidos aún. Esto es útil para conocer qué cambios se encuentran listos para ser confirmados y qué archivos están pendientes de revisión.

- `git status`: Muestra el estado actual de los archivos en el repositorio, indicando cuáles están en el área de preparación y cuáles no.

Este comando no hace modificaciones en los archivos, solo proporciona información sobre el estado de los mismos, permitiendo una revisión completa antes de proceder a hacer commits.

#### Ver el historial de cambios (`git log`)

El comando `git log` muestra un historial detallado de los commits realizados en el proyecto, proporcionando información útil para rastrear cambios y entender la evolución del código. Cada entrada en el log incluye el identificador del commit, el autor, la fecha y el mensaje asociado al cambio.

- `git log`: Muestra el historial de commits en orden cronológico inverso (el más reciente primero).

Opcionalmente, puedes usar flags adicionales para personalizar la información mostrada, como `--oneline` para ver solo una línea por commit.

### 3.5.2. Gestión de archivos y seguimiento de cambios

En Git, el flujo de trabajo típico implica agregar archivos al área de preparación, confirmar los cambios en el historial de versiones, y revisar las diferencias entre versiones para asegurar que los cambios son correctos. A continuación, se describen los comandos esenciales para gestionar archivos y hacer seguimiento de los cambios en un repositorio.

#### Añadir archivos al área de preparación (`git add`)

El comando `git add` permite mover archivos al área de preparación (staging area), lo cual significa que están listos para ser confirmados en el siguiente commit. Esto es útil para organizar los cambios que queremos guardar en el historial de versiones.

- `git add <nombre_del_archivo>`: Añade un archivo específico al área de preparación.
- `git add .`: Añade todos los archivos modificados en el directorio actual al área de preparación.

Este paso es fundamental porque Git no guarda automáticamente cada cambio en el historial de versiones; solo guarda los archivos que se encuentran en el área de preparación.

#### Guardar cambios en el historial de versiones (`git commit`)

Después de añadir los archivos al área de preparación, utilizamos el comando `git commit` para guardar esos cambios en el historial de versiones del repositorio. Cada commit debe incluir un mensaje descriptivo que explique los cambios realizados, ayudando a que otros desarrolladores comprendan la razón de dichos cambios.

- `git commit -m "Mensaje descriptivo"`: Realiza un commit de los archivos en el área de preparación con un mensaje que describe los cambios.

Cada commit representa un punto en el historial del proyecto al que se puede volver, facilitando la gestión de versiones y el trabajo en equipo.

#### Mostrar diferencias entre cambios no confirmados (`git diff`)

El comando `git diff` muestra las diferencias entre el archivo actual y la última versión guardada, lo que permite revisar los cambios antes de confirmarlos. Esto es útil para verificar exactamente qué se ha modificado y asegurarse de que los cambios son correctos antes de hacer el commit.

- `git diff`: Muestra los cambios no confirmados en el directorio de trabajo.
- `git diff --staged`: Muestra los cambios que están en el área de preparación, listos para ser confirmados.

### 3.5.3. Sincronización con GitHub

Después de hacer cambios y confirmarlos en el repositorio local, es importante mantener el repositorio remoto en GitHub actualizado para que otros miembros del equipo puedan acceder a las últimas versiones. La sincronización entre el repositorio local y el remoto se realiza a través de varios comandos esenciales que permiten enviar y recibir cambios.

#### Clonar un repositorio desde GitHub (`git clone`)

Si deseas trabajar en un proyecto existente desde GitHub y aún no tienes una copia local, el comando `git clone` permite descargar el repositorio remoto a tu máquina.

- `git clone [URL del repositorio]`: Crea una copia local de un repositorio remoto en el directorio actual.

#### Conectar con el repositorio remoto (`git remote`)

Antes de sincronizar, es necesario asegurarse de que el repositorio local está vinculado a un repositorio remoto en GitHub. Normalmente, se configura al clonar un repositorio, pero también se puede añadir manualmente.

- `git remote add origin [URL del repositorio]`: Añade el repositorio remoto con el nombre `origin`, que es el nombre predeterminado para el repositorio remoto principal.

Puedes verificar la conexión con:

- `git remote -v`: Muestra las URL de los repositorios remotos configurados.

#### Enviar cambios al repositorio remoto (`git push`)

El comando `git push` permite enviar los commits del repositorio local al repositorio remoto en GitHub, manteniendo ambos repositorios sincronizados. Esto es especialmente útil después de hacer varias confirmaciones locales que deseas compartir.

- `git push origin main`: Envía los commits de la rama `main` al repositorio remoto llamado `origin`.

> Nota: Asegúrate de utilizar el nombre de la rama correcta. La rama principal puede ser `main` o `master`, dependiendo de la configuración del repositorio.

#### Obtener cambios del repositorio remoto (`git pull`)

Para integrar cambios que otros miembros del equipo hayan hecho en el repositorio remoto, se utiliza `git pull`. Este comando descarga los commits nuevos y los integra en el repositorio local, asegurando que estás trabajando con la versión más reciente.

- `git pull origin main`: Descarga y fusiona los cambios de la rama `main` del repositorio remoto `origin` al repositorio local.

> **Consejo: Es recomendable hacer un `git pull` antes de iniciar cualquier trabajo en tu repositorio local para evitar conflictos y asegurarte de que tienes la última versión.**

#### Configurar el seguimiento de la rama remota

Para hacer que `git push` y `git pull` funcionen sin necesidad de especificar el nombre del repositorio remoto (`origin`) y la rama (`main`) cada vez, puedes configurar la rama local para que rastree automáticamente la rama remota. Esto facilita el uso de `git push` y `git pull` sin parámetros adicionales.

1. **Configura el seguimiento de la rama remota**:

   Si ya estás en la rama que quieres rastrear (por ejemplo, `main`):
   ```bash
   git branch --set-upstream-to=origin/main
   ```

   Alternativamente, puedes hacer un push inicial con `-u` para establecer el seguimiento de la rama:
   ```bash
   git push -u origin main
   ```

   Este comando indica que la rama `main` local debe rastrear la rama `main` en el repositorio remoto `origin`. Después de esto, simplemente podrás usar `git push` o `git pull` sin especificar `origin` ni `main`.

2. **Verifica la configuración**:

   Para confirmar que el seguimiento está correctamente configurado, ejecuta:
   ```bash
   git status
   ```

   Deberías ver un mensaje indicando que tu rama local está configurada para seguir la rama `main` en `origin`.

Con esta configuración, sincronizar tus cambios con el repositorio remoto será más rápido y eficiente, ya que solo tendrás que ejecutar `git push` o `git pull` en futuras sincronizaciones.

#### Resumen

- `git remote add origin [URL del repositorio]`: Configura un repositorio remoto.
- `git push origin main`: Envía los commits al repositorio remoto.
- `git pull origin main`: Descarga y fusiona los cambios del repositorio remoto.
- `git clone [URL del repositorio]`: Crea una copia local del repositorio remoto.

Estos comandos aseguran que el repositorio local y el remoto se mantengan sincronizados, permitiendo la colaboración efectiva entre varios desarrolladores.

### 3.5.4. Trabajo con ramas

#### ¿Qué es una rama?

En Git, una **rama** es como una "línea de tiempo paralela" dentro del proyecto. Imagina que estás escribiendo una historia, pero quieres explorar una trama alternativa sin cambiar la original. Con una rama, puedes hacer cambios y experimentar libremente sin afectar la versión principal. Si la trama alternativa resulta bien, puedes unirla con la historia principal. Si no, puedes descartarla sin problema. 

Cada vez que creas una rama, estás creando una copia de los archivos y el historial del proyecto hasta ese momento. Los cambios que hagas en esta nueva rama no afectarán a la rama principal (a menudo llamada `main` o `master`) hasta que decidas "fusionarlas" o combinarlas.

#### ¿Cómo funcionan las ramas en Git?

Las ramas te permiten:
- **Separar tareas**: Trabajar en nuevas funcionalidades o correcciones de errores sin tocar el código de la versión principal del proyecto.
- **Colaborar en equipo**: Los desarrolladores pueden trabajar en diferentes ramas sin interferir con el trabajo de otros. Esto es especialmente útil en proyectos grandes.
- **Mantener el historial**: Git guarda un registro de todos los cambios en cada rama, lo que facilita regresar a versiones anteriores o comparar el progreso entre ramas.

La rama principal en la mayoría de los proyectos se llama `main`, y es donde normalmente se encuentra la versión estable del código. Otras ramas, como las de desarrollo o características nuevas, suelen ser temporales y se eliminan cuando el trabajo está terminado y fusionado con la rama principal.

#### Comandos básicos para trabajar con ramas

- **`git branch nombre_de_rama`**: Crea una nueva rama llamada `nombre_de_rama`. Esta rama se crea a partir de la posición actual del proyecto, pero no se cambia automáticamente a ella.
- **`git checkout nombre_de_rama`**: Cambia a la rama `nombre_de_rama`, permitiéndote trabajar en ella.
- **`git checkout -b nombre_de_rama`**: Crea y cambia a una nueva rama llamada `nombre_de_rama` en un solo paso.
- **`git merge nombre_de_rama`**: Fusiona los cambios de `nombre_de_rama` con la rama en la que estás actualmente. Este comando es útil cuando quieres combinar los cambios de una rama con otra, por ejemplo, cuando una nueva funcionalidad está lista para incorporarse a la rama principal.
- **`git branch -d nombre_de_rama`**: Elimina una rama que ya no necesitas, como una vez que sus cambios han sido fusionados en la rama principal.

Trabajar con ramas permite a los equipos de desarrollo gestionar múltiples líneas de trabajo al mismo tiempo, manteniendo la versión estable del proyecto segura mientras se exploran nuevas ideas y se añaden funcionalidades de manera controlada y organizada.

#### Fusionar (merge) ramas con cambios en paralelo

Cuando trabajas con ramas, es común que tanto la rama principal (`main`) como una rama de desarrollo paralela (`feature`, por ejemplo) evolucionen al mismo tiempo. Esto significa que cuando intentas fusionar (`merge`) los cambios de una rama en otra, puede ocurrir que ambas hayan modificado las mismas partes del código o archivos. Este proceso puede resultar en dos tipos de **fusión (merge)**: simple o con conflictos.

1. **Fusión sin conflictos**:
   - Si los cambios en la rama `main` y en la rama `feature` no afectan las mismas líneas o archivos, Git puede realizar el merge automáticamente sin problemas.
   - Cuando se ejecuta el comando `git merge feature` desde la rama `main`, Git integrará los cambios sin requerir intervención, y el historial reflejará la combinación de ambas ramas.

2. **Fusión con conflictos**:
   - Si las mismas líneas o secciones de código han sido modificadas en ambas ramas, Git detectará un **conflicto**. Esto significa que Git no puede determinar automáticamente cuál de los cambios debe conservarse.
   - Git mostrará un mensaje de conflicto, indicando los archivos y líneas que necesitan ser revisados manualmente. Para resolverlo:
     - **Abrir el archivo en conflicto**: Los conflictos aparecerán marcados entre los indicadores `<<<<<< HEAD` y `======` (cambios de la rama actual) y `>>>>>>` (cambios de la rama que se intenta fusionar).
     - **Elegir la versión correcta**: Decide si quieres conservar los cambios de la rama actual, los de la rama fusionada, o una combinación de ambos.
     - **Guardar y marcar como resuelto**: Una vez resueltos los conflictos en todos los archivos, ejecuta `git add <archivo>` para marcar cada archivo en conflicto como resuelto.

3. **Completar el merge**:
   - Después de resolver los conflictos, termina el proceso con `git commit`. Esto consolidará los cambios y dejará un registro en el historial de que hubo una resolución de conflictos durante la fusión.
   
Este sistema de trabajo con ramas y resolución de conflictos permite a múltiples personas trabajar en el mismo proyecto sin perder cambios, organizando el flujo de trabajo de manera que cada contribución se integre en el momento adecuado.

> **Nota**: Es una buena práctica hacer un `pull` de la rama `main` en tu rama de trabajo periódicamente mientras trabajas. Esto ayuda a mantener tu rama actualizada con los cambios de `main`, reduciendo la cantidad de conflictos al momento de fusionar.

### 3.5.5. Gestión de versiones y revertir cambios

Una de las grandes ventajas de utilizar Git es su capacidad para llevar un registro detallado de los cambios en un proyecto y la posibilidad de revertirlos cuando sea necesario. Git guarda cada versión de los archivos como un **commit**, lo que permite navegar entre versiones anteriores y restaurarlas si se detecta algún problema en una versión reciente. Este apartado explora los comandos y estrategias para gestionar versiones y deshacer cambios.

#### Revertir cambios

Existen varias maneras de revertir cambios en Git, dependiendo de si los cambios han sido confirmados o no, y de si queremos revertir un archivo en particular o todo el proyecto a una versión anterior.

1. **Deshacer cambios en el área de trabajo (antes de hacer commit)**:
   - **`git restore <archivo>`**: Revertir cambios no confirmados en un archivo específico. Esto restablece el archivo al último estado registrado en el repositorio, descartando las modificaciones que no han sido añadidas al área de preparación.
   - **`git restore --staged <archivo>`**: Retira un archivo del área de preparación (staging area) sin perder los cambios realizados. Esto puede ser útil si accidentalmente has añadido un archivo al área de preparación y deseas retirarlo antes de hacer un commit.

2. **Revertir un commit en el historial**:
   - **`git revert <commit_id>`**: Crea un nuevo commit que deshace los cambios introducidos en un commit anterior, pero mantiene el historial de versiones intacto. Esto es útil si quieres "deshacer" un commit sin perder su registro en el historial.
   - **`git reset --hard <commit_id>`**: Restablece el repositorio al estado exacto de un commit específico, eliminando los cambios hechos después de este commit. **Cuidado**: Este comando descarta todos los cambios hechos desde el commit especificado y puede resultar en la pérdida de datos si no se utiliza correctamente.
   - **`git reset --soft <commit_id>`**: Restablece el repositorio al estado de un commit específico, pero mantiene los cambios en el área de preparación. Esto te permite realizar ajustes antes de volver a confirmar el commit.

3. **Volver a una versión anterior de un archivo específico**:
   - **`git checkout <commit_id> -- <archivo>`**: Reemplaza un archivo en el área de trabajo con la versión específica de un commit anterior. Esto es útil si solo deseas deshacer los cambios en un archivo particular sin afectar el resto del proyecto.

#### Buenas prácticas para la gestión de versiones y revertir cambios

- **Comentar los commits claramente**: Los mensajes de commit detallados y claros ayudan a identificar cambios importantes en el historial, facilitando la reversión de errores.
- **Utilizar ramas para experimentación**: Cuando estés probando una nueva funcionalidad o modificación importante, crea una rama específica para ello. Esto facilita la reversión de cambios en caso de que algo salga mal, sin afectar la rama principal (`main`).
- **Evitar el uso de `reset --hard` en un equipo**: Cuando trabajas en colaboración, el uso de `reset --hard` puede generar conflictos y pérdida de trabajo para otros colaboradores. Para revertir cambios en un equipo, es preferible utilizar `revert`, que mantiene el historial intacto.

La gestión de versiones y el control sobre los cambios son pilares fundamentales en Git, proporcionando un sistema seguro y estructurado para modificar y mantener un proyecto. Con estos comandos y prácticas, puedes gestionar el flujo de trabajo de manera eficiente y revertir cambios cuando sea necesario, minimizando el riesgo de errores y mejorando la colaboración entre desarrolladores.
