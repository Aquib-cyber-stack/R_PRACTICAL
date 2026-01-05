# PRACTICAL 5: Independent Two-Sample t-test

df <- read.csv("salary_gender.csv")

t.test(salary ~ gender, data = df)