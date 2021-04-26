+++
title = "r_gis_brc"
outputs = ["Reveal"]
[logowgnofront]
src = "/img/wg_for_dark_bg.png"
[backlink]
href = "https://westgrid-cli.netlify.app/workshops/gis_r_brc/"
txt = "Back to workshop page"
[reveal_hugo]
custom_theme = "mh5.scss"
custom_theme_compile = true
+++

{{< slide background-image="/img/r_gis/bg1.jpg" >}}

## <div style="line-height: 5rem; font-size: 4rem; color: black">&emsp;Introduction to GIS & <br>&emsp;Spatial Analysis in R</div>
{{<br size="3">}}
#### <div style="line-height: 1.5rem; font-size: 2.3rem; text-align: right; color: black"><br>Marie-Hélène Burle &emsp;&emsp;&emsp;&nbsp;</div>
##### <div style="line-height: 1.5rem; font-size: 1.8rem; text-align: right; color: black">training@westgrid.ca&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</div>
##### <div style="line-height: 1.5rem; font-size: 1.8rem; text-align: right; color: black">April 26, 2021&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;</div>
{{<br size="3">}}

<figure style="display: table; margin: 0rem auto">
  <div class="row">
	<div class="column">
	 {{<img src="/img/wg_no_bg.png" title="" width="%" line-height="rem">}}
	 {{</img>}}
	</div>
	<div class="column">
	   {{<img src="/img/jupyterdays/ubc.png" title="" width="40%" line-height="rem">}}
	   {{</img>}}
	</div>
  </div>
</figure>

---

{{< slide background-color="black" background-image="/img/r_gis/bg_africa_watersheds.jpg" background-size="58%" >}}

# <font color="white"><center><span style="font-size: 5rem">GIS concepts</span></center></font>

---

# <center>Types of spatial data</center>

{{%fragment%}}
## <div style="line-height: 4rem">Vector data</div>
{{%/fragment%}}

{{%fragment%}}
{{<e>}}**Discrete objects**{{</e>}}

*Examples:*&ensp; countries, roads, rivers, towns

Contain: &ensp;- geometry:&ensp; shape & location of the objects \\
&emsp;&emsp;&emsp;&emsp;- attributes:&ensp; additional variables (e.g. name, year, type)

Common file format:&ensp; {{<a "https://en.wikipedia.org/wiki/GeoJSON" "GeoJSON">}}, {{<a "https://en.wikipedia.org/wiki/Shapefile" "shapefile">}}
{{%/fragment%}}

{{%fragment%}}
## <div style="line-height: 4rem">Raster data</div>
{{%/fragment%}}

{{%fragment%}}
{{<e>}}**Continuous phenomena or spatial fields**{{</e>}}

*Examples:*&ensp; temperature, air quality, elevation, water depth

Common file formats:&ensp; {{<a "https://en.wikipedia.org/wiki/TIFF" "TIFF">}}, {{<a "https://en.wikipedia.org/wiki/GeoTIFF" "GeoTIFF">}}, {{<a "https://en.wikipedia.org/wiki/NetCDF" "NetCDF">}}, {{<a "https://en.wikipedia.org/wiki/Esri_grid" "Esri grid">}}
{{%/fragment%}}

---

## <center>Vector data</center>

### Types
<br>

- **point**:&emsp;&emsp;&emsp;&emsp;&ensp;&nbsp; single set of coordinates
- **multi-point**:&emsp;&emsp; multiple sets of coordinates
- **polyline**:&emsp;&emsp;&emsp;&ensp;&nbsp; multiple sets for which the order matters
- **multi-polyline**:&emsp; multiple of the above
- **polygon**:&emsp;&emsp;&emsp;&ensp;&nbsp; same as polyline but first & last sets are the same
- **multi-polygon**:&emsp; multiple of the above

---

## <center>Raster data</center>
{{<br size="3">}}

**Grid** of equally sized rectangular cells containing values for some variables
<br>
<br>
Size of cells = resolution
<br>
<br>
For computing efficiency, rasters do not have coordinates of each cell, but the bounding box & the number of rows & columns

---

# <center>Coordinate Reference Systems (CRS)</center>
{{<br size="1.5">}}

A location on Earth's surface can be identified by its **coordinates** & some **reference system** called CRS
{{<br size="1.5">}}

The coordinates (`x`, `y`) are called {{<e>}}longitude{{</e>}} & {{<e>}}latitude{{</e>}}
{{<br size="1.5">}}

There can be a 3<sup>rd</sup> coordinate (`z`) for elevation or other measurement—usually a vertical one \\
& a 4<sup>th</sup> (`m`) for some other data attribute—usually a horizontal measurement
{{<br size="1.5">}}

In 3D, longitude & latitude are expressed in angular units (e.g. degrees) & the reference system needed is an {{<e>}}angular CRS{{</e>}} or {{<e>}}geographic coordinate system (GCS){{</e>}}
{{<br size="1.5">}}

In 2D, they are expressed in linear units (e.g. meters) & the reference system needed is a {{<e>}}planar CRS{{</e>}} or {{<e>}}projected coordinate system (PCS){{</e>}}

---

### <center>Datums</center>
{{<br size="2">}}

Since the Earth is not a perfect sphere, we use spheroidal models to represent its surface. Those are called **geodetic datums**
{{<br size="1.5">}}
Some datums are global, others local (more accurate in a particular area of the globe, but only useful there)
{{<br size="3">}}

*Examples of commonly used global datums:*
{{<br size="1.5">}}

- WGS84 (World Geodesic System 1984)
- NAD83 (North American Datum of 1983)

---

## <center>Angular CRS</center>
{{<br size="1.5">}}

An angular CRS contains a datum, an angular unit & references such as a prime meridian (e.g. the Royal Observatory, Greenwich, England)
{{<br size="2">}}

In an angular CRS or GCS:
{{<br size="1">}}

- Longitude (\\(\lambda\\)) represents the angle between the prime meridian & the meridian that passes through that location
{{<br size="1">}}

- Latitude (\\(\phi\\)) represents the angle between the line that passes through the center of the Earth & that location & its projection on the equatorial plane
{{<br size="1">}}

Longitude & latitude are thus angular coordinates

---

### <center>Projections</center>
{{<br size="1.5">}}

To create a two-dimensional map, you need to project this 3D angular CRS into a 2D one
{{<br size="1.5">}}

Various projections offer different characteristics. For instance:

- some respect areas (equal-area)
- some respect the shape of geographic features (conformal)
- some *almost* respect both for small areas
{{<br size="1.5">}}

It is important to choose one with sensible properties for your goals
{{<br size="1.5">}}

*Examples of projections:*

- Mercator
- UTM
- Robinson

---

## <center>Planar CRS</center>
{{<br size="2">}}

A planar CRS is defined by a datum, a projection & a set of parameters such as a linear unit & the origins
{{<br size="2">}}

Common planar CRS have been assigned a unique ID called {{<a "https://en.wikipedia.org/wiki/EPSG_Geodetic_Parameter_Dataset" "EPSG">}} code which is much more convenient to use
{{<br size="2">}}

In a planar CRS, coordinates will not be in degrees anymore but in meters (or other length unit)

---

### <center>Projecting into a new CRS</center>
{{<br size="3">}}

You can change the projection of your data
{{<br size="2">}}

Vector data won't suffer any loss of precision, but raster data will \\
→&nbsp; best to try to avoid reprojecting rasters: if you want to combine various datasets which have different projections, reproject vector data instead

---

{{< slide background-color="black" background-image="/img/r_gis/bg_australia_watersheds.png" background-size="85%" >}}

# <font color="white"><center><span style="font-size: 5rem">GIS in R</span></center></font>

---

###### Open GIS data

{{<a "https://freegisdata.rtwilson.com/" "Free GIS Data">}}: list of free GIS datasets

###### Books

{{<a "https://geocompr.robinlovelace.net/" "Geocomputation with R">}} by Robin Lovelace, Jakub Nowosad & Jannes Muenchow\\
{{<a "https://keen-swartz-3146c4.netlify.app/" "Spatial Data Science">}} by Edzer Pebesma & Roger Bivand\\
{{<a "https://rspatial.org/" "Spatial Data Science with R">}} by Robert J. Hijmans\\
{{<a "https://cengel.github.io/R-spatial/" "Using Spatial Data with R">}} by Claudia A. Engel

###### Tutorial

{{<a "https://data.cdrc.ac.uk/dataset/introduction-spatial-data-analysis-and-visualisation-r" "An Introduction to Spatial Data Analysis and Visualisation in R">}} by the CDRC

###### Website

{{<a "https://www.r-spatial.org/" "r-spatial">}} by Edzer Pebesma, Marius Appel & Daniel Nüst

###### CRAN package list

{{<a "https://cran.r-project.org/web/views/Spatial.html" "Analysis of Spatial Data">}} &nbsp;

###### Mailing list

{{<a "https://stat.ethz.ch/mailman/listinfo/r-sig-geo" "R Special Interest Group on using Geographical data and Mapping">}} &nbsp;

---

# <center>Packages</center>
{{<br size="3">}}

<a href="https://rdcu.be/cjceF" target="_blank">There is now a rich ecosystem of GIS packages in R<sup>1</sup></a>

{{<fn>}}
{{<fr n="1" text="Bivand, R.S. Progress in the R ecosystem for representing and handling spatial data. J Geogr Syst (2020). https://doi.org/10.1007/s10109-020-00336-0">}}
{{</fn>}}

---

## <center>Data manipulation</center>

### Older packages
{{<br size="1">}}

- **sp**
- **raster**
- **rgdal**
- **rgeos**
{{<br size="2">}}

### Newer generation
{{<br size="1">}}

- {{<a "https://github.com/r-spatial/sf" "sf">}}: vector data
- {{<a "https://github.com/rspatial/terra" "terra">}}: raster data (also has vector data capabilities)

---

## <center>Mapping</center>

### Static maps
{{<br size="1">}}

- **ggplot2** + **ggspatial**
- **tmap**
{{<br size="2">}}

### Dynamic maps
{{<br size="1">}}

- **leaflet**
- **ggplot2** + **gganimate**
- **mapview**
- **ggmap**
- **tmap**

---

# <center>sf</center>
## <center>Simple Features in R</center>
{{<br size="3">}}

<center>Geospatial vectors: points, lines, polygons</center>

---

## <center>Simple Features</center>
{{<br size="3">}}

{{<a "https://en.wikipedia.org/wiki/Simple_Features" "Simple Features">}}—defined by the {{<a "https://en.wikipedia.org/wiki/Open_Geospatial_Consortium" "Open Geospatial Consortium (OGC)">}} & formalized by {{<a "https://en.wikipedia.org/wiki/International_Organization_for_Standardization" "ISO">}}—is a set of standards now used by most GIS libraries
{{<br size="1">}}

{{<a "https://en.wikipedia.org/wiki/Well-known_text_representation_of_geometry" "Well-known text (WKT)">}} is a markup language for representing vector geometry objects according to those standards
{{<br size="1">}}

A compact computer version also exists—well-known binary (WKB)—used by spatial databases
{{<br size="4">}}

The package **sp** predates Simple Features
{{<br size="1">}}

**sf**—launched in 2016—implements these standards in R in the form of sf objects: data.frames (or tibbles) containing the attributes, extended by sfc objects or simple feature geometries list-columns

---

## <center>sf</center>

### Useful links
{{<br size="1">}}

- {{<a "https://github.com/r-spatial/sf" "GitHub repo">}}
- {{<a "https://journal.r-project.org/archive/2018/RJ-2018-009/index.html" "Paper">}}
- {{<a "https://r-spatial.github.io/sf/" "Resources">}}
- {{<a "https://www.rstudio.com/resources/cheatsheets/" "Cheatsheet">}}
- 6 vignettes: {{<a "https://r-spatial.github.io/sf/articles/sf1.html" "1">}}, {{<a "https://r-spatial.github.io/sf/articles/sf2.html" "2">}}, {{<a "https://r-spatial.github.io/sf/articles/sf3.html" "3">}}, {{<a "https://r-spatial.github.io/sf/articles/sf4.html" "4">}}, {{<a "https://r-spatial.github.io/sf/articles/sf5.html" "5">}}, {{<a "https://r-spatial.github.io/sf/articles/sf6.html" "6">}}

---

{{<imgm src="/img/r_gis/sf_cs_1.jpg" margin="0 0 0 5rem" title="" width="90%" line-height="0.5rem">}}
{{</imgm>}}

---

{{<imgm src="/img/r_gis/sf_cs_2.jpg" margin="0 0 0 5rem" title="" width="90%" line-height="0.5rem">}}
{{</imgm>}}

---

## <center>sf objects</center>
{{<br size="2">}}

{{<imgm src="/img/r_gis/sf_object_1_nw.png" margin="0 0 0 5rem" title="" width="%" line-height="0.5rem">}}
{{</imgm>}}

---

## <center>sf objects</center>
{{<br size="2">}}

{{<imgm src="/img/r_gis/sf_object_2_nw.png" margin="0 0 0 5rem" title="" width="%" line-height="0.5rem">}}
{{</imgm>}}

---

## <center>sf objects</center>
{{<br size="2">}}

{{<imgm src="/img/r_gis/sf_object_3_nw.png" margin="0 0 0 5rem" title="" width="%" line-height="0.5rem">}}
{{</imgm>}}

---

## <center>sf objects</center>
{{<br size="2">}}

{{<imgm src="/img/r_gis/sf_object_4_nw.png" margin="0 0 0 5rem" title="" width="%" line-height="0.5rem">}}
{{</imgm>}}

---

## <center>sf objects</center>
{{<br size="2">}}

{{<imgm src="/img/r_gis/sf_object_5_nw.png" margin="0 0 0 5rem" title="" width="%" line-height="0.5rem">}}
{{</imgm>}}

---

## <center>sf functions</center>
{{<br size="6">}}

<center>Most functions start with `st_` (which refers to "spatial type")</center>

---

# <center>terra</center>
{{<br size="2">}}

## <center>Geospatial rasters</center>
{{<br size="4">}}

<center>Faster and simpler replacement for the **raster** package by the same team</center>
{{<br size="2">}}

<center>Mostly implemented in C++</center>
{{<br size="2">}}

<center>Can work with datasets too large to be loaded into memory</center>

---

## <center>terra</center>

### Useful links
{{<br size="1">}}

- {{<a "https://github.com/rspatial/terra" "GitHub repo">}}
- {{<a "https://rspatial.github.io/terra/reference/terra-package.html" "Resources">}}
- {{<a "https://rspatial.org/terra/index.html" "Full manual">}}

<!-- Classes: -->

<!-- - SpatVector: vector data -->
<!-- - SpatRaster: raster data -->
<!-- - SpatExtent: bounding boxes -->
<!-- - SpatRasterDataset -->
<!-- - SpatRasterCollection -->
<!-- - SpatVectorCollection -->

---

# <center>tmap</center>
{{<br size="2">}}

## <center><a href="http://vita.had.co.nz/papers/layered-grammar.pdf">Layered grammar of graphics</a> GIS maps</center>

---

## <center>tmap</center>
{{<br size="2">}}

### Useful links
{{<br size="1">}}

- {{<a "https://github.com/mtennekes/tmap" "GitHub repo">}}
- {{<a "https://mtennekes.github.io/tmap/" "Resources">}}

### Help pages and vignettes

```{r}
?tmap-element
vignette("tmap-getstarted")
# All the usual help pages, e.g.:
?tm_layout
```

---

## <center>tmap functions</center>
{{<br size="5">}}

<center>Main functions start with `tmap_`</center>
{{<br size="4">}}

<center>Functions creating map elements start with `tm_`</center>

---

## <center>tmap functioning</center>
{{<br size="1">}}

Very similar to **ggplot2**
{{<br size="2.5">}}

Typically, a map contains:
{{<br size="1">}}

- One or multiple layer(s) (the order matters as they stack on top of each other)
- Some layout (e.g. customization of title, background, margins): `tm_layout`
- A compass: `tm_compass`
- A scale bar: `tm_scale_bar`
{{<br size="2.5">}}

Each layer contains:
{{<br size="1">}}

- Some data: `tm_shape`
- How that data will be represented: e.g. `tm_polygons`, `tm_lines`, `tm_raster`

---

## <center>tmap example</center>

{{<imgm src="/img/r_gis/tmap1_nw.png" margin="0 0 0 5rem" title="" width="85%" line-height="0.5rem">}}
{{</imgm>}}

---

## <center>tmap example</center>

{{<imgm src="/img/r_gis/tmap2_nw.png" margin="0 0 0 5rem" title="" width="85%" line-height="0.5rem">}}
{{</imgm>}}

---

## <center>tmap example</center>

{{<imgm src="/img/r_gis/tmap3_nw.png" margin="0 0 0 5rem" title="" width="85%" line-height="0.5rem">}}
{{</imgm>}}

---

## <center>tmap example</center>

{{<imgm src="/img/r_gis/tmap4_nw.png" margin="0 0 0 5rem" title="" width="85%" line-height="0.5rem">}}
{{</imgm>}}

---

## <center>tmap example</center>

{{<imgm src="/img/r_gis/tmap5_nw.png" margin="0 0 0 5rem" title="" width="85%" line-height="0.5rem">}}
{{</imgm>}}

---

## <center>tmap example</center>

{{<imgm src="/img/r_gis/tmap6_nw.png" margin="0 0 0 5rem" title="" width="85%" line-height="0.5rem">}}
{{</imgm>}}

---

## <center>tmap example</center>

{{<imgm src="/img/r_gis/tmap7_nw.png" margin="0 0 0 5rem" title="" width="85%" line-height="0.5rem">}}
{{</imgm>}}

---

## <center>tmap example</center>

{{<imgm src="/img/r_gis/tmap8_nw.png" margin="0 0 0 5rem" title="" width="85%" line-height="0.5rem">}}
{{</imgm>}}

---

# <center>ggplot2</center>
{{<br size="2">}}

## <center>The standard in R plots</center>

---

## <center>ggplot2</center>
{{<br size="2">}}

### Useful links
{{<br size="1">}}

- {{<a "https://github.com/tidyverse/ggplot2" "GitHub repo">}}
- {{<a "https://ggplot2.tidyverse.org/" "Resources">}}
- {{<a "https://www.rstudio.com/resources/cheatsheets/" "Cheatsheet">}}

---

{{<imgm src="/img/r_gis/ggplot_cs_1.jpg" margin="0 0 0 5rem" title="" width="90%" line-height="0.5rem">}}
{{</imgm>}}

---

{{<imgm src="/img/r_gis/ggplot_cs_2.jpg" margin="0 0 0 5rem" title="" width="90%" line-height="0.5rem">}}
{{</imgm>}}

---

## <center>ggplot2</center>
{{<br size="6">}}

<center>{{<a "https://ggplot2.tidyverse.org/reference/ggsf.html" "geom_sf">}} allows to plot `sf` objects (i.e. make maps)</center>

---

{{< slide background-color="black" background-image="/img/r_gis/bg_na_watersheds.png" background-size="58%" >}}

# <font color="white"><center><span style="font-size: 5rem">Let's work on a project</span></center></font>

{{%fragment%}}
# <font color="white"><center><span style="font-size: 3rem">Retreat of glaciers in North America</span></center></font>
{{%/fragment%}}

---

# <center>Data</center>

For this workshop, we will use:
{{<br size="1">}}

- the Alaska as well as the Western Canada & USA subsets of the {{<a "http://www.glims.org/RGI/" "Randolph Glacier Inventory">}} version 6.0<sup>1</sup>
- the {{<a "https://www.sciencebase.gov/catalog/item/58af7022e4b01ccd54f9f542" "USGS time series of the named glaciers of Glacier National Park">}}<sup>2</sup>
- the Alaska as well as the Western Canada & USA subsets of the {{<a "https://www.research-collection.ethz.ch/handle/20.500.11850/315707" "consensus estimate for the ice thickness distribution of all glaciers on Earth dataset">}}<sup>3</sup>
{{<br size="1">}}

The datasets can be downloaded as zip files from these websites

{{<fn>}}
{{<fr n="1" text="RGI Consortium (2017). Randolph Glacier Inventory – A Dataset of Global Glacier Outlines: Version 6.0: Technical Report, Global Land Ice Measurements from Space, Colorado, USA. Digital Media. DOI: https://doi.org/10.7265/N5-RGI-60.">}}
{{<fr n="2" text="Fagre, D.B., McKeon, L.A., Dick, K.A. & Fountain, A.G., 2017, Glacier margin time series (1966, 1998, 2005, 2015) of the named glaciers of Glacier National Park, MT, USA: U.S. Geological Survey data release. DOI: https://doi.org/10.5066/F7P26WB1.">}}
{{<fr n="3" text="Farinotti, Daniel, 2019, A consensus estimate for the ice thickness distribution of all glaciers on Earth - dataset, Zurich. ETH Zurich. DOI: https://doi.org/10.3929/ethz-b-000315707.">}}
{{</fn>}}

---

# <center>Packages</center>
<br>
Packages need to be installed before they can be loaded in a session
{{<br size="2">}}

Packages on CRAN can be installed with:

```{r}
install.packages("<package-name>")
```
<br>
`basemaps` is not on CRAN & needs to be installed from GitHub thanks to `devtools`:

```{r}
install.packages("devtools")
devtools::install_github("16EAGLE/basemaps")
```

---

# <center>Packages</center>
{{<br size="1.5">}}
We load all the packages that we will need at the top of the script:

```r
library(sf)                 # spatial vector data manipulation
library(tmap)               # map production & tiled web map
library(dplyr)              # non GIS specific (tabular data manipulation)
library(magrittr)           # non GIS specific (pipes)
library(purrr)              # non GIS specific (functional programming)
library(rnaturalearth)      # basemap data access functions
library(rnaturalearthdata)  # basemap data
library(mapview)            # tiled web map
library(grid)               # (part of base R) used to create inset map
library(ggplot2)            # alternative to tmap for map production
library(ggspatial)          # spatial framework for ggplot2
library(terra)              # gridded spatial data manipulation
library(ggmap)              # download basemap data
library(basemaps)           # download basemap data
library(magick)             # wrapper around ImageMagick STL
library(leaflet)	        # integrate Leaflet JS in R
```
[//]:codesnippet1

---

{{< slide background-color="black" background-image="/img/r_gis/bg_us_watersheds.png" background-size="85%" >}}

# <font color="white"><center><span style="font-size: 4.5rem">Reading & preparing data</span></center></font>

---

# <center>Randolph Glacier Inventory</center>
{{<br size="3">}}

<center>This dataset contains the contour of all glaciers on Earth</center>
{{<br size="3">}}

<center>We will focus on glaciers in Western North America</center>
{{<br size="5">}}

<center>You can download & unzip `02_rgi60_WesternCanadaUS` & `01_rgi60_Alaska`</center>
{{<br size="1">}}
<center>from the {{<a "http://www.glims.org/RGI/" "Randolph Glacier Inventory">}} version 6.0</center>

---

# <center>Reading in data</center>
{{<br size="2">}}


{{<br size="3">}}

Data get imported & turned into `sf` objects with the function `sf::st_read`:

```r
ak <- st_read("data/01_rgi60_Alaska")
```
[//]:codesnippet2

{{<br size="4">}}

{{<note>}}
Make sure to use the absolute paths or the paths relative to your working directory (which can be obtained with {{%cdark%}}getwd{{%/cdark%}})
{{</note>}}

---

## <center>Reading in data</center>
{{<br size="3">}}

```r
ak <- st_read("data/01_rgi60_Alaska")
```
[//]:codesnippet2

{{<o>}}
```{r}
Reading layer `01_rgi60_Alaska' from data source `./data/01_rgi60_Alaska'
			   using driver `ESRI Shapefile'
Simple feature collection with 27108 features and 22 fields
Geometry type: POLYGON
Dimension:     XY
Bounding box:  xmin: -176.1425 ymin: 52.05727 xmax: -126.8545 ymax: 69.35167
Geodetic CRS:  WGS 84
```

---

## <center>Reading in data</center>
{{<br size="5">}}

{{<challenge_dark>}}
Read in the data for the rest of north western America (from {{%cdark%}}02_rgi60_WesternCanadaUS{{%/cdark%}}) and create an sf object called {{%cdark%}}wes{{%/cdark%}}
{{</challenge_dark>}}

---

## <center>First look at the data</center>

```{r}
ak
```

{{<o>}}
```{r}
Simple feature collection with 27108 features and 22 fields
Geometry type: POLYGON
Dimension:     XY
Bounding box:  xmin: -176.1425 ymin: 52.05727 xmax: -126.8545 ymax: 69.35167
Geodetic CRS:  WGS 84
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

## <center>Structure of the data</center>

```{r}
str(ak)
```

{{<o>}}
```{r}
Classes ‘sf’ and 'data.frame':	27108 obs. of  23 variables:
$ RGIId   : chr  "RGI60-01.00001" "RGI60-01.00002" "RGI60-01.00003" ...
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
- attr(*, "agr")= Factor w/ 3 levels "constant","aggregate",..: NA NA NA ...
..- attr(*, "names")= chr [1:22] "RGIId" "GLIMSId" "BgnDate" "EndDate" ...
```

---

## <center>Inspect your data</center>
{{<br size="5">}}

{{<challenge_dark>}}
Inspect the {{%cdark%}}wes{{%/cdark%}} object you created
{{</challenge_dark>}}

---

# <center>Glacier National Park</center>
{{<br size="3">}}

<center>This dataset contains a time series of the retreat of 39 glaciers of Glacier National Park, MT, USA</center>
{{<br size="1">}}

<center>for the years `1966`, `1998`, `2005` & `2015`</center>
{{<br size="3">}}

<center>You can download and unzip the 4 sets of files from the {{<a "https://www.sciencebase.gov/catalog/item/58af7022e4b01ccd54f9f542" "USGS website">}}</center>
{{<br size="2">}}

---

## <center>Read in and clean datasets</center>

```r
## create a function that reads and cleans the data
prep <- function(dir) {
  g <- st_read(dir)
  g %<>% rename_with(~ tolower(gsub("Area....", "area", .x)))
  g %<>% dplyr::select(
    year,
    objectid,
    glacname,
    area,
    shape_leng,
    x_coord,
    y_coord,
    source_sca,
    source
  )
}

## create a vector of dataset names
dirs <- grep("data/GNPglaciers_.*", list.dirs(), value = T)

## pass each element of that vector through prep() thanks to map()
gnp <- map(dirs, prep)
```
[//]:codesnippet14

{{<note>}}
We use {{%cdark%}}dplyr::select{{%/cdark%}} because <b>terra</b> also has a {{%cdark%}}select{{%/cdark%}} function
{{</note>}}

---

## <center>Combine datasets into one sf object</center>
{{<br size="1">}}

Check that the CRS are all the same:

```r
all(sapply(
  list(st_crs(gnp[[1]]),
       st_crs(gnp[[2]]),
       st_crs(gnp[[3]]),
       st_crs(gnp[[4]])),
  function(x) x == st_crs(gnp[[1]])
))
```
[//]:codesnippet15

{{<o>}}
```{r}
[1] TRUE
```

---

## <center>Combine datasets into one sf object</center>
{{<br size="4">}}

We can `rbind` the elements of our list:
```r
gnp <- do.call("rbind", gnp)
```
[//]:codesnippet16
{{<br size="4">}}

You can inspect your new sf object by calling it or with `str`
{{<br size="2">}}

---

# <center>Estimate for ice thickness</center>
{{<br size="3">}}

<center>This dataset contains an estimate for the ice thickness of all glaciers on Earth</center>
{{<br size="3">}}

<center>The nomenclature follows the Randolph Glacier Inventory</center>
{{<br size="3">}}

<center>Ice thickness being a spatial field, this is raster data</center>
{{<br size="3">}}

<center>We will use data in `RGI60-02.16664_thickness.tif` from the {{<a "https://www.research-collection.ethz.ch/handle/20.500.11850/315707" "ETH Zürich Research Collection">}}</center>
{{<br size="1">}}
<center>which corresponds to one of the glaciers (Agassiz) of Glacier National Park</center>
{{<br size="2">}}

---

## <center>Load raster data</center>
{{<br size="4">}}

Read in data and create a SpatRaster object:

```r
ras <- rast("data/RGI60-02/RGI60-02.16664_thickness.tif")
```
[//]:codesnippet28
{{<br size="4">}}

---

## <center>Inspect our SpatRaster object</center>

```{r}
ras
```
{{<o>}}
```{r}
class       : SpatRaster 
dimensions  : 93, 74, 1  (nrow, ncol, nlyr)
resolution  : 25, 25  (x, y)
extent      : 707362.5, 709212.5, 5422962, 5425288  (xmin, xmax, ymin, ymax)
coord. ref. : +proj=utm +zone=11 +datum=WGS84 +units=m +no_defs 
source      : RGI60-02.16664_thickness.tif 
name        : RGI60-02.16664_thickness 
```

`nlyr` gives us the number of bands (a single one here). You can also run `str(ras)`

---

# <center>Our data</center>
{{<br size="3">}}

We now have 3 sf objects & 1 SpatRaster object:
{{<br size="1">}}

- `ak`: &emsp;contour of glaciers in AK
- `wes`: &ensp;contour of glaciers in the rest of Western North America
- `gnp`: &ensp;time series of 39 glaciers in Glacier National Park, MT, USA
- `ras`: &ensp;ice thickness of the Agassiz Glacier from Glacier National Park
{{<br size="2">}}

---

{{< slide background-color="black" background-image="/img/r_gis/bg_washington_watersheds.png" background-size="85%" >}}

# <font color="white"><center><span style="font-size: 5rem">Making maps</span></center></font>

---

# <center>Let's map our sf object ak</center>
{{<br size="4">}}

At a bare minimum, we need `tm_shape` with the data & some info as to how to represent that data:
{{<br size="3">}}

```r
tm_shape(ak) +
  tm_polygons()
```
[//]:codesnippet3

---

{{<img src="/img/r_gis/ak0.png" margin="rem" title="" width="80%" line-height="0.5rem">}}
{{</img>}}

---

## <center>We need to label & customize it</center>
{{<br size="2">}}

```r
tm_shape(ak) +
  tm_polygons() +
  tm_layout(
    title = "Glaciers of Alaska",
    title.position = c("center", "top"),
    title.size = 1.1,
    bg.color = "#fcfcfc",
    inner.margins = c(0.06, 0.01, 0.09, 0.01),
    outer.margins = 0,
    frame.lwd = 0.2
  ) +
  tm_compass(
    type = "arrow",
    position = c("right", "top"),
    size = 1.2,
    text.size = 0.6
  ) +
  tm_scale_bar(
    breaks = c(0, 500, 1000),
    position = c("right", "BOTTOM")
  )
```
[//]:codesnippet4

---

{{<img src="/img/r_gis/ak.png" margin="rem" title="" width="80%" line-height="0.5rem">}}
{{</img>}}

---

## <center>Make a map of the wes object</center>
{{<br size="5">}}

{{<challenge_dark>}}
Make a map with the {{%cdark%}}wes{{%/cdark%}} object you created with the data for Western North America excluding AK
{{</challenge_dark>}}

---

{{<img src="/img/r_gis/wes.png" margin="rem" title="" width="35%" line-height="0.5rem">}}
{{</img>}}

---

# <center>Now, let's make a map with ak & wes</center>
{{<br size="1.5">}}

{{%fragment%}}
{{<e>}}The Coordinate Reference Systems (CRS) must be the same{{</e>}}<br>
{{<br size="1.5">}}
{{%/fragment%}}

{{%fragment%}}
sf has a function to retrieve the CRS of an sf object: `st_crs`
{{<br size="1.5">}}
{{%/fragment%}}

{{%fragment%}}
```r
st_crs(ak) == st_crs(wes)
```
[//]:codesnippet5
{{<o>}}
```{r}
[1] TRUE
```
{{%/fragment%}}

{{%fragment%}}
So we're good (we will see later what to do if this is not the case)
{{%/fragment%}}

---

## <center>Our combined map</center>
{{<br size="4">}}

Let's start again with a minimum map without any layout to test things out:
{{<br size="3">}}

```r
tm_shape(ak) +
  tm_polygons() +
  tm_shape(wes) +
  tm_polygons()
```
[//]:codesnippet6

---

{{<img src="/img/r_gis/nwa0.png" margin="rem" title="" width="70%" line-height="0.5rem">}}
{{</img>}}
{{<br size="3">}}

{{%fragment%}}
<center>Uh ... oh ...</center>
{{%/fragment%}}

{{<br size="2">}}

---

## <center>What went wrong?</center>
{{<br size="3">}}

Maps are bound by "bounding boxes". In tmap, they are called `bbox`
{{<br size="3">}}

tmap sets the bbox the first time `tm_shape` is called. In our case, the bbox was thus set to the bbox of the ak object
{{<br size="3">}}

We need to create a new bbox for our new map
{{<br size="2">}}

---

## <center>Retrieving bounding boxes</center>
{{<br size="2">}}

sf has a function to retrieve the bbox of an sf object: `st_bbox`
{{<br size="2">}}

The bbox of ak is:

```r
st_bbox(ak)
```
[//]:codesnippet7

{{<o>}}
```{r}
xmin         ymin       xmax         ymax
-176.14247   52.05727   -126.85450   69.35167
```

---

## <center>Combining bounding boxes</center>

bbox objects can't be combined directly
{{<br size="2">}}

Here is how we can create a new bbox encompassing both of our bboxes:
{{<br size="1">}}

- First, we transform our bboxes to sfc objects with `st_as_sfc`
- Then we combine those objects into a new sfc object with `st_union`
- Finally, we retrieve the bbox of that object with `st_bbox`:

```r
nwa_bbox <- st_bbox(
  st_union(
    st_as_sfc(st_bbox(wes)),
    st_as_sfc(st_bbox(ak))
  )
)
```
[//]:codesnippet8

---

## <center>Back to our map</center>
{{<br size="1">}}

We can now use our new bounding box for the map of Western North America:

```r
tm_shape(ak, bbox = nwa_bbox) +
  tm_polygons() +
  tm_shape(wes) +
  tm_polygons() +
  tm_layout(
    title = "Glaciers of Western North America",
    title.position = c("center", "top"),
    title.size = 1.1,
    bg.color = "#fcfcfc",
    inner.margins = c(0.06, 0.01, 0.09, 0.01),
    outer.margins = 0,
    frame.lwd = 0.2
  ) +
  tm_compass(
    type = "arrow",
    position = c("right", "top"),
    size = 1.2,
    text.size = 0.6
  ) +
  tm_scale_bar(
    breaks = c(0, 1000, 2000),
    position = c("right", "BOTTOM")
  )
```
[//]:codesnippet9

---

{{<imgshadow src="/img/r_gis/nwa.jpg" title="" width="70%" line-height="0.5rem">}}
{{</imgshadow>}}

---

# <center>Let's add a basemap</center>
{{<br size="2">}}

We will use data from {{<a "https://www.naturalearthdata.com/" "Natural Earth">}}, a public domain map dataset
{{<br size="2">}}

There are much more fancy options, but they usually involve creating accounts (e.g. with Google) to access some API
{{<br size="2">}}

In addition, this dataset can be accessed direction from within R thanks to the {{<a "https://ropensci.org/" "rOpenSci">}} packages:
{{<br size="2">}}

- `rnaturalearth`: provides the functions
- `rnaturalearthdata`: provides the data

---

## <center>Create an sf object with states/provinces</center>
{{<br size="4">}}

```r
states_all <- ne_states(
  country = c("canada", "united states of america"),
  returnclass = "sf"
)
```
[//]:codesnippet10
{{<br size="5">}}

{{<note>}}
{{%cdark%}}ne_{{%/cdark%}} stands for "Natural Earth"
{{</note>}}

---

## <center>Select relevant states/provinces</center>
{{<br size="2">}}

```r
states <- states_all %>%
  filter(name_en == "Alaska" |
           name_en == "British Columbia" |
           name_en == "Yukon" |
           name_en == "Northwest Territories" |
           name_en ==  "Alberta" |
           name_en == "California" |
           name_en == "Washington" |
           name_en == "Oregon" |
           name_en == "Idaho" |
           name_en == "Montana" |
           name_en == "Wyoming" |
           name_en == "Colorado" |
           name_en == "Nevada" |
           name_en == "Utah"
         )
```
[//]:codesnippet11

---

## <center>Add the basemap to our map</center>
{{<br size="3">}}

{{%fragment%}}
{{<chall_dark>}}
What do we need to make sure of first?
{{</chall_dark>}}
{{<br size="4">}}
{{%/fragment%}}

{{%fragment%}}
```r
st_crs(states) == st_crs(ak)
```
[//]:codesnippet12

{{<o>}}
```{r}
[1] TRUE
```
{{%/fragment%}}

---

## <center>Add the basemap to our map</center>
{{<br size="3">}}

We add the basemap as a 3<sup>rd</sup> layer
{{<br size="3">}}

Mind the order! If you put the basemap last, it will cover your data
{{<br size="3">}}

Of course, we will use our `nwa_bbox` bounding box again
{{<br size="3">}}

We will also break `tm_polygons` into `tm_borders` and `tm_fill` for ak and wes in order to colourise them with slightly different colours
{{<br size="2">}}

---

## <center>Add the basemap to our map</center>
{{<br size="3">}}

```r
tm_shape(states, bbox = nwa_bbox) +
  tm_polygons(col = "#f2f2f2", lwd = 0.2) +
  tm_shape(ak) +
  tm_borders(col = "#3399ff") +
  tm_fill(col = "#86baff") +
  tm_shape(wes) +
  tm_borders(col = "#3399ff") +
  tm_fill(col = "#86baff") +
  tm_layout(
    title = "Glaciers of Western North America",
    title.position = c("center", "top"),
    title.size = 1.1,
    bg.color = "#fcfcfc",
    inner.margins = c(0.06, 0.01, 0.09, 0.01),
    outer.margins = 0,
    frame.lwd = 0.2
  ) +
  tm_compass(
    type = "arrow",
    position = c("right", "top"),
    size = 1.2,
    text.size = 0.6
  ) +
  tm_scale_bar(
    breaks = c(0, 1000, 2000),
    position = c("right", "BOTTOM")
  )
```
[//]:codesnippet13

---

{{<imgshadow src="/img/r_gis/nwa_bg.jpg" title="" width="70%" line-height="0.5rem">}}
{{</imgshadow>}}

---

# <center>tmap styles</center>
{{<br size="2">}}

**tmap** has a number of styles that you can try
{{<br size="2">}}

For instance, to set the style to "classic", run the following before making your map:
{{<br size="1">}}

```{r}
tmap_style("classic")
```
{{<br size="4">}}

{{<note>}}
Other options are: <br>

"white" (default), "gray", "natural", "cobalt", "col_blind", "albatross", "beaver", "bw", "watercolor"
{{</note>}}

---

{{<imgshadow src="/img/r_gis/nwa_bg_classic.jpg" title="" width="70%" line-height="0.5rem">}}
{{</imgshadow>}}

---

# <center>tmap styles</center>
{{<br size="2">}}

To return to the default, you need to run
{{<br size="2">}}
```{r}
tmap_style("white")
```
{{<br size="1">}}
or
{{<br size="2">}}
```{r}
tmap_options_reset()
```
which will reset every **tmap** option

---

# <center>Inset maps</center>
{{<br size="5">}}

<center>Now, how can we combine this with our `gnp` object?</center>
{{<br size="3">}}

<center> We could add it as an inset of our Western North America map</center>

---

## <center>First, let's map it</center>
{{<br size="2">}}

Let's use the same `tm_borders` and `tm_fill` we just used:

```r
tm_shape(gnp) +
  tm_borders(col = "#3399ff") +
  tm_fill(col = "#86baff") +
  tm_layout(
    title = "Glaciers of Glacier National Park",
    title.position = c("center", "top"),
    legend.title.color = "#fcfcfc",
    legend.text.size = 1,
    bg.color = "#fcfcfc",
    inner.margins = c(0.07, 0.03, 0.07, 0.03),
    outer.margins = 0
  ) +
  tm_compass(
    type = "arrow",
    position = c("right", "top"),
    text.size = 0.7
  ) +
  tm_scale_bar(
    breaks = c(0, 10, 20),
    position = c("right", "BOTTOM"),
    text.size = 1
  )
```
[//]:codesnippet17

---

{{<imgshadow src="/img/r_gis/gnp.png" title="" width="40%" line-height="1.0rem">}}
{{</imgshadow>}}

---

# <center>Create an inset map</center>
{{<br size="3">}}

As always, first we check that the CRS are the same:

```r
st_crs(gnp) == st_crs(ak)
```
[//]:codesnippet18

{{<o>}}
```{r}
[1] FALSE
```
{{<br size="3">}}

{{%fragment%}}
<center>AH!</center>
{{%/fragment%}}

---

## <center>CRS transformation</center>
{{<br size="2">}}

We need to reproject `gnp` into the CRS of our other sf objects (e.g. `ak`):

```r
gnp <- st_transform(gnp, st_crs(ak))
```
[//]:codesnippet19

{{<br size="3">}}

{{%fragment%}}
We can verify that the CRS are now the same:

```r
st_crs(gnp) == st_crs(ak)
```
[//]:codesnippet18

{{<o>}}
```{r}
[1] TRUE
```
{{%/fragment%}}

---

## <center>Inset maps</center>
{{<br size="1">}}

<u>First step:</u>

**Add a rectangle showing the location of the GNP map in the main North America map**
{{<br size="3">}}

We need to create a new sfc object from the `gnp` bbox so that we can add it to our previous map as a new layer:

```r
gnp_zone <- st_bbox(gnp) %>%
  st_as_sfc()
```
[//]:codesnippet20

---

## <center>Inset maps</center>
{{<br size="1">}}

<u>Second step:</u>

**Create a tmap object of the main map**

Of course, we need to edit the title. Also, note the presence of our new layer:

```r
main_map <- tm_shape(states, bbox = nwa_bbox) +
  tm_polygons(col = "#f2f2f2", lwd = 0.2) +
  tm_shape(ak) +
  tm_borders(col = "#3399ff") +
  tm_fill(col = "#86baff") +
  tm_shape(wes) +
  tm_borders(col = "#3399ff") +
  tm_fill(col = "#86baff") +
  tm_shape(gnp_zone) +
  tm_borders(lwd = 1.5, col = "#ff9900") +
  tm_layout(
    title = "Glaciers of Glacier National Park",
    title.position = c("center", "top"),
    title.size = 1.1,
    bg.color = "#fcfcfc",
    inner.margins = c(0.06, 0.01, 0.09, 0.01),
    outer.margins = 0,
    frame.lwd = 0.2
  ) +
  tm_compass(
    type = "arrow",
    position = c("right", "top"),
    size = 1.2,
    text.size = 0.6
  ) +
  tm_scale_bar(
    breaks = c(0, 500, 1000),
    position = c("right", "BOTTOM")
  )
```
[//]:codesnippet21

---

## <center>Inset maps</center>
{{<br size="1">}}

<u>Third step:</u>

**Create a tmap object of the inset map**

We make sure to matching colours & edit the layouts for better readability:

```r
inset_map <- tm_shape(gnp) +
  tm_borders(col = "#3399ff") +
  tm_fill(col = "#86baff") +
  tm_layout(
    legend.show = F,
    bg.color = "#fcfcfc",
    inner.margins = c(0.03, 0.03, 0.03, 0.03),
    outer.margins = 0,
    frame = "#ff9900",
    frame.lwd = 3
  )
```
[//]:codesnippet22

---

## <center>Inset maps</center>
{{<br size="3">}}

<u>Final step:</u>

**Combine the two tmap objects**

We print the main map & add the inset map with `grid::viewport`:
{{<br size="2">}}

```r
main_map
print(inset_map, vp = viewport(0.41, 0.26, width = 0.5, height = 0.5))
```
[//]:codesnippet23

{{<br size="4">}}

---

{{<imgshadow src="/img/r_gis/inset_bg3.png" title="" width="70%" line-height="1.0rem">}}
{{</imgshadow>}}

---

# <center>Mapping a subset of the data</center>
{{<br size="4">}}

{{%fragment%}}
<center>To see the retreat of the ice, we need to zoom in</center>
{{<br size="2">}}

<center>Let's focus on a single glacier: Agassiz Glacier</center>
{{%/fragment%}}

{{<br size="2">}}

---

## <center>Map of the Agassiz Glacier</center>
{{<br size="4">}}

Select the data points corresponding to the Agassiz Glacier:

```r
ag <- gnp %>% filter(glacname == "Agassiz Glacier")
```
[//]:codesnippet24
{{<br size="3">}}

---

## <center>Map of the Agassiz Glacier</center>
{{<br size="2">}}

```r
tm_shape(ag) +
  tm_polygons() +
  tm_layout(
    title = "Agassiz Glacier",
    title.position = c("center", "top"),
    legend.position = c("left", "bottom"),
    legend.title.color = "#fcfcfc",
    legend.text.size = 1,
    bg.color = "#fcfcfc",
    inner.margins = c(0.07, 0.03, 0.07, 0.03),
    outer.margins = 0
  ) +
  tm_compass(
    type = "arrow",
    position = c("right", "top"),
    text.size = 0.7
  ) +
  tm_scale_bar(
    breaks = c(0, 0.5, 1),
    position = c("right", "BOTTOM"),
    text.size = 1
  )
```
[//]:codesnippet25

---

{{<imgshadow src="/img/r_gis/ag0.png" title="" width="40%" line-height="1.0rem">}}
{{</imgshadow>}}
{{<br size="2">}}

{{%fragment%}}
<center>Not great ...</center>
{{%/fragment%}}

---

# <center>Map based on attribute variables</center>
{{<br size="2">}}

```r
tm_shape(ag) +
  tm_polygons("year", palette = "Blues") +
  tm_layout(
    title = "Agassiz Glacier",
    title.position = c("center", "top"),
    legend.position = c("left", "bottom"),
    legend.title.color = "#fcfcfc",
    legend.text.size = 1,
    bg.color = "#fcfcfc",
    inner.margins = c(0.07, 0.03, 0.07, 0.03),
    outer.margins = 0
  ) +
  tm_compass(
    type = "arrow",
    position = c("right", "top"),
    text.size = 0.7
  ) +
  tm_scale_bar(
    breaks = c(0, 0.5, 1),
    position = c("right", "BOTTOM"),
    text.size = 1
  )
```
[//]:codesnippet26

---

{{<imgshadow src="/img/r_gis/ag.png" title="" width="45%" line-height="1.0rem">}}
{{</imgshadow>}}

---

# <center>Using ggplot2 instead of tmap</center>
{{<br size="1.5">}}

As an alternative to **tmap**, **ggplot2** can plot maps with the `geom_sf` function:

```r
ggplot(ag) +
  geom_sf(aes(fill = year)) +
  scale_fill_brewer(palette = "Blues") +
  labs(title = "Agassiz Glacier") +
  annotation_scale(location = "bl", width_hint = 0.4) +
  annotation_north_arrow(location = "tr", which_north = "true",
                         pad_x = unit(0.75, "in"), pad_y = unit(0.5, "in"),
                         style = north_arrow_fancy_orienteering) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5))
```
[//]:codesnippet27

The package **ggspatial** adds a lot of functionality to **ggplot2** for spatial data

---

{{<imgshadow src="/img/r_gis/ag_ggplot2.png" title="" width="60%" line-height="1.0rem">}}
{{</imgshadow>}}

---

{{< slide background-color="black" background-image="/img/r_gis/bg_europe_watersheds.png" background-size="58%" >}}

# <font color="white"><center><span style="font-size: 6.5rem">Lunch break</span></center></font>

---

# <center>Faceted maps</center>

---

## <center>Faceted map of the retreat of Agassiz</center>
{{<br size="2.5">}}

```r
tm_shape(ag) +
  tm_polygons(col = "#86baff") +
  tm_layout(
    main.title = "Agassiz Glacier",
    main.title.position = c("center", "top"),
    main.title.size = 1.2,
    legend.position = c("left", "bottom"),
    legend.title.color = "#fcfcfc",
    legend.text.size = 1,
    bg.color = "#fcfcfc",
    inner.margins = c(0, 0.03, 0, 0.03),
    outer.margins = 0,
    panel.label.bg.color = "#fcfcfc",
    frame = F,
    asp = 0.6
  ) +
  tm_compass(
    type = "arrow",
    position = c("right", "top"),
    size = 1,
    text.size = 0.6
  ) +
  tm_scale_bar(
    breaks = c(0, 0.5, 1),
    position = c("right", "BOTTOM"),
    text.size = 0.6
  ) +
  tm_facets(
    by = "year",
    free.coords = F,
    ncol = 4
  )
```
[//]:codesnippet37

---

{{<imgshadow src="/img/r_gis/agfacet.png" title="" width="%" line-height="1.0rem">}}
{{</imgshadow>}}

---

# <center>Animated maps</center>

---

## <center>Animated map of the Retreat of Agassiz</center>
{{<br size="2">}}

First, we need to create a tmap object with facets:

```r
agassiz_anim <- tm_shape(ag) +
  tm_polygons(col = "#86baff") +
  tm_layout(
    title = "Agassiz Glacier",
    title.position = c("center", "top"),
    legend.position = c("left", "bottom"),
    legend.title.color = "#fcfcfc",
    legend.text.size = 1,
    bg.color = "#fcfcfc",
    inner.margins = c(0.08, 0, 0.08, 0),
    outer.margins = 0,
    panel.label.bg.color = "#fcfcfc"
  ) +
  tm_compass(
    type = "arrow",
    position = c("right", "top"),
    text.size = 0.7
  ) +
  tm_scale_bar(
    breaks = c(0, 0.5, 1),
    position = c("right", "BOTTOM"),
    text.size = 1
  ) +
  tm_facets(
    along = "year",
    free.coords = F
  )
```
[//]:codesnippet38

---

## <center>Animated map of the Retreat of Agassiz</center>
{{<br size="2.5">}}

Then we can pass that object to `tmap_animation`:

```r
tmap_animation(
  agassiz_anim,
  filename = "ag.gif",
  dpi = 300,
  inner.margins = c(0.08, 0, 0.08, 0),
  delay = 100
)
```
[//]:codesnippet39

---

{{<imgshadow src="/img/r_gis/ag.gif" title="" width="70%" line-height="1.0rem">}}
{{</imgshadow>}}

---

# <center>Map of ice thickness of Agassiz</center>

Now, let's map the estimated ice thickness on Agassiz Glacier
{{<br size="1">}}

This time, we use `tm_raster`:

```r
tm_shape(ras) +
  tm_raster(title = "") +
  tm_layout(
    title = "Ice thickness (m) of Agassiz Glacier",
    title.position = c("center", "top"),
    legend.position = c("left", "bottom"),
    legend.bg.color = "#ffffff",
    legend.text.size = 1,
    bg.color = "#fcfcfc",
    inner.margins = c(0.07, 0.03, 0.07, 0.03),
    outer.margins = 0
  ) +
  tm_compass(
    type = "arrow",
    position = c("right", "top"),
    text.size = 0.7
  ) +
  tm_scale_bar(
    breaks = c(0, 0.5, 1),
    position = c("right", "BOTTOM"),
    text.size = 1
  )
```
[//]:codesnippet29

---

{{<imgshadow src="/img/r_gis/ag_thickness.png" title="" width="50%" line-height="1.0rem">}}
{{</imgshadow>}}

---

## <center>Combining with Randolph data</center>
{{<br size="2">}}

As always, we check whether the CRS are the same:

```r
st_crs(ag) == st_crs(ras)
```
[//]:codesnippet30

{{<o>}}
```{r}
[1] FALSE
```
{{<br size="3">}}

We need to reproject `ag` (remember that it is best to avoid reprojecting raster data):

```r
ag %<>% st_transform(st_crs(ras))
```
[//]:codesnippet31

---

## <center>Combining with Randolph data</center>

The retreat & ice thickness layers will hide each other (the order matters!)\\
One option is to use `tm_borders` for one of them, but we can also use transparency (alpha) \\
We also adjust the legend:

```r
tm_shape(ras) +
  tm_raster(title = "Ice (m)") +
  tm_shape(ag) +
  tm_polygons("year", palette = "Blues", alpha = 0.2, title = "Contour") +
  tm_layout(
    title = "Ice thickness (m) and retreat of Agassiz Glacier",
    title.position = c("center", "top"),
    legend.position = c("left", "bottom"),
    legend.bg.color = "#ffffff",
    legend.text.size = 0.7,
    bg.color = "#fcfcfc",
    inner.margins = c(0.07, 0.03, 0.07, 0.03),
    outer.margins = 0
  ) +
  tm_compass(
    type = "arrow",
    position = c("right", "top"),
    text.size = 0.7
  ) +
  tm_scale_bar(
    breaks = c(0, 0.5, 1),
    position = c("right", "BOTTOM"),
    text.size = 1
  )
```
[//]:codesnippet32

---

{{<imgshadow src="/img/r_gis/ag_combined.png" title="" width="50%" line-height="1.0rem">}}
{{</imgshadow>}}

---

# <center>Refining raster maps</center>

---

<center>Let's go back to our ice thickness map:</center>
{{<br size="2">}}

{{<imgshadow src="/img/r_gis/ag_thickness.png" title="" width="40%" line-height="1.0rem">}}
{{</imgshadow>}}

---

<center>We can change the palette to blue with `tm_raster(palette = "Blues")`:</center>
{{<br size="2">}}

{{<imgshadow src="/img/r_gis/ag_thickness_blue.png" title="" width="40%" line-height="1.0rem">}}
{{</imgshadow>}}

---

<center>We can create a more suitable interval scale:</center>
{{<br size="4">}}

First, let's see what the maximum value is:
{{<br size="1">}}

```r
global(ras, "max")
```
[//]:codesnippet34

{{<o>}}
```{r}
max
RGI60-02.16664_thickness 70.10873
```
{{<br size="4">}}

Then we can set the breaks with `tm_raster(breaks = seq(0, 80, 5))`
{{<br size="2">}}

---

<center>We can create a more suitable interval scale:</center>
{{<br size="3">}}

We also need to tweak the layout, legend, etc.:
{{<br size="1">}}

```r
tm_shape(ras) +
  tm_raster(title = "", palette = "Blues", breaks = seq(0, 80, 5)) +
  tm_layout(
    title = "Ice thickness (m) of Agassiz Glacier",
    title.position = c("center", "top"),
    legend.position = c("left", "bottom"),
    legend.bg.color = "#ffffff",
    legend.text.size = 0.7,
    bg.color = "#fcfcfc",
    inner.margins = c(0.07, 0.03, 0.07, 0.03),
    outer.margins = 0
  ) +
  tm_compass(
    type = "arrow",
    position = c("right", "top"),
    text.size = 0.7
  ) +
  tm_scale_bar(
    breaks = c(0, 0.5, 1),
    position = c("right", "BOTTOM"),
    text.size = 1
  )
```
[//]:codesnippet33

---

<center>We can create a more suitable interval scale:</center>
{{<br size="2">}}

{{<imgshadow src="/img/r_gis/ag_thickness_blue_res.png" title="" width="40%" line-height="1.0rem">}}
{{</imgshadow>}}

---

# <center>Other ways to add a basemap</center>

---

## <center>Basemap with ggmap</center>

```r
basemap <- get_map(
  bbox = c(
    left = st_bbox(ag)[1],
    bottom = st_bbox(ag)[2],
    right = st_bbox(ag)[3],
    top = st_bbox(ag)[4]
  ),
  source = "osm"
)
```
[//]:codesnippet35

{{<note>}}
<b>ggmap</b> is a powerful package, but Google now requires an API key obtained through registration
{{</note>}}

---

## <center>Basemap with basemaps</center>
<br>
The package **basemaps** allows to download open source basemap data from several sources, but those cannot easily be combined with `sf` objects
<br><br>
This plots a satellite image of the Agassiz Glacier:

```r
basemap_plot(ag, map_service = "esri", map_type = "world_imagery")
```
[//]:codesnippet36

---

### <center>Satellite image of the Agassiz Glacier</center>
{{<br size="1.5">}}

{{<imgshadow src="/img/r_gis/ag_magick.png" title="" width="75%" line-height="1.0rem">}}
{{</imgshadow>}}

---

# <center>Tiled web maps with Leaflet JS</center>

---

## <center>mapview</center>
{{<br size="4">}}

```r
mapview(gnp)
```
[//]:codesnippet40
{{<br size="4">}}

---

## <center>mapview</center>
<br>
<figure style="display: table;">
  <div class="row">
	<div class="column">
	  <img style="box-shadow: 0px 0px 6px rgba(0,0,0,0.3)" src="/img/r_gis/mapview4.jpg">
	  <div align="right" style="font-size: 1.3rem; color: #978282; line-height: 1rem">
	<figcaption>
	  <em>
		CartoDB.Positron
	  </em>
	</figcaption>
	  </div>
	</div>
	<div class="column">
	  <img style="box-shadow: 0px 0px 6px rgba(0,0,0,0.3)" src="/img/r_gis/mapview1.jpg"  >
	  <div align="right" style="font-size: 1.3rem; color: #978282; line-height: 1rem">
	<figcaption>
	  <em>
		OpenTopoMap
	  </em>
	</figcaption>
	  </div>
	</div>
  </div>
  <div class="row">
	<div class="column">
	  <img style="box-shadow: 0px 0px 6px rgba(0,0,0,0.3)" src="/img/r_gis/mapview3.jpg" margin="5rem" >
	  <div align="right" style="font-size: 1.3rem; color: #978282; line-height: 1rem">
	<figcaption>
	  <em>
		OpenStreetMap
	  </em>
	</figcaption>
	  </div>
	</div>
	<div class="column">
	  <img style="box-shadow: 0px 0px 6px rgba(0,0,0,0.3)" src="/img/r_gis/mapview2.jpg" margin="5rem" >
	  <div align="right" style="font-size: 1.3rem; color: #978282; line-height: 1rem">
	<figcaption>
	  <em>
		Esri.WorldImagery
	  </em>
	</figcaption>
	  </div>
	</div>
  </div>
</figure>

---

## <center>tmap</center>
<br>
So far, we have used the `plot` mode of **tmap**. There is also a `view` mode which allows interactive viewing in a browser through {{<a "https://leafletjs.com/" "Leaflet">}}
<br><br>
Change to `view` mode:

```{r}
tmap_mode("view")
```

{{<note>}}
you can also toggle between modes with {{%cdark%}}ttm{{%/cdark%}}
{{</note>}}

Re-plot the last map we plotted with **tmap**:

```{r}
tmap_last()
```

---

## <center>leaflet</center>
{{<br size="3">}}

`leaflet` creates a map widget to which you add layers

```r
map <- leaflet()
addTiles(map)
```
[//]:codesnippet41
{{<br size="4">}}

---

{{< slide background-color="black" background-image="/img/r_gis/bg_mexico_watersheds.png" background-size="85%" >}}

# <font color="white"><center><span style="font-size: 4.5rem">Spatial data analysis</span></center></font>

---

# <center>Resources</center>
{{<br size="3">}}

Maybe very disappointingly, I am leaving you to fend on your own here
{{<br size="3">}}

But here are some great resources on the topic that should get you started \\
(& maybe I'll give another workshop on the subject some time?)
{{<br size="3">}}

- {{<a "https://rspatial.org/terra/rosu/index.html" "R companion to Geographic Information Analysis">}}
- {{<a "https://rspatial.org/terra/analysis/index.html" "Spatial data analysis">}}
{{<br size="4">}}

---

{{< slide background-color="black" background-image="/img/r_gis/bg_world_watersheds_dark.png" background-size="112%" >}}

# <font color="white"><center>Image credits</center></font>
{{<br size="2">}}

<center><font color="white">Szűcs Róbert, Grasshopper Geography</font></center>

---

{{< slide background-color="black" background-image="/img/r_gis/bg_canada_watersheds.png" background-size="70%" >}}

# <font color="white"><center><span style="font-size: 6.5rem">Questions?</span></center></font>
