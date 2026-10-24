
# Load dataset
diabetes <- read.csv("diabetes.csv")

# Display column names
print(names(diabetes))

# Scatterplot: Blood Pressure vs Age
plot(diabetes$Age, diabetes$BloodPressure,
     main = "Blood Pressure vs Age",
     xlab = "Age",
     ylab = "Blood Pressure",
     col = "blue",
     pch = 19)

# Create age groups
diabetes$AgeGroup <- cut(
  diabetes$Age,
  breaks = c(0, 20, 30, 40, 50, 60, Inf),
  labels = c("0-20", "21-30", "31-40",
             "41-50", "51-60", "Above 60")
)

# Calculate average blood pressure
avg_bp <- aggregate(
  BloodPressure ~ AgeGroup,
  data = diabetes,
  FUN = mean,
  na.rm = TRUE
)

# Bar chart
barplot(avg_bp$BloodPressure,
        names.arg = avg_bp$AgeGroup,
        main = "Average Blood Pressure by Age",
        xlab = "Age Group",
        ylab = "Average Blood Pressure",
        col = "lightgreen",
        las = 2)
