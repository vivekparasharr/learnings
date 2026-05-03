
require(dplyr)

### count()

### the count() command is used to count the rows in a data frame

demo <- read.csv("demographics.csv")

View(demo)

### count the rows in the demo data frame

count(demo)

### count the rows where the income is smaller than 100 

count(filter(demo, income<100))

### we can count rows by categories

### count the number of rows for each education level
### N.B. in this case, count() groups the rows before the execution
### and un-group them after the execution

count(demo, educ)

### count the number of owners in each combination of the
### variables gender and retired

count(demo, gender, retired)

### the add_count() function adds a column (variable)
### containing the number of rows

demo2 <- add_count(demo)

View(demo2)


