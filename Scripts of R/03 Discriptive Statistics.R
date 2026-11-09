install.packages("moments")
library(tidyverse)
library(moments)

data <- read.csv("data/pakistan_economic_data_clean.csv")

# Select important variables
economic_variables <- data %>%
  select(
    inflation,
    gdp_growth,
    unemployment,
    real_interest_rate
  )

# Summary statistics
descriptive_results <- economic_variables %>%
  summarise(across(
    everything(),
    list(
      Mean = ~mean(., na.rm = TRUE),
      Median = ~median(., na.rm = TRUE),
      SD = ~sd(., na.rm = TRUE),
      Minimum = ~min(., na.rm = TRUE),
      Maximum = ~max(., na.rm = TRUE),
      Skewness = ~moments::skewness(., na.rm = TRUE),
      Kurtosis = ~moments::kurtosis(., na.rm = TRUE)
    )
  ))

print(descriptive_results)

write.csv(
  descriptive_results,
  "data/descriptive_statistics.csv",
  row.names = FALSE
)
