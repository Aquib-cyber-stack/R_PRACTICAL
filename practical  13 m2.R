# Load dataset
salary <- read.csv("Salary_Data.csv")

# Check data
head(salary)
summary(salary)

# Linear regression model
model_lm <- lm(Salary ~ YearsExperience, data = salary)

# Model summary
summary(model_lm)

# Prediction
salary$Predicted_Salary <- predict(model_lm)

# Plot
plot(salary$YearsExperience, salary$Salary,
     main = "Linear Regression: Salary vs Experience",
     xlab = "Years of Experience",
     ylab = "Salary")
abline(model_lm, col = "blue")


write.csv(salary, "Salary_Predictions.csv", row.names = FALSE)
