# server code

library(shiny)
library(dplyr)
library(stringr)
library(ggplot2)
library(readr)


library(htmlwidgets)
library(ggiraph)

library(highcharter)
library(RColorBrewer)
library(flexdashboard)
library(leaflet)
library(scatterD3)
library("billboarder")
library(rbokeh)
library(metricsgraphics)


total_summary2 <- read_csv("summary1.csv")
total_summary2$X1 <- NULL

shinyServer(function(input, output) {
  
  output$Plot <- renderPlot({
    
    cleaned1 <- total_summary2 %>% 
      filter(job == input$question)
    
    ggplot(cleaned1, aes_string(x = "year", y = "sum", color = "edu", group = "edu")) + 
      geom_point() + 
      geom_line()+
      labs(title = input$question)
    

  })
  
})