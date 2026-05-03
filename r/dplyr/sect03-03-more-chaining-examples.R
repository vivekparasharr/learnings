
require(dplyr)

### more chaining examples

demo <- read.csv("demographics.csv")

### compute the means of the numeric variables
### in the demo data frame for each gender category separately

demo %>% group_by(gender) %>%
         summarise(across(where(is.numeric), mean))

### select the owners of luxury cars and compute the means
### of the numeric variables by gender category

demo %>% group_by(gender) %>%
  filter(carcat == "Luxury") %>%
  summarise(across(where(is.numeric), mean))

### select the owners of luxury cars
### then compute the maximum values
### of the numeric variables by gender category

demo %>% group_by(gender) %>%
  filter(carcat == "Luxury") %>%
  summarise(across(where(is.numeric), max))
 

### select the owners of luxury cars
### then return the number of owners in each gender category

demo %>% group_by(gender) %>%
  filter(carcat == "Luxury") %>%
  summarise(n())

### retain the income and car price only
### then compute the means of these variables in each gender category

demo %>% group_by(gender) %>%
  select(carpr, income) %>%
  summarise(across(everything(), mean))

### retain the variables income and car price
### then compute the variable "x" as income divided to price
### then sort the data frame by the new variable x, in ascending order

demo2 <- demo %>% select(income, carpr) %>%
    mutate(x=income/carpr) %>%
    arrange(x)

View(demo2)

