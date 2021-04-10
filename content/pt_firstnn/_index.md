+++
title = "pt_firstnn"
outputs = ["Reveal"]
[logowg]
src = "/img/wg_white_removed_medium.png"
[logopt]
src = "/img/ml/pt_icon.svg"
[backlink]
href = "https://westgrid-ml.netlify.app/summerschool2020remake/pt-14-firstnn/"
txt = "Back to Course Page"
[reveal_hugo]
custom_theme = "mh2.scss"
custom_theme_compile = true
+++

<br>
<br>
# Our first neural network <br>with <span style="vertical-align: middle"><img src="/img/ml/pt_icon.svg" alt="" height="" width="100"></span> PyTorch

##### WestGrid Summer School
###### Marie-Hélène Burle

---

# PyTorch's packages
<br>

PyTorch comes with several packages that make working with neural nets easy.<br><br>

In the previous lesson, we learnt about `torch.autograd` which allows automatic calculation of gradients during backpropagation.<br><br>

This lesson introduces `torch.nn` and `torch.optim`. They are often imported with:<br>
<br>
```python
import torch.nn as nn
import torch.optim as optim
```

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
These functions include loss functions, activation functions, pooling functions ... i.e. all the functions that are used in the building and training of a neural net. Since `torch.autograd` can be used on any callable object, you can also create and use your own functions.

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
- `poisson_nll_loss` for Poisson negative log likelihood loss <br>
...

Go to {{<a "https://pytorch.org/docs/stable/nn.functional.html#loss-functions" "the documentation">}} for a full list.

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
{{<a "https://en.wikipedia.org/wiki/Rectifier_(neural_networks)" "ReLU">}} can be called with `torch.nn.functional.relu()`<br>
{{<a "https://en.wikipedia.org/wiki/Softmax_function" "Softmax">}} with `torch.nn.functional.softmax()`

---

## torch.nn.Module
<br>

`torch.nn.Module` is the base class for all neural network modules. To build your model, you create a subclass of `torch.nn.Module`:<br>
<br>
```python
class Net(nn.Module):
	def __init__(self):
		super(Net, self).__init__()
```
<br>
Python's class inheritance gives our subclass all the functionality of `torch.nn.Module` while allowing us to customize it.

---

## torch.nn.Module
<br>
Then, you can create submodules and assign them as attributes:<br>
<br>
```python
class Net(nn.Module):
	def __init__(self):
		super(Net, self).__init__()
		self.fc1 = nn.Linear(784, 128)
		self.fc2 = nn.Linear(128, 10)
```
<br>
If this Python syntax is obscure to you, you should have a look at {{<a "https://stackoverflow.com/q/625083/9210961" "the answers to this question">}}, as well as {{<a "https://stackoverflow.com/a/8609238/9210961" "this answer to a similar question">}}.

---

## torch.nn.Module

Finally, you define the method for the forward pass in your subclass of `torch.nn.Module`:<br>

```python
class Net(nn.Module):
	def __init__(self):
		super(Net, self).__init__()
		self.fc1 = nn.Linear(784, 128)
		self.fc2 = nn.Linear(128, 10)

	def forward(self, x):
		x = torch.flatten(x, 1)
		x = self.fc1(x)
		x = F.relu(x)
		x = self.fc2(x)
		output = F.log_softmax(x, dim=1)
		return output
```

---

## torch.nn.Module
<br>

Now, we have our network architecture, so we can create an instance of it:
<br>
```python
model = Net()
```
<br>
Even better, we can send it to our device of choice (CPU or GPU):
<br>
```python
model = Net().to(device)
```

---

## torch.optim
<br>
The package `torch.optim` contains classic optimization algorithms such as `optim.SGD()`, `optim.Adam()`, or `optim.Adadelta()`.
<br>
<br>
To use them, you define an optimizer with one such algorithms:

```python
optimizer = optim.Adadelta(model.parameters(), lr=1.0)
```
<br>
Then use:

```python
optimizer.zero_grad()  # resets the gradient to 0
optimizer.step()
```

---

# Let's try to build a NN <br> to classify the MNIST

---

# Our script

`ssh` into the training cluster:

```sh
ssh userxxx@uu.c3.ca
```
<br>
Create a directory for this project and `cd` into it:

```sh
mkdir mnist; cd mnist
```
<br>
Start a first Python script:

```sh
nano mlp.py   # use the text editor of your choice
```

---

## Let's start with an MLP

Let's start with the simplest possible neural net: a {{<a "https://en.wikipedia.org/wiki/Multilayer_perceptron" "multilayer perceptron (MLP)">}}.<br><br>
It is a feed-forward (i.e. no loop), fully-connected (i.e. each neuron of one layer is connected to all the neurons of the adjacent layers) neural network with a single hidden layer.

{{<img src="/img/ml/mlp_nw.png" title="" width="50%" line-height="0.5rem">}}
{{</img>}}

---

### Load all the modules we need
<br>

```python
import torch
import torch.nn as nn
import torch.nn.functional as F
import torch.optim as optim
from torchvision import datasets, transforms
from torch.optim.lr_scheduler import StepLR
```

---

## Our model

```python
class Net(nn.Module):
	def __init__(self):
		super(Net, self).__init__()
		self.fc1 = nn.Linear(784, 128)
		self.fc2 = nn.Linear(128, 10)

	def forward(self, x):
		x = torch.flatten(x, 1)
		x = self.fc1(x)
		x = F.relu(x)
		x = self.fc2(x)
		output = F.log_softmax(x, dim=1)
		return output
```

---

## Our training function

```python
def train(model, device, train_loader, optimizer, epoch):
    model.train()
    for batch_idx, (data, target) in enumerate(train_loader):
        data, target = data.to(device), target.to(device)
        optimizer.zero_grad()
        output = model(data)
        loss = F.nll_loss(output, target)
        loss.backward()
        optimizer.step()
        if batch_idx % 10 == 0:
            print('Train Epoch: {} [{}/{} ({:.0f}%)]\tLoss: {:.6f}'.format(
                epoch, batch_idx * len(data), len(train_loader.dataset),
                100. * batch_idx / len(train_loader), loss.item()))
```

---

## Our testing function

```python
def test(model, device, test_loader):
    model.eval()
    test_loss = 0
    correct = 0
    with torch.no_grad():
        for data, target in test_loader:
            data, target = data.to(device), target.to(device)
            output = model(data)
            test_loss += F.nll_loss(output, target, reduction='sum').item()  # sum up batch loss
            pred = output.argmax(dim=1, keepdim=True)  # get the index of the max log-probability
            correct += pred.eq(target.view_as(pred)).sum().item()

    test_loss /= len(test_loader.dataset)

    print('\nTest set: Average loss: {:.4f}, Accuracy: {}/{} ({:.0f}%)\n'.format(
        test_loss, correct, len(test_loader.dataset),
        100. * correct / len(test_loader.dataset)))
```

---

## Our training settings

```python
def main():
    epochs = 3
    torch.manual_seed(1)
    device = torch.device('cpu')

    transform = transforms.Compose([
        transforms.ToTensor(),
        transforms.Normalize((0.1307,), (0.3081,))
    ])

    train_data = datasets.MNIST(
        '~/projects/def-sponsor00/data',
        train=True, download=True, transform=transform)

    test_data = datasets.MNIST(
        '~/projects/def-sponsor00/data',
        train=False, transform=transform)

    train_loader = torch.utils.data.DataLoader(train_data, batch_size=64)
    test_loader = torch.utils.data.DataLoader(test_data, batch_size=1000)
    model = Net().to(device)
    optimizer = optim.Adadelta(model.parameters(), lr=1.0)
    scheduler = StepLR(optimizer, step_size=1, gamma=0.7)

    for epoch in range(1, epochs + 1):
        train(model, device, train_loader, optimizer, epoch)
        test(model, device, test_loader)
        scheduler.step()
```

---

## Our training settings
<br>
We will only run our model over 3 epochs to save time. Obviously, you normally would run it much longer.

We are using CPUs.

We will use the {{<a "https://arxiv.org/abs/1212.5701" "Adadelta algorithm">}} as optimizer.

---

## Running the model
<br>
Finally, we run the whole model by running `main()`:<br>
<br>
```python
main()
```

---

# Let's try our script
<br>

<center>Now is the time to submit our script to Slurm to test it!</center>

---

## Slurm script

Write an `mlp.sh` script:

```sh
#!/bin/bash
#SBATCH --time=0:5:0
#SBATCH --cpus-per-task=1
#SBATCH --mem=3G
#SBATCH --output=%x_%j.out
#SBATCH --error=%x_%j.err

# Activate your virtual env
source ~/env/bin/activate

# Run your Python script
python ~/mnist/mlp.py
```

---

## Submit the job to Slurm
<br>
```sh
sbatch mlp.sh
```
<br>
Monitor its status with:
<br>
```sh
sq
```

---

## On to a CNN

Let's step this up and build a CNN. Convolutional Neural Networks are particularly well-suited to image data.
<br><br>
The figure below is not an exact scheme of the model we will build, but it represents a similar model made of convolution, pooling, and fully-connected layers.

{{<img src="/img/ml/cnn_nw.png" title="" width="80%" line-height="0rem">}}
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;From <a href="https://codetolight.wordpress.com/2017/11/29/getting-started-with-pytorch-for-deep-learning-part-3-neural-network-basics/" target="_blank">Programming Journeys by Rensu Theart</a>
{{</img>}}

---

## CNN script
<br>
Our new script will be very similar to `mlp.py`: we will only change the model architecture. So you can copy `mlp.py` and edit the copy:<br>
<br>
```sh
cp mlp.py cnn.py
nano cnn.py
```

---

## Our new model architecture

```python
class Net(nn.Module):
	def __init__(self):
		super(Net, self).__init__()
		self.conv1 = nn.Conv2d(1, 32, 3, 1)
		self.conv2 = nn.Conv2d(32, 64, 3, 1)
		self.dropout1 = nn.Dropout2d(0.25)
		self.dropout2 = nn.Dropout2d(0.5)
		self.fc1 = nn.Linear(9216, 128)
		self.fc2 = nn.Linear(128, 10)

	def forward(self, x):
		x = self.conv1(x)
		x = F.relu(x)
		x = self.conv2(x)
		x = F.relu(x)
		x = F.max_pool2d(x, 2)
		x = self.dropout1(x)
		x = torch.flatten(x, 1)
		x = self.fc1(x)
		x = F.relu(x)
		x = self.dropout2(x)
		x = self.fc2(x)
		output = F.log_softmax(x, dim=1)
		return output
```

---

## Slurm script

Write a `cnn.sh` script. We need more time here as a CNN will take longer to run.

```sh
#!/bin/bash
#SBATCH --time=0:15:0
#SBATCH --cpus-per-task=1
#SBATCH --mem=3G
#SBATCH --output=%x_%j.out
#SBATCH --error=%x_%j.err

# Activate your virtual env
source ~/env/bin/activate

# Run your Python script
python ~/mnist/cnn.py
```

---

## Submit the job to Slurm
<br>
```sh
sbatch cnn.sh
```
<br>
Monitor its status with:
<br>
```sh
sq
```

---

<img src="/img/ml/pt_icon.svg" style="position: absolute; top: 22%; left: 52.1%; width: 2.5%;">

# <span style="font-size: 5.0rem; font-variant: small-caps">Questions?</span>
