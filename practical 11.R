library(dplyr)
library(tidyr)

fitness_df <- data.frame(
  UserID = 1:5,
  Steps = c(3500, 7800, 12000, 5600, 9100),
  Calories = c(180, 320, 450, 250, 390)
)

print("Original Wide Data:")
print(fitness_df)
long_df <- fitness_df %>%
  pivot_longer(
    cols = c(Steps, Calories),
    names_to = "Activity_Type",
    values_to = "Activity_Value"
  )

print("Long Format Data:")
print(long_df)
wide_df <- long_df %>%
  pivot_wider(
    names_from = Activity_Type,
    values_from = Activity_Value
  )

print("Wide Format (Back to original shape):")
print(wide_df)
fitness_df$DayType <- c("Weekday", "Weekend", "Weekday", "Weekend", "Weekday")

day_pivot <- fitness_df %>%
  select(UserID, DayType, Calories) %>%
  pivot_wider(
    names_from = DayType,
    values_from = Calories
  )

print("Calories Based on Day Type:")
print(day_pivot)
