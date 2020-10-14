+++
title = "Tips & tricks to get help in any programming language"
outputs = ["Reveal"]
[logowg]
src = "/img/wg_white_removed_medium.png"
[backlink]
href = "https://westgrid-cli.netlify.app/webinars/getting_help/"
txt = "Back to Webinar Page"
[reveal_hugo]
custom_theme = "mh3.scss"
custom_theme_compile = true
+++

# <span style="font-size: 5rem;">So, you are stuck ... now what?</span>
<br>
#### <div style="line-height: 2.8rem">Marie-Hélène Burle</div>
##### <div style="line-height: 2.8rem">[training@westgrid.ca](mailto:training@westgrid.ca)</div>
##### <div style="line-height: 2.8rem">October 14, 2020</div>

---

# <div style="line-height: 12rem">When you are stuck</div>

{{%fragment%}}
<span style="font-size: 2.5rem;">*First,* **look** for information that is already out there</span>
{{%/fragment%}}

{{%fragment%}}
<span style="font-size: 2.5rem;">*Then,* **ask** for help</span>
{{%/fragment%}}

<br>

---

## Look for information

1. Read carefully any **error message**
2. Read the **documentation** (local or online)
3. Make sure you have **up-to-date versions**
4. **Google** (using carefully selected keywords or the error message)
5. Look for **open issues** & **bug reports**

---

### Error messages

{{%fragment%}}
<span style="font-size: 2.5rem;">**Read them!**</span>
{{%/fragment%}}

{{%fragment%}}
Familiarise yourself with the error types in the languages you use\\
&emsp;&emsp;&emsp;&emsp;Example: Python's **syntax errors** vs **exceptions**.
{{%/fragment%}}

{{%fragment%}}
Warnings ≠ errors
{{%/fragment%}}

{{%fragment%}}
Look for bits you understand (don't get put off by what you don't understand)
{{%/fragment%}}

{{%fragment%}}
Identify the locations of the errors to go investigate that part of the code
{{%/fragment%}}

<!-- --- -->

<!-- ### Error messages -->
<!-- <br> -->
<!-- Python invalid syntax: -->

<!-- found during the parsing stage: when the interpreter parse the code to convert it to Python byte code. -->

---

### Documentation
<br>

{{%fragment%}}
##### You need to <font color="#e67300">find</font> it<br>
{{%/fragment%}}

{{%fragment%}}
##### You need to <font color="#e67300">understand</font> it<br>
{{%/fragment%}}

---

#### <font color="#e67300">Finding</font> documentation <font color="#e67300">online</font>

Take the time to look for the official documentation & other high quality sources for the languages & tools you use.

{{%fragment%}}
&emsp;*Examples:*

&emsp;&emsp;Python: [Reference manual](https://docs.python.org/3/reference/index.html), [Standard library manual](https://docs.python.org/3/library/index.html), [Tutorial](https://docs.python.org/3/tutorial/index.html) \\
&emsp;&emsp;NumPy: [Tutorial](https://numpy.org/devdocs/user/tutorials_index.html) \\
&emsp;&emsp;R: [Open source book "R for Data Science"](https://r4ds.had.co.nz/index.html), [Open source book "Advanced R"](https://adv-r.hadley.nz/) \\
&emsp;&emsp;Julia: [Documentation](https://docs.julialang.org/en/v1/) \\
&emsp;&emsp;Bash: [Manual](https://www.gnu.org/software/bash/manual/html_node/index.html) \\
&emsp;&emsp;Git: [Manual](https://git-scm.com/docs), [Open source book](https://git-scm.com/book/en/v2)
{{%/fragment%}}

---

#### <font color="#e67300">Finding</font> documentation <font color="#e67300">locally</font>
<br>
<br>
<br>
<br>

---

#### <font color="#e67300">Understanding</font> the documentation
<br>
<br>
<br>
<br>

---

### Up-to-date versions

{{%fragment%}}
**First, you need to know what needs to be updated.**
{{%/fragment%}}

{{%fragment%}}
Keeping a system up to date includes updating:

- the OS
- the program
- (any potential IDE)
- packages
{{%/fragment%}}

{{%fragment%}}
**Then, you need to update regularly.**
{{%/fragment%}}

---

### Google

Google's algorithms are great at guessing what we are looking for.<br><br>

{{%fragment%}}
*But* there is a frequency problem:

&emsp;&emsp;&emsp;Searches relating to programming-specific questions represent too small &emsp;&emsp;&emsp;a fraction of the overall searches for results to be relevant unless you use &emsp;&emsp;&emsp;**key vocabulary**.<br><br>
{{%/fragment%}}

{{%fragment%}}
Be precise.<br>
{{%/fragment%}}

{{%fragment%}}
Learn the vocabulary of your language/tool to know what to search for.
{{%/fragment%}}

---

### Open issues & bug reports

If the tool you are using is open source, look for issues matching your problem in the source repository (e.g. on GitHub or GitLab).

---

## What if the answer <font color="#e67300">isn't</font> out there?

When everything has failed & you have to ask for help, you need to know: <br><br>

{{% fragment %}}
### <font color="#e67300">Where</font> to ask
{{% /fragment %}}

{{% fragment %}}
### <font color="#e67300">How</font> to ask
{{% /fragment %}}

---

### <div style="line-height: 4.5rem"><font color="#e67300">Where</font> to ask</div>

{{%fragment%}}
#### <div align="left" style="line-height: 3.0rem">Q&A sites</div>

Mostly, **[Stack Overflow](https://en.wikipedia.org/wiki/Stack_Overflow)** & **[the Stack Exchange network](https://en.wikipedia.org/wiki/Stack_Exchange)**.

Co-founded in 2008 & 2009 by [Jeff Atwood](https://en.wikipedia.org/wiki/Jeff_Atwood) & [Joel Spolsky](https://en.wikipedia.org/wiki/Joel_Spolsky).<br><br>
{{%/fragment%}}

{{%fragment%}}
#### <div align="left" style="line-height: 3.0rem">Forums</div>

Mostly, **[Discourse](https://en.wikipedia.org/wiki/Discourse_(software))**.

Co-founded in 2013 by [Jeff Atwood](https://en.wikipedia.org/wiki/Jeff_Atwood), Robin Ward & Sam Saffron.

A few other older forums.
{{%/fragment%}}

---

### <font color="#e67300">Where</font> to ask

**Which one to choose is a matter of personal preference.**

Possible considerations:

- Some niche topics have very active communities on Discourse
- Stack Overflow & some older forums can be intimidating with higher expectations for the questions quality & a more direct handling of mistakes
- For conversations, advice, or multiple step questions, go to Discourse
- Stack Overflow has over 13 million users
- Stack Overflow & co have a very efficient approach

---

### Stack Overflow & co

Pick the best site to ask your question. \\
A few of the Stack Exchange network sites:

[Stack Overflow](https://stackoverflow.com/): programming \\
[Super User](https://superuser.com): computer hardware & software \\
[Unix & Linux](https://unix.stackexchange.com/): *nix OS
[TEX](https://tex.stackexchange.com/): TeX/LaTeX \\
[Cross Validated](https://stats.stackexchange.com/): stats; data mining, collecting, analysis & visualization; ML \\
[Data Science](https://datascience.stackexchange.com/): focus on implementation & processes \\
[Open Data](https://opendata.stackexchange.com/) \\
[GIS](https://gis.stackexchange.com/)

---

## <font color="#e67300">How</font> to ask

{{%fragment%}}
**Familiarize yourself with the site by reading posts**
{{%/fragment%}}

{{%fragment%}}
Read the "Tour" page (SO/SE) or take the "New user tutorial" (Discourse)
{{%/fragment%}}

{{%fragment%}}
Make sure the question has not already been asked
{{%/fragment%}}

{{%fragment%}}
**Format the question properly**
{{%/fragment%}}

{{%fragment%}}
**Give a minimum reproducible example**
{{%/fragment%}}

{{%fragment%}}
**Do not share sensitive data**
{{%/fragment%}}

{{%fragment%}}
**Show your attempts**
{{%/fragment%}}

{{%fragment%}}
Avoid cross-posting. If you really have to, make sure to cross-reference
{{%/fragment%}}

---

### <font color="#e67300">How</font> to ask: <font color="#e67300">SO & co</font>

{{%fragment%}}
**Don't ask opinion-based questions**
{{%/fragment%}}

{{%fragment%}}
**Don't ask for package, tool, or service recommendations**
{{%/fragment%}}

{{%fragment%}}
**Don't ask more than one question in a single post**
{{%/fragment%}}

{{%fragment%}}
Check your spelling, grammar, punctuation, capitalized sentences, etc.
{{%/fragment%}}

{{%fragment%}}
Avoid greetings, signatures, thank-yous; keep it to the point
{{%/fragment%}}

{{%fragment%}}
Avoid apologies about being a beginner, this being your first post, the question being stupid, etc: do the best you can & skip the personal, self-judgmental & irrelevant bits
{{%/fragment%}}

---

#### Formatting your question

Nowadays, most sites (including Stack Overflow & Discourse) allow [markdown](https://en.wikipedia.org/wiki/Markdown) rendering.

Some older forums implement other markup languages (e.g. [BBCode](https://en.wikipedia.org/wiki/BBCode)).

The information is always easy to find. **Spend the time to format your question properly.** People will be much less inclined to help you if you don't show any effort & if your question is a nightmare to read.

---

#### Example of a typical downvoted question

<pre>
howdy!!
i am new to R sorry for a very silly question.i looked all oever the itnernwet, but i dint find
anyanswer. i tried to use ggplot i get the error: Error in loadNamespace(i, c(lib.loc, .libPaths()),
versionCheck = vI[[i]]) : there is no package called 'stringi'
thank youu very much!!!!!
marie
</pre>

{{<img src="/img/help/so_question_pre.png" title="" width="%" line-height="0.5rem">}}
{{</img>}}

---

#### <div style="line-height: 2rem">Same question, fixed</div>

<pre>
When I try to load the package `ggplot2` with:
```r
library(ggplot2)
```
I get the error:
> Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : there is no package called
'stringi'
What am I doing wrong?
</pre>

{{<img src="/img/help/so_question_post.png" title="" width="%" line-height="0.5rem">}}
{{</img>}}

---

#### Still not good enough

This question is actually a duplicate of [a question asked](https://stackoverflow.com/q/30983013/9210961) which is itself a duplicate of [another question](https://stackoverflow.com/q/31038636/9210961).

---

#### Creating a minimal reproducible example

There are great posts on how to create a good minimal reproducible example. In particular:

&emsp;[How to create a Minimal, Reproducible Example](https://stackoverflow.com/help/minimal-reproducible-example)
<br><br>
For R (but concepts apply to any language):

&emsp;[How to make a great R reproducible example](https://stackoverflow.com/q/5963269/9210961) \\
&emsp;[What's a reproducible example (`reprex`) and how do I do one?](https://community.rstudio.com/t/faq-whats-a-reproducible-example-reprex-and-how-do-i-do-one/5219?u=prosoitos)
<!-- [](https://github.com/tidyverse/reprex) -->
<!-- `reprex::reprex()` -->

---

#### Creating a minimal reproducible example

- Load all necessary packages
- Load or create necessary data
- Simplify the data & the code as much as possible while still reproducing the problem
- Use simple variable names

---

##### Data for your reproducible example: your own data

Do not upload data somewhere on the web to be downloaded.

Make sure that the data is anonymised.

Don't keep more variables & more data points than are necessary to reproduce the problem.

Simplify the variable names.

In R, you can use functions such as `dput()` to turn your reduced, anonymised data into text that is easy to copy/paste & can then be used to recreate the data.

---

##### Data for your reproducible example: create a toy dataset

You can also create a toy dataset.

Functions that create random data, series, or repetitions are very useful here.

---

##### Data for your reproducible example: pre-packaged datasets

Some languages and/or packages come with pre-packaged datasets. If your code involves such languages/packages, you can make use of these datasets to create your reproducible example.

For example, R comes with many datasets directly available, including `iris`, `mtcars`, `trees`, `airquality`. In the R console, try:

```r
?iris
?mtcars
```

---

#### Additional considerations

Even if you always find answers to your questions without having to post yourself, **consider signing up** to these sites:

- It allows you to upvote (SO/SE) or like (Discourse) the questions & answers that help you—and why not thank in this fashion those that are making your life easier?

- It makes you a part of these communities.

- Once you are signed up, maybe you will start being more involved & contribute with questions & answers of your own.

---

#### A last word

While it takes some work to ask a good question, do not let this discourage you from posting on Stack Overflow: if you ask a good question, you will get many great answers.

You will learn in the process of developing your question (you may actually find the answer in that process) & you will learn from the answers.

It is forth the effort.

[Here](https://stackoverflow.com/help/how-to-ask) is the Stack Overflow documentation on how to ask a good question.

---

#### WestGrid Autumn School 2020

{{<imgslink href="https://autumnschool.netlify.app/" src="/img/ad/autumn_school2020.png" title="" width="80%" line-height="1.0rem">}}
{{</imgslink>}}

<center>**Every Monday & Tuesday this November**</center>

<center>**Check the website at: https://autumnschool.netlify.app/**</center>

---

#### WestGrid Autumn School 2020

<center>
<u>Topics:</u>
<br><br><br>
**Bash** command line
<br><br>
Version control with **Git**
<br><br>
**HPC**
<br><br>
Basics of **Python**
<br><br>
Deep learning with **PyTorch**
<br><br>
Parallel programming in **Chapel**
<br><br>
Scientific programming in **Julia**
<br><br>
3D scientific **visualization**
</center>
<br><br>

<center>**Every Monday & Tuesday this November**</center>

<center>**Check the website at: https://autumnschool.netlify.app/**</center>

---

# <span style="font-size: 5.0rem">Questions?</span>
