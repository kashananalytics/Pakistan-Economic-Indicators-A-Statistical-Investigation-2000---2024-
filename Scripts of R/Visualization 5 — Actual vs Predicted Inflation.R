model_data <- data %>%
  select(inflation, gdp_growth, unemployment,
         real_interest_rate) %>%
  na.omit()

model <- lm(
  inflation ~ gdp_growth + unemployment + real_interest_rate,
  data = model_data
)

model_data$predicted_inflation <- predict(model)

p5 <- ggplot(model_data,
             aes(x = inflation, y = predicted_inflation)) +
  geom_point(size = 3, color = "#1565C0") +
  geom_abline(slope = 1, intercept = 0,
              color = "#D84315", linetype = "dashed") +
  labs(
    title = "Actual vs Predicted Inflation",
    subtitle = "Multiple Linear Regression Model",
    x = "Actual Inflation (%)",
    y = "Predicted Inflation (%)"
  ) +
  theme_minimal(base_size = 13)

p5

ggsave("visualizations/actual_vs_predicted.png",
       plot = p5, width = 10, height = 6, dpi = 300)