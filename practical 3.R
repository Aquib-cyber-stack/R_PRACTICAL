install.packages(c("readr", "psych"))

library(readr)    # For efficient data reading
library(psych)    # For descriptive statistics

# Load your Amazon CSV (make sure the file name is correct)
amazon <- read.csv("amazon.csv")  

# View the first few rows
head(amazon)

# View the last few rows
tail(amazon)

# Get the dimensions (rows and columns)
dim(amazon)

# Print dimensions in a clean format
cat("Dimensions (Rows, Columns): ", dim(amazon), "\n")

# Get the structure (variable types and observations)
str(amazon)

# Summary of dataset
summary(amazon)

# Get column names
names(amazon)
cat("Column Names: ", names(amazon), "\n")

# Detailed descriptive statistics using psych package
describe(amazon)

