# ui code



library(shiny)
library(readr)



total_summary2 <- read_csv("summary1.csv")
total_summary2$X1 <- NULL
question <-  read_csv("summary1.csv")




shinyUI(fluidPage(
  
  #  Application title
  titlePanel("States vs word choices"),
  
  # Sidebar with sliders that demonstrate various available
  # options
  sidebarLayout(
    sidebarPanel(
      # Simple integer interval
      selectInput("question", "Question:",
                  choices = question$employment),
      
      submitButton("Submit")
      
    ),
    
    
    mainPanel(
      plotOutput("Plot")
    )
  )
))
