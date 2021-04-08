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

<br>

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

{{<br size="3">}}

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

{{<br size="3">}}

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

{{<br size="3">}}

#### <center>Neural networks</center>
{{<br size="4.2">}}

<span style="color: #e3731d; font-weight: 500; font-size: 1.4rem; font-family: 'Montserrat';">Single layer of artificial neurons</span> &nbsp;&nbsp;→ &nbsp; Unable to learn even some of the simple mathematical functions (Marvin Minsky & Seymour Papert).

<br>
<span style="color: #e3731d; font-weight: 500; font-size: 1.4rem; font-family: 'Montserrat';">Two layers</span> &nbsp;&nbsp;→ &nbsp; Theoretically can approximate any math model, but in practice very slow.

<br>
<span style="color: #e3731d; font-weight: 500; font-size: 1.4rem; font-family: 'Montserrat';">More layers</span> &nbsp;&nbsp;→ &nbsp; Deeper networks &nbsp;→&nbsp; <b>deep learning</b>.

{{<br size="9.7">}}

---

# <center>Types of NN</center>

---

#### <center>Fully-connected, feedforward, single-layer NN</center><br>

{{<img src="/img/ml/nn_1layer.png" title="" width="%" line-height="1.5rem">}}
From <a href="http://neuralnetworksanddeeplearning.com/chap5.html">"Neural Networks and Deep Learning" free online book, Chapter 5</a>
{{</img>}}
<br>
<br>

{{%fragment%}}
<center>Each neuron receives input from every element of the previous layer.</center>
{{%/fragment%}}

---

#### <center>Fully-connected, feedforward, deep NN</center><br>

{{<img src="/img/ml/nn_3layers.png" title="" width="%" line-height="1.5rem">}}
From <a href="http://neuralnetworksanddeeplearning.com/chap5.html">"Neural Networks and Deep Learning" free online book, Chapter 5</a>
{{</img>}}
<br>
<br>

{{%fragment%}}
<center>Data with large input sizes (e.g. images) would require a huge number of neurons.</center>
{{%/fragment%}}

---

#### <center>Convolutional neural network (CNN)</center>
{{<br size="2.5">}}

{{<img src="/img/ml/cnn_nw.png" title="" width="80%" line-height="2rem">}}
From <a href="https://codetolight.wordpress.com/2017/11/29/getting-started-with-pytorch-for-deep-learning-part-3-neural-network-basics/">Programming Journeys by Rensu Theart</a>
{{</img>}}

{{<br size="1.5">}}

{{%fragment%}}
<span style="color: #e3731d; font-weight: 500; font-size: 1.4rem; font-family: 'Montserrat';">Used for spatially structured data.</span>
{{<br size="0.5">}}
{{%/fragment%}}

{{%fragment%}}
**Convolution layers** &nbsp;&nbsp;→ &nbsp; each neuron receives input only from a subarea of the previous layer.

**Pooling** &nbsp;&nbsp;→ &nbsp; combines the outputs of neurons in a subarea to reduce the data dimensions.
{{%/fragment%}}

{{<br size="0.5">}}

{{%fragment%}}
<em>Not fully connected.</em>
{{%/fragment%}}

---

#### <center>Recurrent neural network (RNN)</center>
{{<br size="1.8">}}

{{<img src="https://upload.wikimedia.org/wikipedia/commons/b/b5/Recurrent_neural_network_unfold.svg" title="" width="%" line-height="0rem">}}
From <a href="https://commons.wikimedia.org/w/index.php?curid=1474927">fdeloche, Wikipedia</a>
{{</img>}}

{{<br size="1.3">}}

{{%fragment%}}
<span style="color: #e3731d; font-weight: 500; font-size: 1.4rem; font-family: 'Montserrat';">Used for chain structured data (e.g. text).</span>
{{%/fragment%}}

{{<br size="0.5">}}

{{%fragment%}}
<em>Not feedforward.</em>
{{%/fragment%}}

---

---

#### <center>*Building* our model</center>

{{<img src="/img/ml/fastai/dl_schematics_01_nw.png" margin="1.5rem" title="" width="%" line-height="0.5rem">}}
{{</img>}}

Our model will be made of an architecture (size, depth, types of layers, etc.). \\
We set this before training and it will not change.

---

#### <center>*Building* our model</center>

{{<img src="/img/ml/fastai/dl_schematics_02_nw.png" margin="1.5rem" title="" width="%" line-height="0.5rem">}}
{{</img>}}

Our model will also comprise parameters. Those are set to some initial values, but will change during training. Only at the end of training will they have reached their final values.

---

#### <center>*Training* our model</center>

{{<img src="/img/ml/fastai/dl_schematics_03_nw.png" margin="1.5rem" title="" width="%" line-height="0.5rem">}}
{{</img>}}

To train the model, we need labelled data in the form of input/output pairs.
<br>
<br>

---

#### <center>*Training* our model</center>

{{<img src="/img/ml/fastai/dl_schematics_04_nw.png" margin="1.5rem" title="" width="%" line-height="0.5rem">}}
{{</img>}}

Inputs and parameters are fed to the architecture.
<br>
<br>

---

#### <center>*Training* our model</center>

{{<img src="/img/ml/fastai/dl_schematics_05_nw.png" margin="1.5rem" title="" width="%" line-height="0.5rem">}}
{{</img>}}

We get predictions as outputs.
<br>
<br>

---

#### <center>*Training* our model</center>

{{<img src="/img/ml/fastai/dl_schematics_06_nw.png" margin="1.5rem" title="" width="%" line-height="0.5rem">}}
{{</img>}}

These can then be compared with the labels (or true outputs).
<br>
<br>

---

#### <center>*Training* our model</center>

{{<img src="/img/ml/fastai/dl_schematics_07_nw.png" margin="1.5rem" title="" width="%" line-height="0.5rem">}}
{{</img>}}

The distance between them is the loss.
<br>
<br>

---

#### <center>*Training* our model</center>

{{<img src="/img/ml/fastai/dl_schematics_08_nw.png" margin="1.5rem" title="" width="%" line-height="0.5rem">}}
{{</img>}}

Of course, we want to minimize the loss. Parameters get adjusted slightly through backpropagation to that effect. This cycle gets repeated at each xxx.

---

#### <center>*Using* our model</center>

{{<img src="/img/ml/fastai/dl_schematics_09_nw.png" margin="1.5rem" title="" width="%" line-height="0.5rem">}}
{{</img>}}

At the end of the training process, what we are interested in are the architecture and the parameters.
<br>

---

#### <center>*Using* our model</center>

{{<img src="/img/ml/fastai/dl_schematics_10_nw.png" margin="1.5rem" title="" width="%" line-height="0.5rem">}}
{{</img>}}

The rest was only necessary to train and evaluate our model.
<br>
<br>

---

#### <center>*Using* our model</center>

{{<img src="/img/ml/fastai/dl_schematics_11_nw.png" margin="1.5rem" title="" width="%" line-height="0.5rem">}}
{{</img>}}

Now our model can be considered as a regular program.
<br>
<br>

---

#### <center>*Using* our model</center>

{{<img src="/img/ml/fastai/dl_schematics_12_nw.png" margin="1.5rem" title="" width="%" line-height="0.5rem">}}
{{</img>}}

Which means that we can use it to obtain outputs from inputs.
<br>
<br>

---

### <center><span style="font-size: 5.0rem">Questions?</span></center>
