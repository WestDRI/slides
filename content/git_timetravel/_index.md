+++
title = "git_timetravel"
outputs = ["Reveal"]
[logowgnofront]
src = "/img/wg_for_dark_bg.png"
[backlink]
href = "https://westgrid-cli.netlify.app/2021_modules/09_git_timetravel/"
txt = "Back to workshop page"
[reveal_hugo]
custom_theme = "mh6.scss"
custom_theme_compile = true
+++

{{<br size="2">}}
# <font color="#8b8b8d"><span style="font-size: 7rem;"><center>Time travel</center></span></font>
{{<br size="5">}}
## <font color="#f58020"><div style="line-height: 1.5rem"><center>Marie-Hélène Burle</center></div></font>
### <font color="#8b8b8d"><center>training@westgrid.ca</center></font>
{{<br size="1.5">}}

{{<img src="/img/wg_for_dark_bg.png" title="" width="60%" line-height="rem">}}
{{</img>}}

---

{{<br size="4.7">}}
# <font color="#8b8b8d"><span style="font-size: 7rem"><center>Time travel</center></span></font>
{{<br size="1.3">}}

{{<img src="/img/git/git_img/timetravel.jpg" title="" width="100%" line-height="rem">}}
{{</img>}}

---

{{<br size="4.7">}}
# <font color="#8b8b8d"><span style="font-size: 7rem"><center>Time travel</center></span></font>
{{<br size="2.3">}}

{{<img src="/img/git/git_img/git_icon.png" title="" width="100%" line-height="rem">}}
{{</img>}}

---

# <center>Looking at the past without travelling</center>
{{<br size="4">}}

{{%fragment%}}
&ensp;`git log`
{{<br size="1">}}

&ensp;→&ensp; Overview of project history
{{%/fragment%}}

{{<br size="5">}}

{{%fragment%}}
&ensp;`git show`
{{<br size="1">}}

&ensp;→&ensp;Information about Git objects such as commits
{{%/fragment%}}

{{<br size="4">}}

---

# <center>Travelling through history</center>
{{<br size="2">}}

{{%fragment%}}
&ensp;→&ensp; Move the `HEAD` pointer
{{%/fragment%}}

{{<br size="2">}}

{{%fragment%}}
Working directory & index get updated to match the snapshot pointed at
{{<br size="2">}}

{{%/fragment%}}

{{%fragment%}}
&ensp;→&ensp; Your project is back at the state in which it was when you made that commit
{{%/fragment%}}

{{<br size="3">}}

{{%fragment%}}
**Before:**

{{<img src="/img/git/git_timetravel/29.png" title="" width="%" line-height="0rem">}}
{{</img>}}
{{%/fragment%}}

---

# <center>Travelling through history</center>
{{<br size="2">}}

&ensp;→&ensp; Move the `HEAD` pointer

{{<br size="2">}}

Working directory & index get updated to match the snapshot pointed at
{{<br size="2">}}

&ensp;→&ensp; Your project is back at the state in which it was when you made that commit

{{<br size="3">}}

**After:**

{{<img src="/img/git/git_timetravel/30.png" title="" width="%" line-height="0rem">}}
{{</img>}}

---

## <center>Moving HEAD</center>

### <center>Identify the commit we want to move to</center>
{{<br size="4">}}

{{%fragment%}}
With `git log`
{{%/fragment%}}

{{<br size="4">}}

{{%fragment%}}
With the `~` notation:
{{<br size="1">}}

`HEAD~` or `HEAD~1` is the main parent of the commit `HEAD` is pointing to
{{<br size="1">}}

`HEAD~2` is the main parent before that
{{<br size="1">}}

`HEAD~3` refers to the 3rd commit before the current commit
{{<br size="1">}}

etc.
{{%/fragment%}}

---

## <center>Moving HEAD</center>
{{<br size="5">}}

{{%fragment%}}
You move `HEAD` with `git checkout`:

```sh
git checkout <commit-hash>
```
{{%/fragment%}}

{{<br size="4">}}

{{%fragment%}}
This is great to look around, then go back to the "present" with:

```sh
git checkout main
```
{{%/fragment%}}

---

## <center>Moving HEAD</center>
{{<br size="3">}}

Starting point:

{{<img src="/img/git/git_timetravel/01.png" margin="0" title="" width="%" line-height="0rem">}}
{{</img>}}

{{<br size="3">}}

{{%fragment%}}
Now, we move `HEAD` to the commit `31fukv1`:

```sh
git checkout 31fukv1
```
{{%/fragment%}}

---

## <center>Detached HEAD</center>

{{<img src="/img/git/git_timetravel/19.png" title="" width="%" line-height="0rem">}}
{{</img>}}
{{<br size="2">}}

`HEAD` is not pointing at a branch anymore: it is pointing directly at a commit &ensp;→&ensp; *detached HEAD state*
{{<br size="2">}}

Your files are back at their state when you created commit `31fukv1`

---

## <center>Detached HEAD</center>
{{<br size="2">}}

You can look at your project at that point in its history, then go back to the "present" with:

```sh
git checkout main
```

{{<img src="/img/git/git_timetravel/01.png" margin="0" title="" width="%" line-height="0rem">}}
{{</img>}}

{{<br size="2">}}

And that's that.

---

## <center>Creating commits from a detached HEAD</center>
{{<br size="2">}}

{{%fragment%}}
Now, when you are at commit `31fukv1`, maybe you want to try something
{{<br size="1">}}
But when you come back to "the present", those experiments will get lost
{{<br size="3">}}
{{%/fragment%}}

{{%fragment%}}
So what if you want to keep those changes?
{{<br size="3">}}
{{%/fragment%}}

{{%fragment%}}
Here is what happens if you make a commit:
{{<br size="3">}}

{{<img src="/img/git/git_timetravel/20.png" title="" width="%" line-height="0rem">}}
{{</img>}}
{{%/fragment%}}

---

## <center>Creating commits from a detached HEAD</center>
{{<br size="2">}}

You can make more commits:
{{<br size="3">}}

{{<img src="/img/git/git_timetravel/21.png" title="" width="%" line-height="0rem">}}
{{</img>}}
{{<br size="3">}}

The thing is that you are still in this detached HEAD state. `HEAD` is not pointing to a branch as it normally is.
{{<br size="2">}}

{{%fragment%}}
Is this a problem?
{{%/fragment%}}

---

### <center>Bad workflow</center>
{{<br size="3">}}

It becomes a problem if you checkout main from there:

{{<img src="/img/git/git_timetravel/22.png" title="" width="%" line-height="0rem">}}
{{</img>}}
{{<br size="2">}}

If you don't care about those commits, all is good.
{{<br size="2">}}

But if you want to keep them, this is a bad situation because those commits are now left behind: they are not in the history of any branch or tag.

---

### <center>Bad workflow</center>
{{<br size="3">}}

This is bad for three reasons:
{{<br size="2">}}

- Those commits will not show when you run `git log`, so it is easy to forget about them
{{<br size="2">}}

- It is not easy to go back to them because there aren't any tag or branch that you can checkout to
{{<br size="2w">}}

- The garbage collection (which runs every 30 days by default) will delete commits which are not on any branch or tag. So you will ultimately loose them

---

### <center>Good workflow</center>
{{<br size="3">}}

Here is a proper workflow if you have created commits from a detached `HEAD` state
{{<br size="3">}}

{{<img src="/img/git/git_timetravel/21.png" title="" width="%" line-height="0rem">}}
{{</img>}}

---

### <center>Good workflow</center>
{{<br size="3">}}

First, create a new branch:
{{<br size="3">}}

{{<img src="/img/git/git_timetravel/23.png" title="" width="%" line-height="0rem">}}
{{</img>}}

---

### <center>Good workflow</center>
{{<br size="3">}}

Only then can you safely checkout `main`:
{{<br size="3">}}

{{<img src="/img/git/git_timetravel/24.png" title="" width="%" line-height="0rem">}}
{{</img>}}
{{<br size="3">}}

The commits `23f481q` and `rthy7wg` are now on a branch. They are part of the project history, they will not get deleted. All is good.

---

### <center>Recovering commits left behind</center>
{{<br size="2">}}

What if you left commits behind (not on a branch)?
{{<br size="2">}}

You can retrieve their hash by running:

```sh
git reflog
```

This tracks the position of `HEAD` over time
{{<br size="2">}}

You can then checkout the commit you care about (so you are going back to a detached `HEAD` state):

```sh
git checkout <hash-abandonned-commit>
```

This puts you back into a situation where you can rescue the commit(s) by creating a branch
{{<br size="2">}}

Do this as soon as possible

---

# <font color="#8b8b8d"><center><span style="font-size: 6.5rem">Questions?</span></center></font>
