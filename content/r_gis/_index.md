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

#### <center><div style="line-height: 2.5rem">Great resources</div></center>

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

---

### <center>Basemaps</center>
<br>
We will use data from:

- [Natural Earth](https://www.naturalearthdata.com/): this dataset can be accessed direction from within R thanks to the packages `rnaturalearth` (provides the functions) & `rnaturalearthdata` (provides the data)

---

### <center>Packages</center>

```r
library(sf)
library(tmap)
library(dplyr)
library(magrittr)
library(purrr)
library(rnaturalearth)
library(rnaturalearthdata)
library(mapview)
library(grid)  # part of base R
```

---

# <center>sf</center>
### <center>Great package for spatial vector data</center>

---

### <center>Reading in data</center>

Download and unzip `02_rgi60_WesternCanadaUS` & `01_rgi60_Alaska` from the [Randolph Glacier Inventory](http://www.glims.org/RGI/) version 6.0.

Data get imported and turned into `sf` objects with the function `sf::st_read()`:

```r
ak <- st_read("01_rgi60_Alaska")
wes <- st_read("02_rgi60_WesternCanadaUS")
```
{{<note>}}
Make sure to use the absolute paths or the paths relative to your working directory (which can be obtained with {{%c%}}getwd(){{%/c%}})
{{</note>}}

---

### <center>Reading in data</center>

```r
> Reading layer '01_rgi60_Alaska' using driver 'ESRI Shapefile'
Simple feature collection with 27108 features and 22 fields
geometry type:  POLYGON
dimension:      XY
bbox:           xmin: -176.1425 ymin: 52.05727 xmax: -126.8545 ymax: 69.35167
geographic CRS: WGS 84
> Reading layer '02_rgi60_WesternCanadaUS' using driver 'ESRI Shapefile'
Simple feature collection with 18855 features and 22 fields
geometry type:  MULTIPOLYGON
dimension:      XY
bbox:           xmin: -133.7324 ymin: 36.38625 xmax: -105.6082 ymax: 65.15664
geographic CRS: WGS 84
```

---

### <center>First look at the data</center>

```r
> ak
Simple feature collection with 27108 features and 22 fields
geometry type:  POLYGON
dimension:      XY
bbox:           xmin: -176.1425 ymin: 52.05727 xmax: -126.8545 ymax: 69.35167
geographic CRS: WGS 84
First 10 features:
           RGIId        GLIMSId  BgnDate  EndDate    CenLon   CenLat O1Region
1  RGI60-01.00001 G213177E63689N 20090703 -9999999 -146.8230 63.68900        1
2  RGI60-01.00002 G213332E63404N 20090703 -9999999 -146.6680 63.40400        1
3  RGI60-01.00003 G213920E63376N 20090703 -9999999 -146.0800 63.37600        1
4  RGI60-01.00004 G213880E63381N 20090703 -9999999 -146.1200 63.38100        1
5  RGI60-01.00005 G212943E63551N 20090703 -9999999 -147.0570 63.55100        1
6  RGI60-01.00006 G213756E63571N 20090703 -9999999 -146.2440 63.57100        1
7  RGI60-01.00007 G213771E63551N 20090703 -9999999 -146.2295 63.55085        1
8  RGI60-01.00008 G213704E63543N 20090703 -9999999 -146.2960 63.54300        1
9  RGI60-01.00009 G212400E63659N 20090703 -9999999 -147.6000 63.65900        1
10 RGI60-01.00010 G212830E63513N 20090703 -9999999 -147.1700 63.51300        1
O2Region   Area Zmin Zmax Zmed Slope Aspect  Lmax Status Connect Form
1         2  0.360 1936 2725 2385    42    346   839      0       0    0
2         2  0.558 1713 2144 2005    16    162  1197      0       0    0
3         2  1.685 1609 2182 1868    18    175  2106      0       0    0
4         2  3.681 1273 2317 1944    19    195  4175      0       0    0
5         2  2.573 1494 2317 1914    16    181  2981      0       0    0
6         2 10.470 1201 3547 1740    22     33 10518      0       0    0
7         2  0.649 1918 2811 2194    23    151  1818      0       0    0
8         2  0.200 2826 3555 3195    45     80   613      0       0    0
9         2  1.517 1750 2514 1977    18    274  2255      0       0    0
10        2  3.806 1280 1998 1666    17     35  3332      0       0    0
TermType Surging Linkages Name                       geometry
1         0       9        9 <NA> POLYGON ((-146.818 63.69081...
2         0       9        9 <NA> POLYGON ((-146.6635 63.4076...
3         0       9        9 <NA> POLYGON ((-146.0723 63.3834...
4         0       9        9 <NA> POLYGON ((-146.149 63.37919...
5         0       9        9 <NA> POLYGON ((-147.0431 63.5502...
6         0       9        9 <NA> POLYGON ((-146.2436 63.5562...
7         0       9        9 <NA> POLYGON ((-146.2495 63.5531...
8         0       9        9 <NA> POLYGON ((-146.2992 63.5443...
9         0       9        9 <NA> POLYGON ((-147.6147 63.6643...
10        0       9        9 <NA> POLYGON ((-147.1494 63.5098...
```

---

### <center>Structure of the data</center>

```r
> str(ak)
Classes ‘sf’ and 'data.frame':	27108 obs. of  23 variables:
$ RGIId   : chr  "RGI60-01.00001" "RGI60-01.00002" "RGI60-01.00003"  ...
$ GLIMSId : chr  "G213177E63689N" "G213332E63404N" "G213920E63376N" ...
$ BgnDate : chr  "20090703" "20090703" "20090703" "20090703" ...
$ EndDate : chr  "-9999999" "-9999999" "-9999999" "-9999999" ...
$ CenLon  : num  -147 -147 -146 -146 -147 ...
$ CenLat  : num  63.7 63.4 63.4 63.4 63.6 ...
$ O1Region: chr  "1" "1" "1" "1" ...
$ O2Region: chr  "2" "2" "2" "2" ...
$ Area    : num  0.36 0.558 1.685 3.681 2.573 ...
$ Zmin    : int  1936 1713 1609 1273 1494 1201 1918 2826 1750 1280 ...
$ Zmax    : int  2725 2144 2182 2317 2317 3547 2811 3555 2514 1998 ...
$ Zmed    : int  2385 2005 1868 1944 1914 1740 2194 3195 1977 1666 ...
$ Slope   : num  42 16 18 19 16 22 23 45 18 17 ...
$ Aspect  : int  346 162 175 195 181 33 151 80 274 35 ...
$ Lmax    : int  839 1197 2106 4175 2981 10518 1818 613 2255 3332 ...
$ Status  : int  0 0 0 0 0 0 0 0 0 0 ...
$ Connect : int  0 0 0 0 0 0 0 0 0 0 ...
$ Form    : int  0 0 0 0 0 0 0 0 0 0 ...
$ TermType: int  0 0 0 0 0 0 0 0 0 0 ...
$ Surging : int  9 9 9 9 9 9 9 9 9 9 ...
$ Linkages: int  9 9 9 9 9 9 9 9 9 9 ...
$ Name    : chr  NA NA NA NA ...
$ geometry:sfc_POLYGON of length 27108; first list element: List of 1
..$ : num [1:65, 1:2] -147 -147 -147 -147 -147 ...
..- attr(*, "class")= chr [1:3] "XY" "POLYGON" "sfg"
- attr(*, "sf_column")= chr "geometry"
- attr(*, "agr")= Factor w/ 3 levels "constant","aggregate",..: NA NA NA NA ...
..- attr(*, "names")= chr [1:22] "RGIId" "GLIMSId" "BgnDate" "EndDate" ...
```

