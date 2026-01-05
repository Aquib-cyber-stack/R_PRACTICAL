# PRACTICAL 2: Frequency Table

df <- read.csv("employee_department.csv")

# Using table()
table(df$department)

# Using dplyr::count()
library(dplyr)
df %>% count(department)