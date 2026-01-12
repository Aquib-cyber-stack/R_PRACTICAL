library(tidyverse)

# Load dataset
students <- read_csv("StudentsPerformance.csv")

# Histogram: Math scores
ggplot(students, aes(x = `math score`)) +
  geom_histogram(bins = 30, fill = "purple", color = "white") +
  labs(title = "Histogram of Math Scores",
       x = "Math Score", y = "Frequency")


ggplot(students, aes(x = gender, y = `math score`)) +
  geom_boxplot(fill = "lightblue") +
  labs(title = "Box Plot of Math Scores by Gender",
       x = "Gender", y = "Math Score")

