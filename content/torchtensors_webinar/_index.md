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

## <div style="line-height: 5rem; font-size: 4.1rem; color: #727274;">Everything you wanted to know (and more) about</div>
{{<br size="4">}}

## <div style="line-height: 5rem; font-size: 4.2rem; color: #f6903c;">&emsp;&emsp;&emsp;&ensp;PyTorch tensors</div>
{{<br size="4">}}

#### <div style="line-height: 1.5rem; font-size: 2.3rem; text-align: right; color: #727274;"><br>Marie-Hélène Burle &emsp;&emsp;&emsp;&nbsp;</div>
##### <div style="line-height: 1.5rem; font-size: 1.8rem; text-align: right; color: #727274;">training@westgrid.ca &nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;</div>
##### <div style="line-height: 1.5rem; font-size: 1.8rem; text-align: right; color: #727274;">November 24, 2021 &nbsp;&ensp;&emsp;&emsp;&emsp;&emsp;&emsp;</div>
<figure style="display: table; margin: 0rem auto">
  <div class="row">
	<div class="column">
	 {{<img src="/img/wg_no_bg.png" title="" width="%" line-height="rem">}}
	 {{</img>}}
	</div>
  </div>
</figure>

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

## <center><div style="font-size: 3rem; color: #e6e6e6">Moving a tensor to a specific device</div></center>
{{<br size="3">}}

```{py}
t_cpu = t_gpu.to(device='cpu')     # move to CPU
t_gpu = t_cpu.to(device='cuda')    # move to GPU
t_gpu = t_cpu.to(device='cuda:0')  # move to a specific GPU
t_gpu = t_cpu.to(device='cuda:1')  # move to a specific GPU
```

