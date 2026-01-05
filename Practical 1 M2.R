# PRACTICAL 1: Descriptive Statistics

df <- read.csv("student_marks.csv")

# Using summary()
summary(df$marks)

# Using psych::describe()
library(psych)
describe(df$marks)

