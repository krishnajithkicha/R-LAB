n <- as.numeric(readline("Enter the number of students: "))
c <- 0

students_table <- data.frame(Name = character(), Age = numeric(), Grade = character(), stringsAsFactors = FALSE)
Grade <- c("A", "B", "C", "D", "F")  # Declare this outside the loop
while (c < n) {
  name <- readline("Enter your name: ")

  # Read and validate age
  age <- as.numeric(readline("Enter your age: "))
  while (is.na(age) || age <= 0) {
    cat("Please enter a valid age\n")  # Use cat() for clean output
    age <- as.numeric(readline("Enter your age: "))
  }

  # Read and validate grade
  grade <- readline("Enter your grade: ")
  while (!(grade %in% Grade)) {
    cat("Please enter a valid grade (A, B, C, D, F)\n")
    grade <- readline("Enter your grade: ")
  }

  # Append to table
  new_row <- data.frame(Name = name, Age = age, Grade = grade, stringsAsFactors = FALSE)
  students_table <- rbind(students_table, new_row)

  c <- c + 1
}

# Print the final table
print(students_table)
mean_age <- mean(students_table$Age)
print(paste("Mean age of students:", mean_age))
