dir.create("data", showWarnings = FALSE)
dir.create("scripts", showWarnings = FALSE)
dir.create("visualizations", showWarnings = FALSE)


# ==========================================
# PROJECT: PAKISTAN ECONOMIC RESEARCH
# STEP 1: DATA COLLECTION
# Source: World Bank WDI
# Period: 2000-2024
# ==========================================

library(WDI)
library(tidyverse)

dir.create("data", showWarnings = FALSE)

# Download Pakistan economic indicators
pakistan_data <- WDI(
  country = "PK",
  
  indicator = c(
    inflation = "FP.CPI.TOTL.ZG",
    gdp_growth = "NY.GDP.MKTP.KD.ZG",
    unemployment = "SL.UEM.TOTL.ZS",
    gdp_per_capita = "NY.GDP.PCAP.CD",
    population = "SP.POP.TOTL",
    gdp_pc_growth = "NY.GDP.PCAP.KD.ZG",
    population_growth = "SP.POP.GROW",
    real_interest_rate = "FR.INR.RINR"
  ),
  
  start = 2000,
  end = 2024
)

# Arrange observations chronologically
pakistan_data <- pakistan_data %>%
  arrange(year)

# Inspect the dataset
head(pakistan_data)
dim(pakistan_data)
summary(pakistan_data)

# Check missing observations
colSums(is.na(pakistan_data))

# Save original downloaded data
write.csv(
  pakistan_data,
  "data/pakistan_economic_data_raw.csv",
  row.names = FALSE
)

# Confirm file creation
file.exists("data/pakistan_economic_data_raw.csv")

print("Pakistan economic data collected successfully!")
