# Exercise 3: using the pipe operator

# Install (if needed) and load the "dplyr" library
install.packages("dplyr")
library("dplyr")

# Install (if needed) and load the "fueleconomy" package
#install.packages('devtools')
#devtools::install_github("hadley/fueleconomy")
library(fueleconomy)

# Which 2015 Acura model has the best hwy MGH? (Use dplyr, but without method
# chaining or pipes--use temporary variables!)
Acura_models <- filter(vehicles, make == "Acura", year == 2015)
Acura_best <- filter(Acura_models, hwy == max(hwy))
Best_model_Acura <- select(Acura_best, model)

# Which 2015 Acura model has the best hwy MPG? (Use dplyr, nesting functions)
Best_model_Acura <- select(
  filter(
    filter(vehicles, make == "Acura", year == 2015), hwy == max(hwy)
  ), model
)

# Which 2015 Acura model has the best hwy MPG? (Use dplyr and the pipe operator)
Best_model_Acura <- filter(vehicles, make == "Acura", year == 2015) %>% 
  filter(hwy == max(hwy)) %>%
  select(model)

### Bonus

# Write 3 functions, one for each approach.  Then,
# Test how long it takes to perform each one 1000 times
temporary_vars_best_model <- function() {
  Acura.models <- filter(vehicles, make == "Acura", year == 2015)
  Acura.best <- filter(Acura.models, hwy == max(hwy))
  Best.model.Acura <- select(Acura.best, model)
  }

nested_best_model <- function() {
  Best_model_Acura <- select(
    filter(
      filter(vehicles, make == "Acura", year == 2015), hwy == max(hwy)
    ), model
  )
}

pipe_best_model <- function() {
  Best_model_Acura <- filter(vehicles, make == "Acura", year == 2015) %>% 
    filter(hwy == max(hwy)) %>%
    select(model)
}

system.time(for (i in 1:1000) temporary_vars_best_model())  
system.time(for (i in 1:1000) nested_best_model())
system.time(for (i in 1:1000)pipe_best_model())  
  
  