
require(dplyr)

require(ggplot2)

### mean plot chart

demo <- read.csv("demographics.csv")

View(demo)

### a mean plot chart that displays 
### the average income by education level

demo %>% group_by(educ) %>% 
  summarise(avginc=mean(income, na.rm=TRUE)) %>%
  ggplot(aes(x=educ, y=avginc, group=1))+geom_line(color="darkred")

### group=1 is required when we have one grouping variable only
### this option tells the program to connect all the dots with a line

### a mean plot chart that displays 
### the average car price by gender

demo %>% group_by(gender) %>% 
  summarise(avgpr=mean(carpr, na.rm=TRUE)) %>%
  ggplot(aes(x=gender, y=avgpr, group=1))+geom_line(color="darkred")


### a mean plot chart that represents
### the average car price by gender for the owners
### with the income greater than 70

demo %>% group_by(gender) %>% 
  filter(income>70) %>%
  summarise(avgpr=mean(carpr, na.rm=TRUE)) %>%
  ggplot(aes(x=gender, y=avgpr, group=1))+geom_line(color="darkred")

### a mean plot chart that represents
### the average income by gender
### with a separate line for each marital status

demo %>% group_by(gender, marital) %>% 
  summarise(avginc=mean(income, na.rm=TRUE)) %>%
  ggplot(aes(x=gender, y=avginc, group=marital, color=marital))+
  geom_line()

### the option group=marital shows us that two separate lines will be drawn,
### one for each marital status

### the option color=marital makes the lines of different colors

### a mean plot chart that represents
### the average income by marital status
### with a separate line for each gender

demo %>% group_by(gender, marital) %>% 
  summarise(avginc=mean(income, na.rm=TRUE)) %>%
  ggplot(aes(x=marital, y=avginc, group=gender, color=gender))+
  geom_line()

### this time the lines are separated by gender (group=gender)

### average income by marital status, 
### with a separate line for each gender
### for the economy car owners only

demo %>% group_by(gender, marital) %>% 
  filter(carcat=="Economy") %>%
  summarise(avginc=mean(income, na.rm=TRUE)) %>%
  ggplot(aes(x=marital, y=avginc, group=gender, color=gender))+
  geom_line()


