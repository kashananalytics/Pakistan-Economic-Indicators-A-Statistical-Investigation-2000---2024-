library(ggplot2)
library(dplyr)
library(tidyr)
library(scales)
library(corrplot)

data <- read.csv("data/pakistan_economic_data_clean.csv")

str(data)
head(data)

p1 <- ggplot(data, aes(x = year, y = inflation)) +
  geom_line(linewidth = 1.2, color = "#1565C0") +
  geom_point(size = 2, color = "#D84315") +
  geom_smooth(method = "loess", se = TRUE,
              color = "black", linetype = "dashed") +
  labs(
    title = "Pakistan Inflation Trend (2000–2024)",
    subtitle = "Annual percentage change in consumer prices",
    x = "Year",
    y = "Inflation (%)",
    caption = "Source: World Bank – World Development Indicators"
  ) +
  theme_minimal(base_size = 13)

p1

ggsave("visualizations/inflation_trend.png",
       plot = p1, width = 10, height = 6, dpi = 300)