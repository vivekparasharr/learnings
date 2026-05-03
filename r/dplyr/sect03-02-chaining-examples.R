
require(dplyr)

### simple chaining examples

demo <- read.csv("demographics.csv")

### select the owners younger than 40 and with some college education

demo2 <- demo %>% filter(age<40 & educ == "Some college")

View(demo2)

### retain the variables income, car category and car price

demo2 <- demo %>% select(income, carcat, carpr)

View(demo2)

### select the owners younger than 40 and with some college education
### then retain the variables income, car category and car price only

demo2 <- demo %>% filter(age<40 & educ == "Some college") %>% 
              select(income, carcat, carpr)

View(demo2)

### select the owners younger than 40 and with some college education,
### retain the variables income, car category and car price only
### then compute a new variable "x" as income divided to price

demo2 <- demo %>% filter(age<40 & educ == "Some college") %>% 
             select(income, carcat, carpr) %>%
             mutate(x=income/carpr)

### select the owners younger than 40 and with some college education,
### retain the variables income, car category and car price only
### then sort the data frame by income in descending order

demo2 <- demo %>% filter(age<40 & educ == "Some college") %>% 
  select(income, carcat, carpr) %>%
  arrange(desc(income))

View(demo2)

### select the owners younger than 40 and with some college education,
### then compute the average income

demo %>% filter(age<40 & educ == "Some college") %>% 
       summarise(avginc=mean(income, na.rm=TRUE))

### select the owners younger than 40 and with some college education,
### then compute the mean and the standard deviation of income

demo %>% filter(age<40 & educ == "Some college") %>% 
       summarise(avginc=mean(income, na.rm=TRUE), stdinc=sd(income, na.rm=TRUE))

