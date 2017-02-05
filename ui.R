library(shiny)

shinyUI(
  fluidPage(
    titlePanel('The greate mtcars analysis engine'),
    sidebarLayout(
      sidebarPanel(
        selectInput('var1', 'x variable',
                    names(mtcars)),
        selectInput('var2', 'y variable',
                    names(mtcars), selected = 'hp'),
        sliderInput('poly', "Polynimial",
                    min = 1, max =16, value = 1),
        selectInput('color', 'Category', choices = c('gear', 'am', 'cyl')),
        checkboxInput('se', 'confidence interval')
      ),
      mainPanel(
        plotOutput('ggplot')
      )
      
    )
  )
)
