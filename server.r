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
total_summary2$edu1 <- total_summary2$edu
total_summary2$edu <- as.factor(total_summary2$edu)
levels(total_summary2$edu) <- c("College Degrees or Higher", "High School or Lower", "High School to College")
colnames(total_summary2) <- c("year","employment","Education_Level","sum_number", "Edu")

  


shinyServer(function(input, output) {
  
  output$Plot1 <- renderPlot({
    
    cleaned1 <- total_summary2 %>%
      filter(employment == input$question)
    
    ggplot(cleaned1) +
      scale_fill_brewer(palette = "Set1", name ="") +
      geom_bar(aes_string(x = "year", y = "sum_number",  fill = "Edu") 
               ,stat = "identity") +
      labs(x = "Year",
           y = "Total Number of Workers (thousands)") +
      theme_minimal(base_size = 12, base_family = "Georgia") +
      theme(plot.title = element_text(size = 20, family = "Georgia", face = "bold"),
            text=element_text(family="Times New Roman", size = 20),
            axis.text.x=element_text(colour="black", size = 15),
            axis.text.y=element_text(colour="black", size = 15)) +
      theme(legend.position="bottom")
    
  })
  
  
  output$hcontainer <- renderHighchart({
    
    
    cleaned1 <- total_summary2 %>%
      filter(employment == input$question)

    # hchart(cleaned1, "scatter", x = year, y = sum_number)
    
    
    cols <- brewer.pal(3, "Set1")
    
    hc<- hchart(cleaned1, "line", hcaes(x = year, y = sum_number, group = Edu)) %>%
      hc_colors(cols) %>% 
      hc_chart(style = list(fontFamily = "Georgia",
                          fontWeight = "bold")) %>%
      hc_xAxis(title = list(text="Year")) %>%
      hc_yAxis(title = list(text="Total Number of Workers (thousands)")) %>% 
      hc_title(text = input$question) %>%
      hc_plotOptions(series = list(marker = list(enabled = TRUE, symbol = "circle")))
    
    hc
    

    
  })
    
  # 
  # output$Plot2 <- renderPlot({
  #   
  #   cleaned1 <- total_summary2 %>%
  #     filter(employment == input$question)
  # 
  #   
  #   ### GGPLOT WORKS!
  #   ggplot(cleaned1, aes_string(x = "year", y = "sum_number", color = "Education_Level", group = "Education_Level")) +
  #     scale_color_brewer(palette = "Set1", name ="") +
  #     geom_point() +
  #     geom_line() +
  #     labs(title = input$question,
  #          x = "Year",
  #          y = "Total Number of Workers (thousands)") +
  #     geom_text(aes_string(x="year",
  #                   y="sum_number",
  #                   label = paste0("sum_number")),
  #               size=5,
  #               colour= "#000000") +
  #     theme_minimal(base_size = 12, base_family = "Georgia") +
  #     theme(plot.title = element_text(size = 20, family = "Georgia", face = "bold"),
  #           text=element_text(family="Times New Roman", size = 20),
  #           axis.text.x=element_text(colour="black", size = 15),
  #           axis.text.y=element_text(colour="black", size = 15)) +
  #     theme(legend.position="bottom")
  # 
  # 
  # 
  # 
  # })
  # 
})