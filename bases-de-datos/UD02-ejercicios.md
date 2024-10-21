---
layout: default
title: UD02. Diseño de Bases de Datos, el modelo conceptual. Ejercicios
permalink: /bases-de-datos/ud02/ejercicios/
author: Teo Rojas
date: Octubre 2024
abstract: Sinopsis de la unidad 02
---

# Índice

1. [Ejercicio 1: Esquema ER de Alumno-Asignatura-Profesor](#1-ejercicio-1-esquema-er-de-alumno-asignatura-profesor)
2. [Ejercicio 2: Esquema ER de Montador-Dormitorio-Cliente](#2-ejercicio-2-esquema-er-de-montador-dormitorio-cliente)
3. [Ejercicio 3: Esquema ER de Red de Enseñanzas](#3-ejercicio-3-esquema-er-de-red-de-enseñanzas)
4. [Ejercicio 4: Esquema ER de Empleados de Empresa](#4-ejercicio-4-esquema-er-de-empleados-de-empresa)
5. [Ejercicio 5: Esquema ER de Formula 1](#5-ejercicio-5-esquema-er-de-formula-1)
6. [Ejercicio 6: Esquema ER de Libros, Autores y Temas](#6-ejercicio-6-esquema-er-de-libros-autores-y-temas)
7. [Ejercicio 7: Esquema ER de Clasificación ATP de Tenis](#7-ejercicio-7-esquema-er-de-clasificación-atp-de-tenis)
8. [Ejercicio 8: Esquema ER de Biblioteca](#8-ejercicio-8-esquema-er-de-biblioteca)
9. [Ejercicio 9: Esquema ER de Startrek](#9-ejercicio-9-esquema-er-de-startrek)
10. [Ejercicio 10: Esquema ER de Lanzadera en Startrek](#10-ejercicio-10-esquema-er-de-lanzadera-en-startrek)
11. [Ejercicio 11: Esquema ER de Campeonato de Ajedrez](#11-ejercicio-11-esquema-er-de-campeonato-de-ajedrez)
12. [Ejercicio 12: Esquema ER de Información Adicional en Startrek](#12-ejercicio-12-esquema-er-de-información-adicional-en-startrek)
13. [Ejercicio 13: Esquema ER de Gestión de Actividades Formativas](#13-ejercicio-13-esquema-er-de-gestión-de-actividades-formativas)
14. [Ejercicio 14: Esquema ER de Seguridad en Bancos](#14-ejercicio-14-esquema-er-de-seguridad-en-bancos)
15. [Ejercicio 15: Esquema ER de Trabajos Fin de Carrera](#15-ejercicio-15-esquema-er-de-trabajos-fin-de-carrera)
16. [Ejercicio 16](#16-ejercicio-16)
17. [Ejercicio 17: Esquema ER de Taller de Reparación](#17-ejercicio-17-esquema-er-de-taller-de-reparación)
18. [Ejercicio 18: Esquema ER de Centro Médico](#18-ejercicio-18-esquema-er-de-centro-médico)

## 1. Ejercicio 1: Esquema ER de Alumno-Asignatura-Profesor.

Elabora el esquema ER que contemple lo siguiente:

- Un alumno puede estar matriculado de una o varias asignaturas.
- Puede estar matriculado en la misma asignatura más de un curso escolar (si repite).
- Se quiere saber el curso escolar en el que cada alumno está matriculado de cada asignatura.
- En una asignatura habrá como mínimo 10 y como máximo 25 alumnos.
- Una asignatura es impartida por un único profesor.
- Un profesor podrá impartir varias asignaturas.

## 2. Ejercicio 2: Esquema ER de Montador-Dormitorio-Cliente.

Obtén el esquema ER para el siguiente supuesto. Una empresa dedicada a la instalación de dormitorios juveniles (a medida) quiere realizar una base de datos donde se reflejen las ventas y montajes, para lo cual se tiene en cuenta:

- Cada modelo de dormitorio lo debe montar, al menos, dos montadores.
- El mismo montador puede montar varios modelos de dormitorios.
- De cada modelo de dormitorio, nos interesa conocer su código de modelo.
- El mismo montador puede montar el mismo modelo en diferentes fechas. Nos interesa conocer la fecha en la que realiza cada montaje.
- De un montador, nos interesa su NIF, nombre, dirección, teléfono de contacto y el número de dormitorios que ha montado de cada modelo.
- Cada modelo de dormitorio puede ser comprado por uno o varios clientes, y el mismo cliente podrá comprar uno o varios dormitorios. 
- De un cliente nos interesa su NIF, nombre, dirección, teléfono y fecha de compra de cada modelo.

## 3. Ejercicio 3: Esquema ER de Red de Enseñanzas.

Se pretende guardar información sobre la red de institutos de enseñanzas medias de una comunidad autónoma con los siguientes valores:

- Cada instituto tiene un código único y además, nombre, teléfono y dirección. Se conoce la ciudad en la que se localiza el instituto. 
- De cada ciudad que alberga institutos conocemos su código (único), el nombre, la superficie (en kilómetros cuadrados) y el total de habitantes del último censo de población. 
- Toda ciudad pertenece a una provincia, de la cual sabemos su código (único), su nombre y la superficie en kilómetros cuadrados. 
- Se tienen datos de los inspectores que controlan el funcionamiento de los institutos. Un inspector puede ser destinado para controlar varias ciudades, pero cada ciudad sólo puede tener asignado un inspector.
- De cada inspector conocemos: nif, nombre, apellidos y teléfono.

## 4. Ejercicio 4: Esquema ER de Empleados de Empresa.

Se persigue guardar información sobre los empleados de una empresa; éstos se organizan en departamentos los cuales están ubicados en diferentes centros de trabajo. Reiterando: La empresa tiene varios centros de trabajo; cada uno de éstos tiene uno o más departamentos, los cuales tienen uno o más empleados. Conocemos los siguientes datos:

- De cada centro: número, nombre y dirección.
- De cada empleado: número (único), nombre, número de hijos, extensión telefónica, fecha de nacimiento, fecha de ingreso en la empresa, sueldo mensual y el departamento al que pertenece.
- Para algunos empleados se conoce la comisión mensual que cobra; para otros, se desconoce ese dato.
- Un empleado siempre está adscrito a un departamento y solo puede pertenecer a un departamento.
- De cada departamento: número (único), nombre, presupuesto anual, el número de empleado que corresponde al director y el tipo de director (fijo o eventual) y número del centro al cual pertenece. 
- Todo departamento tiene un solo director..


## 5. Ejercicio 5: Esquema ER de Formula 1.

Se quiere guardar información sobre la Fórmula 1, específicamente sobre los pilotos, las carreras y los circuitos donde compiten. Conocemos los siguientes datos:

- De cada piloto: código (único), nombre, fecha de nacimiento y nacionalidad.
- De cada circuito: código (único), nombre, longitud (en metros), sentido de giro, número de curvas a la izquierda y a la derecha, localidad, región y país.
- De cada carrera: fecha (única), nombre, número de vueltas previsto, la distancia total a recorrer y el código del circuito donde se corre.
- En cada carrera suelen correr varios pilotos, y cada piloto puede correr en una o más carreras. 
- Cada carrera se corre en un circuito, y en un circuito se pueden celebrar una o más carreras (normalmente, una cada año, aunque algunos circuitos son descartados del calendario en determinadas temporadas).
- De cada piloto que participa en una carrera: puesto de salida (parrilla), puesto de llegada (su valor puede ser un número de orden o, si el piloto no ha completado la carrera, el valor será una abreviatura indicativa del motivo -DES: descalificado, FM: fallo mecánico, SP: salida de pista, etc.-), tiempo empleado y puntos conseguidos (valor de 0 a 10).

## 6. Ejercicio 6: Esquema ER de Libros, Autores y Temas.

Se persigue guardar información sobre libros, sus autores y el tema que tratan:

- De cada autor se conoce su código (único), nombre, seudónimo (si lo tiene), nacionalidad y fecha de nacimiento. 
- Algunos autores han escrito sólo un libro, mientras que otros han escrito varios; además, en algunos libros participan varios autores. 
- De cada libro se conoce su código (único) ISBN, el título, el número de páginas y el año de la primera edición. 
- Los libros se clasifican según el asunto que tratan: Cada libro se encuadra dentro de un subtema el cual pertenece a un determinado tema. Por ejemplo: el libro titulado “Análisis estadístico” pertenece al subtema “Estadística”, encuadrado a su vez dentro del tema “Matemáticas”. 
- De cada tema conocemos su código (único), la abreviatura y el nombre. 
- De cada subtema conocemos su código (único), la abreviatura y el nombre. 
- Un tema concreto puede abarcar varios subtemas, pero un subtema sólo se encuadra dentro de un determinado tema. En principio, en la base de datos guardaremos una gran variedad de temas, cada uno con sus correspondientes subtemas; por tanto, puede que en un momento determinado haya temas o subtemas que no clasifiquen a ningún libro. 
- Antes de insertar un subtema en la BDD habrá que insertar el tema al que corresponde; análogamente, si un tema se elimina de la BDD también se eliminarán todos los subtemas que abarca.

## 7. Ejercicio 7: Esquema ER de Clasificación ATP de Tenis.

Realiza un diagrama entidad relación que modele el diseño de la siguiente base de datos.Deseamos almacenar información en una base de datos (BDD) siguiendo estas pautas:
1. Información sobre jugadores de tenis en la clasificación mundial de la ATP.
2. Detalles sobre los torneos en los que estos jugadores participan o han participado.
3. Información sobre el entrenador actual de cada jugador.

Los siguientes puntos son importantes:

- Todos los jugadores han participado en torneos, y algunos de ellos han ganado torneos.
- Queremos conocer, de cada jugador, su código único, nombre, primer apellido, fecha de nacimiento, nacionalidad, ciudad y país de residencia, su clasificación actual en la ATP, los torneos que ha ganado y quién es su entrenador actual.
- Queremos información sobre cada entrenador, incluyendo su código único, nombre, primer apellido y nacionalidad. 
- Los entrenadores no son jugadores y pueden entrenar a múltiples tenistas. Algunos entrenadores pueden no tener tenistas a su cargo.
- Para cada torneo jugado, tenemos datos de los jugadores que participaron, el premio en metálico, el nombre del torneo (por ejemplo, Conde de Godó, Wimbledon, Roland Garrós, etc.) y la fecha en que se llevó a cabo. 
- Cada torneo se celebra una vez al año, y tenemos datos de varios años, incluido el año actual. 
- Se considera que dos torneos diferentes pueden comenzar en la misma fecha.
- No existen jugadores ni entrenadores con el mismo nombre.

## 8. Ejercicio 8: Esquema ER de Biblioteca.

Se quiere guardar en una BDD información sobre los libros de una biblioteca, las editoriales, los lectores y los préstamos de libros. 

- De los libros se guarda el ISBN, el título, el autor o autores, nacionalidad del autor, el tema de que trata, la editorial, y la estantería donde se encuentra. 
- El tema puede ser: Novela, Literatura, Ciencias, Matemáticas o Historia. 
- No existen ejemplares repetidos de ningún libro. 
- Cada estantería de la biblioteca soporta como máximo 100 libros, y cada una tiene un número distinto y un lugar asignado, por ejemplo: Estantería nº 10 en pasillo A planta 2ª.
- Los empleados de la biblioteca solicitan a las editoriales los libros. De éstas se conoce su nombre y su dirección. 
- De cada empleado se conoce su NIF y su nombre completo. 
- Cada libro sólo puede ser solicitado a la editorial por un solo empleado. 
- Los lectores deben poseer un carnet que se le rellena en la primera visita a la biblioteca. Se guarda su NIF, nombre completo y teléfono. 
- Cada usuario sólo puede tener retirado un libro en cada momento. 
- Un lector no puede retirar más de una vez el mismo libro. 
- Puede que existan usuarios que no hayan solicitado ningún libro. 
- Se anota de cada petición de préstamo, la fecha de préstamo y la fecha de devolución.

## 9. Ejercicio 9: Esquema ER de Startrek.

Realiza un diagrama entidad relación que modele el diseño de la siguiente base de datos. Un club de fans de la famosa película Startrek, ha decidido crear una página web donde se pueda consultar información referente a todas las películas y capítulos de la saga. El dominio startrekfans.com se redigirá a un servidor web que consulte una base de datos con la siguiente información.

- Actores: Es necesario conocer el Nombre completo del actor, el personaje que interpreta, la fecha de nacimiento y su nacionalidad.
- Personajes: De los personajes es necesario saber el nombre, su raza y graduación militar que desempeña (capitán, teniente, almirante, etc.). 
- Es importante conocer el actor que interpreta el personaje, teniendo en cuenta que, un personaje solo puede ser interpretado por un actor, y un actor solo puede interpretar un personaje. Además, será necesario conocer el personaje del que depende directamente en graduación militar.
- Capítulos: Hay que almacenar todos los capítulos, indicando a qué temporada pertenece cada capítulo, el título, el orden en el que fue rodado, fecha de su primera emisión en televisión y los personajes que participaron en cada capítulo.
- Películas: Se debe almacenar también, todas las películas que se proyectaron en cines, cada una con su año de lanzamiento, título y director. 
- Hay que guardar los personajes que aparecen en cada película y cuál de ellos fue el protagonista.
- Planetas: En cada capítulo, se visita 1 o varios planteas, hay que almacenar el código del planeta, su nombre, galaxia a la que pertenece, el problema que se resolvió en esa visita y la nave con la que se viajó al planeta. Para la descripción del problema será suficiente con un campo de texto de 255 caracteres. 
- De la nave se almacenará el nombre, código y número de tripulantes.

Consideraciones a tener en cuenta:

- En el enunciado no aparece explícitamente el campo Código para los personajes y actores, pero es necesario incluirlo para dotar de un atributo clave a estas entidades.
- La clave de la entidad Capítulo es compuesta debido a la idiosincrasia de las mismas.
- La relación ternaria tiene cardinalidad N:M:P, es decir, Muchos-Muchos-Muchos.
- Se sobreentiende que un jefe de zona no tiene que tener trabajadores a su cargo obligatoriamente.

## 10. Ejercicio 10: Esquema ER de Lanzadera en Startrek.

El club de fans de Startrek quiere hacer una segunda versión de la base de datos que contemple lo siguiente:
- En cada capítulo, la nave que viaja a un planeta, puede disponer de una nave pequeña llamada lanzadera con la que bajan a la superficie del planeta. 
- La existencia de la lanzadera, solo tiene sentido si existe la nave a la que pertenece. 
- Se identificará cada lanzadera mediante un número entero y el código de la nave. 
- Es necesario conocer la capacidad en personas de la lanzadera.

## 11. Ejercicio 11: Esquema ER de Campeonato de Ajedrez.

El club de Ajedrez de Villatortas de Arriba, ha sido encargado por la Federación Internacional de Ajedrez de la organización de los próximos campeonatos mundiales que se celebrarán en la mencionada localidad. Por este motivo, desea llevar una base de datos con toda la gestión relativa a participantes y procedencias. Teniendo en cuenta que:

- En el campeonato participan jugadores y árbitros; de ambos se requiere conocer el número de asociado, nombre, dirección, teléfono de contacto y campeonatos en los que ha participado (como jugador o como árbitro). 
- De los jugadores se precisa además el nivel de juego en una escala de 1 a 10. 
- Ningún árbitro puede participar como jugador.
- Los países envían al campeonato un conjunto de jugadores y árbitros, aunque no todos los países envían participantes. 
- Todo jugador y árbitro es enviado por un único país. 
- Un país puede ser representado por otro país. 
- Cada país se identifica por un número correlativo según su orden alfabético e interesa conocer además de su nombre, el número de clubes de ajedrez existentes en el mismo.

## 12. Ejercicio 12: Esquema ER de Información Adicional en Startrek.

El club de fans de Startrek ha pensado ampliar los requisitos de la página web para hacer una segunda versión. Esta segunda versión consiste en incluir información extra para los personajes. 
- De esta manera, si el personaje es un humano, se indicará su fecha de nacimiento y ciudad terráquea donde nació. 
- Si el personaje es de la raza Vulcano, se almacenará el nombre del mentor y la fecha de graduación, y si es de raza Klingon, se guardará su planeta natal y la fecha de su último combate.

## 13. Ejercicio 13: Esquema ER de Gestión de Actividades Formativas.

Una empresa necesita crear una base de datos en la que se controle todo lo referente a la gestión y planificación de las actividades formativas de sus trabajadores. Los requisitos son los siguientes:

- La empresa organiza cursos internos de formación de los que se desea conocer el código de curso, el nombre, una descripción, el número de horas de duración y el coste del curso.
- Un curso puede tener como prerrequisito haber realizado otro(s) previamente, y a su vez la realización de un curso puede ser prerrequisito de otros. Un curso que es un prerrequisito de otro puede serlo de forma obligatoria o sólo recomendable.
- Un mismo curso tiene diferentes ediciones, es decir, se imparte en diferentes lugares, fechas y con diferentes horarios (intensivo, de mañana o de tarde). En una misma fecha de inicio sólo puede impartirse una edición de un curso.
- Los cursos se imparten por personal de la propia empresa.
- De los empleados se desea almacenar su código de empleado, nombre y apellidos, dirección, teléfono, NIF, fecha de nacimiento, nacionalidad, sexo, firma y salario, así como si está o no capacitado para impartir cursos.
- Un mismo empleado puede ser docente en una edición de un curso y alumno en otra edición, pero nunca puede ser ambas cosas a la vez (en una misma edición de curso o lo imparte o lo recibe).

## 14. Ejercicio 14: Esquema ER de Seguridad en Bancos.

La Policía quiere crear una BDD sobre la seguridad en bancos, teniendo en cuenta los siguientes datos: 

- Banco: Código de 2 dígitos (distinto para cada entidad), nombre y domicilio de la central. 
- Sucursal (cada banco puede tener varias sucursales): Código de 3 dígitos (es único para cada sucursal de un banco, pero sucursales de bancos distintos pueden tener el mismo código), domicilio y número de empleados de dicha sucursal. 
- Vigilantes jurados: NIF, nombre y fecha de nacimiento. 
- Cada sucursal contrata, según el día, uno o más vigilantes jurados o ninguno. Toda sucursal ha contratado, al menos una vez, a algún vigilante. 
- Un vigilante puede ser contratado por diferentes sucursales (incluso de diferentes entidades), en distintas fechas (éste dato interesa), y puede ser contratado con arma o sin ella. 
- Delincuentes (personas detenidas por atracar sucursales): NIF y nombre completo. 
- Alguno de éstos pueden (o no) estar integrados en bandas organizadas (incluso pueden pertenecer a más de una banda) y por ello se desea saber a qué banda o bandas pertenecen, sin ser de interés si la banda ha participado en el delito o no. 
- Es interesante saber en qué fecha ha atracado cada delincuente una sucursal. Un delincuente puede atracar varias sucursales en diferentes fechas, y una sucursal puede ser atracada por varios delincuentes. No todas las sucursales han sido atracadas. 
- Para simplificar el problema: Se considera que un delicuente no ha atracado más de una vez la misma sucursal (aunque en la realidad no ocurre lo mismo). 
- Bandas: Número de banda (distinto para cada una), nombre y cantidad de miembros. 
- En ningún caso interesa saber si un vigilante ha participado en la detención de un atracador.

## 15. Ejercicio 15: Esquema ER de Trabajos Fin de Carrera.

Una Escuela de Informática quiere tener controlado en una BDD todo lo referente a los Trabajos Fin de Carrera (en adelante, T.F.C.). A continuación se mencionan todos los datos que es necesario registrar. 

- Los alumnos poseen un número de matrícula único, NIF y nombre y primer apellido. Cada alumno realiza, evidentemente, sólo un T.F.C. Y, por otra parte, un T.F.C. determinado no puede ser realizado por varios alumnos. 
- Cada T.F.C. tiene un título y una fecha de comienzo. Distintos T.F.C. pueden coincidir en el mimo título, y también en la misma fecha de comienzo. 
- Un profesor tiene NIF, nombre y primer apellido y varios teléfonos. Es útil conocer a qué alumnos le dirige el T.F.C.. En general, todos los profesores dirigen o han dirigido a uno o a varios alumnos. Por otro lado, a cada alumno sólo se le asigna un profesor para que le dirija el T.F.C.. 
- Un T.F.C. es evaluado por un tribunal. Cada tribunal está formado por uno o varios profesores y cada profesor puede (o no) formar parte de uno o varios tribunales. Por otra parte, se desea conocer qué alumno es el que se presenta a qué tribunal, con qué T.F.C., en qué fecha lo ha defendido y la nota obtenida. Un mismo tribunal evaluará uno o varios T.F.C. 
- El tribunal tiene asignado un número de orden de tribunal, un curso académico (por ejemplo, 2011-2012) y un lugar de examen. En cada curso escolar, los números de tribunal se asignan secuencialmente, comenzando por el número 1. 
- Al margen de esto, un alumno puede pertenecer y colaborar con uno o más grupos de investigación. Dichos grupos disponen de un código de grupo (exclusivo para cada uno) y un nombre. Cada grupo tiene al menos un alumno. Interesa la fecha de incorporación del alumno al grupo y la fecha de su baja en el mismo. 
- En cada grupo se nombra a uno de sus alumnos integrantes como coordinador del grupo, por tanto, un alumno sólo puede ser coordinador de un grupo si en esa fecha es un miembro integrante de dicho grupo y mientras permanezca en él. 
- Un alumno no puede ser nombrado al mismo tiempo como coordinador de más de un grupo. No todos los alumnos han sido nombrados coordinadores. Un grupo puede cambiar de alumno coordinador a lo largo del tiempo. Interesa saber la fecha de nombramiento del alumno como coordinador y la fecha de su cese. 
- Por otra parte, un profesor, al margen de dirigir el T.F.C. de algunos alumnos, puede haber colaborado con (ayudar a) otros alumnos en la realización de sus T.F.C., los cuales han sido dirigidos por otros profesores. En este caso, sólo es interesante conocer qué profesor ha ayudado a qué alumno (a un alumno le pueden ayudar varios profesores). No todos los profesores ayudan, ni todos los alumnos son ayudados. Si un profesor dirige a un alumno, no le puede ayudar (sólo lo dirige).

## 16. Ejercicio 16. Esquema ER de Flota de Autobuses.

- Una flota de autobuses realiza viajes entre diferentes ciudades de una región. Se pretende modelizar los viajes que realizan los autobuses y las ciudades de salida y destino de esos viajes.
- De cada autobús conocemos la matrícula, la fecha de matriculación, la marca, el modelo y el total de plazas. Para algunos autobuses se conoce la fecha de la última revisión de la ITV; para otros, esa fecha no existe o es desconocida.
- En cada viaje, un autbús siempre sale de una ciudad y llega a otra distinta.
- De cada ciudad conocemos el código, el nombre y el número de habitantes.
Un viaje tiene como origen una ciudad; de una ciudad puede salir más de un viaje.
- Un viaje llega a una ciudad; a una ciudad puede llegar más de un viaje.
De algunas ciudades puede no salir ningún viaje. A algunas ciudades puede no llegar ningún viaje. De cada ciudad que tenemos en la BDD, al menos, o sale un viaje o llega un viaje; es decir, no hay ciudades de las que ni salga ni llegue un viaje.
- Un autobús puede realizar más de un viaje cada día. Para cada viaje se quiere anotar en la BDD: el autobús que lo realiza, la ciudad de la que parte el viaje, y la fecha y la hora de salida, también la ciudad de llegada, y la fecha y la hora de llegada. También, el número de pasajeros que transporta.
- Cada viaje lo realiza siempre un solo conductor. De cada conductor queremos almacenar: NIF, nombre, apellidos, teléfono y la fecha de obtención del carnet de conducir.

## 17. Ejercicio 17: Esquema ER de Taller de Reparación.

Se quiere guardar en una BDD la información que se maneja en un taller: mecánicos, coches, clientes y averías. 
- Cada mecánico tiene un NIF, un número de la seguridad social, un nombre y apellido, un domicilio, una especialidad y un teléfono. 
- Cada cliente tiene un NIF, un nombre, un apellido, un domicilio y un teléfono. 
- Cada cliente puede llevar uno o más coches para reparar. Cada coche puede ser llevado o recogido al/del taller por su propietario o por otra persona distinta (familiar, amigo, etc., éstos siempre con la pertinente autorización escrita del propietario del vehículo); de cualquier forma, la persona que entregue o recoja el coche también será considerado como cliente y por tanto interesa registrar sus datos. 
- Se quiere conocer qué cliente entrega el coche y qué cliente lo recoge. Si el propietario del vehículo ni lo entrega ni lo recoge en el taller, no se registrarán sus datos personales en la BDD, es decir, no figurará como cliente. 
- Un cliente puede que nunca haya ido a entregar un vehículo, o también puede ocurrir que un cliente nunca haya ido a recogerlo; pero, al menos, una de las dos acciones habrá tenido que hacer para considerarlo cliente. 
- De cada coche se guarda su matrícula, número de bastidor, marca, modelo, fecha de matriculación y el color. 
- De cada avería del coche se registran varias fechas-hora: la de entrada del vehículo en el taller, la inicial de comienzo de la reparación, la de finalización de la reparación (se desconoce a priori) y la de recogida por parte del cliente (también se desconoce a priori). 
- Poco después de entrar un vehículo al taller y después de una primera inspección, al cliente se le facilita un documento con el detalle del diagnóstico y su presupuesto (ambos datos se registrarán en la BDD). El presupuesto puede estar o no pagado. En ese momento también se registran los datos del cliente que entrega el vehículo y del propio automóvil, así como la fecha-hora de entrada. La demás fechas-hora no se completan hasta conocerlas. 
- No se comenzará la reparación hasta que no se puedan asignar mecánicos para reparar la avería. Cada avería puede ser atendida por más de un mecánico. Cada mecánico registrado ha reparado al menos una avería. 
- En un mismo día se pueden reparar distintas averías de un mismo coche. Por ejemplo, el cliente puede llevar por la mañana el coche al taller para cambiarle el aceite; tendrá un diagnóstico y el presupuesto correspondiente. Y, por ejemplo, por la tarde puede llevarlo de nuevo para reparar un intermitente; ésta última se registrará como una avería distinta, con un registro independiente de la avería de la mañana. 
- Los posibles diagnósticos son (simplificando la realidad): Puesta a punto general, Electricidad, Motor, Chapa, Pintura, Amortiguación, Neumáticos, Aceite-Filtros y Cambio de lunas. 
- Cada avería puede corresponder a un tipo de avería (diagnóstico). Cada tipo de avería tiene un código (único), un nombre y un precio. Los posibles nombres para las averías son (simplificando la realidad): Puesta a punto general, Electricidad, Motor, Chapa, Pintura, Amortiguación, Neumáticos, Aceite-Filtros y Cambio de lunas.

## 18. Ejercicio 18: Esquema ER de Centro Médico.

Se quiere guardar en una BDD la información que se maneja en un centro médico: doctores, pacientes y consultas. 

- Cada médico tiene: nº de colegiado, nombre, 1º apellido, especialidad y teléfono. 
- Cada paciente tiene: nº de asegurado (único), nif (único), nombre, apellido 1º, fecha de nacimiento, teléfono y, a veces (no siempre), una compañía aseguradora. 
- Fundamentalmente se va a buscar en la BDD a los pacientes por el número de asegurado 
- Cada consulta tiene una fecha y hora, un diagnóstico (texto de 1000 caracteres máximo) y un importe -en euros- (la puede pagar el paciente -en efectivo o con tarjeta- o la compañía aseguradora). Es posible que el importe esté pendiente de pago. 
- Dos consultas diferentes, a pacientes distintos, pueden coincidir en la misma fecha y hora. 
- Un paciente puede acudir varias veces al centro médico para ser atendido por cualquiera de los doctores que allí trabajan. Incluso, en un mismo día, puede asistir consecutivamente o no, a diferentes consultas, con el mismo o con diferentes doctores. Por tanto, cada vez que asista o que pida cita con un médico diferente se considera una consulta distinta. 
- En cada consulta médica sólo está presente un doctor y un paciente; o sea, sólo un médico realiza cada vez el diagnóstico y no puede atender a varios pacientes a la vez. 
- No se permitirá borrar datos de médicos ni de pacientes si hay registradas consultas en las que hayan participado (como doctor o como paciente). Visto desde otro punto de vista, para poder registrar una consulta en la BDD tiene que estar dados de alta tanto el médico como el paciente.