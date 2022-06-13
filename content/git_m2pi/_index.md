+++
title = "git"
outputs = ["Reveal"]
[logowgnofront]
src = "/img/wg_for_dark_bg.png"
[backlink]
href = "https://westgrid-cli.netlify.app/workshops/git_m2pi/"
txt = "Back to Webinar Page"
[reveal_hugo]
custom_theme = "mh7.scss"
custom_theme_compile = true
+++

#### <div style="line-height: 3.2rem; font-size: 5.5rem; color: #b3765b">Git & GitHub</div>{{<br size="6">}}

#### <div style="line-height: 3.2rem; font-size: 4rem; color: #c98749">Effective Versioning & Teamwork</div>{{<br size="5">}}

{{<imgright src="/img/wg_for_dark_bg.png" title="" width="35%" line-height="rem">}}
{{</imgright>}}

---

# <center style="font-size: 5.5rem;">Why Git?</center>

---

# <center>Why version control?</center>
{{<br size="2">}}

{{%fragment%}}
{{<imgb2 src="/img/git/git_img/vc.jpg" margin="auto" title="" width="50%" line-height="2rem">}}
from <a href="http://geek-and-poke.com/" target="_blank">Geek&Poke</a>
{{</imgb2>}}
{{%/fragment%}}

---

# <center>Why version control?</center>
{{<br size="2">}}

{{<imgb2 src="https://phdcomics.com/comics/archive/phd101212s.gif" margin="auto" title="" width="65%" line-height="2rem">}}
from <a href="http://phdcomics.com/" target="_blank">PhD</a>
{{</imgb2>}}

---

# <center>Which version control system?</center>
{{<br size="4">}}

{{%fragment%}}
{{<imgb2 src="/img/git/git_img/git_nw.png" margin="auto" title="" width="100%" line-height="3rem" bg="#f2f2f2">}}
{{</imgb2>}}
{{<br size="1">}}
{{<imgb2 src="/img/git/git_img/legend_nw.png" margin="auto" title="" width="80%" line-height="2.5rem" bg="#f2f2f2">}}
from <a href="https://trends.google.com/trends/" target="_blank">Google Trends </a>
{{</imgb2>}}
{{%/fragment%}}

---

# <center>Which version control system?</center>
{{<br size="2">}}

{{<imgb2 src="https://imgs.xkcd.com/comics/git.png" margin="auto" title="" width="100%" line-height="2rem">}}
from <a href="https://xkcd.com/" target="_blank">xkcd.com</a>
{{</imgb2>}}

---

# <center style="font-size: 5.5rem;">Git configuration</center>

---

# <center>User identity</center>
{{<br size="3">}}

```sh
git config --global user.name "<Your Name>"
git config --global user.email "<your@email>"
```
{{<br size="4">}}

{{%fragment%}}
### Example
{{<br size="2">}}

```sh
git config --global user.name "John Doe"
git config --global user.email "john.doe@gmail.com"
```
{{%/fragment%}}

---

# <center>Text editor</center>
{{<br size="3">}}

```sh
git config --global core.editor "<text-editor>"
```
{{<br size="5">}}

{{%fragment%}}
### Example for nano
{{<br size="2">}}

```sh
git config --global core.editor "nano"
```
{{%/fragment%}}

---

# <center>Line ending</center>
{{<br size="3.5">}}

### macOS, Linux, or WSL

```sh
git config --global core.autocrlf input
```
{{<br size="4">}}

### Windows

```sh
git config --global core.autocrlf true
```

---

# <center>List settings</center>
{{<br size="5">}}

```sh
git config --list
```

---

# <center style="font-size: 5.5rem;">Documentation</center>

---

{{<br size="2.6">}}

# <center style="line-height: 2.5rem;">Internal documentation</center>

{{%fragment%}}
## Man pages

```sh
git <command> --help
git help <command>
man git-<command>
```
{{%/fragment%}}

{{<br size="2.5">}}

{{%fragment%}}
### Example

```sh
git commit --help
git help commit
man git-commit
```
{{%/fragment%}}

---

{{<br size="2.6">}}

# <center style="line-height: 2.5rem;">Internal documentation</center>

## Man pages

```sh
git <command> --help
git help <command>
man git-<command>
```

{{<br size="2.5">}}

### Useful keybindings when you are in the pager

```sh
SPACE      scroll one screen down
b          scroll one screen up
q          quit
```

---

{{<br size="2">}}

# <center style="line-height: 2.5rem;">Internal documentation</center>
{{<br size="4">}}

{{%fragment%}}
## Command options

```sh
git <command> -h
```
{{%/fragment%}}

{{<br size="5">}}

{{%fragment%}}
### Example

```sh
git commit -h
```
{{%/fragment%}}

{{<br size="5">}}

---
{{<br size="2">}}

# <center style="line-height: 2.5rem;">Online documentation</center>
{{<br size="3">}}

- Official {{<a "https://git-scm.com/docs" "Git manual">}}
- Open source {{<a "https://git-scm.com/book/en/v2" "Pro Git book">}}

{{<br size="2">}}

### Courses & workshops
{{<br size="1">}}

- {{<a "https://westgrid-cli.netlify.app/workshops/" "WestGrid's Git workshops">}}
- {{<a "https://wgschool.netlify.app/git/" "last summer WestGrid Git course">}}
- {{<a "https://autumnschool.netlify.app/git/" "last fall WestGrid Git course">}}
- the {{<a "http://swcarpentry.github.io/git-novice/" "Software Carpentry Git lesson">}}

{{<br size="2">}}

### Q & A
{{<br size="1">}}

- {{<a "https://stackoverflow.com/questions/tagged/git" "Stack Overflow's Git tag">}}

---

# <center style="font-size: 5.5rem;">Understanding Git</center>

---

# <center style="line-height: 2.5rem;">Project history</center>
{{<br size="4">}}

Git saves the history of a project as a series of snapshots
{{<br size="2">}}

{{<imgb2 src="/img/git/diagrams_v3/02.png" bg="#e6e6e6" margin="rem" title="" width="%" line-height="0.5rem">}}
{{</imgb2>}}

---

# <center style="line-height: 2.5rem;">Project history</center>
{{<br size="4">}}

Those snapshots are called commits
{{<br size="2">}}

{{<imgb2 src="/img/git/diagrams_v3/03.png" bg="#e6e6e6" margin="rem" title="" width="%" line-height="0.5rem">}}
{{</imgb2>}}

---

# <center style="line-height: 2.5rem;">Project history</center>
{{<br size="4">}}

Commits are identified by unique *hash*
{{<br size="2">}}

{{<imgb2 src="/img/git/diagrams_v3/03.png" bg="#e6e6e6" margin="rem" title="" width="%" line-height="0.5rem">}}
{{</imgb2>}}

---

# <center style="line-height: 2.5rem;">Project history</center>
{{<br size="5">}}

Each commit contains these metadata:
{{<br size="1.5">}}
- author
{{<br size="1.5">}}
- date and time
{{<br size="1.5">}}
- the hash of parent commit(s)
{{<br size="1.5">}}
- a message

---

# <center style="line-height: 2.5rem;">Project history</center>
{{<br size="4">}}

As soon as you create the first commit, a pointer called a *branch* is created and it points to that commit. By default, that first branch is called `main`
{{<br size="2">}}

{{<imgb2 src="/img/git/diagrams_v3/08.png" bg="#e6e6e6" margin="rem" title="" width="%" line-height="0.5rem">}}
{{</imgb2>}}

---

# <center style="line-height: 2.5rem;">Project history</center>
{{<br size="4">}}

Another pointed (`HEAD`) points to the branch `main`

`HEAD` indicates where we are in the project history
{{<br size="2">}}

{{<imgb2 src="/img/git/diagrams_v3/08.png" bg="#e6e6e6" margin="rem" title="" width="%" line-height="0.5rem">}}
{{</imgb2>}}

---

# <center style="line-height: 2.5rem;">Recording history</center>
{{<br size="4">}}

As you create more commits, the history grows ...
{{<br size="2">}}

{{<imgb2 src="/img/git/diagrams_v3/05.png" bg="#e6e6e6" margin="rem" title="" width="%" line-height="0.5rem">}}
{{</imgb2>}}

---

# <center style="line-height: 2.5rem;">Recording history</center>
{{<br size="4">}}

... and the pointers `HEAD` and `main` automatically move to the last commit
{{<br size="2">}}

{{<imgb2 src="/img/git/diagrams_v3/04.png" bg="#e6e6e6" margin="rem" title="" width="%" line-height="0.5rem">}}
{{</imgb2>}}

---

# <center style="line-height: 2.5rem;">Recording history</center>
{{<br size="4">}}

For simplicity, the diagrams can be simplified this way
{{<br size="2">}}

{{<imgb2 src="/img/git/diagrams_v3/13.png" bg="#e6e6e6" margin="rem" title="" width="%" line-height="0.5rem">}}
{{</imgb2>}}

---

# <center style="line-height: 2.5rem;">Displaying the commit history</center>
{{<br size="4">}}

{{%fragment%}}
### As a list

```sh
git log --oneline
```
{{%/fragment%}}

---

# <center style="line-height: 2.5rem;">Displaying the commit history</center>
{{<br size="4">}}

### Making it more readable

```sh
git log \
    --graph \
    --date-order \
    --date=short \
    --pretty=format:'%C(cyan)%h %C(blue)%ar %C(auto)%d'`
                   `'%C(yellow)%s%+b %C(magenta)%ae'
```

---

# <center style="line-height: 2.5rem;">Displaying the commit history</center>
{{<br size="4">}}

### As a graph

```sh
git log --graph
```

---

# <center style="line-height: 2.5rem;">Displaying the commit history</center>
{{<br size="4">}}

### As a graph showing all commits

```sh
git log --graph --all
```

---

# <center style="font-size: 5.5rem;">How does Git work?</center>

---

# <center style="line-height: 2.5rem;">The three trees of Git</center>
{{<br size="4">}}

A useful representation of Git's functioning is to imagine three file trees
{{<br size="2">}}

{{<imgb2 src="/img/git/diagrams_v2/05.png" bg="#e6e6e6" margin="rem" title="" width="%" line-height="0.5rem">}}
{{</imgb2>}}

---

# <center style="line-height: 2.5rem;">Making changes to the working tree</center>
{{<br size="4">}}

When you work on your project, your working tree changes
{{<br size="2">}}

{{<imgb2 src="/img/git/diagrams_v2/10.png" bg="#e6e6e6" margin="rem" title="" width="%" line-height="0.5rem">}}
{{</imgb2>}}

---

# <center style="line-height: 2.5rem;">Staging changes</center>
{{<br size="4">}}

You organize your next snapshot by picking and choosing some changes
{{<br size="4">}}

```sh
git add <what-you-want-to-commit-next>
```

---

# <center style="line-height: 2.5rem;">Staging changes</center>
{{<br size="4">}}

Those changes move to the *index* or *staging area*
{{<br size="2">}}

{{<imgb2 src="/img/git/diagrams_v2/11.png" bg="#e6e6e6" margin="rem" title="" width="%" line-height="0.5rem">}}
{{</imgb2>}}

---

# <center style="line-height: 2.5rem;">Creating a commit</center>
{{<br size="4">}}

Finally you create a commit with what is in the staging area
{{<br size="4">}}

```sh
git commit -m "<message>"
```

---

# <center style="line-height: 2.5rem;">Creating a commit</center>
{{<br size="4">}}

Finally you create a commit with what is in the staging area
{{<br size="2">}}

{{<imgb2 src="/img/git/diagrams_v2/12.png" bg="#e6e6e6" margin="rem" title="" width="%" line-height="0.5rem">}}
{{</imgb2>}}

---

# <center style="font-size: 5.5rem;">Remotes</center>

---

# <center>What are remotes?</center>
{{<br size="2">}}

Copies of a project & its history
{{<br size="2">}}

Anywhere, including on external drive or on the same machine as the project
{{<br size="1">}}

Often on a different machine to serve as backup or on a network (e.g. internet) to serve as syncing hub for collaborations
{{<br size="2">}}

Popular online Git repository managers & hosting services:
{{<br size="1">}}

- {{<a "https://github.com" "GitHub">}}
- {{<a "https://gitlab.com" "GitLab">}}
- {{<a "https://bitbucket.org" "Bitbucket">}}

---

# <center style="font-size: 5.5rem;">Collaboration</center>

---

# <center>3 situations</center>
{{<br size="2">}}

- You create a project on your machine & want others to contribute to it (1)
{{<br size="2">}}

- You want to contribute to a project started by others & ...
{{<br size="2">}}

	&emsp;&emsp;... you have write access to it (2)
   {{<br size="2">}}

    &emsp;&emsp;... you do **not** have write access to it (3)

---

# <center style="font-size: 4.3rem;">(1) You start the project</center>

---

{{<br size="2">}}

# <center>Create a remote on GitHub</center>
{{<br size="3">}}

### 1. Create an empty repository on GitHub
{{<br size="2">}}

Go to {{<a "https://github.com" "https://github.com">}}, login, & go to your home page
{{<br size="2">}}

Look for the {{<bdark>}}Repositories{{</bdark>}} tab & click the green {{<bdark>}}New{{</bdark>}} button
{{<br size="2">}}

Enter the name you want for your repo, *without spaces*
{{<br size="2">}}

Make the repository public or private
{{<br size="2">}}

---

{{<br size="2">}}

# <center>Create a remote on GitHub</center>

### 2. Link empty repository to your repo
{{<br size="2">}}

Click on the {{<bdark>}}Code{{</bdark>}} green drop-down button, select SSH {{<a "https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/connecting-to-github-with-ssh" "if you have set SSH for your GitHub account">}} or HTTPS & copy the address
{{<br size="2">}}

In command line, `cd` inside your project & add the remote
{{<br size="2">}}

```sh
git remote add <remote-name> <remote-address>
```

{{<bdark>}}&lt;remote-name&gt;{{</bdark>}} is a convenience name to identify that remote. You can choose any name, but since Git automatically call the remote `origin` when you clone a repo, it is common practice to use `origin` as the name for the first remote
{{<br size="1">}}

---

# <center>Create a remote on GitHub</center>
{{<br size="4">}}

{{<notes>}}
Example (using an SSH address):
{{</notes>}}


```sh
git remote add origin git@github.com:<user>/<repo>.git
```

{{<notes>}}
Example (using an HTTPS address):
{{</notes>}}

```sh
git remote add origin https://github.com/<user>/<repo>.git
```

---

# <center>Create a remote on GitHub</center>
{{<br size="4">}}

If you are working alone on this project & only wanted to have a remote for backup, you are set
{{<br size="3">}}

If you don't want to grant others write access to the project & only accept contributions through pull requests, you are also set
{{<br size="3">}}

If you want to grant your collaborators write access to the project however, you need to add them to it

---

# <center>Invite collaborators</center>
{{<br size="4">}}

- Go to your GitHub project page
{{<br size="1">}}
- Click on the {{<bdark>}}Settings{{</bdark>}} tab
{{<br size="1">}}
- Click on the {{<bdark>}}Manage access{{</bdark>}} section on the left-hand side (you will be prompted for your GitHub password)
{{<br size="1">}}
- Click on the {{<bdark>}}Invite a collaborator{{</bdark>}} green button
{{<br size="1">}}
- Invite your collaborators with one of their GitHub user name, their email address, or their full name

---

# <center style="font-size: 4.3rem;">(2) Write access to project</center>

---

# <center>Clone project</center>
{{<br size="4">}}

`cd` to location where you want your local copy, then
{{<br size="3">}}

```sh
git clone <remote-address> <local-name>
```
{{<br size="3">}}

This sets the project as a remote to your new local copy & that remote is automatically called `origin`
{{<br size="1">}}

Without `<local-name>`, the repo will have the name of the last part of the remote address

---

# <center style="font-size: 4.3rem;">(3) No write access to project</center>

---

# <center>Collaborate without write access</center>
{{<br size="4">}}

1. Fork the project
{{<br size="2">}}

2. Clone your fork on your machine
{{<br size="2">}}

3. Add the initial project as a second remote & call it `upstream`

---

# <center style="font-size: 5.5rem;">Working with remotes</center>

---

{{<br size="2">}}

# <center>Get information on remotes</center>
{{<br size="3">}}

List remotes:

```sh
git remote
```
{{<br size="4">}}

List remotes with their addresses:

```sh
git remote -v
```
{{<br size="4">}}

---

# <center>Get information on remotes</center>
{{<br size="4">}}

Get more information on a remote:

```sh
git remote show <remote-name>
```
{{<br size="5">}}

{{<notes>}}
Example:
{{</notes>}}

```sh
git remote show origin
```

---

# <center>Manage remotes</center>
{{<br size="2">}}

Rename a remote:

```sh
git remote rename <old-remote-name> <new-remote-name>
```
{{<br size="3.5">}}

Delete a remote:

```sh
git remote remove <remote-name>
```
{{<br size="3.5">}}

Change the address of a remote:

```sh
git remote set-url <remote-name> <new-url> [<old-url>]
```

---

# <center>Get data from a remote</center>
{{<br size="3">}}

If you collaborate on a project, you have to get the data added by your teammates to keep your local project up to date
{{<br size="2">}}

To download new data from a remote, you have 2 options:
{{<br size="2">}}

- `git fetch`
{{<br size="2">}}
- `git pull`

---

## <center>Fetch changes</center>
{{<br size="2">}}

*Fetching* downloads the data from a remote that you don't already have in your local version of the project

```sh
git fetch <remote-name>
```

The branches on the remote are now accessible locally as `<remote-name>/<branch>`. You can inspect them or you can merge them into your local branches

{{<notes>}}
Example:
{{</notes>}}

```sh
git fetch origin
```

---

## <center>Pull changes</center>
{{<br size="2">}}

*Pulling* fetches the changes & merges them onto your local branches

```sh
git pull <remote-name> <branch>
```

{{<notes>}}
Example:
{{</notes>}}

```sh
git pull origin main
```

If your branch is already tracking a remote branch, you can omit the arguments

```sh
git pull
```

---

# <center>Push to a remote</center>
{{<br size="3">}}

Uploading data to the remote is called *pushing*

```sh
git push <remote-name> <branch-name>
```
{{<br size="4">}}

{{<notes>}}
Example:
{{</notes>}}

```sh
git push origin main
```

---

# <center>Push to a remote</center>
{{<br size="3">}}

You can set an upstream branch to track a local branch with the `-u` flag

```sh
git push -u <remote-name> <branch-name>
```

{{<notes>}}
Example:
{{</notes>}}

```sh
git push -u origin main
```

From now on, all you have to run when you are on `main` is:

```sh
git push
```

---

# <center>Submit a pull request</center>
{{<br size="3">}}

1. Pull from `upstream` to update your local project
{{<br size="2">}}
2. Create & checkout a new branch
{{<br size="2">}}
3. Make & commit your changes on that branch
{{<br size="2">}}
4. Push that branch to your fork (i.e. `origin` — remember that you do not have write access to `upstream`)
{{<br size="2">}}
5. Go to the original project GitHub's page & open a pull request

---

{{<br size="2">}}

# <center><span style="font-size: 5.5rem">Questions?</span></center>
{{<br size="5">}}

{{<imgb2 src="/img/git/git_img/gitout.png" margin="auto" title="" width="60%" line-height="2rem">}}
by <a href="https://www.redbubble.com/people/jscript/shop#profile" target="_blank">jscript</a>
{{</imgb2>}}
