+++
title = "git_undo"
outputs = ["Reveal"]
[logowgnofront]
src = "/img/wg_for_dark_bg.png"
[backlink]
href = "https://westgrid-cli.netlify.app/2021_modules/12_git_undo/"
txt = "Back to workshop page"
[reveal_hugo]
custom_theme = "mh6.scss"
custom_theme_compile = true
+++

{{<br size="2">}}
# <font color="#8b8b8d"><span style="font-size: 7rem;"><center>Undoing</center></span></font>
{{<br size="5">}}
## <font color="#f58020"><div style="line-height: 1.5rem"><center>Marie-Hélène Burle</center></div></font>
### <font color="#8b8b8d"><center>training@westgrid.ca</center></font>
{{<br size="1.5">}}

{{<img src="/img/wg_for_dark_bg.png" title="" width="60%" line-height="rem">}}
{{</img>}}

---

# <center>Reverting</center>
{{<br size="4">}}

`Git revert` cancels out the changes of a commit by adding another commit with the reverse patch
{{<br size="2">}}

This is **safe** since you are not touching at the history: you are only adding to it

---

# <center>Resetting</center>
{{<br size="4">}}

`Git reset` is {{<a "https://git-scm.com/book/en/v2/Git-Tools-Reset-Demystified" "a subtle command with lots of usage">}}
{{<br size="3">}}

With the `--hard` flag, it allows to undo some work by getting rid of some commits altogether. Unlike most other commands in Git, this actually rewrites the history of your project
{{<br size="3">}}

Needless to say that this is something that you only want to consider once you are starting to feel really comfortable with Git as it implies loss of data and irreversible actions

---

# <font color="#8b8b8d"><center><span style="font-size: 6.5rem">Questions?</span></center></font>
