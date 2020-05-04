# Exercise 4: practicig with dplyr 
rm(list = ls())
# Install the `"nycflights13"` package. Load (`library()`) the package.
# You'll also need to load `dplyr`
install.packages("nycflights13")
library(nycflights13)
library(dplyr)


# The data frame `flights` should now be accessible to you.
# Use functions to inspect it: how many rows and columns does it have?
# What are the names of the columns?
# Use `??flights` to search for documentation on the data set (for what the 
# columns represent)
nrow(flights)
ncol(flights)
colnames(flights)
?flights

# Use `dplyr` to give the data frame a new column that is the amount of time
# gained or lost while flying (that is: how much of the delay arriving occured
# during flight, as opposed to before departing).
flights <- mutate(flights, delay_in_air = arr_delay - dep_delay)

# Use `dplyr` to sort your data frame in descending order by the column you just
# created. Remember to save this as a variable (or in the same one!)
flights <- arrange(flights, desc(delay_in_air))

# For practice, repeat the last 2 steps in a single statement using the pipe
# operator. You can clear your environmental variables to "reset" the data frame
rm(list = ls())
flights <- flights %>% mutate(delay_in_air = arr_delay - dep_delay) %>% arrange(desc(delay_in_air))

# Make a histogram of the amount of time gained using the `hist()` function
hist(flights$delay_in_air)

# On average, did flights gain or lose time?
# Note: use the `na.rm = TRUE` argument to remove NA values from your aggregation
mean(flights$delay_in_air, na.rm = TRUE) 

# Create a data.frame of flights headed to SeaTac ('SEA'), only including the
# origin, destination, and the "gain_in_air" column you just created
headed_Sea <- flights %>% select(origin, dest, delay_in_air) %>% filter(dest == "SEA")

# On average, did flights to SeaTac gain or loose time?
mean(headed_Sea$delay_in_air, na.rm = TRUE)

# Consider flights from JFK to SEA. What was the average, min, and max air time
# of those flights? Bonus: use pipes to answer this question in one statement
# (without showing any other data)!
filter(flights, origin == "JFK", dest == "SEA") %>%
  summarize(
    average_time <- mean(air_time, na.rm = TRUE),
    min_time <- min(air_time, na.rm = TRUE),
    max_time <- max(air_time, na.rm = TRUE)
  )



