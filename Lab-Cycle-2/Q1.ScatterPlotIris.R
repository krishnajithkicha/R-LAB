data(iris)
plot(iris$Sepal.Length,iris$Petal.Length,main="Scatter Plot of Sepal Length vs Petal Length",xlab="Sepal Length",ylab="Petal Length",col="blue")
png(filename = "iris_scatterplot.png", width = 2000, height = 1500, res = 300)
