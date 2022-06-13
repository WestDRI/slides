+++
title = "upscaling"
outputs = ["Reveal"]
[logowgnofront]
src = "/img/wg_for_dark_bg.png"
[backlink]
href = "https://westgrid-ml.netlify.app/workshops/upscaling/"
txt = "Back to Workshop Page"
[reveal_hugo]
custom_theme = "mh8.scss"
custom_theme_compile = true
+++

{{<br size="3">}}
## <div style="line-height: 5rem; font-size: 4.5rem; color: #e6e6e6">&emsp;Upscaling with PyTorch</div>
{{<br size="6">}}
#### <div style="line-height: 1.5rem; font-size: 2.3rem; text-align: right; color: #8c8c8c"><br>Marie-Hélène Burle &emsp;&emsp;&emsp;&nbsp;</div>
##### <div style="line-height: 1.5rem; font-size: 1.8rem; text-align: right; color: #8c8c8c">training@westgrid.ca &nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;</div>
##### <div style="line-height: 1.5rem; font-size: 1.8rem; text-align: right; color: #8c8c8c">November 18, 2021 &nbsp;&ensp;&emsp;&emsp;&emsp;&emsp;&emsp;</div>
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

#### Pixel-wise interpolation prior to DL
{{<br size="3">}}

Various methods ranging from simple (e.g. {{<a "https://en.wikipedia.org/wiki/Nearest-neighbor_interpolation" "nearest-neighbour">}}, {{<a "https://en.wikipedia.org/wiki/Bicubic_interpolation" "bicubic">}})
to complex (e.g. {{<a "https://en.wikipedia.org/wiki/Kriging" "Gaussian process regression">}}, {{<a "https://en.wikipedia.org/wiki/Wiener_filter" "iterative FIR Wiener filter">}}) algorithms

---

## <center><div style="font-size: 4rem; color: #e6e6e6">SR history Pre-DL</div></center>
{{<br size="2">}}

### {{<a "https://en.wikipedia.org/wiki/Nearest-neighbor_interpolation" "Nearest-neighbour interpolation">}}
{{<br size="1">}}

Simplest method of interpolation

Simply uses the value of the nearest pixel
{{<br size="4">}}

### {{<a "https://en.wikipedia.org/wiki/Bicubic_interpolation" "Bicubic interpolation">}}
{{<br size="1">}}

Consists of determining the 16 coefficients \\(a_{ij}\\) in:
{{<br size="2">}}

\\[
p(x, y) = \sum\_{i=0}^3\sum\_{i=0}^3 a\_{ij} x^i y^j
\\]

---

## <center><div style="font-size: 4rem; color: #e6e6e6">SR history with DL</div></center>
{{<br size="2">}}

Deep learning has seen a fast evolution marked by the successive emergence of various frameworks and architectures over the past 10 years
{{<br size="3">}}

Some key network architectures and frameworks:
{{<br size="1">}}

- CNN
- GAN
- Transformers
{{<br size="3">}}

These have all been applied to SR

---

## <center><div style="font-size: 3.5rem; color: #e6e6e6">SR history with DL</div></center>

*SR using (amongst others):*
{{<br size="0.5">}}

{{<a "https://arxiv.org/abs/1501.00092" "Convolutional Neural Networks (SRCNN)">}} — 2014

{{<a "https://www.cv-foundation.org/openaccess/content_cvpr_2015/html/Schulter_Fast_and_Accurate_2015_CVPR_paper.html" "Random Forests">}} — 2015

{{<a "https://link.springer.com/chapter/10.1007/978-3-319-46475-6_43" "Perceptual loss">}} — 2016

{{<a "https://www.cv-foundation.org/openaccess/content_cvpr_2016/html/Shi_Real-Time_Single_Image_CVPR_2016_paper.html" "Sub-pixel CNN">}} — 2016

{{<a "https://openaccess.thecvf.com/content_cvpr_2017/html/Ledig_Photo-Realistic_Single_Image_CVPR_2017_paper.html" "ResNet (SRResNet) & Generative Adversarial Network (SRGAN)">}} — 2017

{{<a "https://openaccess.thecvf.com/content_eccv_2018_workshops/w25/html/Wang_ESRGAN_Enhanced_Super-Resolution_Generative_Adversarial_Networks_ECCVW_2018_paper.html" "Enhanced SRGAN (ESRGAN)">}} — 2018

{{<a "https://arxiv.org/abs/1811.11482" "Predictive Filter Flow (PFF)">}} — 2018

{{<a "https://ieeexplore.ieee.org/abstract/document/9185010" "Densely Residual Laplacian attention Network (DRLN)">}} — 2019

{{<a "https://openaccess.thecvf.com/content_CVPR_2019/html/Dai_Second-Order_Attention_Network_for_Single_Image_Super-Resolution_CVPR_2019_paper.html" "Second-order Attention Network (SAN)">}} — 2019

{{<a "https://ieeexplore.ieee.org/abstract/document/8982168" "Learned downscaling with Content Adaptive Resampler (CAR)">}} — 2019

{{<a "https://link.springer.com/chapter/10.1007/978-3-030-58610-2_12" "Holistic Attention Network (HAN)">}} — 2020

{{<a "https://openaccess.thecvf.com/content/ICCV2021W/AIM/html/Liang_SwinIR_Image_Restoration_Using_Swin_Transformer_ICCVW_2021_paper.html" "Swin Transformer">}} — 2021

---

## <center><div style="font-size: 4rem; color: #e6e6e6">SRCNN</div></center>
{{<br size="1">}}

{{<img src="/img/upscaling/srcnn1.png" margin="rem" title="" width="80%" line-height="1.3rem">}}
{{<br size="1">}}
Dong, C., Loy, C. C., He, K., & Tang, X. (2015). Image super-resolution using deep convolutional networks. IEEE transactions on pattern analysis and machine intelligence, 38(2), 295-307
{{</img>}}

> <span style="font-size: 1.5rem;">Given a low-resolution image Y, the first convolutional layer of the SRCNN extracts a set of feature maps. The
second layer maps these feature maps nonlinearly to high-resolution patch representations. The last layer combines
the predictions within a spatial neighbourhood to produce the final high-resolution image F(Y)</span>

---

## <center><div style="font-size: 4rem; color: #e6e6e6">SRCNN</div></center>
{{<br size="2">}}

&emsp;&ensp;Can use sparse-coding-based methods
{{<br size="2">}}

{{<img src="/img/upscaling/srcnn2.png" margin="rem" title="" width="90%" line-height="1.3rem">}}
{{<br size="1">}}
Dong, C., Loy, C. C., He, K., & Tang, X. (2015). Image super-resolution using deep convolutional networks. IEEE transactions on pattern analysis and machine intelligence, 38(2), 295-307
{{</img>}}

---

## <center><div style="font-size: 4rem; color: #e6e6e6">SRGAN</div></center>
{{<br size="3">}}

Do not provide the best PSNR, but can give more realistic results by providing more texture (less smoothing)

---

## <center><div style="font-size: 4rem; color: #e6e6e6">GAN</div></center>
{{<br size="3">}}

{{<img src="/img/upscaling/gan.png" margin="rem" title="" width="60%" line-height="0.5rem">}}
{{<br size="1">}}

{{<a "https://www.manning.com/books/deep-learning-with-pytorch" "Stevens E., Antiga L., & Viehmann T. (2020). Deep Learning with PyTorch">}}
{{</img>}}

---

## <center><div style="font-size: 4rem; color: #e6e6e6">SRGAN</div></center>
{{<br size="1">}}

{{<img src="/img/upscaling/srgan.png" margin="rem" title="" width="80%" line-height="1.3rem">}}
{{<br size="1">}}
Ledig, C., Theis, L., Huszár, F., Caballero, J., Cunningham, A., Acosta, A., ... & Shi, W. (2017). Photo-realistic single image super-resolution using a generative adversarial network. In Proceedings of the IEEE conference on computer vision and pattern recognition (pp. 4681-4690)
{{</img>}}


---

## <center><div style="font-size: 4rem; color: #e6e6e6">SRGAN</div></center>
{{<br size="3">}}

Followed by the ESRGAN and many other flavours of SRGANs

---

## <center><div style="font-size: 8rem; color: #e6e6e6">SwinIR</div></center>
{{<br size="3">}}

---

## <center><div style="font-size: 3.5rem; color: #e6e6e6"">Attention</div></center>
{{<br size="3">}}

{{<notes>}}
Mnih, V., Heess, N., & Graves, A. (2014). Recurrent models of visual attention. In Advances in neural information processing systems (pp. 2204-2212)
{{</notes>}}

(cited 2769 times)

{{<notes>}}
Vaswani, A., Shazeer, N., Parmar, N., Uszkoreit, J., Jones, L., Gomez, A. N., ... & Polosukhin, I. (2017). Attention is all you need. In Advances in neural information processing systems (pp. 5998-6008)
{{</notes>}}

(cited 30999 times...)

---

## <center><div style="font-size: 3.5rem; color: #e6e6e6"">Transformers</div></center>

{{<img src="/img/upscaling/transformer.png" margin="rem" title="" width="35%" line-height="1.3rem">}}
{{<br size="0.5">}}
Vaswani, A., Shazeer, N., Parmar, N., Uszkoreit, J., Jones, L., Gomez, A. N., ... & Polosukhin, I. (2017). Attention is all you need. In Advances in neural information processing systems (pp. 5998-6008)
{{</img>}}

---

## <center><div style="font-size: 3.5rem; color: #e6e6e6"">Transformers</div></center>
{{<br size="3">}}

Initially used for NLP to replace RNN as they allow parallelization
{{<br size="2">}}
Now entering the domain of vision and others
{{<br size="2">}}
Very performant with relatively few parameters

---

## <center><div style="font-size: 3.5rem; color: #e6e6e6">Swin Transformer</div></center>
{{<br size="3">}}

The {{<a "https://arxiv.org/abs/2103.14030" "Swin Transformer">}} improved the use of transformers to the vision domain
{{<br size="3">}}

Swin = Shifted WINdows

---

## <center><div style="font-size: 3.5rem; color: #e6e6e6">Swin Transformer</div></center>
{{<br size="1">}}

Swin transformer (left) vs transformer as initially applied to vision (right):
{{<br size="2">}}

{{<img src="/img/upscaling/swint.png" margin="rem" title="" width="70%" line-height="1.3rem">}}
{{<br size="1">}}
Liu, Z., Lin, Y., Cao, Y., Hu, H., Wei, Y., Zhang, Z., ... & Guo, B. (2021). Swin transformer: Hierarchical vision transformer using shifted windows. arXiv preprint arXiv:2103.14030
{{</img>}}


---

## <center><div style="font-size: 3.5rem; color: #e6e6e6"">SwinIR</div></center>
{{<br size="3">}}

{{<img src="/img/upscaling/SwinIR_archi.png" margin="rem" title="" width="%" line-height="1.3rem">}}
{{<br size="0.5">}}
Liang, J., Cao, J., Sun, G., Zhang, K., Van Gool, L., & Timofte, R. (2021). SwinIR: Image restoration using swin transformer. In Proceedings of the IEEE/CVF International Conference on Computer Vision (pp. 1833-1844)
{{</img>}}

---

## <center><div style="font-size: 3.5rem; color: #e6e6e6"">Training sets used</div></center>
{{<br size="3">}}

{{<a "https://data.vision.ee.ethz.ch/cvl/DIV2K/" "DIV2K">}}, Flickr2K, and other datasets

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

- Implement them yourself (using {{%cdark%}}torch.log10{{%/cdark%}}, etc.)
{{<br size="2">}}

- Use some library that implements them (e.g. {{<a "https://github.com/kornia/kornia/tree/master/kornia/losses" "kornia">}})
{{<br size="2">}}

- Use code of open source project with good implementation (e.g. {{<a "https://github.com/JingyunLiang/SwinIR/blob/main/utils/util_calculate_psnr_ssim.py" "SwinIR">}})
{{<br size="2">}}

- Use some higher level library that provides them (e.g. {{<a "https://pytorch.org/ignite/metrics.html" "ignite">}})

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Metrics implementation</div></center>
{{<br size="2.5">}}

- Implement them yourself (using {{%cdark%}}torch.log10{{%/cdark%}}, etc.)
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
{{<br size="2">}}

### {{<a "https://paperswithcode.com/dataset/bsd100" "BSD100 (Berkeley Segmentation Dataset)">}}
{{<br size="1">}}
{{<imgm src="/img/upscaling/bsd100.png" margin="0 0 0 1.5rem" title="" width="70%" line-height="0.5rem">}}{{</imgm>}}

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Benchmark datasets</div></center>

### <font color="orange">Set5</font>
{{<imgm src="/img/upscaling/set5.png" margin="0 0 0 0.2rem" title="" width="50%" line-height="0.5rem">}}{{</imgm>}}

### {{<a "https://paperswithcode.com/dataset/set14" "Set14">}}
{{<imgm src="/img/upscaling/set14.png" margin="0 0 0 1.5rem" title="" width="70%" line-height="0.5rem">}}{{</imgm>}}
{{<br size="2">}}

### {{<a "https://paperswithcode.com/dataset/bsd100" "BSD100 (Berkeley Segmentation Dataset)">}}
{{<br size="1">}}
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

{{<img src="/img/upscaling/psnr_ssim_set5.png" margin="rem" title="" width="65%" line-height="0.5rem">}}
{{</img>}}

---

###### <center><div style="font-size: 2rem; line-height: 2rem; color: #e6e6e6">PSNR vs number of parameters for different methods on Set5x4</div></center>
{{<br size="2">}}
{{<img src="/img/upscaling/SwinIR_benchmark.png" margin="rem" title="" width="80%" line-height="1.3rem">}}
{{<br size="1">}}
Liang, J., Cao, J., Sun, G., Zhang, K., Van Gool, L., & Timofte, R. (2021). SwinIR: Image restoration using swin transformer. In Proceedings of the IEEE/CVF International Conference on Computer Vision (pp. 1833-1844)
{{</img>}}

---

###### <center><div style="font-size: 2rem; line-height: 2.5rem; color: #e6e6e6">Comparison between SwinIR & a representative CNN-based model (RCAN) on classical SR images x4</div></center>
{{<br size="3">}}

{{<img src="/img/upscaling/SwinIR_CNN_comparison1.png" margin="rem" title="" width="%" line-height="1.3rem">}}
{{<br size="1">}}
Liang, J., Cao, J., Sun, G., Zhang, K., Van Gool, L., & Timofte, R. (2021). SwinIR: Image restoration using swin transformer. In Proceedings of the IEEE/CVF International Conference on Computer Vision (pp. 1833-1844)
{{</img>}}

---

###### <center><div style="font-size: 2rem; line-height: 2.5rem; color: #e6e6e6">Comparison between SwinIR & a representative CNN-based model (RCAN) on classical SR images x4</div></center>
{{<br size="3">}}

<center>
{{<img src="/img/upscaling/SwinIR_CNN_comparison2.png" margin="rem" title="" width="34.5%" line-height="1.3rem">}}
{{<br size="1">}}
Liang, J., Cao, J., Sun, G., Zhang, K., Van Gool, L., & Timofte, R. (2021). SwinIR: Image restoration using swin transformer. In Proceedings of the IEEE/CVF International Conference on Computer Vision (pp. 1833-1844)
{{</img>}}
</center>

---

{{<img src="/img/upscaling/SwinIR_demo.png" margin="rem" title="" width="%" line-height="1.3rem">}}
Liang, J., Cao, J., Sun, G., Zhang, K., Van Gool, L., & Timofte, R. (2021). SwinIR: Image restoration using swin transformer. In Proceedings of the IEEE/CVF International Conference on Computer Vision (pp. 1833-1844)
{{</img>}}

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Let's use SwinIR</div></center>
{{<br size="4">}}

```sh
# Get the model
git clone git@github.com:JingyunLiang/SwinIR.git
cd SwinIR

# Copy our test images in the repo
cp -r <some/path>/my_tests /testsets/my_tests

# Run the model on our images
python main_test_swinir.py --tile 400 --task real_sr --scale 4 --large_model --model_path model_zoo/swinir/003_realSR_BSRGAN_DFOWMFC_s64w8_SwinIR-L_x4_GAN.pth --folder_lq testsets/my_tests
```

Ran in 9 min on my machine with one GPU and 32GB of RAM

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Results</div></center>
{{<br size="4">}}

<figure style="display: table; margin: 0rem auto">
  <div class="row">
	<div class="column">
	 {{<img src="/img/upscaling/lr/berlin_1945_1.jpg" title="" width="%" line-height="rem">}}
	 {{</img>}}
	</div>
	<div class="column">
  	 {{<img src="/img/upscaling/hr/berlin_1945_1.png" title="" width="%" line-height="rem">}}
	 {{</img>}}
	</div>
  </div>
</figure>

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Results</div></center>
{{<br size="4">}}

<figure style="display: table; margin: 0rem auto">
  <div class="row">
	<div class="column_large">
	 {{<img src="/img/upscaling/lr_zoom/berlin_1945_1.jpg" title="" width="%" line-height="rem">}}
	 {{</img>}}
	</div>
	<div class="column_large">
  	 {{<img src="/img/upscaling/hr_zoom/berlin_1945_1.png" title="" width="%" line-height="rem">}}
	 {{</img>}}
	</div>
  </div>
</figure>

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Results</div></center>
{{<br size="4">}}

<figure style="display: table; margin: 0rem auto">
  <div class="row">
	<div class="column">
	 {{<img src="/img/upscaling/lr/berlin_1945_2.jpg" title="" width="%" line-height="rem">}}
	 {{</img>}}
	</div>
	<div class="column">
  	 {{<img src="/img/upscaling/hr/berlin_1945_2.png" title="" width="%" line-height="rem">}}
	 {{</img>}}
	</div>
  </div>
</figure>

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Results</div></center>
{{<br size="4">}}

<figure style="display: table; margin: 0rem auto">
  <div class="row">
	<div class="column_large">
	 {{<img src="/img/upscaling/lr_zoom/berlin_1945_2.jpg" title="" width="%" line-height="rem">}}
	 {{</img>}}
	</div>
	<div class="column_large">
  	 {{<img src="/img/upscaling/hr_zoom/berlin_1945_2.png" title="" width="%" line-height="rem">}}
	 {{</img>}}
	</div>
  </div>
</figure>

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Results</div></center>
{{<br size="4">}}

<figure style="display: table; margin: 0rem auto">
  <div class="row">
	<div class="column">
	 {{<img src="/img/upscaling/lr/bruegel.jpg" title="" width="%" line-height="rem">}}
	 {{</img>}}
	</div>
	<div class="column">
  	 {{<img src="/img/upscaling/hr/bruegel.png" title="" width="%" line-height="rem">}}
	 {{</img>}}
	</div>
  </div>
</figure>

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Results</div></center>
{{<br size="4">}}

<figure style="display: table; margin: 0rem auto">
  <div class="row">
	<div class="column_large">
	 {{<img src="/img/upscaling/lr_zoom/bruegel.jpg" title="" width="%" line-height="rem">}}
	 {{</img>}}
	</div>
	<div class="column_large">
  	 {{<img src="/img/upscaling/hr_zoom/bruegel.png" title="" width="%" line-height="rem">}}
	 {{</img>}}
	</div>
  </div>
</figure>

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Results</div></center>
{{<br size="4">}}

<figure style="display: table; margin: 0rem auto">
  <div class="row">
	<div class="column">
	 {{<img src="/img/upscaling/lr/vasarely.jpg" title="" width="%" line-height="rem">}}
	 {{</img>}}
	</div>
	<div class="column">
  	 {{<img src="/img/upscaling/hr/vasarely.png" title="" width="%" line-height="rem">}}
	 {{</img>}}
	</div>
  </div>
</figure>

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Results</div></center>
{{<br size="4">}}

<figure style="display: table; margin: 0rem auto">
  <div class="row">
	<div class="column_large">
	 {{<img src="/img/upscaling/lr_zoom/vasarely.jpg" title="" width="%" line-height="rem">}}
	 {{</img>}}
	</div>
	<div class="column_large">
  	 {{<img src="/img/upscaling/hr_zoom/vasarely.png" title="" width="%" line-height="rem">}}
	 {{</img>}}
	</div>
  </div>
</figure>

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Results</div></center>
{{<br size="4">}}

<figure style="display: table; margin: 0rem auto">
  <div class="row">
	<div class="column">
	 {{<img src="/img/upscaling/lr/bird.png" title="" width="%" line-height="rem">}}
	 {{</img>}}
	</div>
	<div class="column">
  	 {{<img src="/img/upscaling/hr/bird.png" title="" width="%" line-height="rem">}}
	 {{</img>}}
	</div>
  </div>
</figure>

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Results</div></center>
{{<br size="4">}}

<figure style="display: table; margin: 0rem auto">
  <div class="row">
	<div class="column_large">
	 {{<img src="/img/upscaling/lr_zoom/bird.png" title="" width="%" line-height="rem">}}
	 {{</img>}}
	</div>
	<div class="column_large">
  	 {{<img src="/img/upscaling/hr_zoom/bird.png" title="" width="%" line-height="rem">}}
	 {{</img>}}
	</div>
  </div>
</figure>

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Metrics</div></center>
{{<br size="3">}}

We could use the {{<a "https://github.com/JingyunLiang/SwinIR/blob/main/utils/util_calculate_psnr_ssim.py" "PSNR and SSIM implementations from SwinIR">}}, but let's try the {{<a "https://kornia.readthedocs.io/en/latest/index.html" "Kornia">}} functions we mentioned earlier:
{{<br size="2">}}

- {{<a "https://kornia.readthedocs.io/en/latest/metrics.html?highlight=psnr#kornia.metrics.psnr" "kornia.metrics.psnr">}}
{{<br size="1">}}

- {{<a "https://kornia.readthedocs.io/en/latest/metrics.html?highlight=psnr#kornia.metrics.ssim" "kornia.metrics.ssim">}}

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Metrics</div></center>
{{<br size="3">}}

Let's load the libraries we need:

```{py}
import kornia
from PIL import Image
import torch
from torchvision import transforms
```

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Metrics</div></center>
{{<br size="3">}}

Then, we load one pair images (LR and HR):

```{py}
berlin1_lr = Image.open("<some/path>/lr/berlin_1945_1.jpg")
berlin1_hr = Image.open("<some/path>/hr/berlin_1945_1.png")
```
{{<br size="3">}}

We can display these images with:

```{py}
berlin1_lr.show()
berlin1_hr.show()
```

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Metrics</div></center>
{{<br size="3">}}

Now, we need to resize them so that they have identical dimensions and turn them into tensors:

```{py}
preprocess = transforms.Compose([
        transforms.Resize(256),
        transforms.ToTensor()
        ])

berlin1_lr_t = preprocess(berlin1_lr)
berlin1_hr_t = preprocess(berlin1_hr)
```

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Metrics</div></center>

{{<idark>}}
```{py}
berlin1_lr_t.shape
berlin1_hr_t.shape
```

{{<odark>}}
```{py}
torch.Size([3, 267, 256])
torch.Size([3, 267, 256])
```

We now have tensors with 3 dimensions:
{{<br size="2">}}

- the channels (RGB)
- the height of the image (in pixels)
- the width of the image (in pixels)

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Metrics</div></center>
{{<br size="3">}}

As data processing is done in batch in ML, we need to add a 4th dimension: the **batch size**
{{<br size="2">}}

(It will be equal to {{%cdark%}}1{{%/cdark%}} since we have a batch size of a single image)
{{<br size="2">}}

```{py}
batch_berlin1_lr_t = torch.unsqueeze(berlin1_lr_t, 0)
batch_berlin1_hr_t = torch.unsqueeze(berlin1_hr_t, 0)
```

---

## <center><div style="font-size: 4rem; color: #e6e6e6">Metrics</div></center>
{{<br size="1">}}

Our new tensors are now ready:
{{<br size="2">}}

{{<idark>}}
```{py}
batch_berlin1_lr_t.shape
batch_berlin1_hr_t.shape
```

{{<odark>}}
```{py}
torch.Size([1, 3, 267, 256])
torch.Size([1, 3, 267, 256])
```

---

## <center><div style="font-size: 4rem; color: #e6e6e6">PSNR</div></center>
{{<br size="3">}}

{{<idark>}}
```{py}
psnr_value = kornia.metrics.psnr(batch_berlin1_lr_t, batch_berlin1_hr_t, max_val=1.0)
psnr_value.item()
```
{{<odark>}}
```{py}
33.379642486572266
```

---

## <center><div style="font-size: 4rem; color: #e6e6e6">SSIM</div></center>
{{<br size="3">}}

{{<idark>}}
```{py}
ssim_map = kornia.metrics.ssim(batch_berlin1_lr_t, batch_berlin1_hr_t, window_size=5, max_val=1.0, eps=1e-12)
ssim_map.mean().item()
```

{{<odark>}}
```{py}
0.9868119359016418
```

---

# <center><span style="font-size: 5.0rem; color: #e6e6e6"">Questions?</span></center>
