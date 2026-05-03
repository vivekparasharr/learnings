
require(dplyr)

require(ggplot2)

### histogram chart

demo <- read.csv("demographics.csv")

View(demo)

### histogram of the income by gender category

### we do no need to use group_by() command because 
### the option fill=gender in the ggplot() function creates a clustered histogram

demo %>%
  ggplot(aes(x=income, fill=gender))+geom_histogram()

### histogram of income by gender category
### for the luxury car owners

demo %>%
  filter(carcat=="Luxury") %>%
  ggplot(aes(x=income, fill=gender))+geom_histogram()

### histogram of income by gender category
### for the car prices lower than 50

demo %>%
  filter(carpr<50) %>%
  ggplot(aes(x=income, fill=gender))+geom_histogram()

