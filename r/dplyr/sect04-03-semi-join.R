
require(dplyr)

### semi_join()

### semi_join(x, y)

### this command returns all rows from the first data frame where there are matching values
### in the second data frame, keeping variables from the first data frame only

### semi join cities with buildings

sj <- semi_join(cities, buildings)

View(sj)

### joining was done by the variable "city", because it is a common variable

### the data frame sj is similar with the data frame cities
### the command retained only the cities that are in BOTH data frames
### and the variables in the cities data frame only

### semi join buildings with cities

sj2 <- semi_join(buildings, cities)

View(sj2)

### the data frame sj2 does not contain two buildings: Commerzbank and Sky Tower
### because their cities (Frankfurt and Wroclaw) are NOT in the cities data frame

### furthermore, it only contains the variables in the buildings data frame

 