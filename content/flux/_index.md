+++
title = "flux"
outputs = ["Reveal"]
[logowg]
src = "/img/wg_white_removed_medium.png"
[logoflux]
src = "/img/ml/flux_icon.png"
[backlink]
href = "https://westgrid-ml.netlify.app/webinars/flux/"
txt = "Back to Webinar Page"
[reveal_hugo]
custom_theme = "mh1.scss"
custom_theme_compile = true
+++

<br>
## <center>Machine learning in <span style="vertical-align: middle"><img src="/img/ml/julia.png" " alt="" height="" width="130"></span> with</center>{{<img src="/img/ml/flux_tall.png" title="" width="60%" line-height="0.5rem">}}{{</img>}}

#### <center>Marie-Hélène Burle</center>

###### <center><training@westgrid.ca></center>

###### <center>*May 13, 2020*</center>

---
 
Paradigm of the dominant current approach to AI:<br><br>

<center>Feeding vast amounts of data to algorithms</center>
It is a **data driven** approach \\
It is about **learning** \\
i.e. strengthening **pathways** <br><br><br>

*Example in image recognition:*

Rather than coding all the possible ways—pixel by pixel—that a picture can represent an object, examples of image/label pairs are fed to a neural network

---

## <center>Machine learning</center>

{{%fragment%}}
<br><br>
<center>Computer programs whose performance at a task improves with experience</center>
{{%/fragment%}}

---

## <center>Neural networks</center>

<br><br><br><br>

---

##### <center>Biological neuron</center>
<br>
{{<img src="https://upload.wikimedia.org/wikipedia/commons/b/b5/Neuron.svg" title="" width="100%" line-height="0.5rem">}}
Schematic from <a href="https://commons.wikimedia.org/w/index.php?curid=1474927">Dhp1080, Wikipedia</a>
{{</img>}}

<br>
<center>Electrically excitable cell receiving information through dendrites & transmitting the compiled output through the axon</center>

---

##### <center>Artificial neuron</center>

{{<img src="/img/ml/artificial_neuron_nw.png" title="" width="65%" line-height="0.5rem">}}
Modified from <a href="https://royalsocietypublishing.org/doi/10.1098/rsta.2019.0163">O.C. Akgun & J. Mei 2019</a>
{{</img>}}

<center>Analogous design</center>
The weighted sum of a set of numeric inputs is passed\\
through an activation function before yielding a numeric output

---

##### <center>More realistic biological neuron</center><br>

{{<img src="/img/ml/neuron_grayanatomy_nw.png" title="" width="80%" line-height="0.5rem">}}
<br>a: axon, c: dendrites <br><br><br>
Drawing from stained neuron from <a href="https://en.wikipedia.org/wiki/Gray's_Anatomy">Gray's Anatomy</a>
{{</img>}}

<center>The actual level of branching is vastly superior</center>

---

##### <center>Biological neural network</center>

{{<img src="/img/ml/brain_neurons.jpg" title="" width="90%" line-height="0.5rem">}}
<br>Neurons (in green) in mouse cortex; the dark branches are blood vessels <br><br><br>
Image by <a href="https://news.berkeley.edu/2020/03/19/high-speed-microscope-captures-fleeting-brain-signals/">Na Ji, UC Berkeley</a>
{{</img>}}

<center>The human brain has 65–90 billion of them</center>
and it is a system with emergent properties

<!-- --- -->

<!-- ##### <center>Multi-layer perceptron (MLP)</center> -->

<!-- {{<img src="/img/ml/nn_single_layer_nw.png" title="" width="60%" line-height="0.5rem">}} -->
<!-- Modified from <a href="https://royalsocietypublishing.org/doi/10.1098/rsta.2019.0163">O.C. Akgun & J. Mei 2019</a> -->
<!-- {{</img>}} -->

---

##### <center>Artificial neural network (ANN)</center><br>

{{<img src="https://upload.wikimedia.org/wikipedia/commons/4/46/Colored_neural_network.svg" title="" width="%" line-height="0.5rem">}}
From <a href="https://commons.wikimedia.org/w/index.php?curid=24913461">Glosser.ca, Wikipedia</a>
{{</img>}}
<br>
<center>**Fully-connected**, **single-layer**, **feedforward** neural network</center>

---

##### <center>Artificial neural network (ANN)</center>

{{<img src="/img/ml/nn_multi_layer_nw.png" title="" width="90%" line-height="0.5rem">}}
<br>Neural network with 2 hidden layers <br><br><br>
From <a href="https://themaverickmeerkat.com/2020-01-10-TicTacToe/">The Maverick Meerkat</a>
{{</img>}}

<center>**Fully-connected**, **feedforward**, **deep** neural network</center>

---

##### <center>Threshold potential</center>

{{<img src="/img/ml/all_none_law_nw.png" title="" width="48%" line-height="0.5rem">}}
Modified from <a href="https://commons.wikimedia.org/w/index.php?curid=78013076">Blacktc, Wikimedia</a>
{{</img>}}
<br>
<center>The information is an all-or-nothing electrochemical pulse or action potential</center>
Greater stimuli don't produce stronger signals but increase firing frequency

---

##### <center>Artificial neuron</center>
<br>
{{<img src="/img/ml/artificial_neuron_nw.png" title="" width="65%" line-height="0.5rem">}}
Modified from <a href="https://royalsocietypublishing.org/doi/10.1098/rsta.2019.0163">O.C. Akgun & J. Mei 2019</a>
{{</img>}}

---

##### <center>Activation functions</center>

{{<img src="/img/ml/act_func_nw.png" title="" width="50%" line-height="0.5rem">}}
From <a href="https://arxiv.org/abs/1908.08681">Diganta Misra 2019</a>
{{</img>}}

<center>Many activation functions have been tried</center>
Choices based on problem & available computing budget

---

##### <center>Artificial neuron</center>
<br>
{{<img src="/img/ml/artificial_neuron_nw.png" title="" width="65%" line-height="0.5rem">}}
Modified from <a href="https://royalsocietypublishing.org/doi/10.1098/rsta.2019.0163">O.C. Akgun & J. Mei 2019</a>
{{</img>}}

---

##### <center>Bias</center>
<br>

<center>Allows to [shift the output of the activation function to the right or to the left](https://stackoverflow.com/q/2480650/9210961)</center>
→ Offset

---

## <center>How do neural networks learn?</center>

{{%fragment%}}
<br><br>
<center>They adjust the weights and biases in an iterative manner</center>
{{%/fragment%}}

---

##### <center>Supervised learning</center>
{{%fragment%}}
<br>
Training set of example input/output \\((x\_i, y\_i)\\) pairs
{{%/fragment%}}

{{%fragment%}}
<br>
*Goal:*

If \\(X\\) is the space of inputs and \\(Y\\) the space of outputs, find a function \\(h\\) so that\\
for each \\(x\_i \in X\\), \\(h\_\theta(x\_i)\\) is a predictor for the corresponding value \\(y\_i\\) \\
<span style="font-size: 1.4rem;">(\\(\theta\\) represents the set of parameters of \\(h\_\theta\\))</span>
{{%/fragment%}}

{{%fragment%}}
→ i.e. find the relationship between inputs and outputs
{{%/fragment%}}

{{%fragment%}}
<br>
*Examples:*

Continuous outputs: **Regression** \\
Discrete outputs: **Classification**
{{%/fragment%}}

---

##### <center>Unsupervised learning</center>
{{%fragment%}}
<br>
Unlabelled data (training set of \\(x\_i\\))
{{%/fragment%}}

{{%fragment%}}
<br>
*Goal:*

Look for structure within the data
{{%/fragment%}}

{{%fragment%}}
<br>
*Examples:*

Clustering\\
Social network analysis\\
Market segmentation\\
PCA\\
Cocktail party algorithm (signal separation)
{{%/fragment%}}

---

##### <center>Cross entropy loss function</center><br>

*Cross entropy:* \\
Distance between predicted and real distribution

<br>
*ML Objective:* \\
Minimizing it

---

##### <center>Gradient descent</center>

{{<img src="https://upload.wikimedia.org/wikipedia/commons/f/ff/Gradient_descent.svg" title="" width="100%" line-height="0.5rem">}}
From <a href="https://commons.wikimedia.org/w/index.php?curid=20569355">Olegalexandrov & Zerodamage, Wikipedia</a>
{{</img>}}
<br>
<center>Iterative optimization method</center>
Adjust the weights and biases

---

###### <center>Batch gradient descent</center>
<br>

Use all examples in each iteration

<br>
*Slow for large data set:* \\
Parameters adjusted only after all the samples have been through

---

###### <center>Stochastic gradient descent</center>
<br>

Use one example in each iteration

<br>
*Much faster than batch gradient descent:* \\
Parameters are adjusted after each example

<br>
But no vectorization

---

###### <center>Mini-batch gradient descent</center>
<br>

*Intermediate approach:* \\
Use mini-batch size examples in each iteration

<br>
Allows a vectorized approach that stochastic gradient descent did not allow\\
→ parallelization

<br>
Variation: [Adam optimization algorithm](https://arxiv.org/abs/1412.6980)

<!-- --- -->

<!-- ###### <center>Cost function</center> -->

<!-- --- -->

<!-- Feature (attribute): input variable\\ -->
<!-- Target variable: output variable\\ -->

---

##### <center>Overfitting</center><br>

{{<img src="/img/ml/overfitting.png" title="" width="35%" line-height="0.5rem">}}
From <a href="https://commons.wikimedia.org/w/index.php?curid=3610704">Chabacano, Wikipedia</a>
{{</img>}}

<center>Some noise from the data extracted by the model while it does not represent general meaningful structure and has no predictive power</center>

---

##### <center>Overfitting: solutions</center><br>

{{<img src="/img/ml/overfitting.png" title="" width="15%" line-height="0.5rem">}}
From <a href="https://commons.wikimedia.org/w/index.php?curid=3610704">Chabacano, Wikipedia</a>
{{</img>}}
<br>

{{%fragment%}}
Regularization by adding a penalty to the loss function
{{%/fragment%}}

{{%fragment%}}
Early stopping
{{%/fragment%}}

{{%fragment%}}
Increase depth (more layers), decrease breadth (less neurons per layer)\\
<span style="font-size: 1.5rem;">→ less parameters overall, but creates vanishing and exploding gradient problems</span>
{{%/fragment%}}

{{%fragment%}}
Neural architectures adapted to the type of data\\
<span style="font-size: 1.5rem;">→ fewer and shared parameters (e.g. convolutional neural network, recurrent neural network)</span>
{{%/fragment%}}

<!-- --- -->

<!-- ##### <center>Heaviside step function</center> -->
<!-- <br> -->

---

##### <center>Convolutional neural network (CNN)</center><br>

<center>Used for spatially structured data (e.g. image recognition)</center>

<br>
**Fully connected layer**: each neuron receives input from every element of the previous layer. Images have huge input sizes and would require a very large number of neurons.

**Convolutional layer**: neurons receive input from a subarea (local receptive field) of the previous layer. Cuts the number of parameters.

--

**Pooling** (optional): combines the outputs of neurons in a subarea to reduce the data dimensions. The *stride* dictates how the subarea is moved across the image. Max-pooling uses the maximum for each subarea.

---

##### <center>Recurrent neural network (RNN)</center><br>

<center>Used for chain structured data (e.g. text)</center>

{{<img src="https://upload.wikimedia.org/wikipedia/commons/b/b5/Recurrent_neural_network_unfold.svg" title="" width="%" line-height="0.5rem">}}
From <a href="https://commons.wikimedia.org/w/index.php?curid=1474927">fdeloche, Wikipedia</a>
{{</img>}}

*Example:*\\
Long Short-Term Memory (LSTM)

<!-- {{<img src="https://upload.wikimedia.org/wikipedia/commons/3/3b/The_LSTM_cell.png" title="" width="80%" line-height="0.5rem">}} -->
<!-- From <a href="https://commons.wikimedia.org/w/index.php?curid=71836793">Guillaume Chevalier, Wikipedia</a> -->
<!-- {{</img>}} -->

<!-- --- -->

<!-- ##### <center>Backpropagation algorithm</center> -->
<!-- <br> -->


<!-- --- -->

<!-- ##### <center>Epoch</center> -->
<!-- <br> -->

<!-- one forward pass and one backward pass of all the training examples -->

<!-- --- -->

<!-- --- -->

<!-- #### <center>Flux</center> -->
<!-- <br> -->

<!-- {{<img src="https://upload.wikimedia.org/wikipedia/commons/3/37/Gated_Recurrent_Unit%2C_base_type.svg" title="" width="%" line-height="0.5rem">}} -->
<!-- From <a href="https://commons.wikimedia.org/w/index.php?curid=66225938">Jeblad, Wikipedia</a> -->
<!-- {{</img>}} -->

---

## <center>Implementation</center>

---

#### <center>ML libraries</center>
<br>

*Most popular:*

- [PyTorch](https://pytorch.org/), developed by Facebook's AI Research lab\\
- [TensorFlow](https://www.tensorflow.org/), developed by the Google Brain Team

Both most often used through their Python interfaces<br><br>

Julia's syntax is well suited for the implementation of mathematical models\\
GPU kernels can be written directly in Julia\\
Julia's speed is attractive in computation hungry fields

→ Julia has seen the development of many ML packages

---

#### <center>Some of the ML packages in Julia</center>
<br>

[Flux.jl](https://github.com/FluxML/Flux.jl): a machine learning stack\\
[Knet.jl](https://github.com/denizyuret/Knet.jl): a deep learning framework\\
[TensorFlow.jl](https://github.com/malmaud/TensorFlow.jl): wrapper for TensorFlow\\
[Turing.jl](https://github.com/TuringLang/Turing.jl): for probabilistic machine learning\\
[MLJ.jl](https://github.com/alan-turing-institute/MLJ.jl): framework to compose machine learning models\\
[ScikitLearn.jl](https://github.com/cstjean/ScikitLearn.jl): implementation of the scikit-learn API

<br>
Today, we will have a glance at Flux

---

## <center>*Example:*</center>
## <center>Classifying the [MNIST](http://yann.lecun.com/exdb/mnist/)</center>

---

#### <center>The [MNIST](http://yann.lecun.com/exdb/mnist/) database</center>
<br>
{{<img src="/img/ml/mnist_nw.png" title="" width="70%" line-height="0.5rem">}}
Modified from <a href="https://commons.wikimedia.org/w/index.php?curid=64810040">Josef Steppan, Wikimedia</a>
{{</img>}}
<br>

<center>Pairs of images of handwritten digits and labels</center>
used for testing ML systems

---

#### <center>The [MNIST](http://yann.lecun.com/exdb/mnist/) database</center>
<br>
{{<img src="/img/ml/mnist_example.png" title="" width="76.5%" line-height="0.5rem">}}
{{</img>}}
<br>

<center>Images composed of 28x28 pixels of greyscale RGB codes from 0 to 255</center>
Labels from 0 to 9 of the actual digits

---

#### <center>The [MNIST](http://yann.lecun.com/exdb/mnist/) database</center>
<br>
{{<img src="/img/ml/mnist_nw.png" title="" width="70%" line-height="0.5rem">}}
Modified from <a href="https://commons.wikimedia.org/w/index.php?curid=64810040">Josef Steppan, Wikimedia</a>
{{</img>}}
<br>

<center>Goal: learn proper identification of handwritten digits</center>
<center>Typical case of supervised learning (classification problem)</center>

---

#### <center>The [MNIST](http://yann.lecun.com/exdb/mnist/) database</center>
<br>
{{<img src="/img/ml/mnist_nw.png" title="" width="70%" line-height="0.5rem">}}
Modified from <a href="https://commons.wikimedia.org/w/index.php?curid=64810040">Josef Steppan, Wikimedia</a>
{{</img>}}
<br>

<center>60,000 images to **train**</center>
10,000 images to **test**

---

#### <center>How to get started?</center>
<br>

<center>The [Flux Model Zoo](https://github.com/FluxML/model-zoo) provides examples which are great starting points</center>

---

#### <center>How to get started?</center>
<br>

<center>Let's have a look at a few functions together</center>

---

Load packages and bring functions into scope
{{<i>}}
```julia
using Flux
using Flux: onehotbatch, onecold, crossentropy, throttle
# saves us from having to type Flux.onehotbatch(), etc.
```
<br>
Training data
{{<i>}}
```julia
img = Flux.Data.MNIST.images();   # create an array with the training images
lab = Flux.Data.MNIST.labels();   # create an array with the training labels
```

---

##### <center>What does the **image** data look like?</center>

{{<i>}}
```julia
typeof(img)
```
{{<o>}}
```julia
Array{Array{ColorTypes.Gray{FixedPointNumbers.Normed{UInt8,8}},2},1}
```
{{<i>}}
```julia
length(img)
```
{{<o>}}
```julia
60000
```
{{%c%}}img{{%/c%}} is a one-dimensional array of 60,000 two-dimensional arrays

---

{{<i>}}
```julia
img[1]
```
{{<o>}}
```julia
28×28 Array{Gray{N0f8},2}
with eltype ColorTypes.Gray{FixedPointNumbers.Normed{UInt8,8}}:
Gray{N0f8}(0.0)  Gray{N0f8}(0.0)  …  Gray{N0f8}(0.0)  Gray{N0f8}(0.0)
Gray{N0f8}(0.0)  Gray{N0f8}(0.0)     Gray{N0f8}(0.0)  Gray{N0f8}(0.0)
Gray{N0f8}(0.0)  Gray{N0f8}(0.0)     Gray{N0f8}(0.0)  Gray{N0f8}(0.0)
Gray{N0f8}(0.0)  Gray{N0f8}(0.0)     Gray{N0f8}(0.0)  Gray{N0f8}(0.0)
Gray{N0f8}(0.0)  Gray{N0f8}(0.0)     Gray{N0f8}(0.0)  Gray{N0f8}(0.0)
Gray{N0f8}(0.0)  Gray{N0f8}(0.0)  …  Gray{N0f8}(0.0)  Gray{N0f8}(0.0)
Gray{N0f8}(0.0)  Gray{N0f8}(0.0)     Gray{N0f8}(0.0)  Gray{N0f8}(0.0)
Gray{N0f8}(0.0)  Gray{N0f8}(0.0)     Gray{N0f8}(0.0)  Gray{N0f8}(0.0)
Gray{N0f8}(0.0)  Gray{N0f8}(0.0)     Gray{N0f8}(0.0)  Gray{N0f8}(0.0)
Gray{N0f8}(0.0)  Gray{N0f8}(0.0)     Gray{N0f8}(0.0)  Gray{N0f8}(0.0)
Gray{N0f8}(0.0)  Gray{N0f8}(0.0)  …  Gray{N0f8}(0.0)  Gray{N0f8}(0.0)
Gray{N0f8}(0.0)  Gray{N0f8}(0.0)     Gray{N0f8}(0.0)  Gray{N0f8}(0.0)
Gray{N0f8}(0.0)  Gray{N0f8}(0.0)     Gray{N0f8}(0.0)  Gray{N0f8}(0.0)
Gray{N0f8}(0.0)  Gray{N0f8}(0.0)     Gray{N0f8}(0.0)  Gray{N0f8}(0.0)
Gray{N0f8}(0.0)  Gray{N0f8}(0.0)     Gray{N0f8}(0.0)  Gray{N0f8}(0.0)
Gray{N0f8}(0.0)  Gray{N0f8}(0.0)  …  Gray{N0f8}(0.0)  Gray{N0f8}(0.0)
Gray{N0f8}(0.0)  Gray{N0f8}(0.0)     Gray{N0f8}(0.0)  Gray{N0f8}(0.0)
Gray{N0f8}(0.0)  Gray{N0f8}(0.0)     Gray{N0f8}(0.0)  Gray{N0f8}(0.0)
Gray{N0f8}(0.0)  Gray{N0f8}(0.0)     Gray{N0f8}(0.0)  Gray{N0f8}(0.0)
Gray{N0f8}(0.0)  Gray{N0f8}(0.0)     Gray{N0f8}(0.0)  Gray{N0f8}(0.0)
Gray{N0f8}(0.0)  Gray{N0f8}(0.0)  …  Gray{N0f8}(0.0)  Gray{N0f8}(0.0)
Gray{N0f8}(0.0)  Gray{N0f8}(0.0)     Gray{N0f8}(0.0)  Gray{N0f8}(0.0)
Gray{N0f8}(0.0)  Gray{N0f8}(0.0)     Gray{N0f8}(0.0)  Gray{N0f8}(0.0)
Gray{N0f8}(0.0)  Gray{N0f8}(0.0)     Gray{N0f8}(0.0)  Gray{N0f8}(0.0)
Gray{N0f8}(0.0)  Gray{N0f8}(0.0)     Gray{N0f8}(0.0)  Gray{N0f8}(0.0)
Gray{N0f8}(0.0)  Gray{N0f8}(0.0)  …  Gray{N0f8}(0.0)  Gray{N0f8}(0.0)
Gray{N0f8}(0.0)  Gray{N0f8}(0.0)     Gray{N0f8}(0.0)  Gray{N0f8}(0.0)
Gray{N0f8}(0.0)  Gray{N0f8}(0.0)     Gray{N0f8}(0.0)  Gray{N0f8}(0.0)
```
Each of these arrays represents one training image and is made of {{%b%}}28x28{{%/b%}} values of the gray scale of each pixel of the image

---

{{<i>}}
```julia
img[1][1, 1]
```
{{<o>}}
```julia
Gray{N0f8}(0.0)
```
This is the value of the top left pixel of the first image of the training dataset
<br>

{{%fragment%}}
{{<i>}}
```julia
float(img[1][1, 1])
```
{{<o>}}
```julia
0.0
```
It can be converted to a float
{{%/fragment%}}

---

Let's see what a few of these images look like:
{{<i>}}
```julia
using Plots
plot(plot(img[5]), plot(img[8]), plot(img[87]), plot(img[203]))
```
{{<o>}}
{{<imgshadow src="/img/ml/digit.png" title="" width="40%" line-height="0.5rem">}}
{{</imgshadow>}}

---

##### <center>What does the **label** data look like?</center>

{{<i>}}
```julia
typeof(lab)
```
{{<o>}}
```julia
Array{Int64,1}
```

{{<i>}}
```julia
length(lab)
```
{{<o>}}
```julia
60000
```
{{%c%}}lab{{%/c%}} is a one-dimensional array of 60,000 integers

---

{{<i>}}
```julia
lab[1]
```
{{<o>}}
```julia
5
```
<br>
This is the value of the first label

---

The 5<sup>th</sup>, 8<sup>th</sup>, 87<sup>th</sup>, and 203<sup>rd</sup> images were:
{{<imgshadow src="/img/ml/digit.png" title="" width="20%" line-height="0.5rem">}}
{{</imgshadow>}}

{{%fragment%}}
Here are the corresponding labels:
{{<i>}}
```julia
[lab[5], lab[8], lab[87], lab[203]]'
```
{{<o>}}
```julia
1×4 LinearAlgebra.Adjoint{Int64,Array{Int64,1}}:
 9  3  3  8
```
{{%/fragment%}}

---

###### <center>onehotbatch</center>
<br><br>

{{%c%}}onehotbatch(){{%/c%}} turns a batch of labels into a binary matrix

<br>

{{%c%}}onecold(){{%/c%}} performs the inverse operation

---

###### <center>onehotbatch</center>

{{<i>}}
```julia
lab[1:3]
```
{{<o>}}
```julia
3-element Array{Int64,1}:
 5
 0
 4
```

---

###### <center>onehotbatch</center>

{{<i>}}
```julia
onehotbatch(lab[1:3], 0:9)
```
{{<o>}}
```julia
10×3 Flux.OneHotMatrix{Array{Flux.OneHotVector,1}}:
 0  1  0
 0  0  0
 0  0  0
 0  0  0
 0  0  1
 1  0  0
 0  0  0
 0  0  0
 0  0  0
 0  0  0
```

---

###### <center>onecold</center>

{{<i>}}
```julia
onecold(onehotbatch(lab[1:3], 0:9), 0:9)
```
{{<o>}}
```julia
3-element Array{Int64,1}:
 5
 0
 4
```

---

###### <center>Splatting</center>

Consider this simple example:
{{<i>}}
```julia
+(2, 3)
```
{{<o>}}
```julia
5
```
{{<i>}}
```julia
a = (2, 3);
+(a)
```

{{%fragment%}}
{{<o>}}
```julia
ERROR: MethodError: no method matching +(::Tuple{Int64,Int64})
```
{{%/fragment%}}

---

###### <center>Splatting</center>

Consider this simple example:
{{<i>}}
```julia
+(2, 3)
```
{{<o>}}
```julia
5
```
{{<i>}}
```julia
a = (2, 3);
+(a...)
```

{{%fragment%}}
{{<o>}}
```julia
5
```
{{%/fragment%}}

---

###### <center>Relu: rectifier activation function</center><br>

&emsp;&emsp;&emsp;&emsp;&emsp;\\(f(x) = max(0, x)\\)&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; In Flux: {{%c%}}relu(){{%/c%}}

{{<i>}}
```julia
x = -5:5; plot(x, relu.(x), legend = false)
```
{{<o>}}
{{<imgshadow src="/img/ml/relu.png" title="" width="50%" line-height="0.5rem">}}
{{</imgshadow>}}

---

###### <center>Softmax activation function</center><br>

\\[\sigma(\mathbf{z})\_i=\frac{e^{z\_i}}{\sum\_{j=1}^{K}e^{z\_j}}\\]

\\[\text{ for }i=1,...,K\text{ and }\mathbf{z}=(z\_1,...,z\_K)\in\mathbb{R}^K\\]

{{<si "1.3" "(\(\mathbb{R}\) represents the set of real numbers)">}}

<br>
<center>Normalizes a vector of real numbers</center>
into a vector of numbers between 0 and 1 which add to 1

---

###### <center>Softmax activation function</center><br>

<center>In Flux: {{%c%}}softmax(){{%/c%}}</center>
{{<i>}}
```julia
plot(softmax(-5.0:0.1:5.0))
```
{{<o>}}
{{<imgshadow src="/img/ml/softmax.png" title="" width="50%" line-height="0.5rem">}}
{{</imgshadow>}}

<!-- --- -->

<!-- {{%c%}}Dense(){{%/c%}} fully connected layer -->

<!-- --- -->

<!-- ## <center>Let's start building models</center> -->

<!-- --- -->

<!-- #### <center>Single-layer perceptron (SLP)</center> -->

<!-- Linearly separable patterns only -->

<!-- Building block of ANN -->

<!-- y = sigma w\_i*x\_i + b -->

<!-- x\_i input -->
<!-- w\_i weight -->
<!-- b bias -->
<!-- y output -->

<!-- Training: Peceptron Learning Rule (PLR) or Delta Rule -->

<!-- Theoretically, universal function approximator -->

<!-- Single layer: shallow neural network\\ -->
<!-- Multiple single layer: deep neural network -->

<!-- Training (weights and biases updated): backpropagation with gradient based optimization algorithms such as SGD, RMSProp, Adam -->

<!-- --- -->

<!-- #### <center>Convolutional neural network</center> -->

---

#### <center>Multi-layer perceptron from Model Zoo</center><br>

```julia
using Flux, Statistics
using Flux.Data: DataLoader
using Flux: onehotbatch, onecold, logitcrossentropy, throttle, @epochs
using Base.Iterators: repeated
using Parameters: @with_kw
# using CUDAapi
using MLDatasets
# if has_cuda()
#     @info "CUDA is on"
#     import CuArrays
#     CuArrays.allowscalar(false)
# end

@with_kw mutable struct Args
    η::Float64 = 3e-4       # learning rate
    batchsize::Int = 1024   # batch size
    epochs::Int = 10        # number of epochs
    device::Function = gpu  # set as gpu, if gpu available
end

function getdata(args)
    # Loading Dataset
    xtrain, ytrain = MLDatasets.MNIST.traindata(Float32)
    xtest, ytest = MLDatasets.MNIST.testdata(Float32)

    xtrain = Flux.flatten(xtrain)
    xtest = Flux.flatten(xtest)

    # One-hot-encode the labels
    ytrain, ytest = onehotbatch(ytrain, 0:9), onehotbatch(ytest, 0:9)

    # Batching
    train_data = DataLoader(xtrain, ytrain, batchsize=args.batchsize, shuffle=true)
    test_data = DataLoader(xtest, ytest, batchsize=args.batchsize)

    return train_data, test_data
end

function build_model(; imgsize=(28,28,1), nclasses=10)
    return Chain(
        Dense(prod(imgsize), 32, relu),
        Dense(32, nclasses))
end

function loss_all(dataloader, model)
    l = 0f0
    for (x,y) in dataloader
        l += logitcrossentropy(model(x), y)
    end
    l/length(dataloader)
end

function accuracy(data_loader, model)
    acc = 0
    for (x,y) in data_loader
        acc += sum(onecold(cpu(model(x))) .== onecold(cpu(y)))*1 / size(x,2)
    end
    acc/length(data_loader)
end

function train(; kws...)
    # Initializing Model parameters
    args = Args(; kws...)

    # Load Data
    train_data,test_data = getdata(args)

    # Construct model
    m = build_model()
    train_data = args.device.(train_data)
    test_data = args.device.(train_data)
    m = args.device(m)
    loss(x,y) = logitcrossentropy(m(x), y)

    ## Training
    evalcb = () -> @show(loss_all(train_data, m))
    opt = ADAM(args.η)

    @epochs args.epochs Flux.train!(loss, params(m), train_data, opt, cb = evalcb)

    @show accuracy(train_data, m)

    @show accuracy(test_data, m)
end

cd(@__DIR__)
train()
```

---

#### <center>CNN from Model Zoo</center><br>

```julia
using Flux, Flux.Data.MNIST, Statistics
using Flux: onehotbatch, onecold, logitcrossentropy
using Base.Iterators: partition
using Printf, BSON
using Parameters: @with_kw
# using CUDAapi
# if has_cuda()
#     @info "CUDA is on"
#     import CuArrays
#     CuArrays.allowscalar(false)
# end

@with_kw mutable struct Args
    lr::Float64 = 3e-3
    epochs::Int = 20
    batch_size = 128
    savepath::String = "./"
end

# Bundle images together with labels and group into minibatchess
function make_minibatch(X, Y, idxs)
    X_batch = Array{Float32}(undef, size(X[1])..., 1, length(idxs))
    for i in 1:length(idxs)
        X_batch[:, :, :, i] = Float32.(X[idxs[i]])
    end
    Y_batch = onehotbatch(Y[idxs], 0:9)
    return (X_batch, Y_batch)
end

function get_processed_data(args)
    # Load labels and images from Flux.Data.MNIST
    train_labels = MNIST.labels()
    train_imgs = MNIST.images()
    mb_idxs = partition(1:length(train_imgs), args.batch_size)
    train_set = [make_minibatch(train_imgs, train_labels, i) for i in mb_idxs]
    # Prepare test set as one giant minibatch:
    test_imgs = MNIST.images(:test)
    test_labels = MNIST.labels(:test)
    test_set = make_minibatch(test_imgs, test_labels, 1:length(test_imgs))
    return train_set, test_set
end

# Build model
function build_model(args; imgsize = (28,28,1), nclasses = 10)
    cnn_output_size = Int.(floor.([imgsize[1]/8,imgsize[2]/8,32]))
    return Chain(
        # First convolution, operating upon a 28x28 image
        Conv((3, 3), imgsize[3]=>16, pad=(1,1), relu),
        MaxPool((2,2)),
        # Second convolution, operating upon a 14x14 image
        Conv((3, 3), 16=>32, pad=(1,1), relu),
        MaxPool((2,2)),
        # Third convolution, operating upon a 7x7 image
        Conv((3, 3), 32=>32, pad=(1,1), relu),
        MaxPool((2,2)),
        # Reshape 3d tensor into a 2d one using `Flux.flatten`, at this point it should be (3, 3, 32, N)
        flatten,
        Dense(prod(cnn_output_size), 10))
end

# Augment `x` a little, adding in random noise
augment(x) = x .+ gpu(0.1f0*randn(eltype(x), size(x)))

# Return a vector of all parameters used in model
paramvec(m) = vcat(map(p->reshape(p, :), params(m))...)

# Function to check if any element is NaN or not
anynan(x) = any(isnan.(x))

accuracy(x, y, model) = mean(onecold(cpu(model(x))) .== onecold(cpu(y)))

function train(; kws...)
    args = Args(; kws...)
    @info("Loading data set")
    train_set, test_set = get_processed_data(args)
    # Define our model.  We will use a simple convolutional architecture with
    # three iterations of Conv -> ReLU -> MaxPool, followed by a final Dense layer.
    @info("Building model...")
    model = build_model(args)
    # Load model and datasets onto GPU, if enabled
    train_set = gpu.(train_set)
    test_set = gpu.(test_set)
    model = gpu(model)
    # Make sure our model is nicely precompiled before starting our training loop
    model(train_set[1][1])
    # `loss()` calculates the crossentropy loss between our prediction `y_hat`
    # (calculated from `model(x)`) and the ground truth `y`.  We augment the data
    # a bit, adding gaussian random noise to our image to make it more robust.
    function loss(x, y)
        x̂ = augment(x)
        ŷ = model(x̂)
        return logitcrossentropy(ŷ, y)
    end
    # Train our model with the given training set using the ADAM optimizer and
    # printing out performance against the test set as we go.
    opt = ADAM(args.lr)
    @info("Beginning training loop...")
    best_acc = 0.0
    last_improvement = 0
    for epoch_idx in 1:args.epochs
        # Train for a single epoch
        Flux.train!(loss, params(model), train_set, opt)
        # Terminate on NaN
        if anynan(paramvec(model))
            @error "NaN params"
            break
        end
        # Calculate accuracy:
        acc = accuracy(test_set..., model)
        @info(@sprintf("[%d]: Test accuracy: %.4f", epoch_idx, acc))
        # If our accuracy is good enough, quit out.
        if acc >= 0.999
            @info(" -> Early-exiting: We reached our target accuracy of 99.9%")
            break
        end
        # If this is the best accuracy we've seen so far, save the model out
        if acc >= best_acc
            @info(" -> New best accuracy! Saving model out to mnist_conv.bson")
            BSON.@save joinpath(args.savepath, "mnist_conv.bson") params=cpu.(params(model)) epoch_idx acc
            best_acc = acc
            last_improvement = epoch_idx
        end
        # If we haven't seen improvement in 5 epochs, drop our learning rate:
        if epoch_idx - last_improvement >= 5 && opt.eta > 1e-6
            opt.eta /= 10.0
            @warn(" -> Haven't improved in a while, dropping learning rate to $(opt.eta)!")
            # After dropping learning rate, give it a few epochs to improve
            last_improvement = epoch_idx
        end
        if epoch_idx - last_improvement >= 10
            @warn(" -> We're calling this converged.")
            break
        end
    end
end

# Testing the model, from saved model
function test(; kws...)
    args = Args(; kws...)
    # Loading the test data
    _,test_set = get_processed_data(args)
    # Re-constructing the model with random initial weights
    model = build_model(args)
    # Loading the saved parameters
    BSON.@load joinpath(args.savepath, "mnist_conv.bson") params
    # Loading parameters onto the model
    Flux.loadparams!(model, params)
    test_set = gpu.(test_set)
    model = gpu(model)
    @show accuracy(test_set...,model)
end

cd(@__DIR__)
train()
test()
```

---

#### <center>Saving models</center>
<br>

<center>[BSON.jl](https://github.com/JuliaIO/BSON.jl) allows to save models in [Binary JSON](http://bsonspec.org/) format</center>

---

#### <center>Transfer learning (TL)</center>
<br>
<center>Instead of random initialization,</center>
start from model trained on related problem for weight initialization

<center>→ Allows to get good results on small datasets</center>

<br>
[ONNX.jl](https://github.com/FluxML/ONNX.jl) allows to read pre-trained models from [ONNX format](https://onnx.ai/) to Flux.

---

#### <center>GPU support</center>
<br>

[CuArrays.jl](https://github.com/JuliaGPU/CuArrays.jl) provides GPU functionality to Flux

{{<i>}}
```julia
using CuArrays
```
<br>
The function {{%c%}}gpu(){{%/c%}} converts the parameters and moves data to the GPU\\
Code can for instance be piped into it:
{{<i>}}
```julia
<some code> |> gpu
```

<br>
The function {{%c%}}cpu(){{%/c%}} converts the parameters and moves data back to the CPU

<!-- --- -->

<!-- #### <center>Useful links</center> -->
<!-- <br> -->

---

<img src="/img/ml/flux_icon.png" style="position: absolute; top: 22%; left: 51.2%; width: 4.5%;">

## <center style="font-size: 5.0rem; font-variant: small-caps">Questions?</center>
