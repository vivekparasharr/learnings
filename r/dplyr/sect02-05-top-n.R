
require(dplyr)

### top_n()

### this command extracts the top "n" rows
### from a data frame, based on a variable

demo <- read.csv("demographics.csv")

View(demo)

### extract the top 10 owners based on income

demo2 <- top_n(demo, 10, income)

View(demo2)

### extract the top 10 owners based on age

demo2 <- top_n(demo, 10, age)

View(demo2)

