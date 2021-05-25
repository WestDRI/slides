+++
title = "jl_macros"
outputs = ["Reveal"]
[logowgnofront]
src = "/img/wg_for_dark_bg.png"
[backlink]
href = "https://westgrid-julia.netlify.app/2021_modules/12_jl_macros/"
txt = "Back to workshop page"
[reveal_hugo]
custom_theme = "mh6.scss"
custom_theme_compile = true
+++

##### <div style="font-size: 2.5rem; line-height: 1rem"><center>Training Modules 2021</center></div>
##### <div style="font-size: 1.9rem;"><center>Basics of the Julia language</center></div>
{{<br size="4.5">}}
# <span style="font-size: 5.5rem; line-height: 6.6rem"><center>Macros</center></span>
{{<br size="4.5">}}
{{<img src="/img/wg_for_dark_bg.png" title="" width="35%" line-height="rem">}}
{{</img>}}

---

# <center>Metaprogramming</center>
{{<br size="5">}}

{{<note>}}
Julia code is itself data and can be manipulated by the language while it is running
{{</note>}}

---

# <center>Metaprogramming</center>
{{<br size="5">}}

- Large influence from {{<a "https://en.wikipedia.org/wiki/Lisp_(programming_language)" "Lisp">}}
{{<br size="2">}}
- Since Julia is entirely written in Julia, it is particularly well suited for metaprogramming

---

# <center>Parsing and evaluating</center>
{{<br size="5">}}

Let's start with something simple:

```{jl}
2 + 3
```
{{<br size="4">}}

{{%fragment%}}
How is this run internally?
{{<br size="2">}}
{{%/fragment%}}

---

# <center>Parsing and evaluating</center>
{{<br size="5">}}

The string `"2 + 3"` gets parsed into an expression:

```{jl}
Meta.parse("2 + 3")
```
{{<br size="4">}}

{{%fragment%}}
Then that expression gets evaluated:

```{jl}
eval(Meta.parse("2 + 3"))
```
{{%/fragment%}}

---

# <center>Macros</center>
{{<br size="3">}}

They resemble functions and just like functions, they accept as input a tuple of arguments
{{<br size="3">}}

**BUT** macros return an expression which is compiled directly rather than requiring a runtime `eval` call
{{<br size="3">}}

So they execute *before* the rest of the code is run
{{<br size="3">}}

Macro's names are preceded by `@` (e.g. `@time`)

---

# <center>Macros</center>
{{<br size="3">}}

Julia comes with many macros and you can create your own with:

```jl
macro <name>()
    <body>
end
```

---

##### <center><span style="font-size: 5rem">Questions?</span></center>
