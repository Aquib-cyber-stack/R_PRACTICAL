# PRACTICAL 4: One-Sample t-test

df <- read.csv("daily_steps.csv")

# Test whether average steps differ from 8000
t.test(df$steps, mu = 8000)