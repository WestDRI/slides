+++
title = "jupyterdays2020"
outputs = ["Reveal"]
[logojupyterdays]
src = "/img/jupyterdays.png"
[jupyterdays]
[reveal_hugo]
custom_theme = "mh.scss"
custom_theme_compile = true
+++

<img src="/img/julia.svg" style="position: absolute; top: 0%; left: 15%; width: 27%;">
<br>
# &
<img src="/img/jupyter_logo.svg.png" style="position: absolute; top: 5%; left: 57%; width: 28%;">

<br>
<br>
<br>

## <div style="color: #000041"><span style="vertical-align: middle"><img src="/img/ubc.png" alt="" height="" width="70"></span> Jupyter Days 2020</div>

#### <div style="color: #404040"><span style="vertical-align: middle"><img src="/img/wg_white_removed_medium.png" alt="" height="" width="220"></span> Marie-Hélène Burle</div>

---

### <b><font color="#b30059">Ju</font></b>lia is one of the main languages in Project <b><font color="#b30059">Ju</font></b>pyter
<br>

<div class="debugbox-block">
To install the Julia kernel: <br>
<br>
- Install <a href="https://julialang.org/">Julia</a> <br>
- Install the Julia package <a href="https://github.com/JuliaLang/IJulia.jl">IJulia</a>
</div>

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
Alternatively, you can launch them from within Julia with one of:

```julia
using IJulia
notebook()
```
```julia
using IJulia
jupyterlab()
```

---

#### Example Jupyter notebook with Julia
<br>
syzygy does not have the Julia kernel installed at this point, so I will show a basic Jupyter notebook with Julia from my machine.

---

#### From Julia notebook to script
<br>
###### <div align="left">[nbconvert](https://github.com/jupyter/nbconvert): convert nb to `.jl` script</div>

```sh
jupyter nbconvert --to script julia_notebook.ipynb
```
<br>
###### <div align="left">[NBInclude](https://github.com/stevengj/NBInclude.jl): source a nb within a `.jl` script</div>

```julia
using NBInclude
@nbinclude("julia_notebook.ipynb")
```

---

#### Julia's version of literate programming
<br>

###### <div align="left">[Literate](https://github.com/fredrikekre/Literate.jl) is Julia's take at literate programming</div>

Julia scripts written with the proper syntax can be converted to any of: markdown pages (e.g. for package documentation), Julia code cleaned of all metadata, and <b>Jupyter notebooks</b>.
<br>
<br>

###### <div align="left">[ipynb2LiterateJulia](https://github.com/oxinabox/ipynb2LiterateJulia) converts from Jupyter nb to Literate scripts</div>

---

<img src="/img/jupyter_logo.svg.png" style="position: absolute; top: 15%; left: 51.3%; width: 4%;">

# <span style="font-size: 5.0rem; font-variant: small-caps">Questions?</span>
