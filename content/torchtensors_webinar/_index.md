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

{{<img8 src="/img/torchtensors/book_cover.png" margin="rem" title="" width="45%" line-height="0.5rem">}}
{{</img8>}}

---

## <div style="font-size: 3rem; line-height: 3.7rem; color: #727274">- What is a PyTorch tensor?</div>
## <div style="font-size: 3rem; line-height: 3.7rem; color: #727274">- Memory storage</div>
## <div style="font-size: 3rem; line-height: 3.7rem; color: #727274">- Basic operations</div>
## <div style="font-size: 3rem; line-height: 3.7rem; color: #727274">- Working with GPUs</div>
## <div style="font-size: 3rem; line-height: 3.7rem; color: #727274">- Working with NumPy ndarrays</div>
## <div style="font-size: 3rem; line-height: 3.7rem; color: #727274">- Distributed operations</div>
## <div style="font-size: 3rem; line-height: 3.7rem; color: #727274">- Linear algebra</div>

---

## <div style="font-size: 3rem; line-height: 3.7rem; color: #e6e6e6">- What is a PyTorch tensor?</div>
## <div style="font-size: 3rem; line-height: 3.7rem; color: #727274">- Memory storage</div>
## <div style="font-size: 3rem; line-height: 3.7rem; color: #727274">- Basic operations</div>
## <div style="font-size: 3rem; line-height: 3.7rem; color: #727274">- Working with GPUs</div>
## <div style="font-size: 3rem; line-height: 3.7rem; color: #727274">- Working with NumPy ndarrays</div>
## <div style="font-size: 3rem; line-height: 3.7rem; color: #727274">- Distributed operations</div>
## <div style="font-size: 3rem; line-height: 3.7rem; color: #727274">- Linear algebra</div>

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

## <div style="font-size: 3rem; line-height: 3.7rem; color: #727274">- What is a PyTorch tensor?</div>
## <div style="font-size: 3rem; line-height: 3.7rem; color: #e6e6e6">- Memory storage</div>
## <div style="font-size: 3rem; line-height: 3.7rem; color: #727274">- Basic operations</div>
## <div style="font-size: 3rem; line-height: 3.7rem; color: #727274">- Working with GPUs</div>
## <div style="font-size: 3rem; line-height: 3.7rem; color: #727274">- Working with NumPy ndarrays</div>
## <div style="font-size: 3rem; line-height: 3.7rem; color: #727274">- Distributed operations</div>
## <div style="font-size: 3rem; line-height: 3.7rem; color: #727274">- Linear algebra</div>

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

Boxed values take up more memory (memory for the pointer and memory for the primitive)
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
t
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
storage
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
storage
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
{{<br size="1">}}

```{py}
t.size()
```
{{<out>}}
```{py}
torch.Size([2, 5])
```

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Storage metadata</div></center>
{{<br size="1">}}

```{py}
t.storage_offset()
```
{{<out>}}
```{py}
0
```

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Storage metadata</div></center>
{{<br size="1">}}

```{py}
t.stride()
```
{{<out>}}
```{py}
(5, 1)
```

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Storage metadata</div></center>
{{<br size="1">}}

<center>
{{<simpleboxdark>}}
size: (2, 5) <br>
offset: 0 <br>
stride: (5, 1)
{{</simpleboxdark>}}
</center>

{{<img8 src="/img/torchtensors/my_tensor_metadata.png" margin="rem" title="" width="%" line-height="2.2rem">}}
Me &nbsp;:D
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

- the RAM of an XLA device (e.g. Cloud TPU) with the {{<a "https://github.com/pytorch/xla/" "torch_xla package">}}

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

