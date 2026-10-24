
data(mtcars)

plot(mtcars$mpg, type = "o",
     col = "blue", ylim = range(c(mtcars$mpg,
                                  mtcars$qsec)),
     xlab = "Car Index", ylab = "Value",
     main = "MPG and QSEC")

lines(mtcars$qsec, type = "o", col = "red")

legend("topright",
       legend = c("MPG", "QSEC"),
       col = c("blue", "red"),
       lty = 1, pch = 1)
