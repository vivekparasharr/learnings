
require(dplyr)

require(ggplot2)

### scatterplot chart

mk <- read.csv("marketingdb.csv")

View(mk)

### a scatterplot chart that represents 
### the relationship between age and income 
### by gender

### we do no need to use group_by() command here, because
### the option color=gender in the ggplot() function creates a clustered scatter

mk %>% 
  ggplot(aes(x=age, y=income, color=gender))+geom_point()

### a scatterplot chart that represents 
### the relationship between age and income 
### by gender, for the Mastercard owners only


mk %>% filter(card=="Mastercard") %>%
  ggplot(aes(x=age, y=income, color=gender))+geom_point()


### a scatter plot chart that represents 
### the relationship between age and income 
### by gender, for the people with at least 20 years of education

mk %>% filter(ed>=20) %>%
  ggplot(aes(x=age, y=income, color=gender))+geom_point()


