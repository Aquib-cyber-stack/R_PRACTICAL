# Install packages (only first time)
install.packages("dplyr")

# Load library
library(dplyr)

# Load your Heart dataset
heart <- read.csv("heart.csv")   # Make sure the filename is correct

# 1 Sorting by a single variable (Ascending)
# Example: Sort by Age from lowest to highest
heart_sorted_age <- heart |>
  arrange(Age)

head(heart_sorted_age, 5)

# 2 Sorting by a single variable (Descending)
# Example: Sort by Cholesterol highest first
heart_sorted_chol_desc <- heart |>
  arrange(desc(Cholesterol))

head(heart_sorted_chol_desc, 5)

# 3 Sorting by multiple variables
# Example: Sort first by Sex, then MaxHR highest first
heart_multi_sort <- heart |>
  arrange(Sex, desc(MaxHR))

head(heart_multi_sort, 10)

# 4 Filter + Sort together
# Example: People with high Heart Rate (MaxHR > 160), sort by Age
high_hr_sorted <- heart |>
  filter(MaxHR > 160) |>
  arrange(Age)

cat("People with high MaxHR:\n")
print(high_hr_sorted |> select(Age, Sex, MaxHR, HeartDisease) |> head(5))
