# PRACTICAL 1: Descriptive Statistics

df <- read.csv("student_marks.csv")

# Using summary()
summary(df$marks)

# Using psych::describe()
library(psych)
describe(df$marks)

# PRACTICAL 2: Frequency Table

df <- read.csv("employee_department.csv")

# Using table()
table(df$department)

# Using dplyr::count()
library(dplyr)
df %>% count(department)

# PRACTICAL 3: Cross-Tabulation

df <- read.csv("college_admission.csv")

cross_tab <- table(df$gender, df$admission_status)
cross_tab

# PRACTICAL 4: One-Sample t-test

df <- read.csv("daily_steps.csv")

# Test whether average steps differ from 8000
t.test(df$steps, mu = 8000)

# PRACTICAL 5: Independent Two-Sample t-test

df <- read.csv("salary_gender.csv")

t.test(salary ~ gender, data = df)

# PRACTICAL 6: Paired t-test

df <- read.csv("fitness_program.csv")

t.test(df$weight_before, df$weight_after, paired = TRUE)
