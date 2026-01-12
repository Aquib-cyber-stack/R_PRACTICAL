library(tidyverse)

netflix <- read_csv("netflix_titles.csv")

movies <- netflix %>%
  filter(type == "Movie") %>%
  mutate(duration_min = as.numeric(str_extract(duration, "\\d+"))) %>%
  filter(!is.na(duration_min), !is.na(release_year))

ggplot(movies, aes(x = release_year, y = duration_min)) +
  geom_point(color = "blue", alpha = 0.6) +
  labs(title = "Scatter Plot: Release Year vs Movie Duration",
       x = "Release Year",
       y = "Duration (minutes)") +
  theme_minimal()
----------------------------------------------------------------------------------------------
library(tidyverse)

netflix <- read_csv("netflix_titles.csv")

type_count <- netflix %>%
  count(type)

ggplot(type_count, aes(x = "", y = n, fill = type)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  labs(title = "Pie Chart: Netflix Content Type Distribution",
       fill = "Type") +
  theme_void()

---------------------------------------------------------------------------------------------

library(tidyverse)

netflix <- read_csv("netflix_titles.csv")

movies <- netflix %>%
  filter(type == "Movie") %>%
  mutate(duration_min = as.numeric(str_extract(duration, "\\d+"))) %>%
  filter(!is.na(duration_min), !is.na(release_year))

hl_data <- movies %>%
  group_by(release_year) %>%
  summarise(
    min_duration = min(duration_min),
    max_duration = max(duration_min)
  )

ggplot(hl_data, aes(x = release_year)) +
  geom_linerange(aes(ymin = min_duration, ymax = max_duration),
                 color = "purple", size = 1) +
  labs(title = "High–Low Chart: Movie Duration Range by Release Year",
       x = "Release Year",
       y = "Duration (minutes)") +
  theme_minimal()

