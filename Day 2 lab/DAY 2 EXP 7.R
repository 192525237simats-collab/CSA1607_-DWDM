
library(boot)
data(water)

# Display dataset
print(head(water))

# Scatterplot
plot(water$hardness, water$mortality,
     main = "Water Hardness vs Mortality",
     xlab = "Hardness",
     ylab = "Mortality",
     pch = 19,
     col = "blue")

# Linear regression
model <- lm(mortality ~ hardness, data = water)

# Regression line
abline(model, col = "red", lwd = 2)

# Display regression equation
print(coef(model))

# Predict mortality for hardness = 88
prediction <- predict(
  model,
  newdata = data.frame(hardness = 88)
)

print(prediction)
