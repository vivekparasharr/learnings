
require(dplyr)

### sample()

### this group of commands extract a sample
### from a data frame, at random

demo <- read.csv("demographics.csv")

### the sample_n() function extracts a number of rows, at random

### we have to specify the number of rows

demo_s <- sample_n(demo, 100)

View(demo_s)

### the above sampling was done WITHOUT replacement

### we can do the sampling WITH replacement if we set the
### replace argument to TRUE (the default is FALSE)

demo_s <- sample_n(demo, 100, replace = TRUE)

View(demo_s)

### when we do sampling with replacement, the number of extracted rows
### can be greater than the number of rows in the initial data frame

### create a data frame with 5 rows

id <- 1:5

names <- c("Tom", "Mary", "Nicholas", "Diana", "Ellen")

dat <- data.frame(id, names)

View(dat)

### select 100 rows at random, WITH replacement

dat_s <- sample_n(dat, 100, replace = TRUE)

View(dat_s)

### sample_frac() extracts a fraction of rows, at random

### we must specify the fraction

### extract 30% of rows

demo_s2 <- sample_frac(demo, 0.3)

View(demo_s2)

### extract 30% of rows WITH replacement

demo_s2 <- sample_frac(demo, 0.3, replace = TRUE)

View(demo_s2)


