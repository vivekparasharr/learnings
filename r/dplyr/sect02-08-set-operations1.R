
require(dplyr)

### set operations (1)

### the set operations in dplyr override the same set operations in R base
### making them more effective (allowing their use for data frames)

### there are four set operations:
### intersect(), union(), setdiff(), setequal()

### in base R, intersect() is used to identify common vector elements

x <- 1:10

y <- c(2,4,6,9,11,15)

intersect(x, y)

### in dplyr we can use this command to return the common rows (observations)
### for two data frames

demo <- read.csv("demographics.csv")

View(demo)

### create a data frame that contains the rows 1 to 30

demo1 <- demo[1:30,]

View(demo1)

### create a second data frame that contains rows 20 to 40

demo2 <- demo[20:40,]

View(demo2)

### intersect the data frames

intersect(demo1, demo2)

### we get the rows that can be found in both data frames (20 to 30)

### in base R, union() is used to perform vector union
### (discarding the duplicate elements)

x <- 1:10

y <- c(2,4,6,9,11,15)

union(x, y)

### in dplyr, union() can be used to join data frames by rows
### (discarding the common rows, if any)

union(demo1, demo2)

### it returns rows 1 to 40


