+++
title = "fastai"
outputs = ["Reveal"]
[logowgnofront]
src = "/img/wg_for_dark_bg.png"
[backlink]
href = "https://westgrid-ml.netlify.app/2021_modules/02_ml/"
txt = "Back to Webinar Page"
[reveal_hugo]
custom_theme = "mh6.scss"
custom_theme_compile = true
+++

#### <div style="line-height: 3.2rem; font-size: 5.5rem; color: #b3765b"><br>AI, ML, DL:</div>{{<br size="7">}}

#### <center><div style="line-height: 3.2rem; font-size: 4.3rem; color: #c98749">Concepts</div></center>{{<br size="3.5">}}

{{<imgright src="/img/wg_for_dark_bg.png" title="" width="35%" line-height="rem">}}
{{</imgright>}}

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

## <center>History</center>
<br>

{{%fragment%}}
<span style="color: #e3731d; font-weight: 500; font-size: 1.4rem; font-family: 'Montserrat';">1943:</span>&nbsp; W. McCulloch & W. Pitts—mathematical model of artificial neuron
{{%/fragment%}}

{{%fragment%}}
<br>
<span style="color: #e3731d; font-weight: 500; font-size: 1.4rem; font-family: 'Montserrat';">1961:</span>&nbsp; F. Rosenblatt—perceptron
{{%/fragment%}}

{{%fragment%}}
<br>
<span style="color: #e3731d; font-weight: 500; font-size: 1.4rem; font-family: 'Montserrat';">1961:</span>&nbsp; A. Samuel—checkers program
{{%/fragment%}}

{{%fragment%}}
<br>
<span style="color: #e3731d; font-weight: 500; font-size: 1.4rem; font-family: 'Montserrat';">1986:</span>&nbsp; J. McClelland, D. Rumelhart & PDP Research Group—book <br>
&emsp;&emsp;<em>Parallel Distributed Processing</em>
{{%/fragment%}}

<br>

---

## <center>Dominant approach:</center>

{{%fragment%}}
{{<emph>}}
<center>Feeding vast amounts of data to algorithms</center>
{{</emph>}}

{{<img src="https://imgs.xkcd.com/comics/machine_learning.png" title="" width="%" line-height="1rem">}}
From <a href="https://xkcd.com/" target="_blank">xkcd.com</a>
{{</img>}}
{{%/fragment%}}

---

## <center>Dominant approach:</center>

{{<emph>}}
Learning = strengthening pathways
{{</emph>}}
{{<br size="6">}}

*Example in image recognition:*
{{<br size="2">}}

Rather than coding explicitly all the possible ways—pixel by pixel—that a picture can represent an object, image/label pairs are fed to a neural network
{{<br size="3">}}

Parameters get adjusted in an iterative and automated manner
{{<br size="4">}}

---

## <center>Neurons</center>

<figure style="display: table; margin: 2rem auto">
  <div class="row">
	<div class="column">
	  <b>Biological</b> <br><br><br><br>
	  {{<img src="https://upload.wikimedia.org/wikipedia/commons/b/b5/Neuron.svg" title="" width="100%" line-height="3.3rem">}}
	  Schematic from <a href="https://commons.wikimedia.org/w/index.php?curid=1474927" target="_blank">Dhp1080, Wikipedia</a>
	  {{</img>}}
	</div>
	<div class="column">
	   <b>Artificial</b> <br><br><br>
	   {{<img src="/img/ml/artificial_neuron_nw.png" title="" width="100%" line-height="0.5rem">}}
	   Modified from <a href="https://royalsocietypublishing.org/doi/10.1098/rsta.2019.0163" target="_blank">O.C. Akgun & J. Mei 2019</a>
	   {{</img>}}
	</div>
  </div>
</figure>

<br>
<br>

---

## <center>Neurons</center>

<figure style="display: table; margin: 2rem auto">
  <div class="row">
	<div class="column">
	  <b>Biological</b> <br><br><br><br>
	  {{<img src="https://upload.wikimedia.org/wikipedia/commons/b/b5/Neuron.svg" title="" width="100%" line-height="3.3rem">}}
	  Schematic from <a href="https://commons.wikimedia.org/w/index.php?curid=1474927" target="_blank">Dhp1080, Wikipedia</a>
	  {{</img>}}
	</div>
	<div class="column">
	   <b>Artificial</b> <br><br><br>
	   {{<img src="/img/ml/artificial_neuron_nw.png" title="" width="100%" line-height="0.5rem">}}
	   Modified from <a href="https://royalsocietypublishing.org/doi/10.1098/rsta.2019.0163" target="_blank">O.C. Akgun & J. Mei 2019</a>
	   {{</img>}}
	</div>
  </div>
</figure>

**Biological neuron:** an electrically excitable cell receives information through the dendrites & transmits a compiled output through the axons

---

## <center>Neurons</center>

<figure style="display: table; margin: 2rem auto">
  <div class="row">
	<div class="column">
	  <b>Biological</b> <br><br><br><br>
	  {{<img src="https://upload.wikimedia.org/wikipedia/commons/b/b5/Neuron.svg" title="" width="100%" line-height="3.3rem">}}
	  Schematic from <a href="https://commons.wikimedia.org/w/index.php?curid=1474927" target="_blank">Dhp1080, Wikipedia</a>
	  {{</img>}}
	</div>
	<div class="column">
	   <b>Artificial</b> <br><br><br>
	   {{<img src="/img/ml/artificial_neuron_nw.png" title="" width="100%" line-height="0.5rem">}}
	   Modified from <a href="https://royalsocietypublishing.org/doi/10.1098/rsta.2019.0163" target="_blank">O.C. Akgun & J. Mei 2019</a>
	   {{</img>}}
	</div>
  </div>
</figure>

**Artificial neuron:** the weighted sum of a set of numeric inputs is passed through an activation function before yielding a numeric output

---

## <center>Activation</center>

<figure style="display: table; margin: 1rem auto">
  <div class="row">
	<div class="column">
	  <b>Threshold potential</b>
	  {{<br size="2">}}
	  {{<imgb src="/img/ml/all_none_law_nw.png" bg="#f2f2f2" title="" width="80%" line-height="2.5rem">}}
      Modified from <a href="https://commons.wikimedia.org/w/index.php?curid=78013076">Blacktc, Wikimedia</a>
      {{</imgb>}}
	</div>
	<div class="column">
	  <b>Activation functions</b>
	  {{<br size="2">}}
      {{<imgb src="/img/ml/act_func_nw.png" bg="#f2f2f2" title="" width="80%" line-height="2.5rem">}}
      From <a href="https://arxiv.org/abs/1908.08681">Diganta Misra 2019</a>
      {{</imgb>}}
	</div>
  </div>
</figure>

<br>
<br>

---

## <center>Activation</center>

<figure style="display: table; margin: 1rem auto">
  <div class="row">
	<div class="column">
	  <b>Threshold potential</b>
	  {{<br size="2">}}
	  {{<imgb src="/img/ml/all_none_law_nw.png" bg="#f2f2f2" title="" width="80%" line-height="2.5rem">}}
      Modified from <a href="https://commons.wikimedia.org/w/index.php?curid=78013076">Blacktc, Wikimedia</a>
      {{</imgb>}}
	</div>
	<div class="column">
	  <b>Activation functions</b>
	  {{<br size="2">}}
      {{<imgb src="/img/ml/act_func_nw.png" bg="#f2f2f2" title="" width="80%" line-height="2.5rem">}}
      From <a href="https://arxiv.org/abs/1908.08681">Diganta Misra 2019</a>
      {{</imgb>}}
	</div>
  </div>
</figure>

**Biological neuron:** all-or-nothing action potential; greater stimuli don't produce stronger signals but increase firing frequency

---

## <center>Activation</center>

<figure style="display: table; margin: 1rem auto">
  <div class="row">
	<div class="column">
	  <b>Threshold potential</b>
	  {{<br size="2">}}
	  {{<imgb src="/img/ml/all_none_law_nw.png" bg="#f2f2f2" title="" width="80%" line-height="2.5rem">}}
      Modified from <a href="https://commons.wikimedia.org/w/index.php?curid=78013076">Blacktc, Wikimedia</a>
      {{</imgb>}}
	</div>
	<div class="column">
	  <b>Activation functions</b>
	  {{<br size="2">}}
      {{<imgb src="/img/ml/act_func_nw.png" bg="#f2f2f2" title="" width="80%" line-height="2.5rem">}}
      From <a href="https://arxiv.org/abs/1908.08681">Diganta Misra 2019</a>
      {{</imgb>}}
	</div>
  </div>
</figure>

**Artificial neuron:** many activation functions have been tried; choices based on problem & available computing budget

---

### <center>Softmax activation function</center>

\\[\sigma(\mathbf{z})\_i=\frac{e^{z\_i}}{\sum\_{j=1}^{K}e^{z\_j}}\\]
\\[\text{ for }i=1,...,K\text{ and }\mathbf{z}=(z\_1,...,z\_K)\in\mathbb{R}^K\\]

{{<si "1.3" "(\(\mathbb{R}\) represents the set of real numbers)">}}

{{<br size="2">}}

{{<imgshadow src="/img/ml/softmax.png" title="" width="40%" line-height="0.5rem">}}
{{</imgshadow>}}
{{<br size="1">}}

Vector of real numbers &nbsp;→&nbsp; vector of numbers between 0 and 1 which add to 1

---

### <center>Relu: rectifier activation function</center>
{{<br size="3">}}

\\[f(x) = max(0, x)\\]
{{<br size="3">}}

{{<imgshadow src="/img/ml/relu.png" title="" width="50%" line-height="0.5rem">}}
{{</imgshadow>}}

---

## <center>Neural networks</center>

<figure style="display: table; margin: 1rem auto">
  <div class="row">
	<div class="column">
	  <b>Biological</b> <br><br><br><br>
	 {{<img src="/img/ml/brain_neurons.jpg" title="" width="90%" line-height="7.5rem">}}
	 Image by <a href="https://news.berkeley.edu/2020/03/19/high-speed-microscope-captures-fleeting-brain-signals/" target="_blank">Na Ji, UC Berkeley</a>
	 {{</img>}}
	</div>
	<div class="column">
	   <b>Artificial</b> <br><br>
	   {{<img src="/img/ml/nn_single_layer_nw.png" title="" width="100%" line-height="0.5rem">}}
	   Modified from <a href="https://royalsocietypublishing.org/doi/10.1098/rsta.2019.0163" target="_blank">O.C. Akgun & J. Mei 2019</a>
	   {{</img>}}
	</div>
  </div>
</figure>

<br>

---

## <center>Neural networks</center>

<figure style="display: table; margin: 1rem auto">
  <div class="row">
	<div class="column">
	  <b>Biological</b> <br><br><br><br>
	 {{<img src="/img/ml/brain_neurons.jpg" title="" width="90%" line-height="7.5rem">}}
	 Image by <a href="https://news.berkeley.edu/2020/03/19/high-speed-microscope-captures-fleeting-brain-signals/" target="_blank">Na Ji, UC Berkeley</a>
	 {{</img>}}
	</div>
	<div class="column">
	   <b>Artificial</b> <br><br>
	   {{<img src="/img/ml/nn_single_layer_nw.png" title="" width="100%" line-height="0.5rem">}}
	   Modified from <a href="https://royalsocietypublishing.org/doi/10.1098/rsta.2019.0163" target="_blank">O.C. Akgun & J. Mei 2019</a>
	   {{</img>}}
	</div>
  </div>
</figure>

**Biological network:** tremendously complex organization

---

## <center>Neural networks</center>

<figure style="display: table; margin: 1rem auto">
  <div class="row">
	<div class="column">
	  <b>Biological</b> <br><br><br><br>
	 {{<img src="/img/ml/brain_neurons.jpg" title="" width="90%" line-height="7.5rem">}}
	 Image by <a href="https://news.berkeley.edu/2020/03/19/high-speed-microscope-captures-fleeting-brain-signals/" target="_blank">Na Ji, UC Berkeley</a>
	 {{</img>}}
	</div>
	<div class="column">
	   <b>Artificial</b> <br><br>
	   {{<img src="/img/ml/nn_single_layer_nw.png" title="" width="100%" line-height="0.5rem">}}
	   Modified from <a href="https://royalsocietypublishing.org/doi/10.1098/rsta.2019.0163" target="_blank">O.C. Akgun & J. Mei 2019</a>
	   {{</img>}}
	</div>
  </div>
</figure>

**Natural network:** organized in layers

---

## <center>Neural networks</center>
{{<br size="3.5">}}

<span style="color: #e3731d; font-weight: 500; font-size: 1.4rem; font-family: 'Montserrat';">Single layer of artificial neurons</span> &nbsp;&nbsp;→ &nbsp; Unable to learn even some of the simple mathematical functions (Marvin Minsky & Seymour Papert)

{{<br size="4">}}

{{%fragment%}}
<span style="color: #e3731d; font-weight: 500; font-size: 1.4rem; font-family: 'Montserrat';">Two layers</span> &nbsp;&nbsp;→ &nbsp; Theoretically can approximate any math model, but in practice very slow
{{%/fragment%}}

{{<br size="4">}}

{{%fragment%}}
<span style="color: #e3731d; font-weight: 500; font-size: 1.4rem; font-family: 'Montserrat';">More layers</span> &nbsp;&nbsp;→ &nbsp; Deeper networks
{{%/fragment%}}

{{<br size="3">}}

{{%fragment%}}
<b>deep learning</b> = two or more layers
{{%/fragment%}}

{{<br size="4.2">}}

---

# <center>How do neural networks learn?</center>

{{%fragment%}}
<br><br>
<center>They adjust parameters automatically in an iterative manner</center>
{{%/fragment%}}

{{<br size="5">}}

{{%fragment%}}
<center>Derived from **Arthur Samuel**'s approach</center>
{{%/fragment%}}

{{<br size="6">}}

---

## <center>*Building* a model</center>

{{<imgb src="/img/ml/fastai/dl_schematics_01_nw.png" margin="1.5rem" bg="#cccccc" title="" width="%" line-height="0.5rem">}}
{{</imgb>}}

First, we need an architecture: size, depth, types of layers, etc. \\
This is set before training and does not change.

---

## <center>*Building* a model</center>

{{<imgb src="/img/ml/fastai/dl_schematics_02_nw.png" margin="1.5rem" bg="#cccccc" title="" width="%" line-height="0.5rem">}}
{{</imgb>}}

Then we need parameters. \\
Those are set to some initial values, but will change during training.

---

## <center>*Training* a model</center>

{{<imgb src="/img/ml/fastai/dl_schematics_03_nw.png" margin="1.5rem" bg="#cccccc" title="" width="%" line-height="0.5rem">}}
{{</imgb>}}

To train the model, we need labelled data in the form of input/output pairs.
<br>
<br>

---

## <center>*Training* a model</center>

{{<imgb src="/img/ml/fastai/dl_schematics_04_nw.png" margin="1.5rem" bg="#cccccc" title="" width="%" line-height="0.5rem">}}
{{</imgb>}}

Inputs and parameters are fed to the architecture.
<br>
<br>

---

## <center>*Training* a model</center>

{{<imgb src="/img/ml/fastai/dl_schematics_05_nw.png" margin="1.5rem" bg="#cccccc" title="" width="%" line-height="0.5rem">}}
{{</imgb>}}

We get predictions as outputs.
<br>
<br>

---

## <center>*Training* a model</center>

{{<imgb src="/img/ml/fastai/dl_schematics_06_nw.png" margin="1.5rem" bg="#cccccc" title="" width="%" line-height="0.5rem">}}
{{</imgb>}}

A metric (e.g. error rate) compares predictions & labels: this is a measure of model performance.
<br>

---

## <center>*Training* a model</center>

{{<imgb src="/img/ml/fastai/dl_schematics_07_nw.png" margin="1.5rem" bg="#cccccc" title="" width="%" line-height="0.5rem">}}
{{</imgb>}}

Because it is not always sensitive enough to changes in parameter values, \\
we compute a <b>loss function</b> ...
<br>

---

## <center>*Training* a model</center>

{{<imgb src="/img/ml/fastai/dl_schematics_08_nw.png" margin="1.5rem" bg="#cccccc" title="" width="%" line-height="0.5rem">}}
{{</imgb>}}

... which allows to adjust the parameters slightly through backpropagation. \\
This cycle gets repeated at each step.

---

## <center>*Training* a model</center>

{{<imgb src="/img/ml/fastai/dl_schematics_09_nw.png" margin="1.5rem" bg="#cccccc" title="" width="%" line-height="0.5rem">}}
{{</imgb>}}

At the end of the training process, what matters is the combination of architecture and trained parameters.
<br>

---

## <center>Our model</center>

{{<imgb src="/img/ml/fastai/dl_schematics_10_nw.png" margin="1.5rem" bg="#cccccc" title="" width="%" line-height="0.5rem">}}
{{</imgb>}}

That's what constitute a model.
<br>
<br>

---

## <center>*Using* a model</center>

{{<imgb src="/img/ml/fastai/dl_schematics_11_nw.png" margin="1.5rem" bg="#cccccc" title="" width="%" line-height="0.5rem">}}
{{</imgb>}}

A model can be considered as a regular program ...
<br>
<br>

---

## <center>*Using* a model</center>

{{<imgb src="/img/ml/fastai/dl_schematics_12_nw.png" margin="1.5rem" bg="#cccccc" title="" width="%" line-height="0.5rem">}}
{{</imgb>}}

... and be used to obtain outputs from inputs.
<br>
<br>

---

# <center><span style="font-size: 5.0rem">Questions?</span></center>
