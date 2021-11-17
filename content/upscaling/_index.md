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
