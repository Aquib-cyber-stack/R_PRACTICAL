# Read two separate datasets
health_a <- read.csv("student_health_a.csv")
health_b <- read.csv("student_health_b.csv")

print("Columns in Dataset A:")
print(names(health_a))

print("Columns in Dataset B:")
print(names(health_b))
# Standardize Dataset A
health_a_clean <- health_a[, c("Name", "Height_cm")]
names(health_a_clean) <- c("Student", "Height")

# Standardize Dataset B
health_b_clean <- health_b[, c("StudentName", "Height")]
names(health_b_clean) <- c("Student", "Height")
health_a_clean$Height <- as.numeric(health_a_clean$Height)
health_b_clean$Height <- as.numeric(health_b_clean$Height)
combined_health <- rbind(health_a_clean, health_b_clean)

print("Combined Dataset:")
print(head(combined_health))
print(tail(combined_health))
print(paste("Rows in Dataset A:", nrow(health_a_clean)))
print(paste("Rows in Dataset B:", nrow(health_b_clean)))
print(paste("Total Rows:", nrow(combined_health)))
