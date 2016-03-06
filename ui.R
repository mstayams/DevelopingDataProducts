library(shiny)
shinyUI(
  pageWithSidebar(
    headerPanel("Car Mileage Prediction"),
    sidebarPanel(
      numericInput('trans',
                   label='Transmission(0-automatic/1-manual)',
                   0,min=0,max=1,step=1
                   ),
      
      numericInput('cylinders',
                   'Number of Cylinders',
                   4,min=4,max=8,step=2
                   ),
      
      sliderInput('hp', 
                  label='Horse Power',
                  value = 50, min = 40, max = 500, step = 10
                  ),
      
      numericInput('weight',
                   label='Weight',
                   1,min=1,max=7,step=1
                   ),
      
      numericInput('carb',
                   label='Number of carburetors',
                   1,min=1,max=8,step=1
                   ),
      
      sliderInput('qsec', label='1/4 mile time',
                  value = 10, min = 15, max = 25, step = 0.1
                  ),
      
      sliderInput('disp', label='Displacement (cu.in.)',
                  value = 50, min = 50, max = 500, step = 0.1
                  ),
      
      submitButton("Submit")
    ),
    
    mainPanel(
      h3("Predicted car Mileage for the input parameters"),
      h4("You entered"),
      verbatimTextOutput('trans'),
      verbatimTextOutput('cylinders'),
      verbatimTextOutput('hp'),
      verbatimTextOutput('weight'),
      verbatimTextOutput('carb'),
      verbatimTextOutput('qsec'),
      verbatimTextOutput('disp'),
      h4("Predicted  Miles per gallon:"),
      verbatimTextOutput("pred"),
      h5("------------------------------------------------------------------------------------"),
      h5("GitHub URL :  https://github.com/mstayams/DevelopingDataProducts"),
      h5("Rpubs URL :  http://rpubs.com/satyams/156984")
    )
  )
)
