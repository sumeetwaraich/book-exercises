# Exercise 2: using `*apply()` functions

# Create a *list* of 10 random numbers. Use the `runif()` function to make a 
# vector of random numbers, then use `as.list()` to convert that to a list
random_numbers <- runif(10, 1, 100)
random_numbers <- as.list(random_numbers)
# Use `lapply()` to apply the `round()` function to each number, rounding it to 
# the nearest 0.1 (one decimal place)
lapply(random_numbers, round, 1)

# Create a variable 'sentence' that contains a sentence of text (something 
# longish). Make the sentence lowercase; you can use a function to help.
sentence <- tolower("The best way to start my day is with two cups of coffee.")

# Use the `strsplit()` function to split the sentence into a vector of letters.
# Hint: split on `""` to split every character
# Note: this will return a _list_ with 1 element (which is the vector of letters)
splitting_sentence <- strsplit(sentence, "")

# Extract the vector of letters from the resulting list
the_letters <- splitting_sentence[[1]]

# Use the `unique()` function to get a vector of unique letters
unique_letters <- unique(the_letters)

# Define a function `count_occurrences` that takes in two parameters: a letter 
# and a vector of letters. The function should return how many times that letter
# occurs in the provided vector.
# Hint: use a filter operation!
count_occurences <- function(letter, all_letters) {
  length(all_letters[all_letters == letter])
}

# Call your `count_occurrences()` function to see how many times the letter 'e'
# is in your sentence.
count_occurences("e", the_letters)

# Use `sapply()` to apply your `count_occurrences()` function to each unique 
# letter in the vector to determine their frequencies.
# Convert the result into a list (using `as.list()`).
frequencies <- as.list(sapply(unique_letters, count_occurences, the_letters))

# Print the resulting list of frequencies
print(frequencies)
