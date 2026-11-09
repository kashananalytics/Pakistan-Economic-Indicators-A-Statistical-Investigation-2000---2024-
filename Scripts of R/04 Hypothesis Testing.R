library(tidyverse)

data <- read.csv("data/pakistan_economic_data_clean.csv")

# Remove missing values for this specific test
test_data <- data %>%
  filter(!is.na(inflation)) %>%
  mutate(
    period = if_else(
      year <= 2012,
      "2000-2012",
      "2013-2024"
    )
  )

# HYPOTHESIS 1:
# Is average inflation different between periods?

t_test_result <- t.test(
  inflation ~ period,
  data = test_data,
  alternative = "two.sided",
  var.equal = FALSE
)

print(t_test_result)

# HYPOTHESIS 2:
# Is GDP growth correlated with inflation?

correlation_test <- cor.test(
  data$inflation,
  data$gdp_growth,
  method = "pearson"
)

print(correlation_test)

# HYPOTHESIS 3:
# Rank-based association

spearman_result <- cor.test(
  data$inflation,
  data$gdp_growth,
  method = "spearman",
  exact = FALSE
)

print(spearman_result)
