+++
title = "git_remotes"
outputs = ["Reveal"]
[logowgnofront]
src = "/img/wg_for_dark_bg.png"
[backlink]
href = "https://westgrid-cli.netlify.app/2021_modules/10_git_remotes/"
txt = "Back to workshop page"
[reveal_hugo]
custom_theme = "mh6.scss"
custom_theme_compile = true
+++

{{<br size="2">}}
# <font color="#8b8b8d"><span style="font-size: 7rem;"><center>Remotes</center></span></font>
{{<br size="5">}}
## <font color="#f58020"><div style="line-height: 1.5rem"><center>Marie-Hélène Burle</center></div></font>
### <font color="#8b8b8d"><center>training@westgrid.ca</center></font>
{{<br size="1.5">}}

{{<img src="/img/wg_for_dark_bg.png" title="" width="60%" line-height="rem">}}
{{</img>}}

---

# <center>What are Git remotes?</center>
{{<br size="4">}}

Remotes are repositories which serve as copies of a project and all of its history
{{<br size="2">}}

They can be anywhere, including on an external drive or even on the same machine as the project
{{<br size="2">}}

Often however, remotes are on a different machine to serve as backup or on a network (possibly the internet) to be accessible by several persons and serve as a syncing hub for collaborations
{{<br size="2">}}

A number of online Git repository managers and hosting services have become popular remotes for Git projects. E.g.:
{{<br size="2">}}

- {{<a "https://github.com" "GitHub">}}
- {{<a "https://gitlab.com" "GitLab">}}
- {{<a "https://bitbucket.org" "Bitbucket">}}

---

# <center>What are Git remotes?</center>
{{<br size="4">}}

A project can have several remotes
{{<br size="2">}}

These remotes are characterized by an address (or a path if they are local) & identified by a name of your choice
{{<br size="2">}}

---

# <center>Adding a GitHub remote</center>
{{<br size="4">}}

First, you need to create a new GitHub repository

## Creating an empty repository on GitHub

Go to {{<a "https://github.com" "https://github.com">}}, login, and go to your home page
{{<br size="2">}}

Look for the {{<bdark>}}Repositories{{</bdark>}} tab, then click the green {{<bdark>}}New{{</bdark>}} button
{{<br size="2">}}

Enter the name you want for your repo, *without spaces*
{{<br size="2">}}

It can be the same name you have for your project on your computer (it would be sensible and make things less confusing), but it doesn't have to be
{{<br size="2">}}

You can make your repository public or private. Choose the private option if your research contains sensitive data or you do not want to share your project with the world. If you want to develop open source projects, of course, you want to make them public
{{<br size="2">}}

---

# <center>Adding a GitHub remote</center>
{{<br size="2">}}

Click on the {{<bdark>}}Code{{</bdark>}} green drop-down button, select SSH ({{<a "https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/connecting-to-github-with-ssh" "if you have set SSH for your GitHub account">}}) or HTTPS (if you haven't) and copy the address
{{<br size="2">}}

Then, go back to your command line, `cd` inside your project if you aren't already there and add your remote
{{<br size="2">}}

You add a remote with:

```sh
git remote add <remote-name> <remote-address>
```

{{<bdark>}}&lt;remote-name&gt;{{</bdark>}} is only a convenience name that will identify that remote. You can choose any name, but since Git automatically call the remote `origin` when you clone a repo, it is common practice to use `origin` as the name for the first remote
{{<br size="1">}}

{{<bdark>}}&lt;remote-address&gt;{{</bdark>}} is the address of your remote in the https form or—{{<a "https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/connecting-to-github-with-ssh" "if you have set SSH for your GitHub account">}}—the SSH form

---

# <center>Adding a GitHub remote</center>
{{<br size="4">}}

{{<note>}}
Example (using an SSH address):
{{</note>}}


```sh
git remote add origin git@github.com:<user>/<repo>.git
```

{{<note>}}
Example (using an HTTPS address):
{{</note>}}

```sh
git remote add origin https://github.com/<user>/<repo>.git
```

---

# <center>Adding a GitHub remote</center>
{{<br size="4">}}

If you are working alone on this project and only wanted to have a remote for backup, you are set
{{<br size="3">}}

If you don't want to grant others write access to the project and only accept contributions through pull requests, you are also set
{{<br size="3">}}

If you want to grant your collaborators write access to the project however, you need to add them to it

---

# <center>Inviting collaborators</center>
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

# <center>Getting information on remotes</center>
{{<br size="4">}}

To list remotes, run:

```sh
git remote
```
{{<br size="4">}}

To list the remotes with their addresses, run:

```sh
git remote -v
```
{{<br size="4">}}

You can see that your local project now has a remote called `origin` and that it has the address of your GitHub repo

---

# <center>Getting information on remotes</center>
{{<br size="4">}}

To get yet more information about a particular remote, you can run:

```sh
git remote show <remote-name>
```
{{<br size="5">}}

{{<note>}}
For instance, to inspect your new remote, run:
{{</note>}}


```sh
git remote show origin
```

---

# <center>Managing remotes</center>
{{<br size="4">}}

You rename a remote with:

```sh
git remote rename <old-remote-name> <new-remote-name>
```
{{<br size="3.5">}}

You delete a remote with:

```sh
git remote remove <remote-name>
```
{{<br size="3.5">}}

You can change the url of the remote with:

```sh
git remote set-url <remote-name> <new-url> [<old-url>]
```

---

# <center>Getting data from the remote</center>
{{<br size="3">}}

If you collaborate on your project through the GitHub remote, you will have to get the data added by your teammates to keep your local project up to date
{{<br size="2">}}

To download new data from the remote, you have 2 options:
{{<br size="2">}}

- `git fetch`
{{<br size="2">}}
- `git pull`

---

## <center>Fetching changes</center>
{{<br size="2">}}

*Fetching* downloads the data from your remote that you don't already have in your local version of the project.

```sh
git fetch <remote-name>
```

The branches on the remote are now accessible locally as `<remote-name>/<branch>`. You can inspect them or you can merge them into your local branches.

{{<note>}}
Example: To fetch from your new GitHub remote, you would run:
{{</note>}}

```sh
git fetch origin
```

---

## <center>Pulling changes</center>
{{<br size="2">}}

*Pulling* does 2 things: it fetches the data (as we just saw) and it then merges the changes onto your local branches.

```sh
git pull <remote-name> <branch>
```

{{<note>}}
Example:
{{</note>}}

```sh
git pull origin main
```

If your branch is already tracking a remote branch (see below), then you simply need to run:

```sh
git pull
```

Now, how do you upload data *to* the remote?

---

# <center>Pushing to a remote</center>
{{<br size="1">}}

Uploading data to the remote is called *pushing* and is done with:

```sh
git push <remote-name> <branch-name>
```

To push your branch `main` to the remote `origin`:

```sh
git push origin main
```

You can also set an upstream branch to track a local branch with the `-u` flag:

```sh
git push -u origin main
```

From now on, all you have to run when you are on `main` is:

```sh
git push
```

Git knows that your local `main` branch is being tracked by the upstream `main` branch

---

# <font color="#8b8b8d"><center><span style="font-size: 6.5rem">Questions?</span></center></font>
