+++
title = "torchtensors"
outputs = ["Reveal"]
[logowgnofront]
src = "/img/wg_for_dark_bg.png"
[backlink]
href = "https://westgrid-ml.netlify.app/webinars/torchtensors/"
txt = "Back to Workshop Page"
[reveal_hugo]
custom_theme = "mh8.scss"
custom_theme_compile = true
+++

## <div style="line-height: 5rem; font-size: 3.5rem; color: #727274;">&emsp;Everything you wanted to know &emsp;&emsp;(and more) about</div>
{{<br size="3">}}

## <div style="line-height: 5rem; font-size: 4.2rem; color: #f6903c;">&emsp;&emsp;&emsp;&ensp;PyTorch tensors</div>
{{<br size="3">}}

#### <div style="line-height: 1.5rem; font-size: 2.3rem; text-align: right; color: #727274;"><br>Marie-Hélène Burle &emsp;&emsp;&emsp;&nbsp;</div>
##### <div style="line-height: 1.5rem; font-size: 1.8rem; text-align: right; color: #727274;">training@westgrid.ca &nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;</div>
##### <div style="line-height: 1.5rem; font-size: 1.8rem; text-align: right; color: #727274;">January 19, 2022 &nbsp;&ensp;&emsp;&emsp;&emsp;&emsp;&emsp;</div>
<figure style="display: table; margin: 0rem auto">
  <div class="row">
	<div class="column">
	 {{<img8 src="/img/wg_no_bg.png" title="" width="%" line-height="rem">}}
	 {{</img8>}}
	</div>
  </div>
</figure>

---

<center>All drawings in this webinar come from the book:</center>
{{<br size="3">}}

{{<img8 src="/img/torchtensors/book_cover.jpg" margin="rem" title="" width="45%" line-height="0.5rem">}}
{{</img8>}}

---

<center>The section on storage is also highly inspired by it</center>
{{<br size="3">}}

{{<img8 src="/img/torchtensors/book_cover.jpg" margin="rem" title="" width="45%" line-height="0.5rem">}}
{{</img8>}}

---

## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- What is a PyTorch tensor?</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Memory storage</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Data type (dtype)</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Basic operations</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Working with GPUs</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Working with NumPy ndarrays</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Distributed operations</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Linear algebra</div>

---

## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #e6e6e6">- What is a PyTorch tensor?</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Memory storage</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Data type (dtype)</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Basic operations</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Working with GPUs</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Working with NumPy ndarrays</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Distributed operations</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Linear algebra</div>

---

## <center><div style="font-size: 3rem; color: #e6e6e6">ANN do not process information directly</div></center>
{{<br size="2">}}

{{<img8 src="/img/torchtensors/ml1.png" margin="rem" title="" width="85%" line-height="2.2rem">}}
Modified from Stevens, E., Antiga, L., & Viehmann, T. (2020). Deep learning with PyTorch. Manning Publications
{{</img8>}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6">It needs to be converted to numbers</div></center>
{{<br size="2">}}

{{<img8 src="/img/torchtensors/ml2.png" margin="rem" title="" width="85%" line-height="2.2rem">}}
Modified from Stevens, E., Antiga, L., & Viehmann, T. (2020). Deep learning with PyTorch. Manning Publications
{{</img8>}}

---

## <center><div style="font-size: 3rem; line-height: 4rem; color: #e6e6e6">All these numbers need to be stored and organized in a data structure</div></center>
{{<br size="3">}}

{{%fragment%}}
<center>{{<e>}}PyTorch tensors are Python objects holding multidimensional arrays{{</e>}}</center>
{{<br size="2">}}

{{<img8 src="/img/torchtensors/tensor.png" margin="rem" title="" width="85%" line-height="2.2rem">}}
Stevens, E., Antiga, L., & Viehmann, T. (2020). Deep learning with PyTorch. Manning Publications
{{</img8>}}

{{%/fragment%}}

---

## <center><div style="font-size: 3rem; line-height: 4rem; color: #e6e6e6">Why a new object when NumPy ndarray already exists?</div></center>
{{<br size="5">}}

{{%fragment%}}
- Can run on GPUs
{{<br size="1.5">}}

- Operations can be distributed
{{<br size="1.5">}}

- Keep track of computation graphs for automatic differentiation
{{%/fragment%}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6;">What is a PyTorch tensor?</div></center>
{{<br size="1">}}

PyTorch is foremost a {{<e>}}deep learning library{{</e>}}
{{<br size="2">}}

In deep learning, the information contained in objects of interest (e.g. images, texts, sounds) is converted to {{<e>}}floating-point numbers{{</e>}} (e.g. pixel values, token values, frequencies) {{<br size="2">}}

As this information is complex, {{<e>}}multiple dimensions are required{{</e>}} (e.g. 2 dimensions for the width & height of an image, plus 1 dimension for the 3 RGB colour channels) {{<br size="2">}}

Additionally, as various objects are grouped into batches to be processed together, batch size adds yet another dimension
{{<br size="2">}}

{{<e>}}Multidimensional arrays are thus particularly well suited for deep learning{{</e>}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6">What is a PyTorch tensor?</div></center>
{{<br size="2">}}

Artificial neurons perform basic computations on these tensors
{{<br size="2">}}

Their number however is huge & computing efficiency is paramount
{{<br size="2">}}

GPUs are particularly well suited to perform many simple operations in parallel <br>
{{<br size="2">}}

The very popular {{<a "https://numpy.org/" "NumPy library">}} has at its core a mature multidimensional array object well integrated into the scientific Python ecosystem
{{<br size="2">}}

But the PyTorch tensor has additional efficiency characteristics ideal for machine learning & it can be converted to/from NumPy's ndarray if needed

---

## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- What is a PyTorch tensor?</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #e6e6e6">- Memory storage</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Data type (dtype)</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Basic operations</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Working with GPUs</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Working with NumPy ndarrays</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Distributed operations</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Linear algebra</div>

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Efficient memory storage</div></center>
{{<br size="1">}}

In Python, collections (lists, tuples) are groupings of boxed Python objects
{{<br size="1">}}

PyTorch tensors and NumPy ndarrays are made of unboxed C numeric types
{{<br size="2.5">}}

{{<img8 src="/img/torchtensors/memory_storage.png" margin="rem" title="" width="60%" line-height="2.2rem">}}
Stevens, E., Antiga, L., & Viehmann, T. (2020). Deep learning with PyTorch. Manning Publications
{{</img8>}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Efficient memory storage</div></center>
{{<br size="1">}}

They are usually contiguous memory blocks, but the main difference is that they are unboxed: floats will thus take 4 or 8 bytes each
{{<br size="1">}}

Boxed values take up more memory (memory for the pointer + memory for the primitive)
{{<br size="2.5">}}

{{<img8 src="/img/torchtensors/memory_storage.png" margin="rem" title="" width="60%" line-height="2.2rem">}}
Stevens, E., Antiga, L., & Viehmann, T. (2020). Deep learning with PyTorch. Manning Publications
{{</img8>}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Implementation</div></center>
{{<br size="2">}}

Under the hood, the values of a PyTorch tensor are stored as a {{%c%}}torch.Storage{{%/c%}} instance which is a {{<emph_inline>}}one-dimensional array{{</emph_inline>}}
{{<br size="2">}}

{{%fragment%}}
```{py}
import torch
t = torch.stack((torch.arange(5.), torch.arange(5., 10.)))
print(t)
```
{{<out>}}
```{py}
tensor([[ 0.,  1.,  2., 3.,  4.],
        [ 5.,  6.,  7.,  8.,  9.]])
```
{{%/fragment%}}

---

## <center><div style="font-size: 3rem; line-height: 5rem; color: #e6e6e6">Implementation</div></center>

```{py}
storage = t.storage()
print(storage)
```
{{<out>}}
```{py}
 0.0
 1.0
 2.0
 3.0
 4.0
 5.0
 6.0
 7.0
 8.0
 9.0
[torch.FloatStorage of size 10]
```

---

## <center><div style="font-size: 3rem; line-height: 5rem; color: #e6e6e6">Implementation</div></center>
{{<br size="2">}}

Storage can be indexed
{{<br size="3">}}

```{py}
storage[3]
```
{{<out>}}
```{py}
3.0
```

---

## <center><div style="font-size: 3rem; line-height: 5rem; color: #e6e6e6">Implementation</div></center>
{{<br size="2">}}

```{py}
storage[3] = 10.0
print(storage)
```
{{<out>}}
```{py}
 0.0
 1.0
 2.0
 10.0
 4.0
 5.0
 6.0
 7.0
 8.0
 9.0
[torch.FloatStorage of size 10]
```

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Implementation</div></center>
{{<br size="2">}}

To view a multidimensional array from storage, we need {{<emph_inline>}}metadata{{</emph_inline>}}:
{{<br size="2">}}

- the {{<emph_inline>}}size{{</emph_inline>}} (*shape* in NumPy) sets the number of elements in each dimension
{{<br size="0.5">}}
- the {{<emph_inline>}}offset{{</emph_inline>}} indicates where the first element of the tensor is in the storage
{{<br size="0.5">}}
- the {{<emph_inline>}}stride{{</emph_inline>}} establishes the increment between each element

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Storage metadata</div></center>
{{<br size="1">}}

{{<img8 src="/img/torchtensors/tensor_metadata.png" margin="rem" title="" width="60%" line-height="2.2rem">}}
Stevens, E., Antiga, L., & Viehmann, T. (2020). Deep learning with PyTorch. Manning Publications
{{</img8>}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Storage metadata</div></center>

```{py}
t.size()
t.storage_offset()
t.stride()
```
{{<out>}}
```{py}
torch.Size([2, 5])
0
(5, 1)
```
{{<br size="2">}}

<center>
{{<simpleboxdark>}}
size: (2, 5) <br>
offset: 0 <br>
stride: (5, 1)
{{</simpleboxdark>}}
</center>

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Storage metadata</div></center>
{{<br size="1">}}

{{<img8 src="/img/torchtensors/my_tensor_metadata.jpg" margin="rem" title="" width="80%" line-height="2.2rem">}}
{{</img8>}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Sharing storage</div></center>

Multiple tensors can use the same storage, saving a lot of memory since the metadata is a lot lighter than a whole new array
{{<br size="2">}}

{{<img8 src="/img/torchtensors/sharing_storage.png" margin="rem" title="" width="60%" line-height="2.2rem">}}
Stevens, E., Antiga, L., & Viehmann, T. (2020). Deep learning with PyTorch. Manning Publications
{{</img8>}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Transposing in 2 dimensions</div></center>
{{<br size="1.5">}}

```{py}

```
{{<out>}}
```{py}

```

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Transposing in 2 dimensions</div></center>
{{<br size="1.5">}}

<center>= flipping the stride elements around</center>
{{<br size="3">}}

{{<img8 src="/img/torchtensors/transpose.png" margin="rem" title="" width="50%" line-height="2.2rem">}}
Stevens, E., Antiga, L., & Viehmann, T. (2020). Deep learning with PyTorch. Manning Publications
{{</img8>}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Transposing in higher dimensions</div></center>
{{<br size="1.5">}}

---

## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- What is a PyTorch tensor?</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Memory storage</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #e6e6e6">- Data type (dtype)</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Basic operations</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Working with GPUs</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Working with NumPy ndarrays</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Distributed operations</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Linear algebra</div>

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Default dtype</div></center>
{{<br size="3">}}

Since PyTorch tensors were built with utmost efficiency in mind for neural networks, the default data type is {{<e>}}32-bit floating points{{</e>}}
{{<br size="3">}}

This is sufficient for accuracy and much faster than 64-bit floating points
{{<br size="3">}}

{{<note>}}
Note that, by contrast, NumPy ndarrays use 64-bit as their default
{{</note>}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6">List of PyTorch tensor dtypes</div></center>
{{<br size="3">}}

<table>
<tr><td>torch.float16 / torch.half</td><td>&emsp;&emsp;</td><td>16-bit / half-precision floating-point</td></tr>
<tr><td>torch.float32 / torch.float</td><td></td><td>32-bit / single-precision floating-point</td></tr>
<tr style="border-bottom: 1px solid white;"><td>torch.float64 / torch.double</td><td></td><td>64-bit / double-precision floating-point</td></tr>
<tr><td></td><td></td></tr>
<tr><td>torch.uint8</td><td></td><td>unsigned 8-bit integers</td></tr>
<tr><td>torch.int8</td><td></td><td>signed 8-bit integers</td></tr>
<tr><td>torch.int16 / torch.short</td><td></td><td>signed 16-bit integers</td></tr>
<tr><td>torch.int32 / torch.int</td><td></td><td>signed 32-bit integers</td></tr>
<tr style="border-bottom: 1px solid white;"><td>torch.int64 / torch.long</td><td></td><td>signed 64-bit integers</td></tr>
<tr><td></td><td></td><td></td></tr>
<tr><td>torch.bool</td><td></td><td>boolean</td></tr>
</table>

---

## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- What is a PyTorch tensor?</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Memory storage</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Data type (dtype)</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #e6e6e6">- Basic operations</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Working with GPUs</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Working with NumPy ndarrays</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Distributed operations</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Linear algebra</div>

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Creating tensors</div></center>
{{<br size="2">}}

Many functions, e.g.:
{{<br size="2">}}

- `torch.tensor`: input individual values
- `torch.rand`: random numbers from a uniform distribution on `[0, 1)`
- `torch.randn`: numbers from the standard normal distribution
- `torch.empty`: uninitialized tensor
- `torch.zeros`: tensor filled with `0`
- `torch.ones`: tensor filled with `1`

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Creating tensors</div></center>
{{<br size="3">}}

```{py}
torch.manual_seed(0)  # if you want to reproduce the result
torch.rand(1)

torch.manual_seed(0)  # run before each operation to get the same result
torch.rand(1).item()  # extract the value from a tensor
```
{{<out>}}
```{py}
tensor([0.4963])

0.49625658988952637
```

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Creating tensors</div></center>
{{<br size="2.5">}}

```{py}
torch.rand(1)
torch.rand(1, 1)
torch.rand(1, 1, 1)
torch.rand(1, 1, 1, 1)
```
{{<out>}}
```{py}
tensor([0.6984])
tensor([[0.5675]])
tensor([[[0.8352]]])
tensor([[[[0.2056]]]])
```

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Creating tensors</div></center>

```{py}
torch.rand(2)

torch.rand(2, 2, 2, 2)
```
{{<out>}}
```{py}
tensor([0.5932, 0.1123])

tensor([[[[0.1147, 0.3168],
          [0.6965, 0.9143]],
         [[0.9351, 0.9412],
          [0.5995, 0.0652]]],
        [[[0.5460, 0.1872],
          [0.0340, 0.9442]],
         [[0.8802, 0.0012],
          [0.5936, 0.4158]]]])
```

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Creating tensors</div></center>
{{<br size="1">}}

```{py}
torch.rand(2)
torch.rand(3)
torch.rand(1, 1)
torch.rand(1, 1, 1)
torch.rand(2, 6)
```
{{<out>}}
```{py}
tensor([0.7682, 0.0885])
tensor([0.1320, 0.3074, 0.6341])
tensor([[0.4901]])
tensor([[[0.8964]]])
tensor([[0.4556, 0.6323, 0.3489, 0.4017, 0.0223, 0.1689],
        [0.2939, 0.5185, 0.6977, 0.8000, 0.1610, 0.2823]])
```

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Creating tensors</div></center>

```{py}
torch.rand(2, 4, dtype=torch.float64)  # you can set dtype
torch.ones(2, 1, 4, 5)
```
{{<out>}}
```{py}
tensor([[0.6650, 0.7849, 0.2104, 0.6767],
        [0.1097, 0.5238, 0.2260, 0.5582]], dtype=torch.float64)
tensor([[[[1., 1., 1., 1., 1.],
          [1., 1., 1., 1., 1.],
          [1., 1., 1., 1., 1.],
          [1., 1., 1., 1., 1.]]],

        [[[1., 1., 1., 1., 1.],
          [1., 1., 1., 1., 1.],
          [1., 1., 1., 1., 1.],
          [1., 1., 1., 1., 1.]]]])
```

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Tensor indexing</div></center>
{{<br size="2">}}

```{py}
x = torch.rand(3, 4)
print(x)

print(x[:, 2])
print(x[1, :])
print(x[2, 3])
```
{{<out>}}
```{py}
tensor([[0.6575, 0.4017, 0.7391, 0.6268],
        [0.2835, 0.0993, 0.7707, 0.1996],
        [0.4447, 0.5684, 0.2090, 0.7724]])
tensor([0.7391, 0.7707, 0.2090])
tensor([0.2835, 0.0993, 0.7707, 0.1996])
tensor(0.7724)
```

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Various tensor operations</div></center>
{{<br size="2">}}

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Vectorized operations</div></center>
{{<br size="2">}}

---

## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- What is a PyTorch tensor?</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Memory storage</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Data type (dtype)</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Basic operations</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #e6e6e6">- Working with GPUs</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Working with NumPy ndarrays</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Distributed operations</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Linear algebra</div>

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Device attribute</div></center>
{{<br size="2.5">}}

Tensor data can be placed in the memory of various processor types:
{{<br size="3">}}

- the RAM of CPU
{{<br size="1">}}

- the RAM of a GPU with CUDA support
{{<br size="1">}}

- the RAM of a GPU with {{<a "https://pytorch.org/blog/pytorch-for-amd-rocm-platform-now-available-as-python-package/" "AMD's ROCm support">}}
{{<br size="1">}}

- the RAM of an {{<a "https://www.tensorflow.org/xla" "XLA device">}} (e.g. {{<a "https://cloud.google.com/tpu" "Cloud TPU">}}) with the {{<a "https://github.com/pytorch/xla/" "torch_xla package">}}

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Device attribute</div></center>
{{<br size="2.5">}}

The values for the device attributes are:
{{<br size="2">}}

- CPU: &nbsp;`'cpu'`
{{<br size="1">}}

- GPU (CUDA and AMD's ROCm): &nbsp;`'cuda'`
{{<br size="1">}}

- XLA: &nbsp;`xm.xla_device()`
{{<br size="3">}}

This last option requires to load the {{<a "https://github.com/pytorch/xla/" "torch_xla package">}} first:

```{py}
import torch_xla
import torch_xla.core.xla_model as xm
```

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Creating a tensor on a specific device</div></center>
{{<br size="3">}}

```{py}
t_gpu = torch.rand(2, 3, device='cuda')
```

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Copying a tensor to a specific device</div></center>
{{<br size="2">}}

```{py}
t_cpu = t_gpu.to(device='cpu')     # move to CPU
t_gpu = t_cpu.to(device='cuda')    # move to GPU
t_gpu = t_cpu.to(device='cuda:0')  # move to a specific GPU
t_gpu = t_cpu.to(device='cuda:1')  # move to a specific GPU
```
{{<br size="2">}}

{{%fragment%}}
Or the equivalent short forms:
{{<br size="2">}}

```{py}
t_cpu = t_gpu.cpu()    # move to CPU
t_gpu = t_cpu.cuda()   # move to GPU
t_gpu = t_cpu.cuda(0)  # move to a specific GPU
t_gpu = t_cpu.cuda(1)  # move to a specific GPU
```
{{%/fragment%}}

---

## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- What is a PyTorch tensor?</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Memory storage</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Data type (dtype)</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Basic operations</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Working with GPUs</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #e6e6e6">- Working with NumPy ndarrays</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Distributed operations</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Linear algebra</div>

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Working with NumPy</div></center>
{{<br size="1.5">}}

PyTorch tensors can be converted to NumPy ndarrays and vice-versa in a very efficient manner as both objects will share the same memory
{{<br size="2">}}

```{py}
t = torch.rand(2, 3)
t_np = t.numpy()
t2 = torch.from_numpy(t_np)
torch.equal(t, t2)
```

{{<note>}}
Remember that PyTorch tensors use 32-bit floating points by default <br>
While NumPy uses 64-bit by default <br>
In neural networks, 32-bit is what you want to use
{{</note>}}

{{<note>}}
Note that NumPy arrays only work on CPU, so to convert a tensor allocated to the GPU, the content will be copied to the CPU first
{{</note>}}

---

## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- What is a PyTorch tensor?</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Memory storage</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Data type (dtype)</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Basic operations</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Working with GPUs</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Working with NumPy ndarrays</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #e6e6e6">- Distributed operations</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Linear algebra</div>

---

## <center><div style="font-size: 3rem; color: #e6e6e6"></div></center>
{{<br size="2">}}

---

## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- What is a PyTorch tensor?</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Memory storage</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Data type (dtype)</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Basic operations</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Working with GPUs</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Working with NumPy ndarrays</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Distributed operations</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #e6e6e6">- Linear algebra</div>

---

## <center><div style="font-size: 3rem; color: #e6e6e6">{{<a "https://pytorch.org/docs/master/linalg.html?highlight=linalg#module-torch.linalg" "torch.linalg">}} module</div></center>
{{<br size="3">}}

- All functions from {{<a "https://numpy.org/doc/stable/reference/routines.linalg.html" "numpy.linalg">}} implemented <br>
(with accelerator, CUDA support, & automatic differentiation support)
{{<br size="3">}}

- Some additional functions
{{<br size="4">}}

{{<note>}}
Requires torch >= 1.9 <br>
Linear algebra support less developed before introduction of this module
{{</note>}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6">System of linear equations solver</div></center>
{{<br size="3">}}

Let's have a look at an extremely basic example:
{{<br size="4">}}

<center>
{{<simpleboxdark>}}
2x + 3y - z = 5 <br>
x - 2y + 8z = 21 <br>
6x + y - 3z = -1
{{</simpleboxdark>}}
</center>
{{<br size="4">}}

We are looking for the values of `x`, `y`, and `z` that would satisfy this system

---

## <center><div style="font-size: 3rem; color: #e6e6e6">System of linear equations solver</div></center>

We create a 2D tensor `A` of size `(3, 3)` with the coefficients of the equations <br>
& a 1D tensor `b` of size `3` with the right hand sides values of the equations

```{py}
A = torch.tensor([[2., 3., -1.], [1., -2., 8.], [6., 1., -3.]])
b = torch.tensor([5., 21., -1.])
print(A)
print(b)
```
{{<out>}}
```{py}
tensor([[ 2.,  3., -1.],
        [ 1., -2.,  8.],
        [ 6.,  1., -3.]])

tensor([ 5., 21., -1.])
```

---

## <center><div style="font-size: 3rem; color: #e6e6e6">System of linear equations solver</div></center>
{{<br size="1">}}

Solving this system is as simple as running the `torch.linalg.solve` function:

```{py}
x = torch.linalg.solve(A, b)
print(x)
```
{{<out>}}
```{py}
tensor([1., 2., 3.])
```

Our solution is:

<center>
{{<simpleboxdark>}}
x = 1 <br>
y = 2 <br>
z = 3
{{</simpleboxdark>}}
</center>

---

## <center><div style="font-size: 3rem; color: #e6e6e6">System of linear equations solver</div></center>
{{<br size="3">}}

We can verify our result with:
{{<br size="2">}}

```{py}
torch.allclose(A @ x, b)
```
{{<out>}}
```{py}
True
```

---

## <center><div style="font-size: 3rem; color: #e6e6e6">System of linear equations solver</div></center>
{{<br size="1.5">}}

Here is another simple example:
{{<br size="2.5">}}

```{py}
# create a square normal random matrix
A = torch.randn(4, 4)
# create a tensor of right hand side values
b = torch.randn(4)

# solve the system
x = torch.linalg.solve(A, b)

# verify
torch.allclose(A @ x, b)
```

---

## <center><div style="font-size: 3rem; color: #e6e6e6">System of linear equations solver</div></center>
{{<br size="1.5">}}

Here are the printed outputs:
{{<br size="2.5">}}

```{py}
tensor([[ 1.5091,  2.0820,  1.7067,  2.3804],  # A (coefficients)
        [-1.1256, -0.3170, -1.0925, -0.0852],
        [ 0.3276, -0.7607, -1.5991,  0.0185],
        [-0.7504,  0.1854,  0.6211,  0.6382]])

tensor([-1.0886, -0.2666,  0.1894, -0.2190])  # b (right hand side values)

tensor([ 0.1992, -0.7011,  0.2541, -0.1526])  # x (our solution)

True									      # verification
```

---

## <center><div style="font-size: 3rem; color: #e6e6e6">System of linear equations solver</div></center>
{{<br size="2.5">}}

With 2 multidimensional tensors:
{{<br size="2.5">}}

```{py}
A = torch.randn(2, 3, 3)      # must be batches of square matrices
B = torch.randn(2, 3, 5)      # matrices must be of compatible dimensions
X = torch.linalg.solve(A, B)
X
torch.allclose(A @ X, B)
```

---
---

# <center><span style="font-size: 7.0rem; color: #e6e6e6;">Questions?</span></center>
