---
layout: default
title: UD05. El lenguaje de consulta de datos.
permalink: /bases-de-datos/ud05/teoria/
author: Teo Rojas
date: Noviembre 2024
abstract: Sinopsis de la unidad 05
---

# Índice
1. [Introducción a los esquemas relacionales]()

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
