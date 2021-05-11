+++
title = "git_branches"
outputs = ["Reveal"]
[logowgnofront]
src = "/img/wg_for_dark_bg.png"
[backlink]
href = "https://westgrid-cli.netlify.app/2021_modules/11_git_branches/"
txt = "Back to workshop page"
[reveal_hugo]
custom_theme = "mh6.scss"
custom_theme_compile = true
+++

{{<br size="2">}}
# <font color="#8b8b8d"><span style="font-size: 7rem;"><center>Branches</center></span></font>
{{<br size="5">}}
## <font color="#f58020"><div style="line-height: 1.5rem"><center>Marie-Hélène Burle</center></div></font>
### <font color="#8b8b8d"><center>training@westgrid.ca</center></font>
{{<br size="1.5">}}

{{<img src="/img/wg_for_dark_bg.png" title="" width="60%" line-height="rem">}}
{{</img>}}

---

# <center>What is a branch?</center>
{{<br size="4">}}
 
A branch is a pointer to a commit (under the hood, it is a small file containing the 40 character hash checksum of the commit it points to)
{{<br size="2">}}

{{<img src="/img/git/git_timetravel/01.png" margin="0" title="" width="%" line-height="0rem">}}
{{</img>}}

---

# <center>What is a branch?</center>
{{<br size="4">}}

This is what `On branch main` means in the output of `git status`
{{<br size="4">}}

This is also what `(HEAD -> main)` means when you run `git log`

---

# <center>Why use multiple branches?</center>
{{<br size="4">}}

- If your changes break code, you still have a fully functional branch to go back to if needed
 {{<br size="2">}}

- You can create a branch for each alternative approach. This allows you to jump back and forth between various alternatives
 {{<br size="2">}}

- You can work on different aspects of the project on different branches. This prevents having messy incomplete work all over the place on the same branch
{{<br size="2">}}

- Mostly, branches are great for collaboration: each person can work on their own branch and merge it back to the main branch when they are done with one section of a project
 
---

# <center>How to create branches?</center>
{{<br size="4">}}

## Initial branch (main)
{{<br size="2">}}

When you run `git init` to initialize a repository, a branch gets created and it is called `main` (you could rename it to something else if you wanted—that initial branch, despite its name, has nothing special)
{{<br size="2">}}

---

# <center>How to create branches?</center>
{{<br size="4">}}

## Additional branches
{{<br size="2">}}

You can create additional branches with:

```sh
git branch <branch-name>
```
{{<br size="4">}}

{{<note>}}
Example:
{{</note>}}

```sh
git branch test
```
---

# <center>How to create branches?</center>

{{<img src="/img/git/git_timetravel/02.png" title="" width="%" line-height="0.5rem">}}
{{</img>}}
{{<br size="4">}}

Notice that `HEAD` still points to `main`

---

# <center>How to switch between branches?</center>
{{<br size="3">}}

You switch to a branch with:

```sh
git switch <branch-name>
```

{{<note>}}
Example:
{{</note>}}

```sh
git switch test
```

{{<img src="/img/git/git_timetravel/03.png" title="" width="%" line-height="0.5rem">}}
{{</img>}}

---

# <center>Creating & switching in one go</center>
{{<br size="4">}}

When you create a branch, most of the time you want to switch to it. There is a handy way to create a branch and switch to it immediately:
{{<br size="4">}}

```sh
git switch -c <branch-name>
```

---

# <center>Deleting branches</center>
{{<br size="4">}}

You can delete a branch with:
{{<br size="3">}}

```sh
git branch -d <branch-name>
```

---

# <center>Getting information on branches</center>
{{<br size="3">}}

### List local branches (current branch marked with *)

```sh
git branch
git branch -v   # show sha1 and commit message for each head
git branch -vv  # also show upstream branch
```
{{<br size="3">}}

### List remote branches

```sh
git branch -r
```
{{<br size="3">}}

### List all branches

```sh
git branch -a
```

---

# <center>Merging branches</center>
 
## Fast-forward merge

Here is a classic workflow with branches
{{<br size="2">}}

You just switched to the branch `test`:
{{<br size="2">}}

{{<img src="/img/git/git_timetravel/03.png" title="" width="%" line-height="0.5rem">}}
{{</img>}}

---

# <center>Merging branches</center>
 
## Fast-forward merge

Now you make a series of commits on that branch:

{{<img src="/img/git/git_timetravel/04.png" title="" width="%" line-height="0.5rem">}}
{{</img>}}

---

# <center>Merging branches</center>
 
## Fast-forward merge

Now you make a series of commits on that branch:

{{<img src="/img/git/git_timetravel/05.png" title="" width="%" line-height="0.5rem">}}
{{</img>}}

---

# <center>Merging branches</center>
 
## Fast-forward merge

You want to merge them back into the main branch
{{<br size="2">}}


First, you switch to `main` (to merge, you need to be on the branch you want to merge *into*):

```sh
git switch main
```

{{<img src="/img/git/git_timetravel/06.png" title="" width="%" line-height="0.5rem">}}
{{</img>}}

---

# <center>Merging branches</center>
 
## Fast-forward merge

Then you merge `test` into `main`:

```sh
git merge test
```

{{<img src="/img/git/git_timetravel/07.png" title="" width="%" line-height="0.5rem">}}
{{</img>}}

---

# <center>Merging branches</center>
 
## Fast-forward merge

This merge is called a *fast-forward merge*: the branch `main` could be fast-forwarded to the branch `test`
{{<br size="2">}}

Now, you can delete the branch `test` which has become useless:

```sh
git branch -d test
```

{{<img src="/img/git/git_timetravel/08.png" title="" width="%" line-height="0.5rem">}}
{{</img>}}

---

# <center>Merging branches</center>

## Merge commit
 
Let's consider another common workflow with a branch `test2` starting from the same situation (you just created and switched to `test2`):

{{<img src="/img/git/git_timetravel/11.png" title="" width="%" line-height="0.5rem">}}
{{</img>}}

---

# <center>Merging branches</center>

## Merge commit

You create a number of commits on `test2`:
{{<br size="2">}}

{{<img src="/img/git/git_timetravel/12.png" title="" width="%" line-height="0.5rem">}}
{{</img>}}

---

# <center>Merging branches</center>

## Merge commit

You create a number of commits on `test2`:
{{<br size="2">}}

{{<img src="/img/git/git_timetravel/13.png" title="" width="%" line-height="0.5rem">}}
{{</img>}}

---

# <center>Merging branches</center>

## Merge commit

Then you switch to `main`:
{{<br size="2">}}

{{<img src="/img/git/git_timetravel/14.png" title="" width="%" line-height="0.5rem">}}
{{</img>}}

---

# <center>Merging branches</center>

## Merge commit

and you create commits on `main`:
{{<br size="2">}}

{{<img src="/img/git/git_timetravel/15.png" title="" width="%" line-height="0.5rem">}}
{{</img>}}

---

# <center>Merging branches</center>

## Merge commit

and you create commits on `main`:
{{<br size="2">}}

{{<img src="/img/git/git_timetravel/16.png" title="" width="%" line-height="0.5rem">}}
{{</img>}}

---

# <center>Merging branches</center>

## Merge commit

To merge `test2` into `main`, you need to be on `main`, but that's already the case. So you can run:

```sh
git merge test2
```

and you get:

{{<img src="/img/git/git_timetravel/17.png" title="" width="%" line-height="0.5rem">}}
{{</img>}}

---

# <center>Merging branches</center>

## Merge commit

Note that in order to make the merge in this scenario, Git had to create a new commit, called *a merge commit* and that this commit has 2 parents
{{<br size="2">}}

Finally, you can now delete the `test2` branch with `git branch -d test2`:

{{<img src="/img/git/git_timetravel/18.png" title="" width="%" line-height="0.5rem">}}
{{</img>}}

---

# <center>Resolving conflicts</center>
{{<br size="4">}}
 
If the same section of a file is changed on different branches, Git cannot know which version you would like to keep. The merge gets interrupted until you resolve the conflict
{{<br size="2">}}

You can use a merge tool (run `git mergetool --tool-help` to get help setting this up)
{{<br size="2">}}

Many GUI applications for Git as well as powerful text editors such as Emacs and Vim offer merge tools

---

# <center>Resolving conflicts</center>
{{<br size="4">}}

You can also resolve the conflict manually in any text editor:

When a merge gets interrupted due to a conflict, Git tells you which file contains a conflict. Open this file and look for a section that looks like this:

```
<<<<<<< HEAD
Version of this section of the file on the current branch
=======
Alternative version of the same section of the file
>>>>>>> alternative version
```

The `<<<<<<< HEAD`, `=======`, and `>>>>>>>` are markers added by Git to identify the alternative versions at the location of the conflict
{{<br size="2">}}

You have to decide which version you want to keep (or write yet another version), remove the 3 lines with the markers, and remove the line(s) with the version(s) you do not want to keep
 
---

# <font color="#8b8b8d"><center><span style="font-size: 6.5rem">Questions?</span></center></font>
