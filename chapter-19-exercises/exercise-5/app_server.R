### Exercise 5 ###

library(shiny)
library(ggplot2)
# Create a shiny server that creates a scatterplot. 

# It should use an `input` with features: `x_var`, `y_var`, `color`, and `size`
# Save the result of `renderPlot` to output$scatter
server <- function(input, output) {
  output$scatter <- renderPlot({
    title <- paste0("MPG Data:", input$x_var, "v.s", input$y_var)
    p <- ggplot(mpg) +
      geom_point(mapping = aes_string(x = input$x_var, y = input$y_var),
                 size = input$size,
                 color = input$color) +
      labs(x = input$x_var, y = input$y_var, title = title)
    p
  })
}
