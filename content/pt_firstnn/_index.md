+++
title = "pt_firstnn"
outputs = ["Reveal"]
[logowg]
src = "/img/wg_white_removed_medium.png"
[logopt]
src = "/img/ml/pt_icon.svg"
[reveal_hugo]
custom_theme = "mh.scss"
custom_theme_compile = true
+++

<br>
<br>
# Our first neural network <br>with <span style="vertical-align: middle"><img src="/img/ml/pt_icon.svg" alt="" height="" width="100"></span> PyTorch
<br>
##### WestGrid Summer School
###### Marie-Hélène Burle
<br>
<center><div style="font-size: 1.2rem"><a href="https://westgrid-ml.netlify.app/schoolremake/pt-14-firstnn">Back to the course page &nbsp;<i class="fas fa-level-up-alt"></i></a></div></center>

---

## PyTorch's packages
<br>

PyTorch comes with several packages that make working with neural nets easy.<br><br>

In the previous lesson, we learnt about `torch.autograd` which allows automatic calculation of gradients during backprop.<br><br>

This lesson introduces `torch.nn` and `torch.optim`.

---

## torch.nn.functional
<br>

The `torch.nn.functional` module contains all the functions of the `torch.nn` package. By convention, it is imported as `F`:
<br>
<br>
```python
import torch.nn.functional as F
```

<br>
These functions include loss functions, activation functions, pooling functions ... i.e. all the functions that are used in the building and training of a neural net.

---

### Loss functions
<br>

In our previous lesson, we calculated a loss function manually with:
<br>
<br>
```python
loss = (predicted - real).pow(2).sum()
```

---

### Loss functions
<br>

Within `torch.nn.functional`, you can select from a large range of loss functions:

- `binary_cross_entropy` to calculate the binary cross entropy between the target and the output
- `binary_cross_entropy_with_logits` to calculate the binary cross entropy between target and output logits
- `poisson_nll_loss` for Poisson negative log likelihood loss
- ...

Go to [the documentation](https://pytorch.org/docs/stable/nn.functional.html#loss-functions) for a full list.

---

### Loss functions
<br>

*Example:*
<br>
<br>
If we want to use the negative log likelihood loss function, we can run:
<br>
<br>
```python
loss = F.nll_loss(predicted, real)
```

---

### Activation functions
<br>

As mentioned earlier, `torch.nn.functional` also has activation functions.
<br><br>
*Examples:*
<br><br>
[ReLU](https://en.wikipedia.org/wiki/Rectifier_(neural_networks)) can be called with `torch.nn.functional.relu()`<br>
[Softmax](https://en.wikipedia.org/wiki/Softmax_function) with `torch.nn.functional.softmax()`

---

## torch.nn.Module
<br>

`torch.nn.Module` is the base class for all neural net modules.



---

## Our first NN to classify the MNIST

Let's start with the simplest possible neural net: a [multilayer perceptron (MLP)](https://en.wikipedia.org/wiki/Multilayer_perceptron).<br><br>
It is a feed-forward (i.e. no loop), fully-connected (i.e. each neuron of one layer is connected to all the neurons of the adjacent layers) neural network with a single hidden layer.

{{<img src="/img/ml/mlp_nw.png" title="" width="50%" line-height="0.5rem">}}
{{</img>}}

---

## 
<br>

```python
class Net(nn.Module):
    def __init__(self):
        super(Net, self).__init__()
        self.fc1 = nn.Linear(784, 128)
        self.fc2 = nn.Linear(128, 10)
```
---

<img src="/img/ml/pt_icon.svg" style="position: absolute; top: 18%; left: 52.1%; width: 2.5%;">

# <span style="font-size: 5.0rem; font-variant: small-caps">Questions?</span>
