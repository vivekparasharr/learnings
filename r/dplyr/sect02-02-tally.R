
require(dplyr)

### tally()

### the tally() command can be used either to count the rows
### or to compute the sum of a numeric variable

demo <- read.csv("demographics.csv")

View(demo)

### count the rows in the demo data frame

tally(demo)

### compute the income sum

tally(demo, income)

### compute the car prices sum

tally(demo, carpr)

### add_tally() adds a column (variable)
### containing the number of rows

### add a variable containing the number of rows

demo2 <- add_tally(demo)

View(demo2)

### add a variable containing the sum of incomes

demo3 <- add_tally(demo, income)

View(demo3)

