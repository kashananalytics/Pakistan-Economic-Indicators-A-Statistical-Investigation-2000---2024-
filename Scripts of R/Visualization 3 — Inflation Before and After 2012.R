data <- data %>%
  mutate(
    period = ifelse(year <= 2012,
                    "2000–2012", "2013–2024")
  )

p3 <- ggplot(data, aes(x = period, y = inflation, fill = period)) +
  geom_boxplot(alpha = 0.8, width = 0.5) +
  labs(
    title = "Comparison of Inflation Across Two Periods",
    x = "Period",
    y = "Inflation (%)"
  ) +
  theme_minimal(base_size = 13) +
  theme(legend.position = "none")

p3

ggsave("visualizations/inflation_period_comparison.png",
       plot = p3, width = 9, height = 6, dpi = 300)