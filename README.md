# README

學習各種 Heatmap 的繪製方式，也可以使用google map啦，但是以非google map的做法為優先。

- 目前已知的圖資來源: Google Map、OpenStreetMap(osm)、Stamen、Mapbox、Naver Map、thunderforest

## 目標

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

- [r - Is ggmap broken? Basic qmap() produces "arguments imply differing number of rows: 0,1" - Stack Overflow](https://stackoverflow.com/questions/52704695/is-ggmap-broken-basic-qmap-produces-arguments-imply-differing-number-of-rows):
  - Alternative solution for using ggmap with geocoding, but without the Google API，就是使用Stamen Maps
  - 教學 package tmaptools::geocode_OSM，抓取地點的經緯度範圍。**(好用!!大推~)**

- [dkahle/ggmap: A package for plotting maps in R with ggplot2](https://github.com/dkahle/ggmap): ggmap的github，跟著他的README.md學習操作。可用圖層共有三個。
  - get_googlemap: Google Maps，指列出我覺得實用且重要的。

    - center: the center of the map; either a longitude/latitude numeric vector or a string containing a location, in which case geocode is called with source = "google".

    - zoom: map zoom; an integer from 3 (continent) to 21 (building), default value 10 (city)

    - size: rectangular dimensions of map in pixels - horizontal x vertical - with a max of c(640, 640). this parameter is affected in a multiplicative way by scale.  
    地圖的矩形尺寸(以像素為單位-水平x垂直-最大值為c(640，640)。 此受參數scale影響成倍數。

    - scale: multiplicative factor for the number of pixels returned possible values are 1, 2, or 4 (e.g. size = c(640,640) and scale = 2 returns an image with 1280x1280 pixels). 4 is reserved for google business users only. scale also affects the size of labels as well.  
    返回的像素數的乘數可能是1、2或4（例如size = c（640,640），而scale = 2將返回1280x1280像素的圖像）。  4只保留給google業務用戶。scale也會影響labels的大小。

    - format = png8, gif, jpg, jpg-baseline, png32
    - maptype = terrain, satellite, roadmap, hybrid
    - language = en-EN, ...
    - urlonly: return url only
    - filename: destination file for download (file extension added according to format). Default NULL means a random tempfile.  
    ggmap會下載查詢的圖檔到暫存的資料夾，當之後查詢同樣的東西時，可以減少負擔。
    - color: bw, color
    - force: if the map is on file, should a new map be looked up?  
    已經查過的區域圖塊，還要再查嗎?
    - archiving: use archived maps. note: by changing to TRUE you agree to the one of the approved uses listed in the [Google Maps API Terms of Service](http://developers.google.com/maps/terms)

  - Stamen Maps
    - maptype = terrain, terrain-background, terrain-labels, terrain-lines, toner, toner-2010, toner-2011, toner-background, toner-hybrid, toner-labels, toner-lines, toner-lite, watercolor
  - OpenStreetMap(osm)

- ggmap參數設定
  - extent: how much of the plot should the map take up? "normal, device", or "panel" (default)
