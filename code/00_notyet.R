library(data.table)
library(ggmap)#Load libraries
library(ggplot2)
positions <- data.frame(lon=rnorm(20000, mean=-75.1803458, sd=0.05),
                        lat=rnorm(10000,mean=39.98352197, sd=0.05))#Simulate some geographical coordinates #Switch out for your data that has real GPS coords

maps_static_api_key <- 
  read.table("E:/API_key/google_api_key.txt", header = T, stringsAsFactors = F) %>%
  setDT() %>% .[API_name=="maps_static", API_key]
register_google(key = maps_static_api_key)
map <- get_map(location=c(lon=-75.1803458,
                          lat=39.98352197), zoom=11, maptype='roadmap', color='bw')#Get the map from Google Maps

ggmap(map, extent = "device") +
  geom_density2d(data = positions, aes(x = lon, y = lat), size = 0.3) + 
  stat_density2d(data = positions, 
                 aes(x = lon, y = lat, fill = ..level.., alpha = ..level..), size = 0.01, 
                 bins = 16, geom = "polygon") + scale_fill_gradient(low = "green", high = "red") + 
  scale_alpha(range = c(0, 0.3), guide = FALSE)#Plot

qmplot(x = lon, y = lat, data = positions,
       maptype = "toner-background",
       # maptype = "toner-lite",
       color = I("red"))




# ----------------------
library(dplyr)
library(sp)

#Spatial data containing variables which can be interpolated.
#We will use the zinc column; as an equivalent for 'price'. 
data(meuse)  #data.frame with geometries (projected coordinates)
coordinates(meuse) = ~x+y #Convert data.frame object in SpatialPointsDataFrame object
head(meuse[,c(4)],3) #Show first three lines, with projected coordinates and zinc values.
head(meuse[,c(4)],3) %>% View()

# coordinates zinc
# (181072, 333611) 1022
# (181025, 333558) 1141
# (181165, 333537)  640

#This will be the prediction grid, i.e., where the interpolated values will be printed.
data(meuse.grid)
gridded(meuse.grid) = ~x+y #Convert data.frame object to SpatialPixelsDataFrame object.
plot(meuse.grid) #this is the 'raster'(grid) you said, you'd need.







# --------------
library(automap)

#Perform ordinary kriging and store results inside object of type "autoKrige" "list" 
kriging_result = autoKrige(zinc~1, meuse, meuse.grid)
plot(kriging_result)







# --------------
data(meuse)

#Setting the  prediction grid properties
min_x = min(meuse$x) #minimun x coordinate
min_y = min(meuse$y) #minimun y coordinate
x_length = max(meuse$x - min_x) #easting amplitude
y_length = max(meuse$y - min_y) #northing amplitude
cellsize = 100 #pixel size
ncol = round(x_length/cellsize,0) #number of columns in grid
nrow = round(y_length/cellsize,0) #number of rows in grid

coordinates(meuse) = ~x+y
proj4string(meuse) = CRS("+proj=utm +ellps=WGS84 +datum=WGS84") #assign CRS with projected coordinates.

grid = GridTopology(cellcentre.offset=c(min_x,min_y),cellsize=c(cellsize,cellsize),cells.dim=c(ncol,nrow))

#Convert GridTopolgy object to SpatialPixelsDataFrame object.
grid = SpatialPixelsDataFrame(grid,
                              data=data.frame(id=1:prod(ncol,nrow)),
                              proj4string=CRS(proj4string(meuse)))

plot(grid)


