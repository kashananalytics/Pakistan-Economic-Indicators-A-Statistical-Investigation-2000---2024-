library(dplyr)
library(corrplot)

economic_vars <- data %>%
  select(inflation, gdp_growth, unemployment,
         real_interest_rate)

cor_matrix <- cor(
  economic_vars,
  use = "pairwise.complete.obs",
  method = "pearson"
)

corrplot(
  cor_matrix,
  method = "color",
  type = "upper",
  addCoef.col = "black",
  tl.col = "black",
  tl.srt = 45,
  title = "Correlation Between Economic Indicators",
  mar = c(0, 0, 3, 0)
)

economic_vars <- data %>%
  select(inflation, gdp_growth, unemployment,
         real_interest_rate)

cor_matrix <- cor(
  economic_vars,
  use = "pairwise.complete.obs",
  method = "pearson"
)

png("visualizations/correlation_heatmap.png",
    width = 1200, height = 1000, res = 150)

corrplot(
  cor_matrix,
  method = "color",
  type = "upper",
  addCoef.col = "black",
  tl.col = "black",
  tl.srt = 45,
  title = "Correlation Between Economic Indicators",
  mar = c(0, 0, 3, 0)
)

dir.create("visualizations", showWarnings = FALSE)

png(
  "visualizations/correlation_heatmap.png",
  width = 1200,
  height = 1000,
  res = 150
)

corrplot(
  cor_matrix,
  method = "color",
  type = "upper",
  addCoef.col = "black",
  tl.col = "black",
  tl.srt = 45,
  title = "Correlation Between Economic Indicators",
  mar = c(0, 0, 3, 0)
)

dev.off()

