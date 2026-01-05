# PRACTICAL 3: Cross-Tabulation

df <- read.csv("college_admission.csv")

cross_tab <- table(df$gender, df$admission_status)
cross_tab