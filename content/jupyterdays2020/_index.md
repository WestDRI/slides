+++
title = "jupyterdays2020"
outputs = ["Reveal"]
[logojupyterdays]
src = "/img/jupyterdays/jupyterdays.png"
[backlink]
href = "https://ubc-dsci.github.io/jupyterdays/schedule/day3.html"
txt = "Back to Schedule Day 3"
[reveal_hugo]
custom_theme = "mh2.scss"
custom_theme_compile = true
+++

<img src="/img/jl/julia.svg" style="position: absolute; top: 0%; left: 15%; width: 27%;">
<br>
# &
<img src="/img/jupyter/jupyter_logo.svg.png" style="position: absolute; top: 5%; left: 57%; width: 28%;">

<br>
<br>
<br>

## <div style="color: #000041"><span style="vertical-align: middle"><img src="/img/jupyterdays/ubc.png" alt="" height="" width="70"></span> Jupyter Days 2020</div>

#### <div style="color: #404040"><span style="vertical-align: middle"><img src="/img/wg_white_removed_medium.png" alt="" height="" width="220"></span> Marie-Hélène Burle</div>

---

### <b><font color="#b30059">Ju</font></b>lia is one of the main languages in Project <b><font color="#b30059">Ju</font></b>pyter
<br>

{{<fragment>}}
<div class="debugbox-block">
To install the Julia kernel: <br>
<br>
- Install <a href="https://julialang.org/" target="_blank">Julia</a> <br>
- Install the Julia package <a href="https://github.com/JuliaLang/IJulia.jl" target="_blank">IJulia</a>
</div>
{{</fragment>}}

---

#### Launching Jupyter

You can launch Jupyter notebook or Jupyter lab by running in the terminal one of:

```sh
jupyter notebook
```
```sh
jupyter lab
```
<br>

{{%fragment%}}
Alternatively, you can launch them from within Julia with one of:

```julia
using IJulia
notebook()
```
```julia
using IJulia
jupyterlab()
```
{{%/fragment%}}

---

#### Example Jupyter notebook with Julia
<br>
syzygy does not have the Julia kernel installed at this point, so I will show a basic example of a Jupyter notebook with Julia from my machine.
<br>

{{<fragment>}}
<span style="font-size: 1.3rem;">(Ah ... and um ... yes ... it is about Covid-19 ...)</span>
<br>
<br>
{{<img src="https://imgs.xkcd.com/comics/coronavirus_charts.png" title="" width="80%" line-height="0rem">}}
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&ensp;From <a href="https://xkcd.com/">xkcd</a>
{{</img>}}
{{</fragment>}}

---

#### From Julia notebook to script
<br>

{{%fragment%}}
###### <div align="left"><a href="https://github.com/jupyter/nbconvert" target="_blank">nbconvert</a>: convert a Jupyter notebook to a Julia `.jl` script</div>

```sh
jupyter nbconvert --to script julia_notebook.ipynb
```
{{%/fragment%}}

<br>

{{%fragment%}}
###### <div align="left"><a href="https://github.com/stevengj/NBInclude.jl" target="_blank">NBInclude</a>: source a Jupyter notebook within a Julia `.jl` script</div>

```julia
using NBInclude
@nbinclude("julia_notebook.ipynb")
```
{{%/fragment%}}

---

#### Julia's version of literate programming:<br>the Literate package
<br>

{{%fragment%}}
###### <div align="left"><a href="https://github.com/fredrikekre/Literate.jl" target="_blank">Literate</a> is Julia's take at literate programming</div>

Julia scripts written with the proper syntax can be converted to any of: markdown pages (e.g. for package documentation), Julia code cleaned of all metadata, and <b>Jupyter notebooks</b>
{{%/fragment%}}

{{%fragment%}}
Let's have a look at <a href="https://fredrikekre.github.io/Literate.jl/v2/generated/example/" target="_blank">their demo example</a>
{{%/fragment%}}

<br>

{{%fragment%}}
###### <div align="left"><a href="https://github.com/oxinabox/ipynb2LiterateJulia" target="_blank">ipynb2LiterateJulia</a> converts from Jupyter nb to Literate scripts</div>
{{%/fragment%}}

{{%fragment%}}
Let's look at their demo example
{{%/fragment%}}

---

<img src="/img/jupyter/jupyter_logo.svg.png" style="position: absolute; top: 15%; left: 51.3%; width: 4%;">

# <span style="font-size: 5.0rem; font-variant: small-caps">Questions?</span>
