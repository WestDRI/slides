+++
title = "fastai"
outputs = ["Reveal"]
[logowgnofront]
src = "/img/wg_for_dark_bg.png"
[backlink]
href = "https://westgrid-ml.netlify.app/2021_modules/09_fastai/"
txt = "Back to Webinar Page"
[reveal_hugo]
custom_theme = "mh6.scss"
custom_theme_compile = true
+++

#### <div style="line-height: 3.2rem; font-size: 5rem; color: #b3765b">fastai:</div>{{<br size="4">}}

#### <center><div style="line-height: 5rem; font-size: 4rem; color: #c98749">A deep learning library<br>&emsp;&emsp;&emsp;&emsp;for fast implementation<br>&emsp;&emsp;&emsp;& research</div></center>{{<br size="2.5">}}

{{<imgright src="/img/wg_for_dark_bg.png" title="" width="35%" line-height="rem">}}
{{</imgright>}}

---

# <center>What is fastai?</center>

{{%fragment%}}
{{<imgb src="/img/ml/fastai/fastai3_nw.png" margin="2rem" bg="#cccccc" title="" width="60%" line-height="0rem">}}
{{</imgb>}}
{{%/fragment%}}

---

# <center>What is fastai?</center>

{{<imgb src="/img/ml/fastai/fastai2_nw.png" margin="2rem" bg="#cccccc" title="" width="60%" line-height="0rem">}}
{{</imgb>}}

---

### PyTorch
{{<br size="1.5">}}

{{<imgshadow src="/img/ml/pt_vs_tf.png" margin="0.5rem" title="" width="50%" line-height="0.5rem">}}
{{<br size="1.5">}}
{{</imgshadow>}}

- Very Pythonic.
- Widely used in research.

---

### fastai
<br>
{{<a "https://github.com/fastai/fastai" "fastai" >}} is a deep learning library that builds on top of PyTorch, adding a higher level of functionality.
<br>
<br>

> [It] is organized around two main design goals: to be approachable and rapidly productive, while also being deeply hackable and configurable. {{<el l="https://docs.fast.ai/#About-fastai">}}

---

### Resources

##### Documentation

{{<a "https://docs.fast.ai/" "Manual">}}<br>
{{<a "https://docs.fast.ai/tutorial.html" "Tutorials">}}<br>
{{<a "https://www.mdpi.com/2078-2489/11/2/108/htm" "Peer-reviewed paper">}}
{{<br size="1.5">}}

##### Book

{{<a "https://www.amazon.com/Deep-Learning-Coders-fastai-PyTorch/dp/1492045527" "Paperback version">}}<br>
{{<a "https://course.fast.ai/" "Free MOOC version of part 1 of the book">}}<br>
{{<a "https://github.com/fastai/fastbook/" "Jupyter notebooks version of the book">}}
{{<br size="1.5">}}

##### Getting help

{{<a "https://forums.fast.ai/" "Discourse forum">}} <br>

---

# <center>Load domain specific library</center>
{{<br size="2">}}

Four domains available
{{<br size="2">}}

Load only the one relevant to your model:

```py
from fastai.vision.all import *
from fastai.text.all import *
from fastai.tabular.all import *
from fastai.collab import *
```
{{<br size="2">}}

Note that `import *` is not recommended in Python outside the context of fastai

---

# <center>Basic workflow</center>

## - DataLoaders

Create iterators with the training and validation data

## - Learner

Train the model

## - Predict or visualize

Get predictions from our model

---

# <center><span style="font-size: 5.0rem">Questions?</span></center>
