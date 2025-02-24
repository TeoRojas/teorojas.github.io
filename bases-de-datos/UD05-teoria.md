---
layout: default
title: UD05. El lenguaje de consulta de datos.
permalink: /bases-de-datos/ud05/teoria/
author: Teo Rojas
date: Noviembre 2024
abstract: Sinopsis de la unidad 05
---

# Índice
1. [Introducción y objetivos del lenguaje de consulta](#1-introducción-y-objetivos-del-lenguaje-de-consulta)  
2. [Ejecución de consultas en MySQL](#2-ejecución-de-consultas-en-mysql)  
3. [La sentencia SELECT](#3-la-sentencia-select)  
4. [Operadores y cálculos en consultas](#4-operadores-y-cálculos-en-consultas)  
   4.1. [Operadores de comparación, lógicos y precedencia](#41-operadores-de-comparación-lógicos-y-precedencia)  
   4.2. [Cálculos aritméticos](#42-cálculos-aritméticos)  
5. [Consultas resumen y funciones de agregado](#5-consultas-resumen-y-funciones-de-agregado)  
6. [Unión de consultas](#6-unión-de-consultas)  
7. [Subconsultas](#7-subconsultas)  
   7.1. [Ubicación y anidación de subconsultas](#71-ubicación-y-anidación-de-subconsultas)  
   7.2. [Rendimiento de subconsultas](#72-rendimiento-de-subconsultas)  
8. [Consultas multitabla](#8-consultas-multitabla)  
   8.1. [Composición interna (INNER JOIN)](#81-composición-interna-inner-join)  
   8.2. [Composición externa (OUTER JOIN)](#82-composición-externa-outer-join)  
9. [Optimización y rendimiento de consultas](#9-optimización-y-rendimiento-de-consultas)  
10. [Herramientas y asistentes para consultas](#10-herramientas-y-asistentes-para-consultas)

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
