# UI for scatterplot
library(shiny)
library(ggplot2)

# Get a vector of column names (from `mpg`) to use as select inputs
colnames(mpg) <- c("Make", "Model", "Engine Displacement", "Year", "# of Clyinders", "Type of Transmission", "Type of Drive", "City MPG", "HWY MPG", "fuel type", "Type of Car")
select_values <- colnames(mpg)

# Create a shinyUI with a `fluidPage` layout

  ui <- fluidPage(
    h1("Page Header"),
    selectInput("x", label = "X variable", choices = select_values),
    selectInput("y", label = "Y variable", choices = select_values),
    sliderInput("size", label = "Size of point", min = 1, max = 10, value = 5),
    selectInput("color", label = "Color", choices = list("Red" = "red", "Blue" = "blue", "Yellow" = "yellow")),
    plotOutput("scatter")
  )
  shinyUI(ui)
  # A page header

  
  # Add a select input for the x variable

  
  # Add a select input for the y variable


  # Add a sliderInput to set the size of each point


  # Add a selectInput that allows you to select a color from a list of choices



  # Plot the output with the name "scatter"
