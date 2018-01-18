## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# This doesn't work because it is trying to sum 2 different variable types

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# This doesn't work because the library wasn't loaded

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# There was a typo, initial should be initials


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
typeof(c("Uganda Knuckles", "Earth-chan", "Tide-chan"))
# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(v1, v2) {
  diff <- abs(length(v1) - length(v2))
  phrase <- paste("The difference in lengths is", diff)
  return(phrase)
}

# Pass two vectors of different length to your `CompareLength` function
print(CompareLength(c(1, 2, 3), c(1, 2, 3, 4, 5)))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(x, y) {
  larger <- length(x) - length(y)
  if(larger > 0) {
    return(paste("Your first vector is longer by", larger, "elements"))
  } else if(larger < 0) {
    return(paste("Your second vector is longer by", abs(larger), "elements"))
  }
}
# Pass two vectors to your `DescribeDifference` function
print(DescribeDifference(c(1, 2, 3), c(1, 2, 3, 4, 5)))

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one

# Send 3 vectors to your function to test it.

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters


