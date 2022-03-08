import torch
from torchvision import datasets, transforms
from matplotlib import pyplot as plt

# To run on GPU, replace 'cpu' by 'cuda'
device = torch.device('cpu')
dtype = torch.float
epochs = 30

# * Prepare data

train = datasets.MNIST(
    './data',
    # '~/projects/def-sponsor00/data',
    train = True,
    download = True,
    transform = transforms.Compose([
        transforms.ToTensor(),
        transforms.Normalize((0.1307,), (0.3081,))]))

test = datasets.MNIST(
    './data',
    # '~/projects/def-sponsor00/data',
    train = False,
    download = False,
    transform = transforms.Compose([
        transforms.ToTensor(),
        transforms.Normalize((0.1307,), (0.3081,))]))

# N is batch size; D_in is input dimension;
# H is hidden dimension; D_out is output dimension.
N, D_in, H, D_out = 60000, 784, 100, 10

x = train.data.view(60000, 784).type(dtype)
y = train.targets.unsqueeze(1).expand(60000, 10).type(dtype)

# Randomly initialize weights
w1 = torch.randn(D_in, H, device = device, dtype = dtype)
w2 = torch.randn(H, D_out, device = device, dtype = dtype)

learning_rate = 1e-6
for epoch in range(epochs):
    # Forward pass: compute predicted y
    h = x.mm(w1)
    h_relu = h.clamp(min=0)
    y_pred = h_relu.mm(w2)

    # Compute and print loss
    loss = (y_pred - y).pow(2).sum().item()
    print(epoch, loss)

    # Backprop to compute gradients of w1 and w2 with respect to loss
    grad_y_pred = 2.0 * (y_pred - y)
    grad_w2 = h_relu.t().mm(grad_y_pred)
    grad_h_relu = grad_y_pred.mm(w2.t())
    grad_h = grad_h_relu.clone()
    grad_h[h < 0] = 0
    grad_w1 = x.t().mm(grad_h)

    # Update weights using gradient descent
    w1 -= learning_rate * grad_w1
    w2 -= learning_rate * grad_w2
