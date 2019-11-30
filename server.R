
library(shiny)

bmi<-function(height,weight)weight/(height^2)*10000

shinyServer(
        function(input, output) {
                output$result <-renderPrint({bmi(input$height,input$weight)})
                
                x<-reactive({bmi(input$height,input$weight)})
                
                output$message<-renderPrint({
                        if (x()<=18.5) {
                                "Might benefit from a good plate of pasta" } 
                        else if (x()>18.5 & x()<=25) {
                                "Perfect weight"}
                        else if (x()>25 & x()<=30) {
                                "Might benefit from a couple of kilos less"}
                        else   {
                                "Better go and see a doctor"}
                        
                })
                
                
        })


