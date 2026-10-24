

x <- c(18,18,18,20,20,20,20,20,
       20,20,21,21,21,21,25,25,
       25,25,25,28,28,30,30,30)

bins <- split(x, rep(1:3, each = 8))
print(bins)

# Smoothing by bin means
mean_bins <- lapply(bins, function(b) {
  rep(mean(b), length(b))
})
print(mean_bins)

# Smoothing by bin boundaries
boundary_bins <- lapply(bins, function(b) {
  lo <- min(b)
  hi <- max(b)
  sapply(b, function(v) {
    if (abs(v - lo) <= abs(v - hi)) lo else hi
  })
})
print(boundary_bins)

# Histogram
hist(x, breaks = 3,
     main = "Histogram of Data",
     xlab = "Values",
     col = "lightblue",
     border = "black")
