+++
title = "tools"
outputs = ["Reveal"]
[logowgnofront]
src = "/img/wg_for_dark_bg.png"
[backlink]
href = "https://westgrid-cli.netlify.app/webinars/tools/"
txt = "Back to Workshop Page"
[reveal_hugo]
custom_theme = "mh8.scss"
custom_theme_compile = true
+++


# <center><div style="font-size: 4rem; line-height: 2rem; color: #e6e6e6">lazygit</div></center>
{{<br size="1.5">}}
# <center><div style="font-size: 2rem; line-height: 5rem; color: #e6e6e6">(Terminal UI for Git written in Go)</div></center>
{{<br size="1">}}

{{<img src="/img/tools/lazygit.png" margin="rem" title="" width="80%" line-height="0.5rem">}}
{{</img>}}

---

# <center><div style="font-size: 4rem; line-height: 2rem; color: #e6e6e6">Bat</div></center>
# <center><div style="font-size: 2rem; line-height: 5.5rem; color: #e6e6e6">("A cat clone with wings")</div></center>
{{<br size="0.5">}}

{{<img src="/img/tools/bat.png" margin="rem" title="" width="80%" line-height="0.5rem">}}
{{</img>}}

---

{{<a "https://github.com/sharkdp/bat" "bat">}} is a great tool to display the content of files in your terminal
{{<br size="2">}}

The standard Unix utility for this task is {{<a "https://en.wikipedia.org/wiki/Cat_(Unix)" "cat,">}} but bat adds a lot to it

---

# <center><div style="font-size: 3rem; line-height: 8rem; color: #cccccc">Syntax highlighting...</div></center>

...in a huge number of languages. See the impressive list with:

```sh
bat -L
```

{{%fragment%}}
```sh
cat /home/marie/parvus/prog/slides/static/files/tools/julia.jl
```
{{<img src="/img/tools/cat_jl.png" margin="rem" title="" width="47%" line-height="0.5rem">}}
{{</img>}}
{{<br size="2">}}

{{%/fragment%}}

---

# <center><div style="font-size: 3rem; line-height: 8rem; color: #cccccc">Syntax highlighting...</div></center>

...in a huge number of languages. See the impressive list with:

```sh
bat -L
```

```sh
bat /home/marie/parvus/prog/slides/static/files/tools/julia.jl
```
{{<img src="/img/tools/bat_jl.png" margin="rem" title="" width="43%" line-height="0.5rem">}}
{{</img>}}

---

# <center><div style="font-size: 3rem; line-height: 8rem; color: #cccccc">Smart behaviour with pager</div></center>

Uses {{<a "https://en.wikipedia.org/wiki/Less_(Unix)" "less">}} by default with options `-RFX`
{{<br size="2">}}

Very convenient: quits the pager automatically if the entire content fits on one script

---

# <center><div style="font-size: 3rem; line-height: 8rem; color: #cccccc">Integration with Git</div></center>

{{<img src="/img/tools/bat_git.png" margin="rem" title="" width="43%" line-height="0.5rem">}}
{{</img>}}

---

# <center><div style="font-size: 3rem; line-height: 3rem; color: #cccccc">Git diff</div></center>

```sh
bat -d
```

{{<img src="/img/tools/bat_diff.png" margin="rem" title="" width="45%" line-height="0.5rem">}}
{{</img>}}

---

# <center><div style="font-size: 3rem; line-height: 8rem; color: #cccccc">Man page syntax highlighting</div></center>
{{<br size="1">}}

Even colourizes your man pages if you set the `MANPAGER` environment variable (e.g. in your `.bashrc` or equivalent):
{{<br size="3">}}

```sh
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
```

---

# <center><div style="font-size: 3rem; line-height: 6rem; color: #cccccc">Useful flags</div></center>

```sh
bat -n              # Remove frame
```
{{<br size="3">}}

```sh
bat -p              # Remove frame & line numbers
```

I personally have an alias for this: `alias rat='bat -p'`
{{<br size="2">}}

```sh
bat -pp             # Remove frame & line numbers & don't use pager
```
{{<br size="3">}}

```sh
bat -f              # Keep colour highlighting after piping
```

I made this the default behaviour of `bat` with the alias: `alias bat='bat -f'`

---

# <center><div style="font-size: 3rem; line-height: 8rem; color: #cccccc">Fully customizable</div></center>
{{<br size="0.5">}}

The defaults are great, but if they don't suit you, you can change tab width, language, wrapping method...
{{<br size="3">}}


```sh
bat --config-file             # Location of config file (if it exists)
```
{{<br size="3">}}

```sh
bat --generate-config-file    # Create config file template
```
{{<br size="3">}}

```sh
bat --list-themes             # List themes with examples
```

---

# <center><div style="font-size: 4rem; line-height: 2rem; color: #e6e6e6">Helm</div></center>
# <center><div style="font-size: 2rem; line-height: 5.5rem; color: #e6e6e6">("Incremental completion & selection narrowing framework")</div></center>
{{<br size="0.5">}}

{{<img src="/img/tools/helm01.png" margin="rem" title="" width="80%" line-height="0.5rem">}}
{{</img>}}

---

# <center><div style="font-size: 3rem; line-height: 7.7rem; color: #cccccc">Grep equivalent</div></center>
{{<br size="0.5">}}

{{<img src="/img/tools/helm01.png" margin="rem" title="" width="80%" line-height="0.5rem">}}
{{</img>}}

---

# <center><div style="font-size: 3rem; line-height: 7.7rem; color: #cccccc">Navigate mark ring</div></center>
{{<br size="0.5">}}

{{<img src="/img/tools/helm05.png" margin="rem" title="" width="80%" line-height="0.5rem">}}
{{</img>}}

---

# <center><div style="font-size: 3rem; line-height: 7.7rem; color: #cccccc">Navigate open & recent files</div></center>
{{<br size="0.5">}}

{{<img src="/img/tools/helm02.png" margin="rem" title="" width="80%" line-height="0.5rem">}}
{{</img>}}

---

# <center><div style="font-size: 3rem; line-height: 7.7rem; color: #cccccc">Navigate recent files</div></center>
{{<br size="0.5">}}

{{<img src="/img/tools/helm06.png" margin="rem" title="" width="80%" line-height="0.5rem">}}
{{</img>}}

---

# <center><div style="font-size: 3rem; line-height: 7.7rem; color: #cccccc">Find file</div></center>
{{<br size="0.5">}}

{{<img src="/img/tools/helm07.png" margin="rem" title="" width="80%" line-height="0.5rem">}}
{{</img>}}

---

# <center><div style="font-size: 3rem; line-height: 7.7rem; color: #cccccc">Locate</div></center>
{{<br size="0.5">}}

{{<img src="/img/tools/helm09.png" margin="rem" title="" width="80%" line-height="0.5rem">}}
{{</img>}}

---

# <center><div style="font-size: 3rem; line-height: 7.7rem; color: #cccccc">Search objects in working environment</div></center>
{{<br size="0.5">}}

{{<img src="/img/tools/helm04.png" margin="rem" title="" width="80%" line-height="0.5rem">}}
{{</img>}}

---

# <center><div style="font-size: 3rem; line-height: 7.7rem; color: #cccccc">Search in Git repo</div></center>
{{<br size="0.5">}}

{{<img src="/img/tools/helm08.png" margin="rem" title="" width="80%" line-height="0.5rem">}}
{{</img>}}

---

# <center><div style="font-size: 3rem; line-height: 7.7rem; color: #cccccc">Manage major/minor modes</div></center>
{{<br size="0.5">}}

{{<img src="/img/tools/helm12.png" margin="rem" title="" width="80%" line-height="0.5rem">}}
{{</img>}}

---

# <center><div style="font-size: 3rem; line-height: 7.7rem; color: #cccccc">Search help files</div></center>
{{<br size="0.5">}}

{{<img src="/img/tools/helm11.png" margin="rem" title="" width="80%" line-height="0.5rem">}}
{{</img>}}

---

# <center><div style="font-size: 3rem; line-height: 7.7rem; color: #cccccc">Search key bindings</div></center>
{{<br size="0.5">}}

{{<img src="/img/tools/helm13.png" margin="rem" title="" width="80%" line-height="0.5rem">}}
{{</img>}}

---

# <center><div style="font-size: 3rem; line-height: 7.7rem; color: #cccccc">Search in emails</div></center>
{{<br size="0.5">}}

{{<img src="/img/tools/helm10.png" margin="rem" title="" width="80%" line-height="0.5rem">}}
{{</img>}}

---

# <center><div style="font-size: 3rem; line-height: 7.7rem; color: #cccccc">Select colour</div></center>
{{<br size="0.5">}}

{{<img src="/img/tools/helm14.png" margin="rem" title="" width="80%" line-height="0.5rem">}}
{{</img>}}

---

# <center><div style="font-size: 3rem; line-height: 7.7rem; color: #cccccc">Select emoji</div></center>
{{<br size="0.5">}}

{{<img src="/img/tools/helm03.png" margin="rem" title="" width="80%" line-height="0.5rem">}}
{{</img>}}

