# README

學習各種 Heatmap 的繪製方式，也可以使用google map啦，但是以非google map的做法為優先。

- 目前已知的圖資來源: Google Map、OpenStreetMap(osm)、Stamen、Mapbox、Naver Map、thunderforest

## 進度

- 學習leaflet
  - 底圖: check 縮放、DAS上面環境是否OK
  - 點位
  - heatmap
  - animation

## 目標

這些是想到的一些應用，可以做為練習的 side project

- 超商熱點圖
- 人流熱點圖 by GPS信號?
- 小吃熱點圖
- 網美拍照圖
- 明星誕生熱點圖

## 收集工具

繪製地圖、空間資料處理相關套件

- ggmap: 可調用 Google Map、OpenStreetMap(osm)、Stamen、
- leaflet
- leaflet.extras
- tmaptools
- sp
- rgdal
- KernSmooth
- spatstat
- rworldmap
- mapview

## reference and skill

**專有名詞:**

- tile: 磚瓦。因為靜態地圖是一塊一塊合成的，所以用此單字。

**尋找地點邊界:**

- [r - Is ggmap broken? Basic qmap() produces "arguments imply differing number of rows: 0,1" - Stack Overflow](https://stackoverflow.com/questions/52704695/is-ggmap-broken-basic-qmap-produces-arguments-imply-differing-number-of-rows):
  - Alternative solution for using ggmap with geocoding, but without the Google API，就是使用Stamen Maps
  - 教學 package tmaptools::geocode_OSM，抓取地點的經緯度範圍。**(好用!!大推~)**

**ggmap:**

- [dkahle/ggmap: A package for plotting maps in R with ggplot2](https://github.com/dkahle/ggmap): ggmap的github，跟著他的README.md學習操作。可用圖層共有三個: google map, stamenmap, ~~OpenStreet map(osm, 無法使用)~~。

**ggmap + osmdata:**

- [Accessing OpenStreetMap data with R | Dominic Royé](https://dominicroye.github.io/en/2018/accessing-openstreetmap-data-with-r/)

getbb
opq
add_osm_feature
osmdata_sf

### 未完成

- 要重讀的文章
  - [Visualising thefts using heatmaps in ggplot2 | R-bloggers](https://www.r-bloggers.com/visualising-thefts-using-heatmaps-in-ggplot2/)

- 點位密集
  - [Geographical Heat Maps in R |](https://www.molecularecologist.com/2016/03/geographical-heat-maps-in-r/)

- 數值density
  - [r - Density2d Plot using another variable for the fill (similar to geom_tile)? - Stack Overflow](https://stackoverflow.com/questions/18285415/density2d-plot-using-another-variable-for-the-fill-similar-to-geom-tile/)

- 還時間讀的文章或是套件
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
