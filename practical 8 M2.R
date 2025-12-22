library(tidyverse)
library(forcats)

View(gss_cat)
my_data <- gss_cat %>%
  select(marital) %>%
  filter(marital %in% c("Married",
                        "Never married",
                        "Divorced")) %>%
  mutate(marital = fct_drop(marital))

my_table <- table(my_data)
View(my_table)

chisq.test(my_table)

my_data %>%
  ggplot(aes(marital)) +
  geom_bar(fill = "steelblue") +
  labs(
    x = "Marital Status",
    y = "Count",
    title = "Distribution of Marital Status"
  ) +
  theme_minimal()
