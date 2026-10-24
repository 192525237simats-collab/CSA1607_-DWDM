
points <- c(10, 12, 14, 15, 16, 18, 20,
            21, 22, 24, 25, 27, 60)

boxplot(points,
        main = "Tennis Players' Scores",
        ylab = "Points Scored",
        col = "lightblue")

# Identify outliers
boxplot.stats(points)$out
