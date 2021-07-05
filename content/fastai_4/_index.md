+++
title = "ethics"
outputs = ["Reveal"]
[logowgnofront]
src = "/img/wg_for_dark_bg.png"
[backlink]
href = "https://westgrid-ml.netlify.app/2021_modules/10_ethics/"
txt = "Back to Webinar Page"
[reveal_hugo]
custom_theme = "mh6.scss"
custom_theme_compile = true
+++

#### <div style="line-height: 3.2rem; font-size: 4.3rem; color: #b3765b">Machine learning:</div>{{<br size="6">}}

#### <div style="line-height: 3.2rem; font-size: 5.5rem; color: #c98749">Ethical considerations</div>{{<br size="5">}}

{{<imgright src="/img/wg_for_dark_bg.png" title="" width="35%" line-height="rem">}}
{{</imgright>}}

---

# <center>Data bias</center>

{{%fragment%}}
**Bias is always present in data.**
{{%/fragment%}}

{{%fragment%}}
*Document the limitations and scope of your data as best as possible.*
{{%/fragment%}}

{{%fragment%}}
<br>
Problems to watch for:

- *Out of domain data*: data used for training are not relevant to the model application.
- *Domain shift*: model becoming inadapted as conditions evolve.
- *Feedback loop*: initial bias exacerbated over the time.
<br>
<br>
{{%/fragment%}}

{{%fragment%}}
The last one is particularly problematic whenever the model outputs the next round of data based on interactions of the current round of data with the real world.
{{%/fragment%}}

{{%fragment%}}
<br>
<b><font color="#e3731d">Solution: ensure there are human circuit breakers and oversight.</font></b>
{{%/fragment%}}

---

# <center><span style="font-size: 5.0rem">Questions?</span></center>
