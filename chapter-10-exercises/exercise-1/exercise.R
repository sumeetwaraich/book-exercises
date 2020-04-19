# Exercise 1: creating data frames

# Create a vector of the number of points the Seahawks scored in the first 4 games
# of the season (google "Seahawks" for the scores!)
seahawks_scores <- c(17, 20, 24, 24)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each of the first 4 games of the season
scores_allowed_by_seahawks <- c(19, 21, 27, 13)

# Combine your two vectors into a dataframe called `games`
games <- data.frame(x = seahawks_scores, y = scores_allowed_by_seahawks)

# Create a new column "diff" that is the difference in points between the teams
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
games$diff <- games$x - games$y 

# Create a new column "won" which is TRUE if the Seahawks won the game
games$won <- games$diff > 0 # TRUE is Seahawks won the game

# Create a vector of the opponent names corresponding to the games played
opponents <- c("Colts", "Vikings", "Broncos", "Cowboys")

# Assign your dataframe rownames of their opponents
rownames(games) <- opponents

# View your data frame to see how it has changed!
View(games)
