library(writexl)

write_xlsx(list(
  "Salary Results" = salary,
  "Diabetes Results" = diabetes
), "Regression_Results.xlsx")
