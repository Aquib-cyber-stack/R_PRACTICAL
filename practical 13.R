library(dplyr)

enroll_df <- data.frame(
  EnrollID = c(201, 202, 202, 203, 204, 201, 205),
  Student  = c("Ayaan", "Neha", "Neha", "Aquib", "Simran", "Ayaan", "Simran"),
  Course   = c("Python", "Java", "Java", "ML", "Python", "Python", "C++")
)

print("---- Original Dataset (with duplicates) ----")
print(enroll_df)
duplicates_report <- enroll_df %>%
  group_by(EnrollID, Student, Course) %>%
  count() %>%
  filter(n > 1)

print("---- Duplicate Rows Identified ----")
print(duplicates_report)
clean_exact <- enroll_df %>% 
  distinct()

print("---- After Removing Exact Duplicates ----")
print(clean_exact)
unique_students <- enroll_df %>%
  distinct(Student, .keep_all = TRUE)

print("---- Unique Students Only ----")
print(unique_students)
