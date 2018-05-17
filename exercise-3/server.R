### Exercise 3 ###

library(shiny)
library(ggplot2)
# Create a shiny server that creates a scatterplot. 
shinyServer(function(input, output) {
  output$scatter <- renderPlot({
# It should take as an input the x_var, y_var, color, and size
# Save the result of `renderPlot` to output$scatter

    # Store x and y values to plot
x <- mpg[[input$x_ver]]
y <- mpg[[input$y_ver]]
    # Store the title of the graph in a variable
title <- paste0("MPG dataset: ", input$x_ver, "vs ", input$y_ver)
    
    # Create ggplot scatter
p <- ggplot() +
  geom_point(mapping = aes(x = x, y = y),
             size = input$size,
             color = input$color) +
  labs(x = input$x_ver, y = input$y_ver, title = title)
p
  })    
})