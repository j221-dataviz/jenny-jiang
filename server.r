# server code

library(shiny)
library(dplyr)
library(stringr)
library(ggplot2)
library(readr)
library(rsconnect)


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
library(magrittr)


total_summary2 <- read_csv("total_summary_degrees.csv")
total_summary2$X1 <- NULL
total_summary2$edu <- as.factor(total_summary2$edu)
levels(total_summary2$edu) <- c("College Degrees or Higher", "High School or Lower", "High School to College")
colnames(total_summary2) <- c("year","employment","Education_Level","sum_number")

  
  
shinyServer(function(input, output) {
  
  output$Plot <- renderPlot({
    
    cleaned1 <- total_summary2 %>%
      filter(employment == input$question)
    
    
    ### GGPLOT WORKS!
    ggplot(cleaned1, aes_string(x = "year", y = "sum_number", color = "Education_Level", group = "Education_Level")) +
      geom_point() +
      geom_line() +
      labs(title = input$question,
           x = "Year",
           y = "Total Number of Workers") +
      geom_text(aes_string(x="year",
                    y="sum_number",
                    label = paste0("sum_number")),
                size=5,
                colour= "#000000") +
      theme_minimal(base_size = 12, base_family = "Georgia") +
      theme(plot.title = element_text(size = 20, family = "Georgia", face = "bold"),
            text=element_text(family="Times New Roman", size = 20),
            axis.text.x=element_text(colour="black", size = 15),
            axis.text.y=element_text(colour="black", size = 15)) +
      theme(legend.position="bottom")


    
    ## the plot won't show in the shiny app dashboard. it shows in the viewer
    
    
     # cols <- brewer.pal(7, "Set1")


    # highchart() %>%
    #    hc_title(text = input$question) %>%
    #    hc_add_series_scatter(x = cleaned1$year, y = cleaned1$sum_number,
    #                          color = cleaned1$edu, name = input$question,
    #                          group = cleaned1$edu) %>%
    #   hc_chart(style = list(fontFamily = "Georgia",
    #                         fontWeight = "bold")) %>%
    #   hc_xAxis(title = list(text="Year")) %>%
    #   hc_yAxis(title = list(text="Total Number of Workers")) %>%
    #   hc_plotOptions(series = list(marker = list(enabled = TRUE, symbol = "circle")))
    #

    
    ############### none of the below works. 
    #hchart(cleaned1, "scatter", x = year, y = sum_number)
    # 
    # highchart() %>% 
    #   hc_title(text = input$question) %>% 
    #   hc_add_series_scatter(x = cleaned1$year, y = cleaned1$sum_number, color = cleaned1$edu, name = input$question)
      # hc_add_series(cleaned1, type = "line", hcaes(x = year, y = sum_number, color = edu))

    
    
    # hchart(cleaned1, "line", hcaes(x = "year", y = "sum_number", color = "edu", group = "edu")) %>%
    #   hc_colors(cols) 
    #   hc_chart(style = list(fontFamily = "Georgia",
    #                         fontWeight = "bold")) %>%
    #   hc_xAxis(title = list(text="Year")) %>%
    #   hc_yAxis(title = list(text="Total Number of Workers")) %>%
    #   hc_plotOptions(series = list(marker = list(enabled = TRUE, symbol = "circle")))



  })
  
})