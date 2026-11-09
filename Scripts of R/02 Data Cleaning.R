library(tidyverse)

# Import raw data
data <- read.csv("data/pakistan_economic_data_raw.csv")

# Inspect structure
str(data)

# Check duplicates
sum(duplicated(data$year))

# Clean and organize
data_clean <- data %>%
  mutate(year = as.integer(year)) %>%
  arrange(year) %>%
  distinct(year, .keep_all = TRUE)

# Missing value report
missing_report <- data_clean %>%
  summarise(across(
    everything(),
    ~sum(is.na(.))
  ))

print(missing_report)

# Save cleaned dataset
write.csv(
  data_clean,
  "data/pakistan_economic_data_clean.csv",
  row.names = FALSE
)

print("Data cleaning completed!")
