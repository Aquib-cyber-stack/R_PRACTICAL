# Install packages (only first time)
install.packages("dplyr")

# Load libraries
library(dplyr)
library(readr)

# Load your BMI dataset
bmi <- read_csv("bmi.csv")

# View first few rows
head(bmi)


# Filtering Examples on BMI Data

# Example 1: Filter people whose BMI > 30 (Obese)
obese_people <- subset(bmi, Bmi > 30)

cat("Number of obese people:", nrow(obese_people), "\n")
head(obese_people)

# Example 2: Filter age > 50 AND Overweight/Obese
older_unhealthy <- subset(bmi, Age > 50 & Bmi > 25)

cat("Age > 50 and BMI > 25:", nrow(older_unhealthy), "\n")
head(older_unhealthy)

# Example 3: Only "Normal" or "Overweight" class using %in%
normal_or_overweight <- subset(bmi, BmiClass %in% c("Normal", "Overweight"))

cat("Normal or Overweight individuals:", nrow(normal_or_overweight), "\n")
head(normal_or_overweight)



# Same Filtering using dplyr


# People shorter than 1.6m
short_height <- bmi |>
  filter(Height < 1.6)

cat("Short height individuals (< 1.6m):", nrow(short_height), "\n")
head(short_height)

# BMI between 18.5 & 24.9 (Healthy range)
healthy_bmi <- bmi |>
  filter(Bmi >= 18.5, Bmi <= 24.9)

cat("Healthy BMI individuals:", nrow(healthy_bmi), "\n")
head(healthy_bmi)

# People who are Obese Class 1
obese_class1 <- bmi |>
  filter(BmiClass == "Obese Class 1")

cat("Obese Class 1 individuals:", nrow(obese_class1), "\n")
head(obese_class1)
