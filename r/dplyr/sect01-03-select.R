
require(dplyr)

### 2. select()

### this command is used to select columns (variables)

### syntax: select(data frame, column name)

demo <- read.csv("demographics.csv")

### select the variables age, marital status and gender

demo2 <- select(demo, age, marital, gender)

View(demo2)


## we can use the colon to select a range of variables

demo2 <- select(demo, income:carcat)

View(demo2)

### we can specify the variables order number instead of their names

### select the third and the fifth variable (income and car price)

demo2 <- select(demo, c(3,5))

View(demo2)


### select the variables from the second to the fourth
### (marital status, income, education)

demo2 <- select(demo, 2:4)

View(demo2)

### to remove a column we put a minus sign before its name

### remove the variables age and income

demo2 <- select(demo, -age, -income)

View(demo2)

### we can specify the variable order number

### remove the sixth and the eighth variable (car category and retired)

demo2 <- select(demo, -6, -8)

View(demo2)

### remove the first three variables

demo2 <- select(demo, -1:-3)

View(demo2)

### the option contains selects the variables that contain 
### a certain string in their name

demo2 <- select(demo, contains("ret"))

View(demo2) 

### the option starts_with selects the variables that start
### with the specified string

demo2 <- select(demo, starts_with("in"))

View(demo2) 

### the option ends_with selects the variables that end
### with the specified string

demo2 <- select(demo, ends_with("cat"))

View(demo2)
