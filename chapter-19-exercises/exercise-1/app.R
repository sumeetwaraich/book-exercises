# Exercise 1: building a Shiny user interface

# Load the `shiny` package (install it in the R terminal if you haven't already)
library("shiny")

# Define a new `ui` variable. This variable should be assigned a `fluidPage()`
# layout. The `fluidPage()` layout should be passed the following:
ui <- fluidPage(

  # A first-level header (`h1()`) with the content "First Shiny Website"
  h1("First Shiny Website"),

  # A paragraph (`p()`) with content saying how excited you are about Shiny.
  # The paragraph should include some `strong()` content.
  p("As this is my first time", strong("ever"), "creating a Shiny project,
    I feel nervous and thrilled to learn how to do so. As a first time coder, 
    I am intrigued by the steps needed to create a project with Shiny that makes 
    information further interactive. I am excited to seee how I can further use 
    the slider aspect of Shiny for our final deliverable and projects outside
    of this course."),

  # An image (`img()`) with no content but the `src` attribute of the url:
  # https://media2.giphy.com/media/l3q2Ip7FrmPE33EiI/giphy.gif
  img("", src = "https://media2.giphy.com/media/l3q2Ip7FrmPE33EiI/giphy.gif"),

  # A second paragraph describing how excited you are about sliders.
  # The paragraph should include some emphasized (`em()`) content.
  p("I am thrilled by the aspect of integrating", em("sliders"), "to the assignment. 
    I hope to be able to insert sliders that are functional and add a layer of interest
    to the project."),

  # A slider with a key `my_slider`, an appropriate label, a min value of 10,
  # A max value of 100, and a default value of 50
  sliderInput("my_slider", "First Slider", min = 0, max = 100, value = 50)

  # (Your `fluidLayout()` should end here)
)

# This defines a server that doesn't do anything yet, but is needed to run the app.
server <- function(input, output) {
  # Will be next!
}

# Create a new `shinyApp()` using the above ui and server
shinyApp(ui = ui, server = server)
