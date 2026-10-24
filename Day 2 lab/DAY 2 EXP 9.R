
data(mtcars)

boxplot(mpg ~ factor(cyl), data = mtcars,
        main = "MPG by Number of Cylinders",
        xlab = "Number of Cylinders",
        ylab = "Miles per Gallon (MPG)",
        col = c("lightblue", "lightgreen", "orange"))
