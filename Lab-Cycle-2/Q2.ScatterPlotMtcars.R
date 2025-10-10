
data(mtcars)

mtcars$cyl<-as.factor(mtcars$cyl)
colors <- c("red", "blue", "green")

plot(
  mtcars$disp, mtcars$mpg,
  col = colors,
  pch = 19,
  main = "Scatter Plot of MPG vs Displacement in mtcars Dataset",
  xlab = "Displacement (cu. in.)",
  ylab = "Miles per Gallon (MPG)"
)

lines(lowess(mtcars$disp, mtcars$mpg), col = "black", lwd = 2)

legend(
  "topright",
  legend = unique(mtcars$cyl),
  col = c("red", "blue", "green"),
  pch = 19,
  title = "Number of Cylinders"
)
