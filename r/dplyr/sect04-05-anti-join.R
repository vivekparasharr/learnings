
require(dplyr)

### anti_join()

### anti_join(x, y)

### this command returns all rows from the first data frame
### where there are NOT matching values in the second data frame
### and retains the variables from the first data frame

### anti join cities with buildings

aj <- anti_join(cities, buildings)

View(aj)

### the aj data frame is empty, because all the cities in the cities data frame
### have a match in the buildings data frame

### anti join buildings with cities

aj2 <- anti_join(buildings, cities)

View(aj2)

### the aj2 data frame contains the cties Frankfurt and Wroclaw 
### from the buildings data frame
### because they have NO match in the cities data frame

