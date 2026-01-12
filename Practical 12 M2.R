library(tidyverse)

# Load dataset
heart <- read_csv("heart.csv")

# Select numeric variables
heart_numeric <- heart %>% select(where(is.numeric))

# Correlation matrix
cor_matrix <- cor(heart_numeric, use = "complete.obs")

# Display correlation matrix
print(round(cor_matrix, 2))
