# Movie data with mixed data types
movies_df <- data.frame(
  MovieID = 1:6,
  Genre = c("Action", "Drama", "Action", "Comedy", "Drama", "Horror"),
  WatchTime = c(120, 95, 150, NA, 110, 80),  # NA included
  Is_Premium = c(TRUE, FALSE, TRUE, FALSE, TRUE, FALSE),
  User_Rating = c(4.7, 3.9, 4.8, 4.0, 3.5, 4.1)
)

print("---- Movies Dataset Loaded ----")
print(movies_df)
print("---- Output of str() ----")
str(movies_df)
print("---- Output of summary() (Before Factor Conversion) ----")
summary(movies_df)
movies_df$Genre <- as.factor(movies_df$Genre)

print("---- Output of summary() After Converting Genre to Factor ----")
summary(movies_df)
avg_rating <- mean(movies_df$User_Rating)
max_watch <- max(movies_df$WatchTime, na.rm = TRUE)  # Ignoring NA

print(paste("Average User Rating:", avg_rating))
print(paste("Maximum Watch Time:", max_watch))
