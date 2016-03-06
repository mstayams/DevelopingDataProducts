library(shiny)
data(mtcars)
library(shiny)

shinyServer(
  function(input,output){
    #multifit <- lm(mpg~ am + cyl, data = mtcars)
    multifit <- lm(mpg~ am + cyl + hp + wt + carb + qsec + disp, data = mtcars)
    
    # retrieve the inputs
    output$trans <- renderPrint(input$trans)
    output$cylinders <- renderPrint(input$cylinders)
    output$hp <- renderPrint(input$hp)
    output$weight <- renderPrint(input$weight)
    output$carb <- renderPrint(input$carb)
    output$qsec <- renderPrint(input$qsec)
    output$disp <- renderPrint(input$disp)

    # predict the mileage for the input values entered
    # and display it
    
    output$pred <- renderPrint(as.numeric(predict(multifit,newdata=data.frame(
                                                                              am=input$trans,
                                                                              cyl=input$cylinders,
                                                                              hp=input$hp,
                                                                              wt=input$weight,
                                                                              carb=input$carb,
                                                                              qsec=input$qsec,
                                                                              disp=input$disp
                                                                              )
                                                  )
                                          )
                              )
    
    #predict(multifit,newdata=data.frame(am=0,cyl=6,hp=200,wt=3))
  }
)
