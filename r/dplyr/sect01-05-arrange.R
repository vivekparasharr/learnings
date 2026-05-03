
require(dplyr)

### 4. arrange()

### this command is used to sort data frames
### using one or several variables
### in ascending or descending order

### syntax: arrange(data frame, sorting variables)

demo <- read.csv("demographics.csv")

### sort by income, in ascending order

demo2 <- arrange(demo, income)

View(demo2)

### sort by income, in descending order

demo2 <- arrange(demo, desc(income))

View(demo2)

### sort by education level from A to Z

demo2 <- arrange(demo, educ)

View(demo2)

### sort by education from Z to A

demo2 <- arrange(demo, desc(educ))

View(demo2)

### sort by income and education, in ascending order

demo2 <- arrange(demo, income, educ)

View(demo2)

### sort by education and income, in ascending order

demo2 <- arrange(demo, educ, income)

View(demo2)

### sort by income in ascending order
### and by education, in descending order

demo2 <- arrange(demo, income, desc(educ))

View(demo2)

