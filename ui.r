# ui code



library(shiny)
library(readr)



total_summary2 <- read_csv("summary1.csv")
total_summary2$X1 <- NULL
question <-  read_csv("summary1.csv")




shinyUI(fluidPage(
  
  #  Application title
  titlePanel("Total number worker by year"),
  
  # Sidebar with sliders that demonstrate various available
  # options
  sidebarLayout(
    sidebarPanel(
      # Simple integer interval
      selectInput("question", "Industry:",
                  choices = question$job),
      
      submitButton("Submit")
      
    ),
    
    
    mainPanel(
      plotOutput("Plot")
    )
  )
))
