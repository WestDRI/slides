+++
title = "jl_basics"
outputs = ["Reveal"]
[logowgnofront]
src = "/img/wg_for_dark_bg.png"
[backlink]
href = "https://westgrid-julia.netlify.app/2021_modules/07_jl_var_type_cons/"
txt = "Back to workshop page"
[reveal_hugo]
custom_theme = "mh6.scss"
custom_theme_compile = true
+++

##### <div style="font-size: 2.5rem; line-height: 1rem"><center>Training Modules 2021</center></div>
##### <div style="font-size: 1.9rem;"><center>Basics of the Julia language</center></div>
{{<br size="4.5">}}
# <span style="font-size: 5.5rem; line-height: 6.6rem"><center>Basics</center></span>
{{<br size="4.5">}}
{{<img src="/img/wg_for_dark_bg.png" title="" width="35%" line-height="rem">}}
{{</img>}}

---

# <center>Comments</center>
{{<br size="5">}}

Comments do not get evaluated
{{<br size="3">}}

```{jl}
# Single line comment
```
{{<br size="3">}}

```jl
#=
Comments can also spread over multiple lines
if you enclose them with this syntax
=#
```
{{<br size="3">}}

```{jl}
x = 2;          # comments can be added at the end of lines
```

---

# <center>Unicode support</center>
{{<br size="4">}}

You can enter Unicode characters {{<a "https://docs.julialang.org/en/v1/manual/unicode-input/" "via tab completion of LaTeX">}}:
{{<br size="2.5">}}

```jl
\omega		 # press TAB
\sum         # press TAB
\sqrt	     # press TAB
\in          # press TAB
\:phone:     # press TAB
```

---

# <center>Quotes</center>
{{<br size="5">}}

Notice the difference between single and double quotes:
{{<br size="2">}}

```jl
typeof("a")
typeof('a')

println("This is a string")
println('Ouch')
```

---

# <center>Sourcing a file</center>
{{<br size="5">}}

`include()` sources a Julia script:
{{<br size="2">}}

```jl
include("/path/to/file.jl")
```

---

##### <center><span style="font-size: 5rem">Questions?</span></center>
