
require(dplyr)

### left_join()

### left_join(x, y)

### this command returns all rows from the first data frame
### and all variables from both data frames
### if there are multiple matches between the data frames, all combinations of matches are returned

### left join cities with buildings

lj <- left_join(cities, buildings)

View(lj)

### the lj data frame does not contain the cities Frankfurt and Wroclaw
### (because they are not in BOTH data frames)

### moreover, it contains all variables in both data frames

### left join buildings with cities

lj2 <- left_join(buildings, cities)

View(lj2)

### the lj2 data frames contains all rows in the buildings data frames
### and all variables in both data frames

### for the cities of Frankfurt and Wroclaw we don't have information about
### population and country (because they are not in the cities data frame)


 