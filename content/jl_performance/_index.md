+++
title = "jl_performance"
outputs = ["Reveal"]
[logowgnofront]
src = "/img/wg_for_dark_bg.png"
[backlink]
href = "https://westgrid-julia.netlify.app/2021_modules/13_jl_performance/"
txt = "Back to workshop page"
[reveal_hugo]
custom_theme = "mh6.scss"
custom_theme_compile = true
+++

##### <div style="font-size: 2.5rem; line-height: 1rem"><center>Training Modules 2021</center></div>
##### <div style="font-size: 1.9rem;"><center>Basics of the Julia language</center></div>
{{<br size="4.5">}}
# <span style="font-size: 5.5rem; line-height: 6.6rem"><center>Peformance</center></span>
{{<br size="4.5">}}
{{<img src="/img/wg_for_dark_bg.png" title="" width="35%" line-height="rem">}}
{{</img>}}

---

# <span style="font-size: 3rem;"><center>The one thing you need to remember:</center></span>
{{<br size="5">}}

{{%fragment%}}
#### <span style="font-size: 5rem;"><center>Avoid global variables</center></span>
{{%/fragment%}}

---

# <center>Scope of variables</center>
{{<br size="3">}}

Environment within which a variable exists

{{%fragment%}}
## Global scope

Global environment *of a module*
{{%/fragment%}}

{{%fragment%}}
## Local scope

e.g. within a function, a loop, a struct, a macro
{{%/fragment%}}

---

# <center>Why?</center>
{{<br size="4">}}

The Julia compiler is not good at optimizing code using global variables
{{<br size="3">}}

Part of the reason is that their type can change

---

# <center>Example</center>
{{<br size="3">}}

In the global environment:
{{<br size="3">}}

```{jl}
total = 0
n = 1e6

@time for i in 1:n
    global total += i
end
```

---

# <center>Example</center>
{{<br size="3">}}

In a local environment:
{{<br size="3">}}


```{jl}
function local_loop(total, n)
    total = total
    @time for i in 1:n
        global total += i
    end
end

local_loop(0, 1e6)
```

---

# <center>More advanced performance tips</center>
{{<br size="5">}}

{{<a "https://docs.julialang.org/en/v1/manual/performance-tips/" "... in the Julia documentation">}}

---

##### <center><span style="font-size: 5rem">Questions?</span></center>
