+++
title = "git_basics"
outputs = ["Reveal"]
[logowg]
src = "/img/wg_white_removed_medium.png"
[logogit]
src = "/img/git/git_icon.png"
[backlink]
href = "https://westgrid-cli.netlify.app/summerschool2020/git-05-basics/"
txt = "Back to Course Page"
[reveal_hugo]
custom_theme = "mh1.scss"
custom_theme_compile = true
+++

<br>
# <center><span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="300"></span> &nbsp;basics</center>

#### <center>WestGrid Summer School</center>

##### <center>Marie-Hélène Burle</center>

###### <center><training@westgrid.ca></center>

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>3 components</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git01.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>3 components</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git02.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>What files are we talking about?</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git03.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>Now, let's consider the *state* of files</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git04.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>When nothing is *modified* in the working tree...</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git04.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>...we say that the working tree is "clean"</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git06.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>Let's create a new file</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git07.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>It appears as *modified*</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git07.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>To *stage* it, we run {{<c>}}git add file1{{</c>}}</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git08.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>{{<b>}}file1{{</b>}} is now ready to be *committed*</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git09.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>When we *commit*, we take a "snapshot", associated with a message</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git10.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>Here is the command: {{<c>}}git commit -m "&lt;description of the commit&gt;"{{</c>}}</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git10.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>Traditionally, the first commit looks like: {{<c>}}git commit -m "Initial commit"{{</c>}}</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git10.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>We just took a snapshot of the project with {{<b>}}file1{{</b>}} in that state</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git11.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>Of course {{<b>}}file1{{</b>}} is still in our working tree (the file didn't go anywhere)</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git12.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>But our working tree is clean: there are no uncommitted modifications</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git13.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>What happens if we make an edit to {{<b>}}file1{{</b>}}?</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git14.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>Or if we create a new file?</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git15.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>The working tree is not clean anymore</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git15.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>Git shows the new and modified files (with distinct labels)</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git15.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>We can stage some or all of these changes</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git15.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>For instance, let's stage the edit of {{<b>}}file1{{</b>}}: {{<c>}}git add file1{{</c>}}</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git16.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>{{<b>}}file1{{</b>}} moved from the *modified* to the *staged* state</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git17.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>Let's now make a new edit to {{<b>}}file1{{</b>}}</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git18.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>As you can see, {{<b>}}file1{{</b>}} now shows up in 2 states</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git18.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>We don't have to stage an entire file</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git19.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>We can select *hunks* with {{<c>}}git add -p file1{{</c>}}</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git19.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>The staging area is where the next commit gets organized</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git20.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>We can pick and choose what to commit together</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git20.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>This allows to archive snapshots with key sets of changes</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git21.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>Instead of random mixed bags of changes</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git22.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>A version of a file is only archived once it is committed...</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git22.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>...as information in the staging area can be overwritten</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git22.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>For instance, let's make a new edit in {{<b>}}file1{{</b>}}</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git23.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>and stage it with {{<c>}}git add -p file1{{</c>}}</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git24.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>and stage it with {{<c>}}git add -p file1{{</c>}}</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git25.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>Now let's make a new edit in the same section</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git26.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>and stage it with {{<c>}}git add -p file1{{</c>}}</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git27.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>Our previous version of {{<b>}}file1{{</b>}} (with {{<b>}}edit3{{</b>}}) is lost</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git28.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>Once we commit ({{<c>}}git commit -m "&lt;message&gt;"{{</c>}}) however...</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git29.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>...that version enters the project history</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git30.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>Not all files should be put under version control</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git30.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>Source code and scripts should be version controlled</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git30.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>but outputs shouldn't as they can be reproduced easily</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git30.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>Imagine that {{<b>}}file2{{</b>}} is one such file</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git30.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>We don't want to have it clutter our working tree</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git30.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>So we tell Git to ignore it by adding it to {{<b>}}.gitignore{{</b>}}</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git30.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>This can be done in the terminal with {{<c>}}echo file2 > .gitignore{{</c>}}</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git31.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>{{<b>}}file2{{</b>}} was not deleted, but it has become invisible to Git</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git31.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>In the meantime, we now have a new file: {{<b>}}.gitignore{{</b>}}</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git31.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>You can treat it like any other file: stage it and commit it</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git31.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>This archiving is nice, but how to return to old versions?</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git31.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>We can't do so now as we have uncommitted changes</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git31.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>We need to commit or stash them first</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git31.png)


---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>Stashing puts changes out of the way temporarily</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git31.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>We stash with {{<c>}}git stash push{{</c>}}</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git32.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>Our working tree is now clean</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git32.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>So we can check out an old version of our repo</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git32.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>Let's return to our second commit</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git32.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>First, we need to find its *hash*</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git32.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>The *hash* of a commit is a unique string that identifies it</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git32.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>You can list commits with hash, author, date, and message with {{<c>}}git log{{</c>}}</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git32.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>Then you can checkout the commit: {{<c>}}git checkout &lt;hash 2<sup>nd</sup> commit&gt;{{</c>}}</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git33.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>Now look very carefully at our working tree...</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git33.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>**B A M!**</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git34.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>Once we have checked out our second commit</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git34.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>our working tree is back to that point in history</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git34.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>If we want to go back to the latest version of our project</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git34.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>all we have to do is to checkout our latest commit</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git35.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>with {{<c>}}git checkout &lt;hash 3<sup>rd</sup> commit&gt;{{</c>}}</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git35.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>*Et voilà!*</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git36.png)

---

###### <div align="right" style="color: black">Understanding <span style="vertical-align: middle"><img src="/img/git/git_logo.png" alt="" height="" width="60"></span></div>
<br>
###### <center>Finally, to re-apply our stash, we run {{<c>}}git stash pop{{</c>}}</center>
<br>
![](/img/git/git_diagrams_summerschool2020/git31.png)
