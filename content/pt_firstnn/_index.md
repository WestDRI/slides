+++
title = "pt_firstnn"
outputs = ["Reveal"]
[logowg]
src = "/img/wg_white_removed_medium.png"
[logopt]
src = "/img/ml/pytorch_icon.svg"
[reveal_hugo]
custom_theme = "mh.scss"
custom_theme_compile = true
+++

<br>
<br>
# Our first neural network <br>with <span style="vertical-align: middle"><img src="/img/ml/pytorch_icon.svg" alt="" height="" width="100"></span> PyTorch
<br>
##### WestGrid Summer School
###### Marie-Hélène Burle
<br>
<center><div style="font-size: 1.2rem"><a href="https://westgrid-ml.netlify.app/schoolremake/pt-14-firstnn">Back to the course page &nbsp;<i class="fas fa-level-up-alt"></i></a></div></center>

---

### PyTorch's packages
<br>

PyTorch comes with several packages that make working with neural nets easy.<br><br>

In the previous lesson, we learnt about `torch.autograd` which allows automatic calculation of gradients during backprop.<br><br>

This lesson introduces `torch.nn` and `torch.optim`.

---

### torch.nn.Module
<br>

`nn.Module` is the base class for all neural net modules.

---

### torch.nn.functional
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

- `F.binary_cross_entropy` to calculate the binary cross entropy between the target and the output
- `F.binary_cross_entropy_with_logits` to calculate the binary cross entropy between target and output logits
- `F.poisson_nll_loss` for Poisson negative log likelihood loss
- ...

Go to [the documentation](https://pytorch.org/docs/stable/nn.functional.html#loss-functions) for a full list.
