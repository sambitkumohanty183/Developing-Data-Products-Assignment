library(shiny)

shinyUI(
  pageWithSidebar(
    
    # application title
    headerPanel("Wage Calculation App"),
    
    sidebarPanel(
      # label, printed label, default values, step values
      numericInput('hour', 'Enter the hours(per week):', 40, min = 20, max = 200, step = 5),
      numericInput('rate', 'Enter the rate(in $):', 10, min = 10, max = 200, step = 5),
      
      submitButton('Submit')
           
    ),
    
    mainPanel(
      h3('Results'),
      h4('You entered'),
      h5('Hour(per week):'),
      verbatimTextOutput("inputvalue1"),
      h5('Rate(in $):'),
      verbatimTextOutput("inputvalue2"),
      h4('The total wage is:'),
      verbatimTextOutput("prediction"),
      br(),
      h4('Instructions'),
      helpText("This application is a simple wage calculation"),
      code("Calculation Formula"),
      helpText("Hours Worked per week * Rate")
    
    )
  )
)