library(readr)
library(ggplot2)
library(dplyr)

# checking data 
radon <- read.csv("radon.csv")
str(radon)

# for data visualization
plot(radon$D, radon$RR)

# analysis of variance
anova.rr <- aov(RR ~ as.factor(D), data = radon)
summary(anova.rr)
