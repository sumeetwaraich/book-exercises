# UI for scatterplot
library(shiny)
library(ggplot2)

# Get a vector of column names (from `mpg`) to use as select inputs
names <- colnames(mpg)

# Create a variable `x_input` that stores a `selectInput()` for your
# variable to appear on the x axis of your chart.
# Use the vector of column names as possible values, and make sure
# to assign an inputId, label, and selected value
x_input <- selectInput(
  "x_vars",
  label = "X Variables",
  choices = names,
  selected = "displ"
)

# Using a similar approach, create a variable `y_input` that stores a
# `selectInput()` for your variable to appear on the y axis of your chart.
# Add a `selectInput` for the `y` variable
y_input <- selectInput(
  "y_var",
  label = "Y Variables",
  choices = names,
  selected = "displ"
)

# Create a variable `color_input` as a `selectInput()` that allows users to
# select a color from a list of choices
color_input <- selectInput(
  "color",
  label = "Color",
  choices = list("Green" = "green", "Blue" = "blue", "Purple" = "purple", "Red" = "red")
)

# Create a variable `size_input` as a `sliderInput()` that allows users to
# select a point size to use in your `geom_point()`
size_input <- sliderInput(
  "size",
  label = "Size of Point", min = 1, max = 20, value = 10
)

# Create a variable `ui` that is a `fluidPage()` ui element. 
# It should contain:
ui <- fluidPage(
  # A page header with a descriptive title
  h1("MPG Analysis"),

  # Your x input
  x_input,
  
  # Your y input
  y_input,
  
  # Your color input
  color_input,
  
  # Your size input
  size_input,
  
  # Plot the output with the name "scatter" (defined in `app_server.R`)
  plotOutput("scatter")
)
