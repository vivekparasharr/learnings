
require(dplyr)

### 5. summarise()

### this command is used to compute summary statistics
### of the variables

### syntax: summarise(data frame, summary function)

demo <- read.csv("demographics.csv")

### compute the mean of the income

### the output will be a list with one element
### we'll name that element avginc

meaninc <- summarise(demo, avginc=mean(income, na.rm=TRUE))

View(meaninc)

typeof(meaninc)

### compute the standard deviation of the income

summarise(demo, stdinc=sd(income, na.rm=TRUE))

### compute the sum of the income values

summarise(demo, suminc=sum(income, na.rm=TRUE))

### compute the median of the income

summarise(demo, medinc=median(income, na.rm=TRUE))

### find the minimum income

summarise(demo, mininc=min(income, na.rm=TRUE))

### find the maximum income

summarise(demo, maxinc=max(income, na.rm=TRUE))

### compute the variance of the income

summarise(demo, varinc=var(income, na.rm=TRUE))

### the n() function returns the number of rows

summarise(demo, n())

### we can compute several statistics at once

summarise(demo, avginc=mean(income, na.rm=TRUE), 
          stdinc=sd(income, na.rm=TRUE), varinc=var(income, na.rm=TRUE))

###  we can combine summarise() with other functions, like filter()

### compute the average income, the standard deviation of the income
### and the number of rows for the observations where the age is greater than 35

summarise(filter(demo, age>35), avginc=mean(income, na.rm=TRUE), 
          stdinc=sd(income, na.rm=TRUE), n())

### compute the average income, the standard deviation of the income
### and the number of rows for the male owners

summarise(filter(demo, gender=='Male'), avginc=mean(income, na.rm=TRUE), 
          stdinc=sd(income, na.rm=TRUE), n())

### compute the mean for the variables age and car price
### using the across function

summarise(demo, across(c(1,5), mean))

### compute the mean for all the numeric variables 

summarise(demo, across(where(is.numeric), mean))

### compute the mean for all the numeric variables
### but for the luxury car owners only

summarise(filter(demo, carcat == "Luxury"), across(where(is.numeric), mean))

### compute the standard deviation for all the numeric variables
### but for the luxury car owners only

summarise(filter(demo, carcat == "Luxury"), across(where(is.numeric), sd))

### compute the mean for the variables that start with the letter "c"

summarise(demo, across(starts_with("c"), mean))

### compute the mean for the NUMERIC variables that start with the letter "c"

summarise(demo, across(starts_with("c") & where(is.numeric), mean))

####### another way to summarise the numeric variables only

### extract the variables in a separate data frame

demo2 <- select(demo, age, income, carpr)

View(demo2)

### use the everything argument in the across function

summarise(demo2, across(everything(), mean))


