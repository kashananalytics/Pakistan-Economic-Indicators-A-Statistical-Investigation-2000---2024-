library(tidyverse)
library(broom)
library(ggplot2)

data <- read.csv("data/pakistan_economic_data_clean.csv")

# Use complete observations for all model variables
model_data <- data %>%
  select(
    year,
    inflation,
    gdp_growth,
    unemployment,
    real_interest_rate
  ) %>%
  drop_na()

# Check sample size
cat("Regression sample size:", nrow(model_data), "\n")

# Fit multiple linear regression
model <- lm(
  inflation ~ gdp_growth +
    unemployment +
    real_interest_rate,
  data = model_data
)

# Model summary
summary(model)

# Regression coefficients with confidence intervals
results <- tidy(
  model,
  conf.int = TRUE
)

print(results)

# Model performance
glance(model)

# Actual vs fitted values
model_data$predicted_inflation <- predict(model)

# Regression visualization
p <- ggplot(
  model_data,
  aes(
    x = predicted_inflation,
    y = inflation
  )
) +
  geom_point(size = 3) +
  geom_abline(
    slope = 1,
    intercept = 0,
    linetype = "dashed"
  ) +
  labs(
    title = "Actual vs Predicted Inflation",
    x = "Predicted inflation (%)",
    y = "Actual inflation (%)"
  ) +
  theme_minimal()

print(p)

ggsave(
  "visualizations/actual_vs_predicted.png",
  p,
  width = 9,
  height = 6
)

write.csv(
  results,
  "data/regression_results.csv",
  row.names = FALSE
)
