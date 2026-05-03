
require(dplyr)

### full_join()

### full_join(x, y)

### this command returns all rows and variables from both data frames
### where there are not matches, the NA value is returned

### full join cities and buildings

fj <- full_join(cities, buildings)

View(fj)

### the fj data frame contains rows and columns from both data frames
### for Frankfurt and Wroclaw we don't know population and country

### the full_join() command is symmetric

### full join buildings and cities

fj2 <- full_join(buildings, cities)

View(fj2)

### the data frame fj2 is similar to fj
### only the order of rows and columns is different

