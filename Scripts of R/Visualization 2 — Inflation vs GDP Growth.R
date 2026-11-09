p2 <- ggplot(data, aes(x = gdp_growth, y = inflation)) +
  geom_point(size = 3, color = "#00897B") +
  geom_smooth(method = "lm", se = TRUE, color = "#D84315") +
  labs(
    title = "Relationship Between GDP Growth and Inflation",
    x = "GDP Growth (%)",
    y = "Inflation (%)"
  ) +
  theme_minimal(base_size = 13)

p2

ggsave("visualizations/inflation_vs_gdp.png",
       plot = p2, width = 10, height = 6, dpi = 300)