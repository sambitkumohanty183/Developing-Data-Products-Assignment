library(UsingR)

totalwage <- function(glucose,rate) glucose* rate

shinyServer(
  function(input, output){
    output$inputvalue1 <- renderPrint({input$hour})
    output$inputvalue2 <- renderPrint({input$rate})
    output$prediction <- renderPrint({totalwage(input$hour,input$rate)})
  }
)