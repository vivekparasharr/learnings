
require(dplyr)

### 1. filter()

### this command is used to filter (select) the data set
### rows (observations or cases)
### using one or several conditions

### syntax: filter(data frame, conditions)

demo <- read.csv("demographics.csv")

View(demo)

### owners with the income greater than 55

demo2 <- filter(demo, income>55)

View(demo2)

### owners with the income equal to 60

demo2 <- filter(demo, income==60)

View(demo2)

### married owners

demo2 <- filter(demo, marital=='Married')

View(demo2)

### married owners with the income greater than 55

demo2 <- filter(demo, income>55 & marital=='Married')

View(demo2)

### alternatively, we can separate the conditions with a comma

demo2 <- filter(demo, income>55, marital=='Married')

View(demo2)

### we can have multiple conditions

demo2 <- filter(demo, income>55, marital=='Married', carcat=='Luxury')

View(demo2)

### owners with the age between 35 and 45

demo2 <- filter(demo, age>=35, age<=45)

View(demo2)

### if the condition is impossible to meet, the filtering returns zero rows

demo2 <- filter(demo, age<30, age>50)

View(demo2)

### owners who are married OR the income greater than 55

demo2 <- filter(demo, income>55 | marital=='Married')

View(demo2)

### select cases with specific values of a variable

### owners aged 42, 45 and 60

demo2 <- filter(demo, age %in% c(42, 45, 60))

View(demo2)

### owners with the ages different from 42, 45 and 60

demo2 <- filter(demo, !age %in% c(42, 45, 60))

View(demo2)


