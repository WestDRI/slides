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

<center>Many drawings in this webinar come from the book:</center>
{{<br size="3">}}

{{<img8 src="/img/torchtensors/book_cover.jpg" margin="rem" title="" width="45%" line-height="0.5rem">}}
{{</img8>}}

---

<center>The section on storage is also highly inspired by it</center>
{{<br size="3">}}

{{<img8 src="/img/torchtensors/book_cover.jpg" margin="rem" title="" width="45%" line-height="0.5rem">}}
{{</img8>}}

---

## <center><div style="font-size: 3.3rem; color: #b2b2b3">*Using tensors locally*</div></center>
{{<br size="2.5">}}

You need to have {{<a "https://www.python.org/downloads/" "Python">}} & {{<a "https://pytorch.org/get-started/locally/" "PyTorch">}} installed
{{<br size="2">}}
Additionally, you might want to use an IDE such as {{<a "https://github.com/jorgenschaefer/elpy" "elpy">}} if you are an Emacs user, {{<a "https://jupyter.org/" "JupyterLab">}}, etc.
{{<br size="4.5">}}

{{<note>}}
Note that PyTorch does not yet support Python 3.10 except in some Linux distributions or on systems where a wheel has been built <br><br>
For the time being, you might have to use it with Python 3.9
{{</note>}}

---

## <center><div style="font-size: 3.3rem; color: #b2b2b3">*Using tensors on CC clusters*</div></center>
{{<br size="1.5">}}

In the cluster terminal:
```sh
avail_wheels "torch*" # List available wheels & compatible Python versions
module avail python	  # List available Python versions
module load python/3.9.6             # Load a sensible Python version
virtualenv --no-download env         # Create a virtual env
source env/bin/activate		         # Activate the virtual env
pip install --no-index --upgrade pip # Update pip
pip install --no-index torch		 # Install PyTorch
```
{{<br size="2">}}

You can then launch jobs with `sbatch` or `salloc`
{{<br size="1">}}

Leave the virtual env with the command: `deactivate`
{{<br size="2">}}

---

## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- What is a PyTorch tensor?</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Memory storage</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Data type (dtype)</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Basic operations</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Working with NumPy</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Linear algebra</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Harvesting the power of GPUs</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Distributed operations</div>

---

## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #e6e6e6">- What is a PyTorch tensor?</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Memory storage</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Data type (dtype)</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Basic operations</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Working with NumPy</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Linear algebra</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Harvesting the power of GPUs</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Distributed operations</div>

---

## <center><div style="font-size: 2.8rem; color: #e6e6e6">ANN do not process information directly</div></center>
{{<br size="1.5">}}

{{<img8 src="/img/torchtensors/ml1.png" margin="rem" title="" width="90%" line-height="2.2rem">}}
Modified from Stevens, E., Antiga, L., & Viehmann, T. (2020). Deep learning with PyTorch. Manning Publications
{{</img8>}}

---

## <center><div style="font-size: 2.8rem; color: #e6e6e6">It needs to be converted to numbers</div></center>
{{<br size="1.5">}}

{{<img8 src="/img/torchtensors/ml2.png" margin="rem" title="" width="90%" line-height="2.2rem">}}
Modified from Stevens, E., Antiga, L., & Viehmann, T. (2020). Deep learning with PyTorch. Manning Publications
{{</img8>}}

---

## <center><div style="font-size: 2.8rem; line-height: 3.5rem; color: #e6e6e6">All these numbers need to be stored <br> in a data structure</div></center>
{{<br size="3">}}

{{%fragment%}}
<center>{{<e>}}PyTorch tensors are Python objects holding multidimensional arrays{{</e>}}</center>
{{<br size="2">}}

{{<img8 src="/img/torchtensors/tensor.png" margin="rem" title="" width="85%" line-height="2.2rem">}}
Stevens, E., Antiga, L., & Viehmann, T. (2020). Deep learning with PyTorch. Manning Publications
{{</img8>}}
{{%/fragment%}}

{{<br size="1">}}

---

## <center><div style="font-size: 2.8rem; line-height: 3.5rem; color: #e6e6e6">Why a new object when NumPy ndarray already exists?</div></center>
{{<br size="4">}}

{{%fragment%}}
- Can run on accelerators (GPUs, TPUs...)
{{<br size="2.5">}}

- Keep track of computation graphs, allowing automatic differentiation
{{<br size="2.5">}}

- Future plan for sharded tensors to run distributed computations
{{%/fragment%}}

{{<br size="4">}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6;">What is a PyTorch tensor?</div></center>
{{<br size="1">}}

PyTorch is foremost a {{<e>}}deep learning library{{</e>}}
{{<br size="2">}}

In deep learning, the information contained in objects of interest (e.g. images, texts, sounds) is converted to {{<e>}}floating-point numbers{{</e>}} (e.g. pixel values, token values, frequencies) {{<br size="2">}}

As this information is complex, {{<e>}}multiple dimensions are required{{</e>}} (e.g. two dimensions for the width & height of an image, plus one dimension for the RGB colour channels) {{<br size="2">}}

Additionally, items are grouped into batches to be processed together, adding yet another dimension
{{<br size="2">}}

{{<e>}}Multidimensional arrays are thus particularly well suited for deep learning{{</e>}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6">What is a PyTorch tensor?</div></center>
{{<br size="2">}}

Artificial neurons perform basic computations on these tensors
{{<br size="2">}}

Their number however is huge & computing efficiency is paramount
{{<br size="2">}}

GPUs/TPUs are particularly well suited to perform many simple operations in parallel <br>
{{<br size="2">}}

The very popular {{<a "https://numpy.org/" "NumPy library">}} has, at its core, a mature multidimensional array object well integrated into the scientific Python ecosystem
{{<br size="2">}}

But the PyTorch tensor has additional efficiency characteristics ideal for machine learning & it can be converted to/from NumPy's ndarray if needed

---

## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- What is a PyTorch tensor?</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #e6e6e6">- Memory storage</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Data type (dtype)</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Basic operations</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Working with NumPy</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Linear algebra</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Harvesting the power of GPUs</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Distributed operations</div>

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Efficient memory storage</div></center>
{{<br size="1">}}

In Python, collections (lists, tuples) are groupings of boxed Python objects
{{<br size="1">}}

PyTorch tensors & NumPy ndarrays are made of unboxed C numeric types
{{<br size="2.5">}}

{{<img8 src="/img/torchtensors/memory_storage.png" margin="rem" title="" width="60%" line-height="2.2rem">}}
Stevens, E., Antiga, L., & Viehmann, T. (2020). Deep learning with PyTorch. Manning Publications
{{</img8>}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Efficient memory storage</div></center>
{{<br size="1">}}

They are usually contiguous memory blocks, but the main difference is that they are unboxed: floats will thus take 4 (32-bit) or 8 (64-bit) bytes each
{{<br size="1">}}

Boxed values take up more memory <br>(memory for the pointer + memory for the primitive)
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
t = torch.arange(10.).view(2, 5); print(t) # Functions explained later
```
{{<out>}}
```{py}
tensor([[ 0.,  1.,  2., 3.,  4.],
        [ 5.,  6.,  7.,  8.,  9.]])
```
{{%/fragment%}}

{{<br size="3">}}

---

## <center><div style="font-size: 3rem; line-height: 5rem; color: #e6e6e6">Implementation</div></center>

```{py}
storage = t.storage(); print(storage)
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

The storage can be indexed
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
storage[3] = 10.0; print(storage)
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
{{<br size="3">}}

To view a multidimensional array from storage, we need {{<emph_inline>}}metadata{{</emph_inline>}}:
{{<br size="3">}}

- the {{<emph_inline>}}size{{</emph_inline>}} (*shape* in NumPy) sets the number of elements in each dimension
{{<br size="1">}}
- the {{<emph_inline>}}offset{{</emph_inline>}} indicates where the first element of the tensor is in the storage
{{<br size="1">}}
- the {{<emph_inline>}}stride{{</emph_inline>}} establishes the increment between each element
{{<br size="3">}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Storage metadata</div></center>
{{<br size="1.5">}}

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
{{<br size="1">}}

Multiple tensors can use the same storage, saving a lot of memory since the metadata is a lot lighter than a whole new array
{{<br size="2">}}

{{<img8 src="/img/torchtensors/sharing_storage.png" margin="rem" title="" width="60%" line-height="2.2rem">}}
Stevens, E., Antiga, L., & Viehmann, T. (2020). Deep learning with PyTorch. Manning Publications
{{</img8>}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Transposing in 2 dimensions</div></center>
{{<br size="2">}}

```{py}
t = torch.tensor([[3, 1, 2], [4, 1, 7]]); print(t)
t.size()
t.t()
t.t().size()
```
{{<out>}}
```{py}
tensor([[3, 1, 2],
        [4, 1, 7]])
torch.Size([2, 3])
tensor([[3, 4],
        [1, 1],
        [2, 7]])
torch.Size([3, 2])
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
{{<br size="2">}}

`torch.t()` is a shorthand for `torch.transpose(0, 1)`:
{{<br size="2.5">}}

```{py}
torch.equal(t.t(), t.transpose(0, 1))
```
{{<out>}}
```{py}
True
```
{{<br size="2.5">}}

While `torch.t()` only works for 2D tensors, `torch.transpose()` can be used to transpose 2 dimensions in tensors of any number of dimensions

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Transposing in higher dimensions</div></center>
{{<br size="2.5">}}

```{py}
t = torch.zeros(1, 2, 3); print(t)

t.size()
t.stride()
```
{{<out>}}
```{py}
tensor([[[0., 0., 0.],
         [0., 0., 0.]]])

torch.Size([1, 2, 3])
(6, 3, 1)
```

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Transposing in higher dimensions</div></center>
{{<br size="2.5">}}

```{py}
t.transpose(0, 1)

t.transpose(0, 1).size()
t.transpose(0, 1).stride()
```
{{<out>}}
```{py}
tensor([[[0., 0., 0.]],
        [[0., 0., 0.]]])

torch.Size([2, 1, 3])
(3, 6, 1)  # Notice how transposing flipped 2 elements of the stride
```

---

## <center><div style="font-size: 3rem; line-height: 4rem; color: #e6e6e6">Transposing in higher dimensions</div></center>

```{py}
t.transpose(0, 2)

t.transpose(0, 2).size()
t.transpose(0, 2).stride()
```
{{<out>}}
```{py}
tensor([[[0.],
         [0.]],
        [[0.],
         [0.]],
        [[0.],
         [0.]]])

torch.Size([3, 2, 1])
(1, 3, 6)
```

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Transposing in higher dimensions</div></center>
{{<br size="2">}}

```{py}
t.transpose(1, 2)

t.transpose(1, 2).size()
t.transpose(1, 2).stride()
```
{{<out>}}
```{py}
tensor([[[0., 0.],
         [0., 0.],
         [0., 0.]]])

torch.Size([1, 3, 2])
(6, 1, 3)
```

---

## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- What is a PyTorch tensor?</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Memory storage</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #e6e6e6">- Data type (dtype)</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Basic operations</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Working with NumPy</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Linear algebra</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Harvesting the power of GPUs</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Distributed operations</div>

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Default dtype</div></center>
{{<br size="3">}}

Since PyTorch tensors were built with utmost efficiency in mind for neural networks, the default data type is {{<e>}}32-bit floating points{{</e>}}
{{<br size="3">}}

This is sufficient for accuracy & much faster than 64-bit floating points
{{<br size="3">}}

{{<note>}}
Note that, by contrast, NumPy ndarrays use 64-bit as their default
{{</note>}}
{{<br size="5">}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6">List of PyTorch tensor dtypes</div></center>
{{<br size="2.5">}}

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
{{<br size="2">}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Checking & changing dtype</div></center>
{{<br size="2">}}

```{py}
t = torch.rand(2, 3); print(t)
t.dtype   # Remember that the default dtype for PyTorch tensors is float32
t2 = t.type(torch.float64); print(t2) # If dtype ≠ default, it is printed
t2.dtype
```
{{<out>}}
```{py}
tensor([[0.8130, 0.3757, 0.7682],
        [0.3482, 0.0516, 0.3772]])
torch.float32
tensor([[0.8130, 0.3757, 0.7682],
        [0.3482, 0.0516, 0.3772]], dtype=torch.float64)
torch.float64
```

---

## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- What is a PyTorch tensor?</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Memory storage</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Data type (dtype)</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #e6e6e6">- Basic operations</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Working with NumPy</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Linear algebra</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Harvesting the power of GPUs</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Distributed operations</div>

---

## <center><div style="font-size: 3.3rem; color: #e6e6e6">Creating tensors</div></center>
{{<br size="1">}}

- `torch.tensor`: &ensp;&nbsp;&nbsp;&nbsp;Input individual values
- `torch.arange`: &ensp;&nbsp;&nbsp;&nbsp;Similar to `range` but creates a 1D tensor
- `torch.linspace`: &nbsp;&nbsp;1D linear scale tensor
- `torch.logspace`: &nbsp;&nbsp;1D log scale tensor
- `torch.rand`: &emsp;&nbsp;&nbsp;&ensp;Random numbers from a uniform distribution on `[0, 1)`
- `torch.randn`: &emsp;&ensp;Numbers from the standard normal distribution
- `torch.randperm`: &nbsp;&nbsp;Random permutation of integers
- `torch.empty`: &emsp;&ensp;Uninitialized tensor
- `torch.zeros`: &emsp;&ensp;Tensor filled with `0`
- `torch.ones`: &emsp;&nbsp;&nbsp;&ensp;Tensor filled with `1`
- `torch.eye`: &emsp;&ensp;&nbsp;&nbsp;&ensp;Identity matrix
{{<br size="3">}}

---

## <center><div style="font-size: 3.3rem; color: #e6e6e6">Creating tensors</div></center>
{{<br size="2.5">}}

```{py}
torch.manual_seed(0)  # If you want to reproduce the result
torch.rand(1)

torch.manual_seed(0)  # Run before each operation to get the same result
torch.rand(1).item()  # Extract the value from a tensor
```
{{<out>}}
```{py}
tensor([0.4963])

0.49625658988952637
```
{{<br size="4">}}

---

## <center><div style="font-size: 3.3rem; color: #e6e6e6">Creating tensors</div></center>
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
{{<br size="4">}}

---

## <center><div style="font-size: 3.3rem; color: #e6e6e6">Creating tensors</div></center>
{{<br size="1">}}

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

## <center><div style="font-size: 3.3rem; color: #e6e6e6">Creating tensors</div></center>
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

## <center><div style="font-size: 3.3rem; color: #e6e6e6">Creating tensors</div></center>

```{py}
torch.rand(2, 4, dtype=torch.float64)  # You can set dtype
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

## <center><div style="font-size: 3.3rem; color: #e6e6e6">Creating tensors</div></center>

```{py}
t = torch.rand(2, 3); print(t)
torch.zeros_like(t)             # Matches the size of t
torch.ones_like(t)
torch.randn_like(t)
```
{{<out>}}
```{py}
tensor([[0.4051, 0.6394, 0.0871],
        [0.4509, 0.5255, 0.5057]])
tensor([[0., 0., 0.],
        [0., 0., 0.]])
tensor([[1., 1., 1.],
        [1., 1., 1.]])
tensor([[-0.3088, -0.0104,  1.0461],
        [ 0.9233,  0.0236, -2.1217]])
```

---

## <center><div style="font-size: 3.3rem; color: #e6e6e6">Creating tensors</div></center>

```{py}
torch.arange(2, 10, 4)    # From 2 to 10 in increments of 4
torch.linspace(2, 10, 4)  # 4 elements from 2 to 10 on the linear scale
torch.logspace(2, 10, 4)  # Same on the log scale
torch.randperm(4)
torch.eye(3)
```
{{<out>}}
```{py}
tensor([2, 6])
tensor([2.0000,  4.6667,  7.3333, 10.0000])
tensor([1.0000e+02, 4.6416e+04, 2.1544e+07, 1.0000e+10])
tensor([1, 3, 2, 0])
tensor([[1., 0., 0.],
        [0., 1., 0.],
        [0., 0., 1.]])
```

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Tensor indexing</div></center>

```{py}
x = torch.rand(3, 4)
x[:]                 # With a range, the comma is implicit: same as x[:, ]
x[:, 2]
x[1, :]
x[2, 3]
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

## <center><div style="font-size: 3rem; color: #e6e6e6">Tensor indexing</div></center>

```{py}
x[-1:]        # Last element (implicit comma, so all columns)
x[-1]         # No range, no implicit comma: we are indexing 
# from a list of tensors, so the result is a one dimensional tensor
# (Each dimension is a list of tensors of the previous dimension)
x[-1].size()  # Same number of dimensions than x (2 dimensions)
x[-1:].size() # We dropped one dimension
```
{{<out>}}
```{py}
tensor([[0.8168, 0.0879, 0.2642, 0.3777]])
tensor([0.8168, 0.0879, 0.2642, 0.3777])

torch.Size([4])
torch.Size([1, 4])
```

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Tensor indexing</div></center>
{{<br size="2">}}

```{py}
x[0:1]     # Python ranges are inclusive to the left, not the right
x[:-1]     # From start to one before last (& implicit comma)
x[0:3:2]   # From 0th (included) to 3rd (excluded) in increment of 2
```
{{<out>}}
```{py}
tensor([[0.5873, 0.0225, 0.7234, 0.4538]])
tensor([[0.5873, 0.0225, 0.7234, 0.4538],
        [0.9525, 0.0111, 0.6421, 0.4647]])
tensor([[0.5873, 0.0225, 0.7234, 0.4538],
        [0.8168, 0.0879, 0.2642, 0.3777]])
```
{{<br size="4">}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Tensor indexing</div></center>
{{<br size="2">}}

```{py}
x[None]          # Adds a dimension of size one as the 1st dimension
x.size()
x[None].size()
```
{{<out>}}
```{py}
tensor([[[0.5873, 0.0225, 0.7234, 0.4538],
         [0.9525, 0.0111, 0.6421, 0.4647],
         [0.8168, 0.0879, 0.2642, 0.3777]]])
torch.Size([3, 4])
torch.Size([1, 3, 4])
```
{{<br size="4">}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Tensor information</div></center>
{{<br size="1.5">}}

```{py}
t = torch.rand(2, 3); print(t)
t.size()
t.dim()
t.numel()
```
{{<out>}}
```{py}
tensor([[0.5885, 0.7005, 0.1048],
        [0.1115, 0.7526, 0.0658]])
torch.Size([2, 3])
2
6
```
{{<br size="3">}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Vectorized operations</div></center>
{{<br size="2.5">}}

Since PyTorch tensors are homogeneous (i.e. made of a single data type), {{<a "https://www.pythonlikeyoumeanit.com/Module3_IntroducingNumpy/VectorizedOperations.html#Vectorized-Operations" "as with NumPy's ndarrays">}}, operations are vectorized & thus staggeringly fast
{{<br size="5">}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Simple mathematical operations</div></center>

```{py}
t1 = torch.arange(1, 5).view(2, 2); print(t1)
t2 = torch.tensor([[1, 1], [0, 0]]); print(t2)
t1 + t2 # Operation performed between elements at corresponding locations
t1 + 1  # Operation applied to each element of the tensor
```
{{<out>}}
```{py}
tensor([[1, 2],
        [3, 4]])
tensor([[1, 1],
        [0, 0]])
tensor([[2, 3],
        [3, 4]])
tensor([[2, 3],
        [4, 5]])
```

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Reduction</div></center>

```{py}
t = torch.ones(2, 3, 4); print(t)
t.sum()   # Reduction over all entries
```
{{<out>}}
```{py}
tensor([[[1., 1., 1., 1.],
         [1., 1., 1., 1.],
         [1., 1., 1., 1.]],
        [[1., 1., 1., 1.],
         [1., 1., 1., 1.],
         [1., 1., 1., 1.]]])
tensor(24.)
```
{{<note>}}
Other reduction functions (e.g. mean) behave the same way
{{</note>}}


---

## <center><div style="font-size: 3rem; color: #e6e6e6">Reduction</div></center>

```{py}
# Reduction over a specific dimension
t.sum(0)  
t.sum(1)
t.sum(2)
```
{{<out>}}
```{py}
tensor([[2., 2., 2., 2.],
        [2., 2., 2., 2.],
        [2., 2., 2., 2.]])
tensor([[3., 3., 3., 3.],
        [3., 3., 3., 3.]])
tensor([[4., 4., 4.],
        [4., 4., 4.]])
```

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Reduction</div></center>

```{py}
# Reduction over multiple dimensions
t.sum((0, 1))
t.sum((0, 2))
t.sum((1, 2))
```
{{<out>}}
```{py}
tensor([6., 6., 6., 6.])
tensor([8., 8., 8.])
tensor([12., 12.])
```
{{<br size="3.5">}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6">In-place operations</div></center>
{{<br size="1">}}

With operators post-fixed with `_`:
{{<br size="1">}}

```{py}
t1 = torch.tensor([1, 2]); print(t1)
t2 = torch.tensor([1, 1]); print(t2)
t1.add_(t2); print(t1)
t1.zero_(); print(t1)
```
{{<out>}}
```{py}
tensor([1, 2])
tensor([1, 1])
tensor([2, 3])
tensor([0, 0])
```

---

## <center><div style="font-size: 2.5rem; color: #e6e6e6">*In-place operations vs reassignments*</div></center>
{{<br size="1.5">}}

```{py}
t1 = torch.ones(1); t1, hex(id(t1))
t1.add_(1); t1, hex(id(t1))        # In-place operation: same address
t1 = t1.add(1); t1, hex(id(t1))    # Reassignment: new address in memory
t1 = t1 + 1; t1, hex(id(t1))       # Reassignment: new address in memory
```
{{<out>}}
```{py}
(tensor([1.]), '0x7fc61accc3b0')
(tensor([2.]), '0x7fc61accc3b0')
(tensor([3.]), '0x7fc61accc5e0')
(tensor([4.]), '0x7fc61accc6d0')
```
{{<br size="3">}}

---

## <center><div style="font-size: 3rem; line-height: 4.5rem; color: #e6e6e6">Tensor views</div></center>

```{py}
t = torch.tensor([[1, 2, 3], [4, 5, 6]]); print(t)
t.size()
t.view(6)
t.view(3, 2)
t.view(3, -1) # Same: with -1, the size is inferred from other dimensions
```
{{<out>}}
```{py}
tensor([[1, 2, 3],
        [4, 5, 6]])
torch.Size([2, 3])
tensor([1, 2, 3, 4, 5, 6])
tensor([[1, 2],
        [3, 4],
        [5, 6]])
```

---

## <center><div style="font-size: 2.5rem; line-height: 4rem; color: #e6e6e6">*Note the difference*</div></center>
{{<br size="2">}}

```{py}
t1 = torch.tensor([[1, 2, 3], [4, 5, 6]]); print(t1)
t2 = t1.t(); print(t2)
t3 = t1.view(3, 2); print(t3)
```
{{<out>}}
```{py}
tensor([[1, 2, 3],
        [4, 5, 6]])
tensor([[1, 4],
        [2, 5],
        [3, 6]])
tensor([[1, 2],
        [3, 4],
        [5, 6]])
```

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Logical operations</div></center>
{{<br size="2">}}

```{py}
t1 = torch.randperm(5); print(t1)
t2 = torch.randperm(5); print(t2)
t1 > 3                            # Test each element
t1 < t2                           # Test corresponding pairs of elements
```
{{<out>}}
```{py}
tensor([4, 1, 0, 2, 3])
tensor([0, 4, 2, 1, 3])
tensor([ True, False, False, False, False])
tensor([False,  True,  True, False, False])
```
{{<br size="2.5">}}

---

## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- What is a PyTorch tensor?</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Memory storage</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Data type (dtype)</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Basic operations</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #e6e6e6">- Working with NumPy</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Linear algebra</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Harvesting the power of GPUs</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Distributed operations</div>

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Conversion without copy</div></center>
{{<br size="1">}}

PyTorch tensors can be converted to NumPy ndarrays & vice-versa in a very efficient manner as both objects share the same memory
{{<br size="2">}}

```{py}
t = torch.rand(2, 3); print(t)
t_np = t.numpy(); print(t_np)      # From PyTorch tensor to NumPy ndarray
```
{{<out>}}
```{py}
tensor([[0.8434, 0.0876, 0.7507],
        [0.1457, 0.3638, 0.0563]])   # PyTorch Tensor

[[0.84344184 0.08764815 0.7506627 ]
 [0.14567494 0.36384273 0.05629885]] # NumPy ndarray
```
{{<br size="3">}}

---

## <center><div style="font-size: 2.5rem; color: #e6e6e6">*Mind the different defaults*</div></center>

```{py}
t_np.dtype
```
{{<out>}}
```{py}
dtype('float32')
```
{{<br size="3.5">}}

{{<note>}}
Remember that PyTorch tensors use 32-bit floating points by default <br>
(because this is what you want in neural networks) <br><br>

But NumPy defaults to 64-bit <br>
Depending on your workflow, you might have to change dtype
{{</note>}}
{{<br size="3">}}


---

## <center><div style="font-size: 3rem; color: #e6e6e6">From NumPy to PyTorch</div></center>

```{py}
import numpy as np
a = np.random.rand(2, 3); print(a)
a_pt = torch.from_numpy(a); print(a_pt)    # From ndarray to tensor
```
{{<out>}}
```{py}
[[0.55892276 0.06026952 0.72496545]
 [0.65659463 0.27697739 0.29141587]]

tensor([[0.5589, 0.0603, 0.7250],
        [0.6566, 0.2770, 0.2914]], dtype=torch.float64)
```

{{<note>}}
Here again, you might have to change dtype
{{</note>}}

---

## <center><div style="font-size: 2.5rem; color: #e6e6e6">*Notes about conversion without copy*</div></center>
{{<br size="1.5">}}

`t` & `t_np` are objects of different Python types, so, as far as Python is concerned, they have different addresses
{{<br size="3">}}

```{py}
id(t) == id(t_np)
```
{{<out>}}
```{py}
False
```
{{<br size="3.5">}}

---

## <center><div style="font-size: 2.5rem; color: #e6e6e6">*Notes about conversion without copy*</div></center>
{{<br size="1">}}

However—{{<a "https://stackoverflow.com/q/61526297/9210961" "that's quite confusing">}}—they share an underlying C array in memory & modifying one in-place also modifies the other
{{<br size="2">}}

```{py}
t.zero_()
print(t_np)
```
{{<out>}}
```{py}
tensor([[0., 0., 0.],
        [0., 0., 0.]])

[[0. 0. 0.]
 [0. 0. 0.]]
```
{{<br size="3">}}

---

## <center><div style="font-size: 2.5rem; color: #e6e6e6">*Notes about conversion without copy*</div></center>
{{<br size="4">}}

Lastly, as NumPy only works on CPU, to convert a PyTorch tensor allocated to the GPU, the content will have to be copied to the CPU first
{{<br size="5">}}

---

## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- What is a PyTorch tensor?</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Memory storage</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Data type (dtype)</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Basic operations</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Working with NumPy</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #e6e6e6">- Linear algebra</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Harvesting the power of GPUs</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Distributed operations</div>

---

## <center><div style="font-size: 3rem; color: #e6e6e6">{{<a "https://pytorch.org/docs/master/linalg.html?highlight=linalg#module-torch.linalg" "torch.linalg">}} module</div></center>
{{<br size="2">}}

- All functions from {{<a "https://numpy.org/doc/stable/reference/routines.linalg.html" "numpy.linalg">}} implemented <br>
(with accelerator & automatic differentiation support)
{{<br size="2">}}

- Some additional functions
{{<br size="4">}}

{{<note>}}
Requires torch >= 1.9 <br>
Linear algebra support was less developed before the introduction of this module
{{</note>}}
{{<br size="3">}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6">System of linear equations solver</div></center>
{{<br size="2">}}

Let's have a look at an extremely basic example:
{{<br size="2">}}

<center>
{{<simpleboxdark>}}
2x + 3y - z = 5 <br>
x - 2y + 8z = 21 <br>
6x + y - 3z = -1
{{</simpleboxdark>}}
</center>
{{<br size="4">}}

We are looking for the values of `x`, `y`, & `z` that would satisfy this system
{{<br size="3">}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6">System of linear equations solver</div></center>
{{<br size="1">}}

We create a 2D tensor `A` of size `(3, 3)` with the coefficients of the equations <br>
& a 1D tensor `b` of size `3` with the right hand sides values of the equations
{{<br size="2">}}

```{py}
A = torch.tensor([[2., 3., -1.], [1., -2., 8.], [6., 1., -3.]]); print(A)
b = torch.tensor([5., 21., -1.]); print(b)
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
{{<br size="1.5">}}

Solving this system is as simple as running the `torch.linalg.solve` function:

```{py}
x = torch.linalg.solve(A, b); print(x)
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

## <center><div style="font-size: 3rem; color: #e6e6e6">Verify our result</div></center>
{{<br size="3">}}

```{py}
torch.allclose(A @ x, b)
```
{{<out>}}
```{py}
True
```
{{<br size="3">}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6">System of linear equations solver</div></center>
{{<br size="1.5">}}

Here is another simple example:
{{<br size="2.5">}}

```{py}
# Create a square normal random matrix
A = torch.randn(4, 4); print(A)
# Create a tensor of right hand side values
b = torch.randn(4); print(b)

# Solve the system
x = torch.linalg.solve(A, b); print(x)

# Verify
torch.allclose(A @ x, b)
```

---

## <center><div style="font-size: 3rem; color: #e6e6e6">System of linear equations solver</div></center>
{{<br size="1.5">}}

{{<out>}}
```{py}
tensor([[ 1.5091,  2.0820,  1.7067,  2.3804], # A (coefficients)
        [-1.1256, -0.3170, -1.0925, -0.0852],
        [ 0.3276, -0.7607, -1.5991,  0.0185],
        [-0.7504,  0.1854,  0.6211,  0.6382]])

tensor([-1.0886, -0.2666,  0.1894, -0.2190])  # b (right hand side values)

tensor([ 0.1992, -0.7011,  0.2541, -0.1526])  # x (our solution)

True									      # Verification
```

---

## <center><div style="font-size: 2.8rem; color: #e6e6e6">With 2 multidimensional tensors</div></center>

```{py}
A = torch.randn(2, 3, 3)              # Must be batches of square matrices
B = torch.randn(2, 3, 5)              # Dimensions must be compatible
X = torch.linalg.solve(A, B); print(X)
torch.allclose(A @ X, B)
```
{{<out>}}
```{py}
tensor([[[-0.0545, -0.1012,  0.7863, -0.0806, -0.0191],
         [-0.9846, -0.0137, -1.7521, -0.4579, -0.8178],
         [-1.9142, -0.6225, -1.9239, -0.6972,  0.7011]],
        [[ 3.2094,  0.3432, -1.6604, -0.7885,  0.0088],
         [ 7.9852,  1.4605, -1.7037, -0.7713,  2.7319],
         [-4.1979,  0.0849,  1.0864,  0.3098, -1.0347]]])
True
```

---

## <center><div style="font-size: 3rem; line-height: 3rem; color: #e6e6e6">Matrix inversions</div></center>
{{<br size="5">}}

{{%fragment%}}
{{<note>}}
It is faster & more numerically stable to solve a system of linear equations directly than to compute the inverse matrix first
{{</note>}}
{{%/fragment%}}

{{<br size="5">}}

{{%fragment%}}
{{<emph>}}
Limit matrix inversions to situations where it is truly necessary
{{</emph>}}
{{%/fragment%}}

---

## <center><div style="font-size: 3rem; line-height: 4rem; color: #e6e6e6">Matrix inversions</div></center>
{{<br size="2.5">}}

```{py}
A = torch.rand(2, 3, 3)      # Batch of square matrices
A_inv = torch.linalg.inv(A)  # Batch of inverse matrices
A @ A_inv                    # Batch of identity matrices
```
{{<out>}}
```{py}
tensor([[[ 1.0000e+00, -6.0486e-07,  1.3859e-06],
         [ 5.5627e-08,  1.0000e+00,  1.0795e-06],
         [-1.4133e-07,  7.9992e-08,  1.0000e+00]],
        [[ 1.0000e+00,  4.3329e-08, -3.6741e-09],
         [-7.4627e-08,  1.0000e+00,  1.4579e-07],
         [-6.3580e-08,  8.2354e-08,  1.0000e+00]]])
```

---

## <center><div style="font-size: 3.3rem; line-height: 3rem; color: #e6e6e6">Other linear algebra functions</div></center>
{{<br size="4">}}

{{<a "https://pytorch.org/docs/master/linalg.html?highlight=linalg#module-torch.linalg" "torch.linalg">}} contains many more functions:
{{<br size="2">}}

- {{<a "https://pytorch.org/docs/master/generated/torch.tensordot.html#torch.tensordot" "torch.tensordot">}} which generalizes matrix products
{{<br size="1.5">}}

- {{<a "https://pytorch.org/docs/master/generated/torch.linalg.tensorsolve.html#torch.linalg.tensorsolve" "torch.linalg.tensorsolve">}} which computes the solution `X` to the system `torch.tensordot(A, X) = B`
{{<br size="1.5">}}

- {{<a "https://pytorch.org/docs/master/generated/torch.linalg.eigvals.html#torch.linalg.eigvals" "torch.linalg.eigvals">}} which computes the eigenvalues of a square matrix
{{<br size="1.5">}}

- ...
{{<br size="2">}}

---

## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- What is a PyTorch tensor?</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Memory storage</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Data type (dtype)</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Basic operations</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Working with NumPy</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Linear algebra</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #e6e6e6">- Harvesting the power of GPUs</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Distributed operations</div>

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Device attribute</div></center>
{{<br size="2">}}

Tensor data can be placed in the memory of various processor types:
{{<br size="2.5">}}

- the RAM of CPU
{{<br size="1">}}

- the RAM of a GPU with CUDA support
{{<br size="1">}}

- the RAM of a GPU with {{<a "https://pytorch.org/blog/pytorch-for-amd-rocm-platform-now-available-as-python-package/" "AMD's ROCm support">}}
{{<br size="1">}}

- the RAM of an {{<a "https://www.tensorflow.org/xla" "XLA device">}} (e.g. {{<a "https://cloud.google.com/tpu" "Cloud TPU">}}) with the {{<a "https://github.com/pytorch/xla/" "torch_xla package">}}
{{<br size="3">}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Device attribute</div></center>
{{<br size="1">}}

The values for the device attributes are:
{{<br size="1.5">}}

- CPU: &nbsp;`'cpu'`
{{<br size="1">}}

- GPU (CUDA & AMD's ROCm): &nbsp;`'cuda'`
{{<br size="1">}}

- XLA: &nbsp;`xm.xla_device()`
{{<br size="3">}}

This last option requires to load the {{<a "https://github.com/pytorch/xla/" "torch_xla package">}} first:

```{py}
import torch_xla
import torch_xla.core.xla_model as xm
```
{{<br size="2.5">}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Creating a tensor on a specific device</div></center>
{{<br size="1.5">}}

By default, tensors are created on the CPU
{{<br size="2">}}

```{py}
t1 = torch.rand(2); print(t1)
```
{{<out>}}
```{py}
tensor([0.1606, 0.9771])  # Implicit: device='cpu'
```
{{<note>}}
Printed tensors only display attributes with values ≠ default values
{{</note>}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Creating a tensor on a specific device</div></center>
{{<br size="1.5">}}

You can create a tensor on an accelerator by specifying the device attribute
{{<br size="2">}}

```{py}
t2_gpu = torch.rand(2, device='cuda'); print(t2_gpu)
```
{{<out>}}
```{py}
tensor([0.0664, 0.7829], device='cuda:0')  # :0 means the 1st GPU
```
{{<br size="7.5">}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Copying a tensor to a specific device</div></center>
{{<br size="1">}}

You can also make copies of a tensor on other devices
{{<br size="2">}}
```{py}
# Make a copy of t1 on the GPU
t1_gpu = t1.to(device='cuda'); print(t1_gpu)
t1_gpu = t1.cuda()  # Same as above written differently

# Make a copy of t2_gpu on the CPU
t2 = t2_gpu.to(device='cpu'); print(t2)
t2 = t2_gpu.cpu()   # For the altenative form
```
{{<out>}}
```{py}
tensor([0.1606, 0.9771], device='cuda:0')
tensor([0.0664, 0.7829]) # Implicit: device='cpu'
```

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Multiple GPUs</div></center>
{{<br size="1">}}

If you have multiple GPUs, you can optionally specify which one a tensor should be created on or copied to
{{<br size="2">}}
```{py}
t3_gpu = torch.rand(2, device='cuda:0')  # Create a tensor on 1st GPU
t4_gpu = t1.to(device='cuda:0')          # Make a copy of t1 on 1st GPU
t5_gpu = t1.to(device='cuda:1')          # Make a copy of t1 on 2nd GPU
```
{{<br size="2">}}

{{%fragment%}}
Or the equivalent short forms for the last two:
{{<br size="2">}}

```{py}
t4_gpu = t1.cuda(0)
t5_gpu = t1.cuda(1)
```
{{%/fragment%}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Timing</div></center>
{{<br size="1">}}

Let's compare the timing of some matrix multiplications on CPU & GPU with PyTorch built-in benchmark utility
{{<br size="2">}}

```{py}
# Load utility
import torch.utils.benchmark as benchmark
# Define tensors on the CPU
A = torch.randn(500, 500)
B = torch.randn(500, 500)
# Define tensors on the GPU
A_gpu = torch.randn(500, 500, device='cuda')
B_gpu = torch.randn(500, 500, device='cuda')
```
{{<note>}}
I ran the code on my laptop with a dedicated GPU & 32GB RAM
{{</note>}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Timing</div></center>
{{<br size="1">}}

Let's time 100 runs to have a reliable benchmark
{{<br size="2">}}

```{py}
t0 = benchmark.Timer(
    stmt='A @ B',
    globals={'A': A, 'B': B})

t1 = benchmark.Timer(
    stmt='A_gpu @ B_gpu',
    globals={'A_gpu': A_gpu, 'B_gpu': B_gpu})

print(t0.timeit(100))
print(t1.timeit(100))
```

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Timing</div></center>

{{<out>}}
```{py}
A @ B
  2.29 ms
  1 measurement, 100 runs , 1 thread

A_gpu @ B_gpu
  108.02 us
  1 measurement, 100 runs , 1 thread
```

Speedup:

```{py}
(2.29 * 10**-3)/(108.02 * 10**-6) = 21
```
This computation was 21 times faster on my GPU than on CPU
{{<br size="1">}}

---

## <center><div style="font-size: 3rem; color: #e6e6e6">Timing</div></center>

By replacing `500` with `5000`, we get:
```{py}
A @ B
  2.21 s
  1 measurement, 100 runs , 1 thread

A_gpu @ B_gpu
  57.88 ms
  1 measurement, 100 runs , 1 thread
```

Speedup:

```{py}
2.21/(57.88 * 10**-3) = 38
```
The larger the computation, the greater the benefit: now 38 times faster
{{<br size="1">}}

---

## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- What is a PyTorch tensor?</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Memory storage</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Data type (dtype)</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Basic operations</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Working with NumPy</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Linear algebra</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #727274">- Harvesting the power of GPUs</div>
## <div style="font-size: 2.8rem; line-height: 3.3rem; color: #e6e6e6">- Distributed operations</div>

---

## <center><div style="font-size: 3.3rem; color: #e6e6e6">Parallel tensor operations</div></center>
{{<br size="2">}}

PyTorch already allows for {{<a "https://pytorch.org/tutorials/beginner/dist_overview.html" "distributed training of ML models">}}
{{<br size="2">}}

The implementation of distributed tensor operations—for instance for linear algebra—is {{<a "https://github.com/pytorch/pytorch/issues/69971" "in the work through the use of a ShardedTensor primitive">}} that can be sharded across nodes
{{<br size="2">}}

See also {{<a "https://github.com/pytorch/pytorch/issues/55207" "this issue">}} for more comments about upcoming developments on (among other things) tensor sharding
{{<br size="2">}}

---

# <center><span style="font-size: 7.0rem; color: #e6e6e6;">Questions?</span></center>
