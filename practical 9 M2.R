# The Effect of Vitamin C on Tooth Growth in Guinea Pigs
ToothGrowth     # In-built data set in R
#
# Visualize with two plots
plot(len ~ supp + factor(dose), data = ToothGrowth) 
#
# Perform Two-Way ANOVA
twoANOVA <- aov(len ~ supp * factor(dose), data = ToothGrowth)
summary(twoANOVA)
#