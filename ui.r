# ui code



library(shiny)
library(readr)
library(rsconnect)



total_summary2 <- read_csv("total_summary_degrees.csv")
total_summary2$X1 <- NULL
question <-  read_csv("total_summary_degrees.csv")




shinyUI(fluidPage(
  
  #  Application title
  titlePanel("Occupation by detailed education in 2010-2015"),
  
  # Sidebar with sliders that demonstrate various available
  # options
  sidebarLayout(
    sidebarPanel(
      # Simple integer interval
      selectInput("question", "Occupation:",
                  choices = question$employment),
      
      plotOutput("Plot1")
      
    ),
    
    
    
    mainPanel(
      plotOutput("Plot2")
    )
  )
))
