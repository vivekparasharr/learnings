
require(dplyr)

### inner_join()

### inner_join(x, y)

### this command returns all rows from the first data frame where there are matching values
### in the second data frame, and all variables from both data frames

cities <- read.csv("cities.csv")

View(cities)

buildings <- read.csv("buildings.csv")

View(buildings)

### inner join cities with buildings

ij <- inner_join(cities, buildings)

View(ij)

### joining was done by the variable "city", because it is a common variable

### the data frame ij does not contain two buildings: Commerzbank and Sky Tower
### because their cities (Frankfurt and Wroclaw) are NOT in the cities data frame

### inner join buildings with cities

ij2 <- inner_join(buildings, cities)

View(ij2)

### again, the data frame ij2 does not contain the buildings 
### from Frankfurt and Wroclaw

