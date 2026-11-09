# Pakistan Economic Indicators A Statistical Investigation 2000 - 2024
A statistical analysis of Pakistan's macroeconomic indicators (2000 - 2024) using R. Explores inflation, GDP growth, unemployment and interest rates through descriptive statistics, hypothesis testing, correlation analysis, regression modelling and data visualization.
# 🇵🇰 Pakistan Economic Indicators: A Statistical Investigation (2000–2024)

### An R-Based Statistical Research Project on Pakistan's Macroeconomic Performance

![R](https://img.shields.io/badge/Language-R-blue)
![Statistics](https://img.shields.io/badge/Focus-Statistical%20Analysis-green)
![Research](https://img.shields.io/badge/Domain-Economic%20Research-orange)
![Status](https://img.shields.io/badge/Project-Completed-success)

## 📌 Project Overview

This project presents a statistical investigation of Pakistan's macroeconomic indicators from 2000 to 2024 using R programming.

The research explores historical economic trends and examines relationships between inflation, GDP growth, unemployment, and real interest rates.

The primary objective is to apply statistical techniques to real-world economic data, develop meaningful visualizations, and evaluate the relationships between key macroeconomic variables.

This project demonstrates the practical application of statistical analysis, data cleaning, exploratory data analysis, hypothesis testing, correlation analysis, and regression modelling.

## 🎯 Research Objectives

- Examine Pakistan's inflation trends from 2000 to 2024.
- Analyze the relationship between inflation and GDP growth.
- Investigate the relationship between inflation and unemployment.
- Examine the correlation among selected economic indicators.
- Compare inflation across two periods: 2000–2012 and 2013–2024.
- Develop a multiple linear regression model to investigate factors associated with inflation.
- Interpret statistical findings using appropriate methods.

## ❓ Research Questions

1. How has inflation changed in Pakistan between 2000 and 2024?
2. Is there a statistically significant relationship between GDP growth and inflation?
3. What relationship exists between unemployment and inflation?
4. Did average inflation differ between 2000–2012 and 2013–2024?
5. How well do selected macroeconomic indicators explain variations in inflation?

## 📊 Dataset and Variables

The project uses annual macroeconomic indicators for Pakistan.

| Variable | Description |
|---|---|
| Year | Annual observation |
| Inflation | Annual consumer price inflation (%) |
| GDP Growth | Annual GDP growth (%) |
| Unemployment | Unemployment rate (%) |
| Real Interest Rate | Real interest rate (%) |
| GDP per Capita | GDP per capita (current US$) |
| Population | Total population |
| Population Growth | Annual population growth (%) |

**Data Sources**

- [World Bank – Pakistan Economic Data](https://data.worldbank.org/country/pk)
- [World Development Indicators](https://databank.worldbank.org/source/world-development-indicators)
- [Pakistan Bureau of Statistics](https://www.pbs.gov.pk/)
- [State Bank of Pakistan](https://www.sbp.org.pk/)

The World Bank's World Development Indicators are the primary source for the project's selected macroeconomic variables.

## 🛠️ Tools and Technologies

- **R Programming:** Statistical computing and analysis.
- **RStudio:** Development environment.
- **Tidyverse:** Data manipulation and cleaning.
- **ggplot2:** Statistical data visualization.
- **corrplot:** Correlation matrix visualization.
- **broom:** Regression result organization.
- **lmtest:** Regression diagnostic testing.
- **sandwich:** Robust standard error estimation.

## 📈 Statistical Methodology

The project applies the following statistical techniques:

### 1. Data Collection and Cleaning
- Importing economic indicators.
- Checking data structure and variable types.
- Identifying missing observations.
- Checking duplicate records.
- Preparing a structured analytical dataset.

### 2. Descriptive Statistics
- Mean
- Median
- Standard deviation
- Minimum and maximum
- Skewness
- Kurtosis

### 3. Hypothesis Testing

The project uses hypothesis testing to investigate differences and relationships between economic variables.

**Period Comparison**

- H₀: Mean inflation was equal during 2000–2012 and 2013–2024.
- H₁: Mean inflation differed between the two periods.

Welch's independent-samples t-test is used for the initial comparison.

**Correlation Testing**

Pearson and Spearman correlation analyses are used to examine the relationship between inflation and GDP growth.

### 4. Correlation Analysis

A correlation matrix is developed to examine the strength and direction of relationships among selected economic indicators.

### 5. Multiple Linear Regression

A multiple linear regression model is developed:

`Inflation = β₀ + β₁(GDP Growth) + β₂(Unemployment) + β₃(Real Interest Rate) + ε`

The model investigates the association between inflation and selected explanatory variables.

### 6. Model Diagnostics

The analysis includes:

- Shapiro–Wilk residual normality test.
- Breusch–Pagan heteroscedasticity test.
- Durbin–Watson autocorrelation test.
- Variance Inflation Factor (VIF).
- Newey–West heteroscedasticity and autocorrelation-consistent standard errors.

Because the dataset consists of annual time-series observations, diagnostic results and potential serial dependence must be considered when interpreting statistical significance.

## 📉 Data Visualizations

The project includes the following visualizations:

| Visualization | Purpose |
|---|---|
| Inflation Trend | Examine inflation over time |
| Inflation vs GDP Growth | Explore the relationship between inflation and GDP growth |
| Inflation Period Comparison | Compare inflation distributions across two periods |
| Correlation Heatmap | Visualize relationships among economic indicators |
| Actual vs Predicted Inflation | Evaluate regression model predictions |

All visualizations are intended to support statistical interpretation and communicate economic patterns.

## 📁 Repository Structure

```text
Pakistan-Economic-Research/
│
├── data/
│   ├── pakistan_economic_data_raw.csv
│   └── pakistan_economic_data_clean.csv
│
├── scripts/
│   ├── 01_data_collection.R
│   ├── 02_data_cleaning.R
│   ├── 03_descriptive_statistics.R
│   ├── 04_hypothesis_testing.R
│   ├── 05_correlation_analysis.R
│   ├── 06_regression_model.R
│   └── 07_model_diagnostics.R
│
├── visualizations/
│   ├── inflation_trend.png
│   ├── inflation_vs_gdp.png
│   ├── inflation_period_comparison.png
│   ├── correlation_heatmap.png
│   └── actual_vs_predicted.png
│
├── results/
│
└── README.md
```

## 🚀 How to Run This Project

**Step 1:** Install R and RStudio.

**Step 2:** Clone or download this repository.

**Step 3:** Install the required packages:

```r
install.packages(c(
  "WDI",
  "tidyverse",
  "ggplot2",
  "moments",
  "corrplot",
  "broom",
  "lmtest",
  "sandwich"
))
```

**Step 4:** Run the R scripts in numerical order, starting with data collection.

**Step 5:** Review the generated statistical outputs and visualizations.

## 🔍 Research Limitations

- The study uses annual observations, resulting in a relatively small sample.
- Some economic indicators may contain missing observations.
- Correlation does not establish causation.
- Macroeconomic variables may exhibit trends and autocorrelation.
- Regression results should be interpreted alongside time-series properties and diagnostic tests.

## 💡 Key Learning Outcomes

Through this project, I applied statistical concepts to real-world economic data and developed practical experience in:

- Statistical computing with R.
- Data collection and preprocessing.
- Exploratory data analysis.
- Descriptive and inferential statistics.
- Hypothesis testing.
- Correlation and regression analysis.
- Statistical visualization.
- Model diagnostics.
- Research interpretation.

## 👨‍💻 About the Researcher

**Kashan Ahmed**  
BS Statistics | Aspiring Data Analyst | Statistical Research & Data Visualization

I hold a Bachelor's degree in Statistics from Bahauddin Zakariya University, Multan.

My interests include statistical analysis, economic research, data analytics, and transforming raw data into meaningful insights.

**Connect with me:**

- GitHub: [kashananalytics](https://github.com/kashananalytics)
- LinkedIn: [LinkedIn Profile](https://www.linkedin.com/in/kashananalytics/)
- Portfolio: [Personal Portfolio](https://kashananalytics.github.io/Kashan.Ahmed.Portfolio.Web/)

---

*This project is developed for academic learning, statistical research, and professional portfolio development.*
