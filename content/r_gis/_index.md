+++
title = "r_gis"
outputs = ["Reveal"]
[logowgnofront]
src = "/img/wg_white_removed_medium.png"
[backlink]
href = "https://westgrid-cli.netlify.app/webinars/adv_gis_r/"
txt = "Back to webinar page"
[reveal_hugo]
custom_theme = "mh4.scss"
custom_theme_compile = true
+++

# <center><span style="line-height: 11rem; font-size: 4.5rem;">GIS mapping in R</span></center>
#### <center><div style="line-height: 2.5rem">Marie-Hélène Burle</div></center>
##### <center><div style="line-height: 2.8rem">[training@westgrid.ca](mailto:training@westgrid.ca)</div></center>
##### <center><div style="line-height: 2.5rem">February 3, 2021</div></center>
{{<img src="/img/wg_white_removed_medium.png" title="" width="70%" line-height="0rem">}}
{{</img>}}

---

#### <center><div style="line-height: 2rem">Great resources</div></center>

**Open GIS data** \\
[Free GIS Data](https://freegisdata.rtwilson.com/): list of free GIS datasets \\
**Books** \\
[Geocomputation with R](https://geocompr.robinlovelace.net/) by Robin Lovelace, Jakub Nowosad & Jannes Muenchow\\
[Spatial Data Science](https://keen-swartz-3146c4.netlify.app/) by Edzer Pebesma & Roger Bivand\\
[Spatial Data Science with R](https://rspatial.org/) by Robert J. Hijmans\\
[Using Spatial Data with R](https://cengel.github.io/R-spatial/) by Claudia A. Engel \\
**Tutorial** \\
[An Introduction to Spatial Data Analysis and Visualisation in R](https://data.cdrc.ac.uk/dataset/introduction-spatial-data-analysis-and-visualisation-r) by the CDRC \\
**Website** \\
[r-spatial](https://www.r-spatial.org/) by Edzer Pebesma, Marius Appel & Daniel Nüst \\
**CRAN package list** \\
[Analysis of Spatial Data](https://cran.r-project.org/web/views/Spatial.html) \\
**Mailing list** \\
[R Special Interest Group on using Geographical data and Mapping](https://stat.ethz.ch/mailman/listinfo/r-sig-geo)

---

### <center>Data</center>

For this webinar, we will use:

- the Alaska as well as the Western Canada & USA subsets of the [Randolph Glacier Inventory](http://www.glims.org/RGI/) version 6.0<sup>1</sup>
- the [USGS time series of the named glaciers of Glacier National Park](https://www.sciencebase.gov/catalog/item/58af7022e4b01ccd54f9f542)<sup>2</sup>

The datasets can be downloaded as zip files from these websites.

{{<fn>}}
{{<fr n="1" text="RGI Consortium (2017). Randolph Glacier Inventory – A Dataset of Global Glacier Outlines: Version 6.0: Technical Report, Global Land Ice Measurements from Space, Colorado, USA. Digital Media. DOI: https://doi.org/10.7265/N5-RGI-60.">}}
{{<fr n="2" text="Fagre, D.B., McKeon, L.A., Dick, K.A. & Fountain, A.G., 2017, Glacier margin time series (1966, 1998, 2005, 2015) of the named glaciers of Glacier National Park, MT, USA: U.S. Geological Survey data release, https://doi.org/10.5066/F7P26WB1.">}}
{{</fn>}}

