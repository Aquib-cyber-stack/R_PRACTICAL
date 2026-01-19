# Load data
diabetes <- read.csv("diabetes.csv")

# Convert Outcome to factor
diabetes$Outcome <- as.factor(diabetes$Outcome)

# Logistic regression model
model_glm <- glm(Outcome ~ Glucose,
                 data = diabetes,
                 family = binomial)

# Predicted probabilities
diabetes$Predicted_Prob <- predict(model_glm, type = "response")

# Scatter plot (actual data in probability form)
plot(diabetes$Glucose, as.numeric(as.character(diabetes$Outcome)),
     xlab = "Glucose Level",
     ylab = "Probability of Diabetes",
     main = "Logistic Regression Curve: Diabetes Prediction",
     pch = 16,
     ylim = c(0,1))

# Generate smooth X values
glucose_seq <- seq(min(diabetes$Glucose),
                   max(diabetes$Glucose),
                   length.out = 200)

# New data for curve
new_data <- data.frame(Glucose = glucose_seq)

# Predicted curve
predicted_curve <- predict(model_glm, newdata = new_data, type = "response")

# Add S-curve
lines(glucose_seq, predicted_curve, lwd = 2)

write.csv(diabetes, "Diabetes_Predictions.csv", row.names = FALSE)


