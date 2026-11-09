install.packages(c("lmtest", "sandwich"))

library(tidyverse)
library(lmtest)
library(sandwich)

data <- read.csv("data/pakistan_economic_data_clean.csv")

model_data <- data %>%
  select(
    year,
    inflation,
    gdp_growth,
    unemployment,
    real_interest_rate
  ) %>%
  drop_na()

model <- lm(
  inflation ~ gdp_growth +
    unemployment +
    real_interest_rate,
  data = model_data
)

# 1. Normality of residuals
shapiro_result <- shapiro.test(residuals(model))
print(shapiro_result)

# 3. Heteroscedasticity
bp_result <- bptest(model)
print(bp_result)

# 4. Autocorrelation
dw_result <- dwtest(model)
print(dw_result)

# 5. Heteroscedasticity and autocorrelation
# Consistent standard errors (HAC)
hac_result <- coeftest(
  model,
  vcov. = NeweyWest(
    model,
    lag = 1,
    prewhite = FALSE
  )
)

print(hac_result)

# 6. Standard regression diagnostic plots
png(
  "visualizations/regression_diagnostics.png",
  width = 1200,
  height = 1000
)

par(mfrow = c(2, 2))
plot(model)
dev.off()

par(mfrow = c(1, 1))

print("Regression diagnostics completed!")



# VIF without car package

calculate_vif <- function(model) {
  
  x <- model.matrix(model)[, -1, drop = FALSE]
  
  vif_values <- sapply(seq_len(ncol(x)), function(i) {
    
    if (ncol(x) == 1) return(1)
    
    other_variables <- x[, -i, drop = FALSE]
    
    aux_model <- lm(x[, i] ~ other_variables)
    
    1 / (1 - summary(aux_model)$r.squared)
  })
  
  names(vif_values) <- colnames(x)
  
  return(vif_values)
}

# Calculate and display VIF
vif_result <- calculate_vif(model)

print(vif_result)