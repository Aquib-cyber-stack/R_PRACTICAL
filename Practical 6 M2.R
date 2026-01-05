# PRACTICAL 6: Paired t-test

df <- read.csv("fitness_program.csv")

t.test(df$weight_before, df$weight_after, paired = TRUE)