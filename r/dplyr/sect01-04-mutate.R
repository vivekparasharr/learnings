
require(dplyr)

### 3. mutate()

## this command is used to add new variables

### these new variables can be computed using existing variables

demo <- read.csv("demographics.csv")

### add a new variable containing the income values multiplied by 10

demo2 <- mutate(demo, income2 = income * 10)

View(demo2)

### add a new variable containing the difference between income and car price

demo2 <- mutate(demo, diff = income - carpr)

View(demo2)

### create a vector and add it to the data frame as a variable

### the vector length must be equal to the number of rows in the data frame

y <- rnorm(510, 0, 1)

### the name of the new variable will be 'new_var'

demo2 <- mutate(demo, new_var=y)

View(demo2)

### to apply the same operation to multiple columns
### we use the across function

### for this function we must specify:

### 1. the columns to apply the operation to
### 2. the operation itself
### 3. the names of the new columns (optional)

### if we don't specify the names of the new columns,
### the program will replace the values in the old columns

### divide variables 1 and 5 to 1000


demo2 <- mutate(demo, across(c(1,5), ~ ./1000, .names = "{col}_2"))

View(demo2)

### divide all the numeric variables to 1000

demo2 <- mutate(demo, across(where(is.numeric), ~ ./1000))

View(demo2)

### multiply columns 1 and 5 by 3

demo2 <- mutate(demo, across(c(1,5), ~ .*3, .names = "{col}_new"))

View(demo2)

### compute the means of the columns 1 and 5

demo2 <- mutate(demo, across(c(1,5), .fns = mean, .names = "{col}_mean"))

View(demo2)

### compute the means of all numeric variables

demo2 <- mutate(demo, across(where(is.numeric), .fns = mean, .names = "{col}_mean"))

View(demo2)

### we can use the filter() function
### inside the mutate() function

### divide columns 1,3 and 5 by 1000 for the retired owners only

demo2 <- mutate(filter(demo, retired == "Yes"), across(c(1,3,5), ~ ./1000, .names = "{col}_2"))

View(demo2)

