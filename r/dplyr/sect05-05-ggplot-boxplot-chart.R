
require(dplyr)

require(ggplot2)

### boxplot chart

demo <- read.csv("demographics.csv")

View(demo)

### boxplot chart of income by gender category

### we do not need to use the group_by() command
### because in the ggplot() function we specify the grouping variable (x=gender)

demo %>%
  ggplot(aes(x=gender, y=income))+geom_boxplot()

### boxplot chart of income by gender category
### for the standard car owners

demo %>%
  filter(carcat=="Standard") %>%
  ggplot(aes(x=gender, y=income))+geom_boxplot()

### boxplot chart of income by gender category
### for the owners aged between 35 and 50

demo %>%
  filter(age>=35 & age <=50) %>%
  ggplot(aes(x=gender, y=income))+geom_boxplot()


