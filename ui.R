#### the assignment -  UI

library(shiny)
library(webshot)

shinyUI(pageWithSidebar(
        headerPanel("Body Mass Index Calculation"),
        sidebarPanel(
        sliderInput('weight', 'Enter persons weight in kilograms',value = 70, min = 10, max = 250, step = 1)
        ,
        sliderInput('height','Enter persons height in centimeters',value= 160,min=80,max=250,step=1)),
        mainPanel(
                h3('Your Body Mass Index is'),
                  verbatimTextOutput("result"),
                textOutput("message")
                
                
                
                
        )
)
)