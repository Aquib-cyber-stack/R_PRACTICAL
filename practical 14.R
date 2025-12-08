library(lubridate)
library(dplyr)

# Delivery orders dataset with date as character text
orders_df <- data.frame(
  Order_ID = 1:5,
  Order_Date = c("2023-03-12", "2023-11-02", "2024-01-05", "2024-07-18", "2024-12-31")
)

print("---- Original Dataset ----")
print(orders_df)
processed_orders <- orders_df %>%
  mutate(
    Actual_Date = ymd(Order_Date),         # Convert text to Date format
    Year = year(Actual_Date),              # Extract year
    Month_Number = month(Actual_Date),     # Month number (1–12)
    Month_Name = month(Actual_Date, label = TRUE),   # Abbreviated month name
    Day = day(Actual_Date),                # Day of month
    Weekday_Number = wday(Actual_Date),    # 1=Sunday, 7=Saturday
    Weekday_Name = wday(Actual_Date, label = TRUE, abbr = FALSE), # Full weekday name
    Quarter = quarter(Actual_Date),        # Quarter (1–4)
    Day_Of_Year = yday(Actual_Date)        # Day count in the year
  )

print("---- Dataset with Extracted Components ----")
print(processed_orders)
current_time <- now()

print("---- Current System Time Info ----")
print(paste("Current Year:", year(current_time)))
print(paste("Current Month:", month(current_time)))
print(paste("Current Day:", day(current_time)))
print(paste("Current Hour:", hour(current_time)))
print(paste("Current Minute:", minute(current_time)))
