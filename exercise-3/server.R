### Exercise 3 ###

library(shiny)
library(ggplot2)
# Create a shiny server that creates a scatterplot. 

# It should take as an input the x_var, y_var, color, and size
# Save the result of `renderPlot` to output$scatter

    # Store x and y values to plot
server <- shinyServer(function(input, output) {
  output$scatter <- renderPlot({
    x <- mpg[[input$x]]
    y <- mpg[[input$y]]
    title <- paste0("MPG Dataset: ", input$x, " v.s ", input$y)
    p <- ggplot() + 
      geom_point(mapping = aes(x = x, y = y), size = input$size, color = input$color) +
      labs(x = input$x, y = input$y, title = title)
    p
  })
})
    # Store the title of the graph in a variable

    
    # Create ggplot scatter

shinyServer(server)
