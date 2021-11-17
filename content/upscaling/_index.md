+++
title = "upscaling"
outputs = ["Reveal"]
[logowgnofront]
src = "/img/wg_for_dark_bg.png"
[backlink]
href = "https://westgrid-ml.netlify.app/webinars/upscaling/"
txt = "Back to Webinar Page"
[reveal_hugo]
custom_theme = "mh6.scss"
custom_theme_compile = true
+++

{{<br size="3">}}
## <div style="line-height: 5rem; font-size: 4.5rem; color: #e6e6e6">&emsp;Upscaling with PyTorch</div>
{{<br size="6">}}
#### <div style="line-height: 1.5rem; font-size: 2.3rem; text-align: right; color: #8c8c8c"><br>Marie-Hélène Burle &emsp;&emsp;&emsp;&nbsp;</div>
##### <div style="line-height: 1.5rem; font-size: 1.8rem; text-align: right; color: #8c8c8c">training@westgrid.ca &nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;</div>
##### <div style="line-height: 1.5rem; font-size: 1.8rem; text-align: right; color: #8c8c8c">November 24, 2021 &nbsp;&ensp;&emsp;&emsp;&emsp;&emsp;&emsp;</div>
<figure style="display: table; margin: 0rem auto">
  <div class="row">
	<div class="column">
	 {{<img src="/img/wg_no_bg.png" title="" width="%" line-height="rem">}}
	 {{</img>}}
	</div>
  </div>
</figure>

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Definitions</div></center>
{{<br size="3">}}

<font color="orange">**LR**:</font> &ensp;&ensp;low resolution
{{<br size="2">}}

<font color="orange">**HR**:</font> &ensp;&ensp;high resolution
{{<br size="2">}}

<font color="orange">**SR**:</font> &ensp;&ensp;super-resolution = reconstruction of HR images from LR images
{{<br size="2">}}

<font color="orange">**SISR**:</font> &nbsp;single-image super-resolution = SR using a single input image

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Models assessment</div></center>
{{<br size="2">}}

&emsp;2 metrics commonly used:
{{<br size="3">}}

#### &emsp;{{<a "https://en.wikipedia.org/wiki/Peak_signal-to-noise_ratio" "Peak sign-to-noise ratio (PSNR) measured in dB">}}
{{<br size="2">}}

&emsp; \\(\frac{\text{Maximum possible power of signal}}{\text{Power of noise (calculated as the mean squared error)}}\\) &emsp; <span style="font-size: 1.5rem;">Calculated at the pixel level</span>
{{<br size="4">}}

#### &emsp;{{<a "https://en.wikipedia.org/wiki/Structural_similarity" "Structural similarity index measure (SSIM)">}}
{{<br size="2">}}

&emsp;<span style="font-size: 1.8rem;">Prediction of perceived image quality based on a "perfect" reference image</span>

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Models assessment</div></center>
{{<br size="2.5">}}

#### &emsp;&emsp;&emsp;&emsp;{{<a "https://en.wikipedia.org/wiki/Peak_signal-to-noise_ratio" "Peak sign-to-noise ratio (PSNR) measured in dB">}}

\\[
PSNR = 10\,\cdot\,log_{10}\,\left(\frac{MAX_I^2}{MSE}\right)
\\]
{{<br size="3">}}

#### &emsp;&emsp;&emsp;&emsp;{{<a "https://en.wikipedia.org/wiki/Structural_similarity" "Structural similarity index measure (SSIM)">}}

\\[
SSIM(x,y) = \frac{(2\mu_x\mu_y + c_1) + (2 \sigma _{xy} + c_2)} 
    {(\mu_x^2 + \mu_y^2+c_1) (\sigma_x^2 + \sigma_y^2+c_2)}
\\]

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Metrics implementation</div></center>
{{<br size="2.5">}}

- Implement them yourself (using {{%c%}}torch.log10{{%/c%}}, etc.)
{{<br size="2">}}

- Use some library that implements them (e.g. {{<a "https://github.com/kornia/kornia/tree/master/kornia/losses" "kornia">}})
{{<br size="2">}}

- Use code of open source project with good implementation (e.g. {{<a "https://github.com/JingyunLiang/SwinIR/blob/main/utils/util_calculate_psnr_ssim.py" "SwinIR">}})
{{<br size="2">}}

- Use some higher level library that provides them (e.g. {{<a "https://pytorch.org/ignite/metrics.html" "ignite">}})

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Metrics implementation</div></center>
{{<br size="2.5">}}

- Implement them yourself (using {{%c%}}torch.log10{{%/c%}}, etc.)
{{<br size="2">}}

- <font color="orange">Use some library that implements them (e.g. {{<a "https://github.com/kornia/kornia/tree/master/kornia/losses" "kornia">}})</font>
{{<br size="2">}}

- Use code of open source project with good implementation (e.g. {{<a "https://github.com/JingyunLiang/SwinIR/blob/main/utils/util_calculate_psnr_ssim.py" "SwinIR">}})
{{<br size="2">}}

- Use some higher level library that provides them (e.g. with {{<a "https://pytorch.org/ignite/metrics.html" "ignite">}})

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Metrics implementation</div></center>
{{<br size="4">}}

```{py}
import kornia

psnr_value = kornia.metrics.psnr(input, target, max_val)
ssim_value = kornia.metrics.ssim(img1, img2, window_size, max_val=1.0, eps=1e-12)
```

See the Kornia documentation for more info on {{<a "https://kornia.readthedocs.io/en/latest/metrics.html?highlight=psnr#kornia.metrics.psnr" "kornia.metrics.psnr">}} & {{<a "https://kornia.readthedocs.io/en/latest/metrics.html?highlight=psnr#kornia.metrics.ssim" "kornia.metrics.ssim">}}

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Benchmark datasets</div></center>

### {{<a "https://paperswithcode.com/dataset/set5" "Set5">}}
{{<imgm src="/img/upscaling/set5.png" margin="0 0 0 0.2rem" title="" width="50%" line-height="0.5rem">}}{{</imgm>}}

### {{<a "https://paperswithcode.com/dataset/set14" "Set14">}}
{{<imgm src="/img/upscaling/set14.png" margin="0 0 0 1.5rem" title="" width="70%" line-height="0.5rem">}}{{</imgm>}}

### {{<a "https://paperswithcode.com/dataset/bsd100" "BSD100">}}
{{<imgm src="/img/upscaling/bsd100.png" margin="0 0 0 1.5rem" title="" width="70%" line-height="0.5rem">}}{{</imgm>}}

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Benchmark datasets</div></center>

### <font color="orange">Set5</font>
{{<imgm src="/img/upscaling/set5.png" margin="0 0 0 0.2rem" title="" width="50%" line-height="0.5rem">}}{{</imgm>}}

### {{<a "https://paperswithcode.com/dataset/set14" "Set14">}}
{{<imgm src="/img/upscaling/set14.png" margin="0 0 0 1.5rem" title="" width="70%" line-height="0.5rem">}}{{</imgm>}}

### {{<a "https://paperswithcode.com/dataset/bsd100" "BSD100">}}
{{<imgm src="/img/upscaling/bsd100.png" margin="0 0 0 1.5rem" title="" width="70%" line-height="0.5rem">}}{{</imgm>}}

---

## <center><div style="font-size: 4rem; color: #e6e6e6">The Set5 dataset</div></center>
{{<br size="3">}}

A dataset consisting of 5 images which has been used {{<a "http://people.rennes.inria.fr/Aline.Roumy/results/SR_BMVC12.html" "for at least 18 years">}} to assess SR methods

---

## <center><div style="font-size: 4rem; color: #e6e6e6">How to get the dataset?</div></center>
{{<br size="3">}}

From the {{<a "https://huggingface.co/datasets" "HuggingFace Datasets Hub">}} with the HuggingFace {{<a "https://pypi.org/project/datasets/" "datasets">}} package:
{{<br size="3">}}

```{py}
from datasets import load_dataset

set5 = load_dataset('eugenesiow/Set5', 'bicubic_x4', split='validation')
```
---

## <center><div style="font-size: 4rem; color: #e6e6e6">Dataset exploration</div></center>
{{<br size="3">}}

```{py}
print(set5)
len(set5)
set5[0]
set5.shape
set5.column_names
set5.features
set5.set_format('torch', columns=['hr', 'lr'])
set5.format
```

---

## <center><div style="font-size: 4rem; color: #e6e6e6">History of super-resolution</div></center>
{{<br size="3">}}

#### Can be broken down into 2 main periods:
{{<br size="2">}}

- A rather slow history with various interpolation algorithms of increasing complexity before deep neural networks
{{<br size="2">}}

- An incredibly fast evolution since the advent of deep learning (DL)

---

## <center><div style="font-size: 4rem; color: #e6e6e6">SR history Pre-DL</div></center>
{{<br size="3">}}

#### Pixel-wise interpolation
{{<br size="3">}}

Various methods ranging from simple (e.g. {{<a "https://en.wikipedia.org/wiki/Nearest-neighbor_interpolation" "nearest-neighbour">}}, {{<a "https://en.wikipedia.org/wiki/Bicubic_interpolation" "bicubic">}})
to complex (e.g. {{<a "https://en.wikipedia.org/wiki/Kriging" "Gaussian process regression">}}, {{<a "https://en.wikipedia.org/wiki/Wiener_filter" "iterative FIR Wiener filter">}}) algorithms

---

## <center><div style="font-size: 4rem; color: #e6e6e6">SR history with DL</div></center>
{{<br size="1">}}

*SR using (amongst others):*
{{<br size="1">}}

{{<a "https://arxiv.org/abs/1501.00092" "Convolutional Neural Networks (SRCNN)">}} — 2014

{{<a "https://www.cv-foundation.org/openaccess/content_cvpr_2015/html/Schulter_Fast_and_Accurate_2015_CVPR_paper.html" "Random Forests">}} — 2015

{{<a "https://openaccess.thecvf.com/content_cvpr_2017/html/Ledig_Photo-Realistic_Single_Image_CVPR_2017_paper.html" "Generative Adversarial Network (SRGAN)">}} — 2017

{{<a "https://openaccess.thecvf.com/content_eccv_2018_workshops/w25/html/Wang_ESRGAN_Enhanced_Super-Resolution_Generative_Adversarial_Networks_ECCVW_2018_paper.html" "Enhanced SRGAN (ESRGAN)">}} — 2018

{{<a "https://arxiv.org/abs/1811.11482" "Predictive Filter Flow (PFF)">}} — 2018

{{<a "https://ieeexplore.ieee.org/abstract/document/9185010" "Densely Residual Laplacian attention Network (DRLN)">}} — 2019

{{<a "https://openaccess.thecvf.com/content_CVPR_2019/html/Dai_Second-Order_Attention_Network_for_Single_Image_Super-Resolution_CVPR_2019_paper.html" "Second-order Attention Network (SAN)">}} — 2019

{{<a "https://ieeexplore.ieee.org/abstract/document/8982168" "Learned downscaling with Content Adaptive Resampler (CAR)">}} — 2019

{{<a "https://link.springer.com/chapter/10.1007/978-3-030-58610-2_12" "Holistic Attention Network (HAN)">}} — 2020

{{<a "https://openaccess.thecvf.com/content/ICCV2021W/AIM/html/Liang_SwinIR_Image_Restoration_Using_Swin_Transformer_ICCVW_2021_paper.html" "Swin Transformer">}} — 2021

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Benchmarks</div></center>
{{<br size="3">}}

{{<a "https://ieeexplore.ieee.org/abstract/document/6411957" "A 2012 review of interpolation methods for SR">}} gives the metrics for a series of interpolation methods (using other datasets)

---

<figure style="display: table; margin: 0rem auto">
  <div class="row">
	<div class="column">
	 {{<img src="/img/upscaling/1_interpolation_psnr1.png" title="" width="%" line-height="rem">}}
	 {{</img>}}
	</div>
	<div class="column">
	   {{<img src="/img/upscaling/2_interpolation_ssim1.png" title="" width="%" line-height="rem">}}
	   {{</img>}}
	</div>
  </div>
    <div class="row">
	<div class="column">
	 {{<img src="/img/upscaling/3_interpolation_psnr2.png" title="" width="%" line-height="rem">}}
	 {{</img>}}
	</div>
	<div class="column">
	   {{<img src="/img/upscaling/4_interpolation_ssim2.png" title="" width="%" line-height="rem">}}
	   {{</img>}}
	</div>
  </div>
</figure>

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Interpolation methods</div></center>
{{<br size="3">}}

<figure style="display: table; margin: 0rem auto">
  <div class="row">
	<div class="column_single">
	 {{<img src="/img/upscaling/1_interpolation_psnr1_mean.png" title="" width="%" line-height="rem">}}
	 {{</img>}}
	</div>
  </div>
  {{<br size="3">}}

  <div class="row">
	<div class="column_single">
	 {{<img src="/img/upscaling/3_interpolation_psnr2_mean.png" title="" width="%" line-height="rem">}}
	 {{</img>}}
	</div>
   </div>
   {{<br size="3">}}

   <div class="row">
	<div class="column_single">
	   {{<img src="/img/upscaling/2_interpolation_ssim1_mean.png" title="" width="%" line-height="rem">}}
	   {{</img>}}
	</div>
   </div>
   {{<br size="3">}}

   <div class="row">
	<div class="column_single">
	   {{<img src="/img/upscaling/4_interpolation_ssim2_mean.png" title="" width="%" line-height="rem">}}
	   {{</img>}}
	</div>
  </div>
</figure>

---

## <center><div style="font-size: 4rem; color: #e6e6e6">DL methods</div></center>
{{<br size="4">}}

<center>{{<a "https://paperswithcode.com/" "The Papers with Code website">}} lists {{<a "https://paperswithcode.com/sota/image-super-resolution-on-set5-4x-upscaling" "available benchmarks on Set5">}}</center>

---

{{<img src="/img/upscaling/psnr_ssim_set5.png" margin="rem" title="" width="60%" line-height="0.5rem">}}
{{</img>}}

