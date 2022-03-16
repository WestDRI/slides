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

##### <center><div style="line-height: 10rem; font-size: 4.2rem; color: #e6e6e6">A few of our favourite tools</div></center>
{{<img src="/img/tools/frontpage.jpg" margin="rem" title="" width="%" line-height="0rem">}}
{{</img>}}
{{<br size="3">}}
##### <center><div style="line-height: 2.5rem; font-size: 2.3rem; color: #e6e6e6">Marie-Hélène Burle \& Alex Razoumov</div></center>
##### <center><div style="line-height: 2.5rem; font-size: 1.8rem; color: #e6e6e6">training@westgrid.ca</div></center>
##### <center><div style="line-height: 2.5rem; font-size: 1.8rem; color: #e6e6e6">March 16, 2022</div></center>
{{<br size="5">}}

---

# <center><div style="font-size: 4rem; line-height: 2rem; color: #e6e6e6">lazygit</div></center>
{{<br size="1.5">}}
# <center><div style="font-size: 2rem; line-height: 5rem; color: #e6e6e6">(Terminal UI for Git written in Go)</div></center>
{{<br size="1">}}

{{<img src="/img/tools/lazygit.png" margin="rem" title="" width="80%" line-height="0.5rem">}}
{{</img>}}

---

<center>{{<a "https://github.com/jesseduffield/lazygit" "lazygit">}} brings the ease of use of a visual Git tool to the command line</center>
{{<br size="3">}}

<center>Unlike slow, buggy, & limited Git GUIs, it is nimble, portable, & super fast</center>
{{<br size="3">}}

<center>In the following demo, as an additional visual goody, I will introduce {{<a "https://github.com/so-fancy/diff-so-fancy" "diff-so-fancy">}} to display the outputs of `git diff`</center>

---

# <center><div style="font-size: 4rem; line-height: 2rem; color: #e6e6e6">Bat</div></center>
# <center><div style="font-size: 2rem; line-height: 5.5rem; color: #e6e6e6">("A cat clone with wings")</div></center>
{{<br size="0.5">}}

{{<img src="/img/tools/bat.png" margin="rem" title="" width="80%" line-height="0.5rem">}}
{{</img>}}

---

<center>{{<a "https://github.com/sharkdp/bat" "bat">}} is a great tool to display the content of files in your terminal</center>
{{<br size="2">}}

<center>The standard Unix utility for this task is {{<a "https://en.wikipedia.org/wiki/Cat_(Unix)" "cat,">}} but bat adds a lot to it</center>

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
{{<br size="1.5">}}

Uses {{<a "https://en.wikipedia.org/wiki/Less_(Unix)" "less">}} by default with options `-RFX`
{{<br size="3">}}

Very convenient: quits the pager automatically if the entire content fits on one script
{{<br size="5">}}

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
{{<br size="1.5">}}

Even colourizes your man pages if you set the `MANPAGER` environment variable (e.g. in your `.bashrc`):
{{<br size="3.5">}}

```sh
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
```
{{<br size="6">}}

---

# <center><div style="font-size: 3rem; line-height: 5rem; color: #cccccc">Useful flags</div></center>

```sh
bat -n              # Remove frame
```
{{<br size="3">}}

```sh
bat -p              # Remove frame & line numbers
```

I personally have an alias for this: `alias rat='bat -p'`
{{<br size="3">}}

```sh
bat -pp             # Remove frame & line numbers & don't use pager
```
{{<br size="3">}}

```sh
bat -f              # Keep colour highlighting after piping
```

I made this the default behaviour for `bat` with the alias: `alias bat='bat -f'`

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
{{<br size="3">}}

---
{{<br size="0.5">}}
# <center><div style="font-size: 4rem; line-height: 3rem; color: #e6e6e6">ripgrep</div></center>
{{<br size="0.5">}}
# <center><div style="font-size: 2rem; line-height: 5.5rem; color: #e6e6e6">(A fast recursive alternative to grep)</div></center>
{{<br size="1">}}

{{<img src="/img/tools/rg.png" margin="rem" title="" width="65%" line-height="0.5rem">}}
{{</img>}}

---

---

# <center><div style="font-size: 4rem; line-height: 2.8rem; color: #e6e6e6">fd</div></center>
# <center><div style="font-size: 2rem; line-height: 5.5rem; color: #e6e6e6">(Fast & friendly alternative to find)</div></center>
{{<br size="0.5">}}

<center>{{<img src="/img/tools/fd.png" margin="rem" title="" width="40%" line-height="0.5rem">}}
{{</img>}}</center>

---

<center>{{<a "https://github.com/sharkdp/fd" "fd">}} has an intuitive syntax & is **super fast**</center>

---

# <center><div style="font-size: 4rem; line-height: 2.8rem; color: #e6e6e6">pass</div></center>
{{<br size="1">}}
# <center><div style="font-size: 2rem; line-height: 5.5rem; color: #e6e6e6">(A command line password manager for Unix systems)</div></center>
{{<br size="1.5">}}

<center>{{<img src="/img/tools/pass.png" margin="rem" title="" width="60%" line-height="0.5rem">}}
{{</img>}}</center>
{{<br size="1.5">}}

---

<center>{{<a "https://www.passwordstore.org/" "pass">}} is a command line password manager using {{<a "https://en.wikipedia.org/wiki/GNU_Privacy_Guard" "GnuPG">}} for encryption</center>
{{<br size="3">}}

<center>pass has a Git integration & several extensions</center>
{{<br size="3">}}

<center>pass is easy to use in scripts or combined with other utilities</center>
{{<br size="1.5">}}

---

# <center><div style="font-size: 3rem; line-height: 8rem; color: #cccccc">Main pass commands</div></center>

```sh
pass init your-gpg-id                    # Initialize password store
pass insert somesite.ca/your@email       # Enter password for a site
pass somesite.ca/your@email              # Print password
pass -c somesite.ca/your@email           # Copy password to clipboard
pass edit somesite.ca/your@email         # Edit password
pass generate othersite.com/userid 12    # Generate password of size 12
pass generate -c othersite.com/userid 12 # Same, but copy to clipboard
pass generate -n othersite.com/userid 12 # Same, without special characters
pass rm othersite.com/userid             # Delete password
pass                                     # Print content of password store
```
{{<br size="2.5">}}

---

# <center><div style="font-size: 4rem; line-height: 2.8rem; color: #e6e6e6">TRAMP</div></center>
# <center><div style="font-size: 2rem; line-height: 5.5rem; color: #e6e6e6">("A remote file editing package for Emacs")</div></center>
{{<br size="5">}}

---

<center>The {{<a "https://www.emacswiki.org/emacs/TrampMode" "TRAMP">}} (Transparent Remote Access, Multiple Protocol) Emacs package allows to edit remote files as if they were local</center>
{{<br size="3">}}

<center>You can thus use your init file & usual packages to write files on a remote machine or for another user (e.g. root)</center>
{{<br size="3">}}

<center>You can also use Emacs GUI to edit remote files without efficiency loss</center>
{{<br size="3">}}

<center>It is a convenient alternative to using Emacs on a remote host after you have `ssh`ed into it or to using `sudo emacs` to edit root files</center>
{{<br size="2">}}

---

# <center><div style="font-size: 3rem; line-height: 8rem; color: #cccccc">Using TRAMP from within Emacs</div></center>
{{<br size="1">}}

#### Remote file
{{<br size="1.5">}}

C-x C-f emacs /ssh:user@server:/home/user/path/to/file RET
{{<br size="3">}}

#### Root
{{<br size="1.5">}}

C-x C-f emacs /sudo::/path/to/file RET
{{<br size="5">}}

---

# <center><div style="font-size: 3rem; line-height: 8rem; color: #cccccc">Using TRAMP from the command line</div></center>

#### Remote file
{{<br size="1.5">}}

```sh
emacs /ssh:user@server:/home/user/path/to/file
```

#### Root
{{<br size="1.5">}}

```sh
emacs /sudo::/path/to/file
```
{{<br size="4">}}

---

# <center><div style="font-size: 4rem; line-height: 2rem; color: #e6e6e6">Helm</div></center>
# <center><div style="font-size: 2rem; line-height: 5.5rem; color: #e6e6e6">("Incremental completion & selection narrowing framework")</div></center>
{{<br size="0.5">}}

{{<img src="/img/tools/helm01.png" margin="rem" title="" width="80%" line-height="0.5rem">}}
{{</img>}}

---

<center>The {{<a "https://github.com/emacs-helm/helm" "Helm">}} package provides an incremental completion & narrowing selection API for search applications in Emacs</center>
{{<br size="3">}}

<center>Virtually every Emacs search application has built-in integration with Helm</center>
{{<br size="3">}}

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

# <center><div style="font-size: 3rem; line-height: 7.7rem; color: #cccccc">Navigate kill ring</div></center>
{{<br size="0.5">}}

{{<img src="/img/tools/helm15.png" margin="rem" title="" width="80%" line-height="0.5rem">}}
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

