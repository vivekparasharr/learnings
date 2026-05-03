
require(dplyr)

require(ggplot2)

### column chart


demo <- read.csv("demographics.csv")

View(demo)

### create a column chart that represents the average car price
### by car category

demo %>% group_by(carcat) %>% 
  summarise(avgpr=mean(carpr, na.rm=TRUE)) %>%
  ggplot(aes(x=carcat, y=avgpr))+geom_col(fill="darkblue")

### important:
### we have to use geom_col() and not geom_bar()
### because geom_bar() cannot be used when the y axis is defined in the aesthetics
  

### a column chart that displays the maximum car price 
### by car category

demo %>% group_by(carcat) %>% 
  summarise(maxpr=max(carpr, na.rm=TRUE)) %>%
  ggplot(aes(x=carcat, y=maxpr))+geom_col(fill="darkblue")


### a column chart that represents the average income 
### by gender

demo %>% group_by(gender) %>% 
  summarise(avginc=mean(income, na.rm=TRUE)) %>%
  ggplot(aes(x=gender, y=avginc))+geom_col(fill="darkblue")

### a column chart that represents the average income 
### by gender for the luxury car owners

demo %>% group_by(gender) %>% 
  filter(carcat=="Luxury") %>%
  summarise(avginc=mean(income, na.rm=TRUE)) %>%
  ggplot(aes(x=gender, y=avginc))+geom_col(fill="darkblue")


