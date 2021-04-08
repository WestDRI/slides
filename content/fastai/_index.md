+++
title = "fastai"
outputs = ["Reveal"]
[logowgnofront]
src = "/img/wg_white_removed_medium.png"
[backlink]
href = "https://westgrid-ml.netlify.app/webinars/fastai/"
txt = "Back to Webinar Page"
[reveal_hugo]
custom_theme = "mh4.scss"
custom_theme_compile = true
+++

#### <div style="line-height: 3.2rem; font-size: 5.5rem"><br><font color="black">&emsp;&nbsp;fastai</font></div>
#### <center><div style="line-height: 3.2rem; font-size: 2.3rem">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;A deep learning library<br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&ensp;&emsp;for fast implementation <br> &ensp;&emsp;& research</div></center>
##### <div style="line-height: 1.1rem"><br>&nbsp;&emsp;&emsp;&emsp;&emsp;Marie-Hélène Burle</div>
###### <div style="line-height: 1.1rem">&emsp;&emsp;&emsp;&emsp;&emsp;[training@westgrid.ca](mailto:training@westgrid.ca)</div>
###### <div style="line-height: 1.1rem">&emsp;&emsp;&emsp;&emsp;&emsp;April 14, 2021</div>
{{<imgright src="/img/wg_white_removed_medium.png" title="" width="60%" line-height="rem">}}
{{</imgright>}}

---

# <center>What is fastai?</center>

{{%fragment%}}
{{<img src="/img/ml/fastai/fastai3_nw.png" margin="2rem" title="" width="60%" line-height="0rem">}}
{{</img>}}
{{%/fragment%}}

---

# <center>What is fastai?</center>

{{<img src="/img/ml/fastai/fastai2_nw.png" margin="2rem" title="" width="60%" line-height="0rem">}}
{{</img>}}

---

## PyTorch

PyTorch is currently the fastest growing machine learning library and is now used for most research papers on the subject.

<br>
PyTorch's advantages:

- written in Python
- excellent low-level highly customizable functionalities
<br><br>

---

## fastai

fastai is a library that builds on top of PyTorch, adding a higher-level of functionality.

High level API for PyTorch.

Layered API: allows for very low level research, production model, super easy world class model for beginners

<br>
fastai's advantages:

- a fast and efficient approach
- the low-level functionality of PyTorch remains accessible for those who need it
<br><br>

---

## Resources

##### Documentation

[fastai](https://docs.fast.ai/)

##### Course

[fast.ai](https://course.fast.ai/)

##### Book

[fastbook](https://github.com/fastai/fastbook/)

##### Getting help

[Discourse forum](https://forums.fast.ai/)

---

# <center>Machine learning</center>
<br>

{{%fragment%}}
{{<emph>}}
<center>Computer programs whose performance at a task improves with experience</center>
{{</emph>}}
{{%/fragment%}}

<br>

---

#### <center>Dominant approach:</center>

{{%fragment%}}
{{<emph>}}
<center>Feeding vast amounts of data to algorithms</center>
{{</emph>}}

{{<img src="https://imgs.xkcd.com/comics/machine_learning.png" title="" width="%" line-height="1rem">}}
From <a href="https://xkcd.com/">xkcd.com</a>
{{</img>}}
{{%/fragment%}}

---

# <center>History</center>
<br>

{{%fragment%}}
<span style="color: #e3731d; font-weight: 500; font-size: 1.4rem; font-family: 'Montserrat';">1943:</span>&nbsp; Warren McCulloch & Walter Pitts—mathematical model of artificial neuron.
{{%/fragment%}}

{{%fragment%}}
<br>
<span style="color: #e3731d; font-weight: 500; font-size: 1.4rem; font-family: 'Montserrat';">1961:</span>&nbsp; Frank Rosenblatt—perceptron.
{{%/fragment%}}

{{%fragment%}}
<br>
<span style="color: #e3731d; font-weight: 500; font-size: 1.4rem; font-family: 'Montserrat';">1986:</span>&nbsp; James McClelland, David Rumelhart & PDP Research Group—book: "Parallel Distributed &emsp;&emsp;&ensp;Processing".
{{%/fragment%}}

---

#### <center>Neurons</center>

<figure style="display: table; margin: 2rem auto">
  <div class="row">
	<div class="column">
	  <b>Biological</b> <br><br><br><br>
	  {{<img src="https://upload.wikimedia.org/wikipedia/commons/b/b5/Neuron.svg" title="" width="100%" line-height="0.5rem">}}
	  Schematic from <a href="https://commons.wikimedia.org/w/index.php?curid=1474927">Dhp1080, Wikipedia</a>
	  {{</img>}}
	</div>
	<div class="column">
	   <b>Artificial</b> <br><br><br>
	   {{<img src="/img/ml/artificial_neuron_nw.png" title="" width="100%" line-height="0.5rem">}}
	   Modified from <a href="https://royalsocietypublishing.org/doi/10.1098/rsta.2019.0163">O.C. Akgun & J. Mei 2019</a>
	   {{</img>}}
	</div>
  </div>
</figure>

---

#### <center>Neural networks</center>

<figure style="display: table; margin: 1rem auto">
  <div class="row">
	<div class="column">
	  <b>Biological</b> <br><br><br><br>
	 {{<img src="/img/ml/brain_neurons.jpg" title="" width="90%" line-height="0.5rem">}}
	 Image by <a href="https://news.berkeley.edu/2020/03/19/high-speed-microscope-captures-fleeting-brain-signals/">Na Ji, UC Berkeley</a>
	 {{</img>}}
	</div>
	<div class="column">
	   <b>Artificial</b> <br><br>
	   {{<img src="/img/ml/nn_single_layer_nw.png" title="" width="100%" line-height="0.5rem">}}
	   Modified from <a href="https://royalsocietypublishing.org/doi/10.1098/rsta.2019.0163">O.C. Akgun & J. Mei 2019</a>
	   {{</img>}}
	</div>
  </div>
</figure>

---

#### <center>Neural networks</center>
{{<br size="4.2">}}

<span style="color: #e3731d; font-weight: 500; font-size: 1.4rem; font-family: 'Montserrat';">Single layer of artificial neurons</span> &nbsp;&nbsp;→ &nbsp; Unable to learn even some of the simple mathematical functions (Marvin Minsky & Seymour Papert).

{{%fragment%}}
<br>
<span style="color: #e3731d; font-weight: 500; font-size: 1.4rem; font-family: 'Montserrat';">Two layers</span> &nbsp;&nbsp;→ &nbsp; Theoretically can approximate any math model, but in practice very slow.
{{%/fragment%}}

{{%fragment%}}
<br>
<span style="color: #e3731d; font-weight: 500; font-size: 1.4rem; font-family: 'Montserrat';">More layers</span> &nbsp;&nbsp;→ &nbsp; Deeper networks
{{%/fragment%}}

{{<br size="9.7">}}

---

#### <center>Neural networks</center>
{{<br size="4.2">}}

<span style="color: #e3731d; font-weight: 500; font-size: 1.4rem; font-family: 'Montserrat';">Single layer of artificial neurons</span> &nbsp;&nbsp;→ &nbsp; Unable to learn even some of the simple mathematical functions (Marvin Minsky & Seymour Papert).

<br>
<span style="color: #e3731d; font-weight: 500; font-size: 1.4rem; font-family: 'Montserrat';">Two layers</span> &nbsp;&nbsp;→ &nbsp; Theoretically can approximate any math model, but in practice very slow.

<br>
<span style="color: #e3731d; font-weight: 500; font-size: 1.4rem; font-family: 'Montserrat';">More layers</span> &nbsp;&nbsp;→ &nbsp; Deeper networks &nbsp;→&nbsp; <b>deep learning</b>.

{{<br size="9.7">}}

---



---

### 

Use Linux.

---



---

Types of problems:
1. Helping users find the right thing when they search? This is a ranking problem. Google, Bing, and Twitter search are all doing this — trying to sort things when you query so that the thing you’re looking for is at the top.
2. Giving users things they may be interested in, without them explicitly searching? This is a recommendation problem. Netflix, Spotify, who-to-follow on Twitter are examples — these products are suggesting things to engage users.
3. Figuring out what kind of thing something is? This is a classification problem. Gmail spam/not spam and Facebook photos (detecting faces) are examples here.
4. Predicting a numerical value of a thing? This is a regression problem. Predicting how much a flight will cost in two hours is an example.
5. Putting similar things together? This is clustering in action. Amazon’s customers-als0-bought is the most notable example, and we saw Spotify’s playlist addition recommendations above as well.
6. Finding uncommon things? This is usually anomaly detection. Most “trending” products (Foursquare, Twitter, Facebook) are examples, that surface things that are being tweeted/visited/talked about more than usual.
In general, 1–4 are examples of supervised learning, and 5 & 6 fall into the unsupervised learning domain. However, there are obvious cross-overs here: for example, a recommendation problem is a kind of classification problem — the algorithm is trying to predict whether a user would (or would not) be interested in a thing.

---

### <center><span style="font-size: 5.0rem">Questions?</span></center>
