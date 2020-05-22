# README

學習R語言中各種 Heatmap 的繪製方式，然後做出實際資料的繪圖應用。  
也可以使用google map api啦，但是以非google map的做法為優先，不然太花錢。

目前已知的圖資來源:

- Google Map
- OpenStreetMap(osm)
- Stamen
- Mapbox
- Naver Map
- thunderforest、CartoDB、ERSI

## 目標

這些是想到的一些應用，可以做為練習的 side project

- 超商熱點圖
- 人流熱點圖 by GPS信號?
- 小吃熱點圖
- 網美拍照圖
- 明星誕生熱點圖
- 房屋價格
- 土地價格
- wifi數量
- 基地台數量

### 關於 heatmap with real map

在此先不考慮變數之間關聯程度的 Heatmap。  
而是要繪製出 choropleth(面量圖，分層設色圖)

heatmap 呈現方式有分成很多種，  

- 帶顏色的等高線圖，一圈一圈地擴散
- 帶顏色的行政區塊polygons
- 一個一個帶顏色的網格。  

而且是要繪製密度熱度圖，而是要依照點位的數值。  
如果是有固定網格，那就不會因為縮放而導致熱度圖的改變，
如果是沒有固定網格，就可能會依照設定的半徑與模糊度，隨著地圖的縮放導致熱度圖改變。

## 收集工具

不斷新增~  
繪製地圖、空間資料處理相關套件。

- ggmap
- ggplot
- leaflet
- leaflet.extras
- tmap
- tmaptools
- sp
- sf
- rgdal
- KernSmooth
- spatstat
- rworldmap
- mapview
- RGoogleMaps
- autoimage

---

## reference and skill

**專有名詞:**

- tile: 磚瓦。因為靜態地圖是一塊一塊合成的，所以用此單字。

**尋找地點邊界:**

- [r - Is ggmap broken? Basic qmap() produces "arguments imply differing number of rows: 0,1" - Stack Overflow](https://stackoverflow.com/questions/52704695/is-ggmap-broken-basic-qmap-produces-arguments-imply-differing-number-of-rows):
  - Alternative solution for using ggmap with geocoding, but without the Google API，就是使用Stamen Maps
  - 教學 package tmaptools::geocode_OSM，抓取地點的經緯度範圍。**(好用!!大推~)**

---

## R的heatmap 教學文件

收錄 R 有在做 heatmap, choropleth 的網站，以學習該如何進行。  
如果是套件，就學習後建立新的資料夾坐收納。  
如果是一般的教學文章，就收錄在這邊。

這個收錄非常多的 R Graph Gallery

[The R Graph Gallery – Help and inspiration for R charts](https://www.r-graph-gallery.com/index.html)  
[資料科學與R語言](https://yijutseng.github.io/DataScienceRBook/index.html)

### static

Google關鍵字: R heatmap with map, R heatmap with coordinate, R choropleth

**ggplot2:**

- [Choropleth map with R and ggplot2 – the R Graph Gallery](https://www.r-graph-gallery.com/327-chloropleth-map-from-geojson-with-ggplot2.html)
- [How to make choropleth maps with R](http://bl.ocks.org/prabhasp/raw/5030005/)
- [Step-by-Step Choropleth Map in R: A case of mapping Nepal](https://medium.com/@anjesh/step-by-step-choropleth-map-in-r-a-case-of-mapping-nepal-7f62a84078d9)
- [Choropleth Maps in R](https://www.kdnuggets.com/2018/03/choropleth-maps-r.html)

**ggmap:**

- [CRAN - Package ggmap](https://cran.r-project.org/web/packages/ggmap/)
  - [Creating a heat map from coordinates using R - Axel Hodler - Medium](https://medium.com/@axelhodler/creating-a-heat-map-from-coordinates-using-r-780db4901075)
  - [data visualization - Generating spatial heat map via ggmap in R based on a value - Stack Overflow](https://stackoverflow.com/questions/45319970/generating-spatial-heat-map-via-ggmap-in-r-based-on-a-value)
  - [Geographical Heat Maps in R |](https://www.molecularecologist.com/2016/03/geographical-heat-maps-in-r/)
  - [Visualising Thefts using Heatmaps in ggplot2 | DataScience+](https://datascienceplus.com/visualising-thefts-using-heatmaps-in-ggplot2/)
  - [Spatial Heat Map Plotting Using R](https://trucvietle.me/r/tutorial/2017/01/18/spatial-heat-map-plotting-using-r.html)
  - [How to create a crime heatmap in R - Sharp Sight](https://www.sharpsightlabs.com/blog/how-to-create-a-crime-heatmap-in-r/)
  - [Geospatial Analysis in R](http://data-analytics.net/cep/Schedule_files/geospatial.html)
  - [Visualising thefts using heatmaps in ggplot2 | R-bloggers](https://www.r-bloggers.com/visualising-thefts-using-heatmaps-in-ggplot2/)

**ggmap + osmdata:**

- [Accessing OpenStreetMap data with R | Dominic Royé](https://dominicroye.github.io/en/2018/accessing-openstreetmap-data-with-r/)

**RGoogleMaps:**

- [CRAN - Package RgoogleMaps](https://cran.r-project.org/web/packages/RgoogleMaps/index.html)
  - [Heatmap of Toronto Traffic Signals using RGoogleMaps | R-bloggers](https://www.r-bloggers.com/heatmap-of-toronto-traffic-signals-using-rgooglemaps/)
  - [Heatmap of Toronto Traffic Signals using RGoogleMaps | R-bloggers](https://www.r-bloggers.com/heatmap-of-toronto-traffic-signals-using-rgooglemaps/)
  - [Data Visualization with R: RGoogleMaps and Toronto Open Data - DZone Big Data](https://dzone.com/articles/data-visualization-r)

**autoimage:**

- [CRAN - Package autoimage](https://cran.r-project.org/web/packages/autoimage/)
  - [autoimage: Multiple Heat Maps for Projected Coordinates](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5685525/)

**MASS:**

- [Construct R heatmap from specified xy-coordinates and a value - Stack Overflow](https://stackoverflow.com/questions/29192183/construct-r-heatmap-from-specified-xy-coordinates-and-a-value)

### interactive

Google關鍵字:  leaflet animation R, R heatmap interactive

- plotly也可以

---

## 未完成

- 要重讀的文章
  - [Visualising thefts using heatmaps in ggplot2 | R-bloggers](https://www.r-bloggers.com/visualising-thefts-using-heatmaps-in-ggplot2/)

- 點位密集
  - [Geographical Heat Maps in R |](https://www.molecularecologist.com/2016/03/geographical-heat-maps-in-r/)

- 數值density
  - [r - Density2d Plot using another variable for the fill (similar to geom_tile)? - Stack Overflow](https://stackoverflow.com/questions/18285415/density2d-plot-using-another-variable-for-the-fill-similar-to-geom-tile/)

- 沒時間讀的文章或是套件
  - [RPubs - An Introduction to Choropleth maps in R](https://api.rpubs.com/HenryBukowski/324400)
  - package: OpenStreetMap
  - package: rosm
  - package: ggmap
  - package: leaflet
  - google: R Kriging heatmap
  - ggmap + ggplot2 的文章: [kahle-wickham.pdf](https://journal.r-project.org/archive/2013-1/kahle-wickham.pdf)
  - google: R heatmap with map
  - [raster - Plotting map resulted from kriging in R - Geographic Information Systems Stack Exchange](https://gis.stackexchange.com/questions/158021/plotting-map-resulted-from-kriging-in-r/164421)
  - [R 的 ggmap 套件：繪製地圖與資料分佈圖，空間資料視覺化 - G. T. Wang](https://blog.gtwang.org/r/r-ggmap-package-spatial-data-visualization/)
  - [Microsoft PowerPoint - E04-hmwu_R-Map.pptx](http://www.hmwu.idv.tw/web/R/E04-hmwu_R-Map.pdf)
  - [Creating a heat map from coordinates using R - Axel Hodler - Medium](https://medium.com/@axelhodler/creating-a-heat-map-from-coordinates-using-r-780db4901075)
  - [data visualization - Generating spatial heat map via ggmap in R based on a value - Stack Overflow](https://stackoverflow.com/questions/45319970/generating-spatial-heat-map-via-ggmap-in-r-based-on-a-value)
  - [LEARN MORE: 【R】用ggmap 畫出熱點分布](http://jackthisisamazing.blogspot.com/2016/12/rggmap.html)
