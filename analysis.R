library(tidyverse)

covid_data <- read.csv("data_merged.csv")

str(covid_data)

summary(covid_data)

# Data visualization
# Create plots to visualize the data distribution and trends
ggplot(covid_data, aes(x = Date, y = Nb_actuellement_hospitalisés, color = Nom_departement)) +
  geom_line() +
  labs(title = "Number of Currently Hospitalized COVID-19 Cases Over Time by Department",
       x = "Date",
       y = "Number of Currently Hospitalized Cases")

# Identify the departments most seriously affected by the epidemic
most_affected_departments <- covid_data %>%
  group_by(Nom_departement) %>%
  summarize(total_hospitalized = sum(Nb_actuellement_hospitalisés, na.rm = TRUE)) %>%
  arrange(desc(total_hospitalized)) %>%
  top_n(5)

# Display the distinctive characteristics of the most affected departments
most_affected_departments

# Clean and prepare the dataset
covid_data_clean <- covid_data %>%
  select(departement, Date, Nb_actuellement_hospitalisés, Nom_departement) %>%
  mutate(Date = as.Date(Date, format = "%Y-%m-%d"),
         Nb_actuellement_hospitalisés = as.numeric(Nb_actuellement_hospitalisés),
         Nom_departement = factor(Nom_departement, levels = unique(Nom_departement)))

# Encoding categoricals
covid_data_clean$departement <- as.factor(covid_data_clean$departement)

# Summary statistics
summary(covid_data_clean)

# Top 5 departments with the highest number of hospitalized cases
covid_data_clean %>%
  group_by(Nom_departement) %>%
  summarize(total_hospitalized = sum(Nb_actuellement_hospitalisés, na.rm = TRUE)) %>%
  arrange(desc(total_hospitalized)) %>%
  top_n(5)

# Plot 1: Total number of hospitalized cases over time
plot1 <- ggplot(covid_data_clean, aes(x = Date, y = Nb_actuellement_hospitalisés, color = Nom_departement)) +
  geom_line() +
  labs(title = "Total Number of Hospitalized COVID-19 Cases Over Time by Department",
       x = "Date",
       y = "Number of Hospitalized Cases",
       color = "Department") +
  theme_minimal()

# Plot 2: Total number of hospitalized cases by department
plot2 <- ggplot(covid_data_clean, aes(x = Nom_departement, y = Nb_actuellement_hospitalisés, fill = Nom_departement)) +
  geom_bar(stat = "identity") +
  labs(title = "Total Number of Hospitalized COVID-19 Cases by Department",
       x = "Department",
       y = "Number of Hospitalized Cases") +
  theme_minimal()

# Plot 3: Monthly average number of hospitalized cases
plot3 <- gidley_data_clean %>%
  mutate(Month = format(Date, "%Y-%m")) %>%
  group_by(Month) %>%
  summarize(avg_hospitalized = mean(Nb_actuellement_hospitalisés, na.rm = TRUE)) %>%
  ggplot(aes(x = Month, y = avg_hospitalized)) +
  geom_line() +
  labs(title = "Monthly Average Number of Hospitalized COVID-19 Cases",
       x = "Month",
       y = "Average Number of Hospitalized Cases") +
  theme_minimal()

# Plot 4: Distribution of hospitalized cases by department
plot4 <- ggplot(covid_data_clean, aes(x = Nb_actuellement_hospitalisés)) +
  geom_histogram(binwidth = 50, fill = "steelblue", color = "black") +
  labs(title = "Distribution of Hospitalized COVID-19 Cases by Department",
       x = "Number of Hospitalized Cases",
       y = "Frequency") +
  theme_minimal()

# Plot 5: Proportion of hospitalized cases by department
plot5 <- ggplot(covid_data_clean, aes(x = Nom_departement, y = Nb_actuellement_hospitalisés/sum(Nb_actuellement_hospitalisés))) +
  geom_bar(stat = "identity", fill = "steelblue", color = "black") +
  labs(title = "Proportion of Hospitalized COVID-19 Cases by Department",
       x = "Department",
       y = "Proportion") +
  theme_minimal()

# Display plots
library(patchwork)

plot1 + plot2 + plot3 + plot4 + plot5

# Prepare the dataset
covid_data_prep <- covid_data %>%
  select(departement, Date, Nb_actuellement_hospitalisés, population, Densité_de_population,
         Taux_de_chômage, Nombre_de_residences_surpeuplées, Taux_de_pauvreté_au_seuil_de_60_,
         Part_des_65_ans_ou_plus, Revenu_fiscal_moyen, Age_moyen) %>%
  mutate(
    population = as.numeric(population),
    Densité_de_population = as.numeric(Densité_de_population),
    Taux_de_chômage = as.numeric(Taux_de_chômage),
    Nombre_de_residences_surpeuplées = as.numeric(Nombre_de_residences_surpeuplées),
    Taux_de_pauvreté_au_seuil_de_60_ = as.numeric(Taux_de_pauvreté_au_seuil_de_60_),
    Part_des_65_ans_ou_plus = as.numeric(Part_des_65_ans_ou_plus),
    Revenu_fiscal_moyen = as.numeric(Revenu_fiscal_moyen),
    Age_moyen = as.numeric(Age_moyen)
  )

  # Correlation analysis
correlation_matrix <- covid_data_prep %>%
  select(-departement, -Date) %>%
  cor() %>%
  round(2)

# Display the correlation matrix
print(correlation_matrix)

# Regression analysis
regression_model <- lm(Nb_actuellement_hospitalisés ~ ., data = covid_data_prep)

# Display the regression model summary
summary(regression_model)

plt.figure(figsize=(14, 7))

# Scatter plot for Intensive Care vs. Total Deaths
plt.subplot(1, 2, 1)
sns.scatterplot(data=covid_summary, x='Average in Intensive Care', y='Total Deaths', size='Population', hue='Department', sizes=(20, 200), legend='brief')
plt.title('Intensive Care vs. Total Deaths')
plt.xlabel('Average in Intensive Care')
plt.ylabel('Total Deaths')

# Scatter plot for Poverty Rate vs. Total Deaths
plt.subplot(1, 2, 2)
sns.scatterplot(data=covid_summary, x='Poverty Rate', y='Total Deaths', size='Population Density', hue='Department', sizes=(20, 200), legend='brief')
plt.title('Poverty Rate vs. Total Deaths')
plt.xlabel('Poverty Rate')
plt.ylabel('Total Deaths')

plt.tight_layout()
plt.show()




#analsysis
# Calculate correlation between mortality and COVID-19 cases
correlation <- cor(covid_data$`Total Décès`, covid_data$`Nb actuellement hospitalisés`)

# Print the correlation coefficient
print(correlation)

# Load required libraries
library(ggplot2)

# Create a scatter plot with linear regression line
ggplot(covid_data, aes(x = `Nb actuellement hospitalisés`, y = `Total Décès`)) +
  geom_point() + # Scatter plot
  geom_smooth(method = "lm", se = FALSE, color = "blue") + # Linear regression line
  labs(x = "COVID-19 Cases (Currently Hospitalized)", y = "Total Deaths",
       title = "Relationship between Mortality and COVID-19 Cases",
       caption = "Data Source: Your Dataset") + # Labels and title
  theme_minimal() # Minimal theme



