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
###### <div style="line-height: 1.1rem">&emsp;&emsp;&emsp;&emsp;&emsp;{{<a "mailto:training@westgrid.ca" "training@westgrid.ca">}}</div>
###### <div style="line-height: 1.1rem">&emsp;&emsp;&emsp;&emsp;&emsp;April 14, 2021</div>
{{<imgright src="/img/wg_white_removed_medium.png" title="" width="60%" line-height="rem">}}
{{</imgright>}}

---

### <center>WestGrid Training Modules 2021</center>
{{<br size="2">}}

{{<img src="/img/ml/fastai/wgtm21.png" margin="rem" title="" width="55%" line-height="0.5rem">}}
{{</img>}}

{{<br size="2">}}
#### <center>https://wgtm21.netlify.app/</center>

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

### <center>Dominant approach:</center>

{{%fragment%}}
{{<emph>}}
<center>Feeding vast amounts of data to algorithms</center>
{{</emph>}}

{{<img src="https://imgs.xkcd.com/comics/machine_learning.png" title="" width="%" line-height="1rem">}}
From <a href="https://xkcd.com/" target="_blank">xkcd.com</a>
{{</img>}}
{{%/fragment%}}

---

## <center>History</center>
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
<span style="color: #e3731d; font-weight: 500; font-size: 1.4rem; font-family: 'Montserrat';">1961:</span>&nbsp; Arthur Samuel's checkers program.
{{%/fragment%}}

{{%fragment%}}
<br>
<span style="color: #e3731d; font-weight: 500; font-size: 1.4rem; font-family: 'Montserrat';">1986:</span>&nbsp; James McClelland, David Rumelhart & PDP Research Group—book: "Parallel Distributed &emsp;&emsp;&ensp;Processing".
{{%/fragment%}}

<br>

---

## <center>Neurons</center>

<figure style="display: table; margin: 2rem auto">
  <div class="row">
	<div class="column">
	  <b>Biological</b> <br><br><br><br>
	  {{<img src="https://upload.wikimedia.org/wikipedia/commons/b/b5/Neuron.svg" title="" width="100%" line-height="0.5rem">}}
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

---

# <center>Neural networks</center>
{{<br size="4">}}

{{%fragment%}}
A NN is a parameterized function which can, in theory, solve any problem to any level of accuracy.
{{%/fragment%}}

{{<br size="4">}}

{{%fragment%}}
The learning process is the mapping of input data to output data (in a training set) through the adjustment of the parameters.
{{%/fragment%}}

{{<br size="4">}}

---

{{<br size="3">}}

## <center>Neural networks</center>
{{<br size="3">}}

<figure style="display: table; margin: 1rem auto">
  <div class="row">
	<div class="column">
	  <b>Biological</b> <br><br><br><br>
	 {{<img src="/img/ml/brain_neurons.jpg" title="" width="90%" line-height="0.5rem">}}
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

{{<br size="2">}}

---

{{<br size="3">}}

## <center>Neural networks</center>
{{<br size="4.05">}}

<span style="color: #e3731d; font-weight: 500; font-size: 1.4rem; font-family: 'Montserrat';">Single layer of artificial neurons</span> &nbsp;&nbsp;→ &nbsp; Unable to learn even some of the simple mathematical functions (Marvin Minsky & Seymour Papert).

{{<br size="4">}}

{{%fragment%}}
<span style="color: #e3731d; font-weight: 500; font-size: 1.4rem; font-family: 'Montserrat';">Two layers</span> &nbsp;&nbsp;→ &nbsp; Theoretically can approximate any math model, but in practice very slow.
{{%/fragment%}}

{{<br size="4">}}

{{%fragment%}}
<span style="color: #e3731d; font-weight: 500; font-size: 1.4rem; font-family: 'Montserrat';">More layers</span> &nbsp;&nbsp;→ &nbsp; Deeper networks
{{%/fragment%}}

{{<br size="9.7">}}

---

{{<br size="3">}}

## <center>Neural networks</center>
{{<br size="4.05">}}

<span style="color: #e3731d; font-weight: 500; font-size: 1.4rem; font-family: 'Montserrat';">Single layer of artificial neurons</span> &nbsp;&nbsp;→ &nbsp; Unable to learn even some of the simple mathematical functions (Marvin Minsky & Seymour Papert).

{{<br size="4">}}

<span style="color: #e3731d; font-weight: 500; font-size: 1.4rem; font-family: 'Montserrat';">Two layers</span> &nbsp;&nbsp;→ &nbsp; Theoretically can approximate any math model, but in practice very slow.

{{<br size="4">}}

<span style="color: #e3731d; font-weight: 500; font-size: 1.4rem; font-family: 'Montserrat';">More layers</span> &nbsp;&nbsp;→ &nbsp; Deeper networks &nbsp;→&nbsp; <b>deep learning</b>.

{{<br size="9.7">}}

---

# <center>Types of NN</center>

{{<br size="4">}}

---

#### <center>Fully-connected, feedforward, single-layer NN</center><br>

{{<img src="/img/ml/nn_1layer.png" title="" width="%" line-height="1.5rem">}}
From <a href="http://neuralnetworksanddeeplearning.com/chap5.html" target="_blank">"Neural Networks and Deep Learning" free online book, Chapter 5</a>
{{</img>}}
<br>
<br>

{{%fragment%}}
<center>Each neuron receives input from every element of the previous layer.</center>
{{%/fragment%}}

---

#### <center>Fully-connected, feedforward, deep NN</center><br>

{{<img src="/img/ml/nn_3layers.png" title="" width="%" line-height="1.5rem">}}
From <a href="http://neuralnetworksanddeeplearning.com/chap5.html" target="_blank">"Neural Networks and Deep Learning" free online book, Chapter 5</a>
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
From <a href="https://codetolight.wordpress.com/2017/11/29/getting-started-with-pytorch-for-deep-learning-part-3-neural-network-basics/" target="_blank">Programming Journeys by Rensu Theart</a>
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
From <a href="https://commons.wikimedia.org/w/index.php?curid=1474927" target="_blank">fdeloche, Wikipedia</a>
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

# <center>General principles</center>

{{<br size="5">}}

{{%fragment%}}
<center>Derived from **Arthur Samuel**'s approach.</center>
{{%/fragment%}}

{{<br size="6">}}

---

#### <center>*Building* a model</center>

{{<img src="/img/ml/fastai/dl_schematics_01_nw.png" margin="1.5rem" title="" width="%" line-height="0.5rem">}}
{{</img>}}

First, we need an architecture (size, depth, types of layers, etc.). \\
This is set before training and does not change.

---

#### <center>*Building* a model</center>

{{<img src="/img/ml/fastai/dl_schematics_02_nw.png" margin="1.5rem" title="" width="%" line-height="0.5rem">}}
{{</img>}}

A model also comprises parameters. \\
Those are set to some initial values, but will change during training.

---

#### <center>*Training* a model</center>

{{<img src="/img/ml/fastai/dl_schematics_03_nw.png" margin="1.5rem" title="" width="%" line-height="0.5rem">}}
{{</img>}}

To train the model, we need labelled data in the form of input/output pairs.
<br>
<br>

---

#### <center>*Training* a model</center>

{{<img src="/img/ml/fastai/dl_schematics_04_nw.png" margin="1.5rem" title="" width="%" line-height="0.5rem">}}
{{</img>}}

Inputs and parameters are fed to the architecture.
<br>
<br>

---

#### <center>*Training* a model</center>

{{<img src="/img/ml/fastai/dl_schematics_05_nw.png" margin="1.5rem" title="" width="%" line-height="0.5rem">}}
{{</img>}}

We get predictions as outputs.
<br>
<br>

---

#### <center>*Training* a model</center>

{{<img src="/img/ml/fastai/dl_schematics_06_nw.png" margin="1.5rem" title="" width="%" line-height="0.5rem">}}
{{</img>}}

A metric (e.g. error rate) compares predictions and labels and is a measure of model performance.
<br>
<br>

---

#### <center>*Training* a model</center>

{{<img src="/img/ml/fastai/dl_schematics_07_nw.png" margin="1.5rem" title="" width="%" line-height="0.5rem">}}
{{</img>}}

Because it is not always sensitive enough to changes in parameter values, we compute a loss function ...
<br>

---

#### <center>*Training* a model</center>

{{<img src="/img/ml/fastai/dl_schematics_08_nw.png" margin="1.5rem" title="" width="%" line-height="0.5rem">}}
{{</img>}}

... which allows to adjust the parameters slightly through backpropagation. \\
This cycle gets repeated for a number of steps.

---

#### <center>*Using* a model</center>

{{<img src="/img/ml/fastai/dl_schematics_09_nw.png" margin="1.5rem" title="" width="%" line-height="0.5rem">}}
{{</img>}}

At the end of the training process, what matters is the combination of architecture and trained parameters.
<br>

---

#### <center>*Using* a model</center>

{{<img src="/img/ml/fastai/dl_schematics_10_nw.png" margin="1.5rem" title="" width="%" line-height="0.5rem">}}
{{</img>}}

That's what constitute a model.
<br>
<br>

---

#### <center>*Using* a model</center>

{{<img src="/img/ml/fastai/dl_schematics_11_nw.png" margin="1.5rem" title="" width="%" line-height="0.5rem">}}
{{</img>}}

A model can be considered as a regular program ...
<br>
<br>

---

#### <center>*Using* a model</center>

{{<img src="/img/ml/fastai/dl_schematics_12_nw.png" margin="1.5rem" title="" width="%" line-height="0.5rem">}}
{{</img>}}

... and be used to obtain outputs from inputs.
<br>
<br>

---

# <center>fastai</center>

{{<br size="5">}}


---

## <center>What is fastai?</center>

{{%fragment%}}
{{<img src="/img/ml/fastai/fastai3_nw.png" margin="2rem" title="" width="60%" line-height="0rem">}}
{{</img>}}
{{%/fragment%}}

---

## <center>What is fastai?</center>

{{<img src="/img/ml/fastai/fastai2_nw.png" margin="2rem" title="" width="60%" line-height="0rem">}}
{{</img>}}

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

<!-- --- -->

<!-- ## Installation -->

<!-- Currently, fastai needs PyTorch 1.7.1 -->

<!-- python -m pip install fastai -->


<!-- https://pytorch.org/get-started/previous-versions/ -->

<!-- python -m pip install torch==1.7.1+cu110 torchvision==0.8.2+cu110 torchaudio==0.7.2 -f https://download.pytorch.org/whl/torch_stable.html -->

<!-- --- -->

<!-- ## Notes for Python users -->

<!-- import * -->

<!-- {{<a "https://github.com/fastai/fastcore" "fastcore">}} -->

---

# <center>Basic workflow</center>

##### - DataLoaders

Create iterators with the training and validation data.
{{<br size="2">}}

##### - Learner

Train the model.
{{<br size="2">}}

##### - Predict or visualize

Get predictions from our model.

---

## <center>Example: identifying painters</center>
{{<br size="5">}}

---

### <center>Two main types of models</center>
{{<br size="5">}}

##### - Classification
{{<br size="3">}}

##### - Regression
{{<br size="3">}}

---

### <center>Two main types of models</center>
{{<br size="5">}}

##### <span style="font-size: 3rem;">- Classification</span>
{{<br size="3">}}

##### - Regression
{{<br size="3">}}

---

# <center>Load domain specific library</center>
{{<br size="1">}}

In our case, we need the `vision` library:

```py
from fastai.vision.all import *
```

Other domains available:

```py
from fastai.text.all import *
from fastai.tabular.all import *
from fastai.collab import *
```

&emsp;&emsp;Note that `import *` is not recommended in Python outside the context of fastai.

---

# <center>DataLoaders</center>
<br>
A fastai class.
<br>
<br>
A simple wrapper around the PyTorch `DataLoader` class with added functionality (a `DataLoader` creates batches of data and sends them to the CPU or GPU as you iterate through it).
<br>
<br>
Creates an object of class DataLoaders which contains a validation DataLoader and a training DataLoader.

---

# <center>DataLoaders</center>
{{<br size="4">}}

Using `search_images_bing`, a convenience function to download images from the Bing API (free registration required).

```py
key = os.environ.get('AZURE_SEARCH_KEY', '<your-private-key>')
```

---

# <center>DataLoaders</center>
{{<br size="3">}}

Let's download paintings from Monet:

```py
monet = search_images_bing(key, 'monet')
ims = monet.attrgot('content_url')
path = Path('dataset')
fns = get_image_files(path)
fns
```

{{<note>}}
(#65) [Path('dataset/monet/Image_63.jpg'),Path('dataset/monet/Image_31.jpg')...]
{{</note>}}

Note that this last output is of a fastai class `L`: a Python list with added functionality.

---

# <center>DataLoaders</center>
{{<br size="3">}}

We can do the same with Van Gogh:

```py
vangogh = search_images_bing(key, 'vangogh')
ims = vangogh.attrgot('content_url')
path = Path('dataset')
fns = get_image_files(path)
fns
```

{{<note>}}
(#89) [Path('dataset/vangogh/Image_13.jpg'),Path('dataset/vangogh/Image_42.jpg')...]
{{</note>}}

---

# <center>DataLoaders</center>
{{<br size="3">}}

Data block API:

```py
paintings = DataBlock(
    blocks=(ImageBlock, CategoryBlock), 
    get_items=get_image_files, 
    splitter=RandomSplitter(valid_pct=0.2, seed=42),
    get_y=parent_label,
    item_tfms=Resize(128))
```

---

# <center>DataLoaders</center>
{{<br size="3">}}

- **blocks**: types of inputs and labels
- **get_items**: how to get the list of items
- **splitter**: how to split the data between a validation set and a training set
- **get_y**: how to label the data
- **item_tfms**: item transformation
- **batch_tfms**: transformation of the whole batch. Very fast as this happens in the GPU

{{<br size="5">}}

---

# <center>DataLoaders</center>
{{<br size="3">}}

- **blocks**: types of inputs and labels
- **get_items**: how to get the list of items <br>
- <font color="#e3731d">**splitter**: how to split the data between a validation set and a training set</font>
- **get_y**: how to label the data
- **item_tfms**: item transformation
- **batch_tfms**: transformation of the whole batch. Very fast as this happens in the GPU
<br>
<br>

{{%fragment%}}
`valid_pct=0.2`: keep a validation set (20% of the data) to test the model.
{{%/fragment%}}

---

### <center>Major pitfall: over-fitting</center>
<br>
{{<img src="/img/ml/overfitting.png" margin="rem" title="" width="40%" line-height="0.5rem">}}
From <a href="https://commons.wikimedia.org/w/index.php?curid=3610704">Chabacano, Wikipedia</a>
{{</img>}}

---

### <center>Major pitfall: over-fitting</center>
{{<br size="5">}}

##### - Training too long
{{<br size="3">}}

##### - Training without enough data
{{<br size="3">}}

##### - Too many parameters

---

# <center>DataLoaders</center>

```py
dls = paintings.dataloaders(path)
```

We now have our `DataLoaders` object `dls`.<br><br>

{{%fragment%}}
Let's have a look at 4 items:

```py
dls.valid.show_batch(max_n=4, nrows=1)
```
{{%/fragment%}}

{{%fragment%}}
{{<img src="/img/ml/fastai/paintings.png" margin="rem" title="" width="70%" line-height="0.5rem">}}
{{</img>}}
{{%/fragment%}}

---

# <center>DataLoaders</center>

To standardize the size of images, `Resize` cropped them, but there are alternative methods:

{{%fragment%}}
###### Squish

```py
paintings = paintings.new(item_tfms=Resize(128, ResizeMethod.Squish))
dls = paintings.dataloaders(path)
dls.valid.show_batch(max_n=4, nrows=1)
```

{{<img src="/img/ml/fastai/paintings_squish.png" margin="rem" title="" width="70%" line-height="0.5rem">}}
{{</img>}}
{{%/fragment%}}

---

# <center>DataLoaders</center>

To standardize the size of images, `Resize` cropped them, but there are alternative methods:

###### Pad

```py
paintings = paintings.new(item_tfms=Resize(128, ResizeMethod.Pad,
                                           pad_mode='zeros'))
dls = paintings.dataloaders(path)
dls.valid.show_batch(max_n=4, nrows=1)
```

{{<img src="/img/ml/fastai/paintings_pad.png" margin="rem" title="" width="70%" line-height="0.5rem">}}
{{</img>}}

<!-- --- -->

<!-- # <center>DataLoaders</center> -->

<!-- To standardize the size of images, `Resize` cropped them, but there are alternative methods: -->

<!-- ###### Data augmentation methods -->

<!-- `RandomResizedCrop` -->

---

# <center>Learner</center>
<br>
```py
learn = cnn_learner(dls, resnet18, metrics=error_rate)
learn.fine_tune(4)
```
{{<br size="5">}}

---

## <center>Transfer learning</center>
{{<br size="3">}}

##### Repurposing pretrained models.
{{<br size="2">}}

###### - Less data needed
{{<br size="2">}}

###### - Less computing time needed
{{<br size="2">}}

###### - Leads to better accuracy

<!-- --- -->

<!-- ### <center>Fine tuning</center> -->

<!-- `fine_tune` -->

<!-- --- -->

<!-- ## <center>Have a look at the data</center> -->

<!-- `show_batch` -->

<!-- --- -->

<!-- # <center>Training a model</center> -->

<!-- --- -->

<!-- ## <center>Confusion matrix</center> -->

<!-- `plot_top_losses` -->

<!-- --- -->

<!-- ## <center>Exporting a model</center> -->

<!-- Inference: use your model on new data. -->

<!-- --- -->

<!-- # <center>Data augmentation</center> -->

<!-- --- -->

<!-- # <center>Building apps</center> -->

<!-- Great book: -->
<!-- https://www.oreilly.com/library/view/building-machine-learning/9781492045106/ -->

<!-- https://ipywidgets.readthedocs.io/en/latest/examples/Widget%20Basics.html combined with https://voila.readthedocs.io/en/stable/index.html. -->

<!-- --- -->

<!-- # <center>Tensors</center> -->

<!-- rank: number of dimensions of a tensor `.ndim`. -->
<!-- shape: list of the size in each dimension `.shape`. -->

<!-- To reshape a tensor: `.view()`. -->

<!-- A vector is a tensor of rank one. -->

<!-- --- -->

<!-- # <center>Neural network equations</center> -->

<!-- batch@weights + bias -->

---

## <center>Results</center>
{{<br size="3">}}

| epoch  | train_loss    | valid_loss  | error_rate | time   |
| ------ |:-------------:| -----------:| ----------:| ------:|
| 0      | 0.398155      | 0.167293    | 0.068152   | 00:03  |
| 1      | 0.204518      | 0.135118    | 0.050011   | 00:02  |
| 2      | 0.199835      | 0.099103    | 0.040012   | 00:05  |
| 3      | 0.179214      | 0.046119    | 0.025813   | 00:03  |

{{<br size="5">}}

---

# <center>Getting into a lower level</center>

{{<br size="5">}}

---

## <center>Gradient descent</center>
{{<br size="4">}}

For each function, there is another function representing, not the values, but the rate of change of the values of the first function.
<br>
<br>
We need the gradients of the parameters with respect to the loss function to know in which direction and with which magnitude to adjust them at each step.

---

### <center>Automatic differentiation</center>
{{<br size="3">}}

To start tracking all operations performed on our model parameters:

```py
params = tensor.requires_grad_()
```

{{<note>}}
Underscore at the end of a method in PyTorch: in place operation.
{{</note>}}

---

## <center>Gradient descent</center>
{{<br size="3">}}

Get the values predicted by our model with our parameters:

```py
preds = model(params)
```

{{%fragment%}}
Calculate the loss:

```py
loss = loss_func(preds, targets)
```
{{%/fragment%}}

{{%fragment%}}
Backpropagation:

```py
loss.backward()
```
{{%/fragment%}}

---

## <center>Gradient descent</center>

Get the gradients:

```py
params.grad
```

{{%fragment%}}
Update the parameters:

```py
params.data -= params.grad.data * lr
```
- `.data` stops the gradient from being calculated on this operation.
- `lr`: learning rate.
{{%/fragment%}}

{{%fragment%}}
{{<note>}}
<b>Which learning rate?</b> <br>
Usually between 0.0001 and 1. <br>
Deeper networks are more bumpy and require lower learning rates (e.g. 0.01 instead of 0.1).
{{</note>}}
{{%/fragment%}}

---

## <center>Gradient descent</center>

Get the gradients:

```py
params.grad
```

Update the parameters:

```py
params.data -= params.grad.data * lr
```
- `.data` stops the gradient from being calculated on this operation.
- `lr`: learning rate.
{{<br size="2">}}

Reset the gradient:

```py
params.grad = None
```

---

## <center>Gradient descent</center>
{{<br size="1">}}

Putting it all together:

```py
def apply_step(params, prn=True):
    preds = model(params)
    loss = loss_func(preds, targets)
    loss.backward()
    params.data -= params.grad.data * lr
    params.grad = None
    if prn: print(loss.item())
    return preds

for i in range(4): apply_step(params)
```
<!-- --- -->

<!-- # <center></center> -->

<!-- Create a DataLoader: -->

<!-- ```py -->
<!-- dl = DataLoader(data, batch_size=n, shuffle=True) -->
<!-- ``` -->

<!-- ```py -->
<!-- for x, y in dl: -->
<!--     pred = model(x) -->
<!--     loss = loss_func(pred, y) -->
<!--     loss.backward() -->
<!--     params.data -= params.grad.data * lr -->
<!-- ``` -->

<!-- --- -->

<!-- # <center></center> -->

<!-- `plot_function(F.relu)` -->

<!-- --- -->

<!-- # <center>Function composition</center> -->

<!-- `nn.Sequential()`. Requires modules (so `nn.ReLU` rather than the function `F.relu`) -->

<!-- NN do function composition of linear layers and activation functions (non linearities). -->

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
