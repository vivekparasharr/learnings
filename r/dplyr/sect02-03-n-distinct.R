
require(dplyr)

### n_distinct()

### the n_distinct() function computes the number of distinct values in a vector

demo <- read.csv("demographics.csv")

### extract the variable educ as a vector

educ <- demo$educ

### compute the number of unique values in this vector

n_distinct(educ)

### extract the variable income as a vector

inc <- demo$income

### compute the number of unique values in this vector

n_distinct(inc)

### if the argument of the n_distinct() function is a data frame
### the function returns the number of rows

n_distinct(demo)
