
A <- c(76, 35, 47, 64, 95, 66, 89, 36, 84)
B <- c(51, 56, 84, 60, 59, 70, 63, 66, 50)

# Mean, median and range
mean(A)
median(A)
diff(range(A))

mean(B)
median(B)
diff(range(B))

# Boxplot
boxplot(A, B,
        names = c("Class A", "Class B"),
        main = "Comparison of Class Results",
        ylab = "Marks",
        col = c("lightblue", "lightgreen"))
