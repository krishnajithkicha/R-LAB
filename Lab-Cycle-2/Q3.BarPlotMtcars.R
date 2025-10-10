
data(mtcars)

cyl_trans_table <- table(mtcars$cyl, mtcars$am)

barplot(
  cyl_trans_table,
  beside = TRUE,
  col = c("skyblue", "orange", "lightgreen"), 
  names.arg = c("Automatic", "Manual"),       # am = 0 -> Auto, 1 -> Manual
  xlab = "Transmission Type (0 = Auto, 1 = Manual)",
  ylab = "Number of Cars",
  main = "Number of Cylinders vs Transmission Type in mtcars Dataset"
)
legend(
  "topright",
  legend = rownames(cyl_trans_table),
  fill = c("skyblue", "orange", "lightgreen"),
  title = "Cylinders"
)
