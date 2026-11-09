library(tidyverse)
library(corrplot)

data <- read.csv("data/pakistan_economic_data_clean.csv")

variables <- data %>%
  select(
    inflation,
    gdp_growth,
    unemployment,
    real_interest_rate
  )

# Correlation matrix
cor_matrix <- cor(
  variables,
  use = "pairwise.complete.obs",
  method = "pearson"
)

print(cor_matrix)

# Save correlation visualization
png(
  "visualizations/correlation_matrix.png",
  width = 1000,
  height = 800
)

corrplot(
  cor_matrix,
  method = "color",
  type = "upper",
  addCoef.col = "black",
  tl.col = "black",
  number.cex = 0.8
)

dev.off()
