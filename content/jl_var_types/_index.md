+++
title = "jl_var_type_cons"
outputs = ["Reveal"]
[logowgnofront]
src = "/img/wg_for_dark_bg.png"
[backlink]
href = "https://westgrid-julia.netlify.app/2021_modules/07_jl_var_types/"
txt = "Back to workshop page"
[reveal_hugo]
custom_theme = "mh6.scss"
custom_theme_compile = true
+++

##### <div style="font-size: 2.5rem; line-height: 1rem"><center>Training Modules 2021</center></div>
##### <div style="font-size: 1.9rem;"><center>Basics of the Julia language</center></div>
{{<br size="4.5">}}
# <span style="font-size: 5.5rem; line-height: 6.6rem"><center>Variables & types</center></span>
{{<br size="4.5">}}
{{<img src="/img/wg_for_dark_bg.png" title="" width="35%" line-height="rem">}}
{{</img>}}

---

# <span style="font-size: 7rem"><center>Variables</center></span>

---

A variable is a name bound to a value:
{{<br size="3">}}

```jl
a = 3
```
{{<br size="5">}}

These names are extremely flexible & can use any Unicode character.
{{<br size="5">}}

The only rules are:
{{<br size="3">}}

- They must begin with a letter or an underscore (a few of the Unicode characters are also accepted)
{{<br size="1">}}

- They cannot be the names of built-in statements such as `if`, `do`, `try`, `else`

---

The {{<a "https://docs.julialang.org/en/v1/manual/style-guide/#Style-Guide-1" "Julia Style Guide">}} recommends the following conventions:
{{<br size="4">}}

- use lower case
{{<br size="2">}}

- word separation can be indicated by underscores, but better not use them if the names can be read easily enough without them

---

In an interactive session, Julia returns the value of an expression (even the assignment to a variable), unless you add a semi-colon at the end:
{{<br size="2">}}

```jl
b = "Hello, World!";
```
{{<br size="5">}}

To print a value in the REPL or in Jupyter, you only need to call it:
{{<br size="2">}}

```jl
a
```
{{<br size="5">}}

If you want to print it while running a script however, you need to use the `println()` function:
{{<br size="2">}}

```jl
println(a)
```

---

You can reassign new values to variables:

```jl
a = 3;
a = -8,2;
a
```
{{<br size="5">}}

You can define multiple variables at once:

```jl
a, b, c = 1, 2, 3
b
```
{{<br size="5">}}

Variables in Julia are case-sensitive & can include Unicode characters:

```jl
δ = 8.5;
```

---

{{<a "https://docs.julialang.org/en/v1/base/base/#Keywords" "Built-in keywords">}} are not allowed. Neither are built-in constants & keywords in use in a session:

```jl
false = 3;

> ERROR: syntax: invalid assignment location "false"
```
{{<br size="5">}}

The keyword `ans` is a variable which, in the REPL, automatically takes the value of the last computation:

```jl
a = 3
typeof(ans)
ans + 1

b = "test"
typeof(ans)
```

---

# <span style="font-size: 7rem"><center>Types</center></span>

---

# <center>2 main type systems</center>
{{<br size="5">}}

## Static type-checking
{{<br size="1">}}

Type safety (catching errors of inadequate type) performed at compile time

{{<note>}}
Examples: C, C++, Java, Fortran, Haskell
{{</note>}}

## Dynamic type-checking
{{<br size="1">}}

Type safety done at runtime

{{<note>}}
Examples: Python, JavaScript, PHP, Ruby, Lisp
{{</note>}}

---

# <center>Julia type system</center>
{{<br size="5">}}

Julia's type system is *dynamic* (types are unknown until runtime), but types *can* be declared, optionally bringing the advantages of static type systems
{{<br size="4">}}

This gives users the freedom to choose between an easy and convenient language, or a clearer, faster, and more robust one (or a combination of the two)
{{<br size="4">}}

---

# <center>Julia types: a hierarchical tree</center>
{{<br size="1.5">}}

At the bottom: *concrete types*\\
Above: *abstract types* (concepts for collections of concrete types)\\
At the top: the `Any` type, encompassing all types

{{<img src="/img/type_nw.png" margin="2.5rem" title="" width="60%" line-height="2rem">}}
<center>{{<m>}}{{<m>}}{{<m>}}{{<m>}}{{<m>}}{{<m>}}{{<m>}}{{<m>}}{{<m>}}{{<m>}}{{<m>}}{{<m>}}{{<m>}}{{<m>}}{{<m>}}{{<m>}}{{<m>}}{{<m>}}{{<m>}}{{<m>}}{{<m>}}{{<m>}}{{<m>}}{{<m>}}{{<m>}}{{<m>}}{{<m>}}{{<m>}}{{<m>}}From <a href="https://www.oreilly.com/library/view/learning-julia-abstract/9781491999585/ch01.html">O'Reilly</a></center>
{{</img>}}

---

## <center>Optional type declaration</center>
{{<br size="3">}}


Done with `::`

```jl
<value>::<type>
```
<br>
*Example:*

```jl
2::Int
```

---

## <center>Illustration of type safety</center>
{{<br size="3">}}

This works:

```{jl}
2::Int
```
{{<br size="5">}}

We get an error message here:

```{jl}
2.0::Int
```

---

## <center>Illustration of type safety</center>

{{<note>}}
Type declaration is not supported on global variables; this is used in local contexts. Example:
{{</note>}}

```{jl}
function floatsum(a, b)
    (a + b)::Float64
end
```
{{<br size="3">}}

This works:

```{jl}
floatsum(2.3, 1.0)
```
{{<br size="3">}}

We get an error message here:

```{jl}
floatsum(2, 4)
```

---

## <center>Information and conversion</center>
{{<br size="3">}}

To know the type of an object, use `typeof`:

```jl
typeof(2)
typeof(2.0)
typeof("Hello, World!")
typeof(true)
typeof((2, 4, 1.0, "test"))
```
{{<br size="5">}}

You can convert with:

```{jl}
Int(2.0)

Char(2.0)
```

---

##### <center><span style="font-size: 5rem">Questions?</span></center>
