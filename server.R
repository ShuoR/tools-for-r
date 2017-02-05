library(shiny)
library(ggplot2)
#passed for ui are always strings, so use aes_string and always convert
shinyServer(
  function(input, output){
    output$ggplot <- renderPlot({
      ggplot(mtcars, aes_string(x = input$var1, 
                         y = input$var2,color = input$color)) + 
        geom_point() + geom_smooth(method = 'lm', formula = y ~ poly(x, as.numeric(input$poly)), 
                                   se = input$se)
    })
    
  }
  
)