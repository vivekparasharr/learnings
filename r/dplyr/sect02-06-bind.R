
require(dplyr)

### bind()

### this is a group of commands used to bind data frames
### either by rows of columns

demo <- read.csv("demographics.csv")

View(demo)

### bind_rows() is used to bind data frames by rows

### the data frames must have the same number of columns

### create a data frame that contains the first 10 rows of demo

demo1 <- demo[1:10,]

View(demo1)

### create a second data frame that contains the last 10 rows of demo

demo2 <- demo[501:510,]
     
View(demo2)

### bind the two data frames with bind_rows()

demo_b <- bind_rows(demo1, demo2)

View(demo_b)


### bind_cols() is used to bind data frames by columns

### the data frames must have the same number of rows

### create a data frame that contains the first 3 columns of demo

demo1 <- demo[,1:3]

View(demo1)

### create a second data frame that contains the last 5 columns of demo

demo2 <- demo[,4:8]

View(demo2)

### bind the two data frames by columns

demo_b <- bind_cols(demo1, demo2)

View(demo_b)

