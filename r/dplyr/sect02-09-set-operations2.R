require(dplyr)

### set operations (2)

### the set operations in dplyr override the same set operations in R base
### making them more effective (allowing their use for data frames)

### there are four set operations:
### intersect, union, setdiff, setequal

### in base R, setdiff() is used to identify the uncommon vector elements

### this operation is asymmetric

x <- 1:10

y <- c(2,4,6,9,11,15)

### get the elements that are found in x, but not in y

setdiff(x, y)

### get the elements that are found in y, but not in x

setdiff(y, x)

### in dplyr, setdiff() can be used to find uncommon data frame rows

demo <- read.csv("demographics.csv")

View(demo)

### create a data frame that contains the rows 1 to 30

demo1 <- demo[1:30,]

View(demo1)

### create a second data frame that contains rows 20 to 40

demo2 <- demo[20:40,]

View(demo2)

### list the rows that are found in demo1, but not in demo2

setdiff(demo1, demo2)

### we get the rows 1 to 19

### list the rows that are found in demo2, but not in demo1

setdiff(demo2, demo1)

### we get the rows 31 to 40

### in base R, setequal() is used to verify whether two vectors are identical

x <- 1:10

y <- c(2,4,6,9,11,15)

setequal(x, y)

### check for other two vectors

w <- c(20,30,40)

z <- c(20,30,40)

setequal(w, z)

### in dplyr, setequal() can be used to check whether two data frames are identical

setequal(demo1, demo2)

### redefine the demo2 data frame

demo2 <- demo[1:30,]

setequal(demo1, demo2)



