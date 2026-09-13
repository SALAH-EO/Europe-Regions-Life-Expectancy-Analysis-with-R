# 🇪🇺 Europe Regions — Life Expectancy Analysis with R

## Statistical Analysis, Data Exploration & Visualization

**Europe Regions Life Expectancy Analysis** is a data analysis project developed with **R** to explore regional demographic and socioeconomic indicators and demonstrate a complete statistical analysis workflow.

The project brings together structured datasets related to **life expectancy and regional socioeconomic indicators**, alongside an R-based analytical workflow covering **data inspection, cleaning, exploratory visualization, correlation analysis, and regression modeling**.

The project demonstrates how statistical programming can transform raw regional data into interpretable insights and provide a foundation for understanding relationships between demographic, economic, and health-related indicators.

---

# 🎯 Project Objective

Life expectancy is one of the most important indicators used to evaluate population health and living conditions.

However, life expectancy does not exist in isolation. It can be associated with a broad range of demographic and socioeconomic characteristics, including:

* 👥 Population structure
* 📊 Population density
* 💰 Income levels
* 📉 Poverty
* 💼 Employment and unemployment
* 🏠 Housing conditions
* 👴 Age distribution
* 🏥 Health-related indicators
* 🌍 Regional differences

The objective of this project is to build an analytical workflow capable of exploring these relationships and identifying meaningful statistical patterns across regions.

---

# 🔬 Analytical Approach

The project follows a typical **data-analysis and statistical modeling pipeline**:

```text
Raw Regional Data
       │
       ▼
Data Loading
       │
       ▼
Data Inspection
       │
       ▼
Data Cleaning & Preparation
       │
       ▼
Exploratory Data Analysis
       │
       ▼
Statistical Visualization
       │
       ▼
Correlation Analysis
       │
       ▼
Regression Modeling
       │
       ▼
Interpretation of Results
```

This workflow reflects a practical approach used in data analytics and statistical analysis projects.

---

# 📊 Data Exploration

The R workflow begins by inspecting the structure and statistical characteristics of the data.

Key operations include:

* Dataset structure inspection
* Summary statistics
* Variable selection
* Type conversion
* Categorical variable encoding
* Date transformation
* Missing-value handling during aggregation
* Preparation of numerical variables for statistical analysis

The analysis uses the **tidyverse** ecosystem to perform data manipulation and transformation efficiently.

---

# 📈 Data Visualization

Visualization is an important component of the project.

The analysis uses **ggplot2** to create visual representations of distributions, trends, and relationships within the data.

The implemented workflow includes visualizations such as:

### 📅 Time-Series Analysis

Line plots are used to examine how values evolve over time and compare trends across geographic entities.

```text
Value
 │
 │        ╭──╮
 │    ╭───╯  ╰──╮
 │ ───╯         ╰────
 │
 └──────────────────────► Time
```

### 📊 Regional Comparisons

Bar charts allow different regions or departments to be compared according to a selected indicator.

### 📉 Distribution Analysis

Histograms are used to understand the distribution of numerical variables and identify concentration, dispersion, and potential outliers.

### 🔗 Relationship Analysis

Scatter plots can be used to investigate relationships between demographic, socioeconomic, and health indicators.

---

# 🧮 Correlation Analysis

A major component of the R workflow is **correlation analysis**.

The project prepares numerical variables and calculates a correlation matrix to identify relationships between quantitative indicators.

Conceptually:

```text
             Indicator A
                 │
                 │
        ┌────────┼────────┐
        │        │        │
        ▼        ▼        ▼
   Indicator B  C        D
```

Correlation analysis helps answer questions such as:

* Which variables move together?
* Which indicators have weak relationships?
* Which variables may deserve further investigation?
* Are demographic and socioeconomic variables associated with the response variable?

### Correlation Matrix

The analysis generates a numerical correlation matrix that can be used as a foundation for deeper statistical interpretation.

> **Important:** Correlation indicates association, not causation.

---

# 📐 Regression Analysis

The project also introduces **linear regression** to investigate how multiple variables can be associated with a selected response variable.

The R workflow uses the `lm()` function to construct a linear regression model from the prepared dataset.

Conceptually:

```text
Independent Variables
        │
        ├── Population
        ├── Population Density
        ├── Unemployment
        ├── Poverty
        ├── Housing
        ├── Age Structure
        └── Income
                │
                ▼
        Linear Regression
                │
                ▼
        Response Variable
```

The regression output can then be examined through:

* Coefficients
* Statistical significance
* Model fit
* Residual behavior
* Relationships between predictors and the response

This introduces an important transition from **descriptive analytics to statistical modeling**.

---

# 🌍 Regional Analysis

The project is designed around geographic and regional data, making it possible to compare different areas rather than analyzing the population as a single homogeneous group.

This regional perspective is valuable because national averages can hide substantial differences between territories.

For example:

```text
Europe
  │
  ├── Region A
  │     ├── Demographics
  │     ├── Income
  │     └── Life Expectancy
  │
  ├── Region B
  │     ├── Demographics
  │     ├── Income
  │     └── Life Expectancy
  │
  └── Region C
        ├── Demographics
        ├── Income
        └── Life Expectancy
```

This type of structure creates opportunities for **regional comparison, socioeconomic analysis, and demographic research**.

---

# 🧰 Technology Stack

| Technology                  | Purpose                                   |
| --------------------------- | ----------------------------------------- |
| **R**                       | Statistical programming and analysis      |
| **Tidyverse**               | Data manipulation and transformation      |
| **ggplot2**                 | Data visualization                        |
| **Patchwork**               | Combining multiple plots                  |
| **Statistical Correlation** | Measuring relationships between variables |
| **Linear Regression**       | Statistical modeling                      |
| **Excel / XLSX**            | Data storage and preparation              |
| **RStudio**                 | Development and analysis environment      |

The current R script explicitly uses `tidyverse`, `ggplot2`, and `patchwork`, alongside R's built-in statistical modeling capabilities.

---

# 📁 Project Structure

The repository currently contains:

```text
Europe-Regions-Life-Expectancy-Analysis-with-R/
│
├── analysis.R
│
├── Life expectancy.xlsx
│
├── data_merged.xlsx
│
├── pauvereté.xlsx
│
└── ANALYSIS.pdf
```

### `analysis.R`

Main R analysis script containing:

* Data loading
* Data inspection
* Data cleaning
* Data transformation
* Exploratory visualization
* Regional aggregation
* Correlation analysis
* Linear regression
* Statistical plots

### `Life expectancy.xlsx`

Dataset related to the project's life-expectancy analysis.

### `data_merged.xlsx`

Merged/combined dataset used as part of the analysis workflow.

### `pauvereté.xlsx`

Dataset containing poverty-related regional information.

### `ANALYSIS.pdf`

Supporting analytical documentation/output included with the project.

The repository currently contains these five project artifacts and does not yet include a README or formal project description.

---

# 🔄 Data Analysis Workflow

A simplified representation of the analytical process is:

```text
              ┌────────────────────┐
              │ Regional Datasets  │
              └─────────┬──────────┘
                        │
                        ▼
              ┌────────────────────┐
              │ Data Integration   │
              └─────────┬──────────┘
                        │
                        ▼
              ┌────────────────────┐
              │ Cleaning & Typing  │
              └─────────┬──────────┘
                        │
                        ▼
              ┌────────────────────┐
              │ Exploratory Analysis│
              └─────────┬──────────┘
                        │
             ┌──────────┴──────────┐
             ▼                     ▼
       Visualization          Correlation
             │                     │
             └──────────┬──────────┘
                        ▼
               Regression Analysis
                        │
                        ▼
                 Statistical Insight
```

---

# 💡 Analytical Questions

The project can be used to investigate questions such as:

### Demographics

* How does life expectancy vary across regions?
* Are older population structures associated with different life-expectancy levels?
* Which regions exhibit significant demographic differences?

### Socioeconomic Factors

* Is poverty associated with health outcomes?
* How does income relate to demographic indicators?
* Are unemployment and regional health indicators related?

### Geographic Differences

* Which regions exhibit the strongest differences?
* Are regional disparities visible in the data?
* Do socioeconomic indicators vary systematically across geographic areas?

### Statistical Relationships

* Which variables are correlated?
* Which predictors appear most relevant?
* Can regression models explain part of the observed variation?

---

# 📊 Statistical Thinking

One of the main strengths of this project is that it moves beyond simply creating charts.

The workflow combines:

```text
Descriptive Statistics
        +
Exploratory Visualization
        +
Correlation Analysis
        +
Regression Modeling
        =
Statistical Data Analysis
```

This demonstrates an understanding of the progression from:

**"What does the data look like?"**

to:

**"How are the variables related?"**

and finally:

**"Can we model these relationships statistically?"**

---

# ⚠️ Repository Consistency Note

The current repository contains an `analysis.R` script whose implemented sections reference **COVID-19 hospitalization data from French departments**, including variables such as hospitalized cases, population density, unemployment, poverty, and deaths.

This means the repository currently contains **mixed analytical material** relative to its Europe/life-expectancy name.

The README therefore describes the project at the level supported by the repository contents rather than claiming specific life-expectancy findings that are not directly demonstrated by the current R script.

For a cleaner recruiter-facing repository, the next improvement would be to align `analysis.R` with the actual **Europe regional life-expectancy datasets**, rename outdated variables/comments, and remove unrelated COVID/Python code fragments.

---

# 🚀 Potential Improvements

The project can be evolved into a stronger regional health-data analytics portfolio project by adding:

### 📍 Geographic Visualization

Use regional maps to display life expectancy across Europe.

### 📊 Interactive Dashboards

Build an interactive dashboard with:

* `Shiny`
* `Plotly`
* Regional filters
* Time-period selection
* Interactive maps
* Correlation exploration

### 📈 Advanced Statistical Modeling

Extend the analysis with:

* Multiple linear regression
* Logistic regression where appropriate
* ANOVA
* Hypothesis testing
* Confidence intervals
* Residual diagnostics
* Multicollinearity analysis
* Model comparison

### 🤖 Predictive Analytics

A future version could use machine-learning models to estimate life expectancy from socioeconomic and demographic indicators.

Potential models:

```text
Linear Regression
       │
       ├── Random Forest
       ├── Gradient Boosting
       └── XGBoost
```

### 🌍 Spatial Analysis

A particularly strong extension would be **spatial statistics**, allowing neighboring regions and geographic dependencies to be considered explicitly.

---

# 🎓 Academic & Professional Value

This project demonstrates practical experience with a fundamental part of the **Data Science lifecycle**:

> **Collect → Clean → Explore → Visualize → Analyze → Model → Interpret**

It demonstrates skills in:

* Statistical programming with R
* Data cleaning
* Exploratory Data Analysis
* Data visualization
* Correlation analysis
* Regression modeling
* Regional data analysis
* Socioeconomic data interpretation
* Statistical reasoning
* Reproducible analytical workflows

These are foundational skills for roles such as:

**Data Analyst · Data Scientist · Statistical Analyst · BI Analyst · Research Data Analyst**

---

# 🧠 Key Takeaways

The project demonstrates how R can be used as a complete environment for statistical data analysis.

The main analytical workflow combines:

**Data Preparation → EDA → Visualization → Correlation → Regression → Interpretation**

Rather than treating life expectancy as an isolated metric, the project provides a framework for studying it in relation to broader **demographic, geographic, and socioeconomic characteristics**.

---

# 👨‍💻 Author

**Salah Eddine Ouirra**

**Data Science & Big Data | AI Engineering | Data Analytics | Statistical Modeling**

🌐 **Portfolio:**
https://salah-eo.vercel.app
