
require(dplyr)

### even more chaining examples

demo <- read.csv("demographics.csv")

### select the owners with the income over 40 and return their number
### for each marital status - gender combination

demo %>% filter(income>40) %>%
  count(marital, gender)

### select the owners with the age over 40
### then compute the sum of their incomes

demo %>% filter(age>40) %>%
  tally(income)

### select the owners with the income over 40
### then compute the sum of their incomes
### by marital status

demo %>% group_by(marital) %>%
  filter(income>40) %>%
  tally(income)

### select the owners of standard cars and extract
### a sample of 50 owners at random

demo2 <- demo %>% filter(carcat=="Standard") %>%
  sample_n(50)

View(demo2)

### select the owners of standard cars
### retain the variables age, income, car price and car category
### then extract a sample of 50 owners at random

demo2 <- demo %>% filter(carcat=="Standard") %>%
  select(age, income, carpr, carcat) %>%
  sample_n(50)

View(demo2)

### select the owners of standard cars
### retain the variables age, income, car price and car category
### then extract a sample of 50 owners at random
### then get the top 5 of them by income

demo2 <- demo %>% filter(carcat=="Standard") %>%
  select(age, income, carpr, carcat) %>%
  sample_n(50) %>%
  top_n(5, income)

View(demo2)

### select the owners of standard cars
### retain the variables age, income, car price and car category
### then extract a sample of 50 owners at random
### then get a glimpse of the new data frame demo2

demo2 <- demo %>% filter(carcat=="Standard") %>%
  select(age, income, carpr, carcat) %>%
  sample_n(50) %>%
  glimpse

