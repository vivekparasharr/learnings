
require(dplyr)

### group_by

### this command is used to convert our data frame
### into a grouped data frame, where all the operations are done
### by groups

demo <- read.csv("demographics.csv")

### group the demo data frame by the categories
### of the variable education

demo2 <- group_by(demo, educ)

View(demo2)

### from now on, the output of all the operations we perform on demo2
### will be grouped by education levels

### compute the average income

summarise(demo2, avginc=mean(income))

### compute the standard deviation of the variable car price

summarise(demo2, stdprice=sd(carpr))

### select from the demo2 data the owners that are older than 40

demo3 <- filter(demo2, age>40)

View(demo3)

### compute the average income in the demo3 data frame

summarise(demo3, avgimc=mean(income))

### the results are again grouped by education levels

### compute the means of columns 1 and 4 with the across function

summarise(demo2, across(c(1,4), mean))

### compute the means of all numeric variables for the luxury cars only
 
summarise(filter(demo2, carcat == "Luxury"), across(where(is.numeric), mean))
