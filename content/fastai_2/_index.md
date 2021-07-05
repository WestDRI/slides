+++
title = "architectures"
outputs = ["Reveal"]
[logowgnofront]
src = "/img/wg_for_dark_bg.png"
[backlink]
href = "https://westgrid-ml.netlify.app/2021_modules/04_architectures/"
txt = "Back to Webinar Page"
[reveal_hugo]
custom_theme = "mh6.scss"
custom_theme_compile = true
+++

#### <div style="line-height: 3.2rem; font-size: 4.3rem; color: #c98749">Types of learning</div>{{<br size="5">}}
#### <div style="line-height: 3.2rem; font-size: 4.3rem; color: #c98749">&ensp;&emsp;&emsp;&ensp;Model architectures</div>{{<br size="5">}}
#### <div style="line-height: 3.2rem; font-size: 4.3rem; color: #c98749">&ensp;&emsp;&emsp;&ensp;&emsp;&emsp;&ensp;Scaling things up</div>{{<br size="5">}}

{{<imgright src="/img/wg_for_dark_bg.png" title="" width="35%" line-height="rem">}}
{{</imgright>}}

---

# <center>Types of learning</center>

---

## <center>Supervised learning</center>
{{%fragment%}}
<br>
Training set of example input/output \\((x\_i, y\_i)\\) pairs
{{%/fragment%}}

{{%fragment%}}
<br>
*Goal:*

If \\(X\\) is the space of inputs and \\(Y\\) the space of outputs, find a function \\(h\\) so that
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

## <center>Unsupervised learning</center>
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

# <center>Learning process</center>

---

## <center>Bias</center>
<br>

<center>Allows to {{<a "https://stackoverflow.com/q/2480650/9210961" "shift the output of the activation function to the right or to the left">}}</center>
→ Offset

---

## <center>Gradient descent</center>

{{<img src="https://upload.wikimedia.org/wikipedia/commons/f/ff/Gradient_descent.svg" title="" width="100%" line-height="0.5rem">}}
From <a href="https://commons.wikimedia.org/w/index.php?curid=20569355">Olegalexandrov & Zerodamage, Wikipedia</a>
{{</img>}}
<br>
<center>Iterative optimization method</center>
Adjust the weights and biases

---

### <center>Batch gradient descent</center>
<br>

Use all examples in each iteration

<br>
*Slow for large data set:* \\
Parameters adjusted only after all the samples have been through

---

### <center>Stochastic gradient descent</center>
<br>

Use one example in each iteration

<br>
*Much faster than batch gradient descent:* \\
Parameters are adjusted after each example

<br>
But no vectorization

---

### <center>Mini-batch gradient descent</center>
<br>

*Intermediate approach:* \\
Use mini-batch size examples in each iteration

<br>
Allows a vectorized approach that stochastic gradient descent did not allow\\
→ parallelization

<br>
Variation: {{<a "https://arxiv.org/abs/1412.6980" "Adam optimization algorithm">}}

---

### <center>Major pitfall: over-fitting</center>
<br>
{{<img src="/img/ml/overfitting.png" margin="rem" title="" width="40%" line-height="0.5rem">}}
From <a href="https://commons.wikimedia.org/w/index.php?curid=3610704">Chabacano, Wikipedia</a>
{{</img>}}

Some noise from the data extracted by the model while it does not represent general meaningful structure and has no predictive power

---

### <center>Major pitfall: over-fitting</center>
{{<br size="5">}}

##### - Training too long
{{<br size="3">}}

##### - Training without enough data
{{<br size="3">}}

##### - Too many parameters

---

### <center>Overfitting: solutions</center><br>

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

---

# <center>Architectures</center>

---

## <center>Fully-connected feedforward single-layer</center>
{{<br size="2">}}

{{<imgb src="/img/ml/nn_1layer.png" bg="#e6e6e6" title="" width="%" line-height="3rem">}}
From <a href="http://neuralnetworksanddeeplearning.com/chap5.html" target="_blank">"Neural Networks and Deep Learning" free online book, Chapter 5</a>
{{</imgb>}}
<br>
<br>

{{%fragment%}}
<center>Each neuron receives input from every element of the previous layer</center>
{{%/fragment%}}

---

## <center>Fully-connected feedforward deep NN</center>
{{<br size="2">}}

{{<imgb src="/img/ml/nn_3layers.png" bg="#e6e6e6" title="" width="%" line-height="3rem">}}
From <a href="http://neuralnetworksanddeeplearning.com/chap5.html" target="_blank">"Neural Networks and Deep Learning" free online book, Chapter 5</a>
{{</imgb>}}
<br>
<br>

{{%fragment%}}
<center>Data with large input sizes (e.g. images) require a huge number of neurons</center>
{{%/fragment%}}

---

## <center>Convolutional neural network (CNN)</center>
{{<br size="0.5">}}

{{<imgb src="/img/ml/cnn_nw.png" bg="#e6e6e6" title="" width="80%" line-height="2rem">}}
From <a href="https://codetolight.wordpress.com/2017/11/29/getting-started-with-pytorch-for-deep-learning-part-3-neural-network-basics/" target="_blank">Programming Journeys by Rensu Theart</a>
{{</imgb>}}

{{<br size="0.5">}}

{{%fragment%}}
<span style="color: #e3731d; font-weight: 500; font-size: 1.4rem; font-family: 'Montserrat';">Used for spatially structured data (e.g. image recognition)</span>
{{<br size="0.5">}}
{{%/fragment%}}

{{%fragment%}}
**Convolution layers** &nbsp;&nbsp;→ &nbsp; Each neuron receives input only from a subarea (*local receptive field*) of the previous layer.
{{<br size="1">}}
{{%/fragment%}}

{{%fragment%}}
**Pooling** &nbsp;&nbsp;→ &nbsp; Combines the outputs of neurons in a subarea to reduce the data dimensions. The *stride* dictates how the subarea is moved across the image (e.g. max-pooling uses the maximum for each subarea).
{{%/fragment%}}

---

## <center>Convolutional neural network (CNN)</center>
{{<br size="0.5">}}

{{<imgb src="/img/ml/cnn_nw.png" bg="#e6e6e6" title="" width="80%" line-height="2rem">}}
From <a href="https://codetolight.wordpress.com/2017/11/29/getting-started-with-pytorch-for-deep-learning-part-3-neural-network-basics/" target="_blank">Programming Journeys by Rensu Theart</a>
{{</imgb>}}

{{<br size="6">}}

<center>&nbsp;→ &nbsp; <em>Not fully connected</em></center>

{{<br size="8">}}

---

## <center>Recurrent neural network (RNN)</center>
{{<br size="1.8">}}

{{<imgb src="https://upload.wikimedia.org/wikipedia/commons/b/b5/Recurrent_neural_network_unfold.svg" bg="#e6e6e6" title="" width="%" line-height="2.5rem">}}
From <a href="https://commons.wikimedia.org/w/index.php?curid=1474927" target="_blank">fdeloche, Wikipedia</a>
{{</imgb>}}

{{<br size="1.3">}}

{{%fragment%}}
<span style="color: #e3731d; font-weight: 500; font-size: 1.4rem; font-family: 'Montserrat';">Used for chain structured data (e.g. text)</span>
{{%/fragment%}}

{{<br size="0.5">}}

---

## <center>Recurrent neural network (RNN)</center>
{{<br size="1.8">}}

{{<imgb src="https://upload.wikimedia.org/wikipedia/commons/b/b5/Recurrent_neural_network_unfold.svg" bg="#e6e6e6" title="" width="%" line-height="2.5rem">}}
From <a href="https://commons.wikimedia.org/w/index.php?curid=1474927" target="_blank">fdeloche, Wikipedia</a>
{{</imgb>}}

{{<br size="2">}}

<center>&nbsp;→ &nbsp; <em>Not feedforward</em></center>

{{<br size="1">}}

---

## <center>Transformers</center>
{{<br size="1">}}

{{<imgb src="/img/ml/transformer_nw.png" bg="#e6e6e6" title="" width="35%" line-height="2.5rem">}}
From <a href="https://arxiv.org/abs/1706.03762">Vaswani et al., 2017, arXiv:1706.03762</a>
{{</imgb>}}

---

# <center>Scaling up</center>

---




---

# <center>Implementations</center>

---

## <center>ML libraries</center>

*Most popular:*

- {{<a "https://pytorch.org/" "PyTorch">}}, developed by Facebook's AI Research lab\\
- {{<a "https://www.tensorflow.org/" "TensorFlow">}}, developed by the Google Brain Team

Both most often used through their Python interfaces<br><br>

Julia's syntax is well suited for the implementation of mathematical models\\
GPU kernels can be written directly in Julia\\
Julia's speed is attractive in computation hungry fields

→ Julia has seen the development of many ML packages


---

# <center><span style="font-size: 5.0rem">Questions?</span></center>
