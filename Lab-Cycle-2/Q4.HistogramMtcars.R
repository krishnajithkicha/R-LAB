# Load mtcars dataset
data(mtcars)

# Calculate mean and standard deviation
mean_mpg <- mean(mtcars$mpg)
sd_mpg <- sd(mtcars$mpg)

# Create histogram
hist(
  mtcars$mpg,
  breaks = 10,                              # Number of bins
  col = colorRampPalette(c("lightblue", "blue"))(10),  # Different shades of blue
  main = "Histogram of Miles per Gallon (mpg)",
  xlab = "Miles per Gallon",
  ylab = "Frequency",
  border = "white"
)

# Add mean and standard deviation lines
abline(v = mean_mpg, col = "red", lwd = 2)
abline(v = mean_mpg + sd_mpg, col = "darkgreen", lty = 2)
abline(v = mean_mpg - sd_mpg, col = "darkgreen", lty = 2)

# Add text displaying mean and SD
text(
  x = mean_mpg, y = 3, 
  labels = paste("Mean =", round(mean_mpg, 2)),
  col = "red", pos = 4
)
text(
  x = mean_mpg + sd_mpg, y = 2,
  labels = paste("SD =", round(sd_mpg, 2)),
  col = "darkgreen", pos = 4
)
