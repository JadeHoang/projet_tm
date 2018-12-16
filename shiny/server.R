# install.packages("shiny")
# install.packages("ggplot2")
# install.packages("networkD3")
# install.packages("dplyr")
# install.packages("reshape2")

library(shiny)
library(ggplot2)
library(networkD3)
library(dplyr)
library(reshape2)

mult <- pers_chap_matrix[, colSums(pers_chap_matrix) > 1]

timeline <- ggplot(chapters, aes(chap, features)) +
  geom_point() +
  geom_path(aes(group = chap)) +
  theme_bw()

shinyServer(function(input, output) {
  output$timelinePlot <- renderPlot({
    timeline +
      geom_vline(xintercept = input$docs, color = "red", lty = 2)
  })
  
  # output$networkPlot <- renderSimpleNetwork({
  #   simpleNetwork(poids.perso[[input$docs]],opacity = 0.6, zoom = T)
  #   
  # })
  
  output$networkPlotgroup <- renderForceNetwork({
    forceNetwork(Links = poids.perso.group[[input$docs]],
                 Nodes = personnage, 
                 Source = "Source",
                 Target = "Target",
                 NodeID ="nom",
                 Group = "group",
                 Value = "poids",
                 opacity = 1,
                 opacityNoHover = 2,
                 linkWidth = networkD3::JS("function(d) { return d.value*2; }"),
                 zoom = TRUE,
                 fontSize = 8,
                 legend = TRUE)
  })
    
})
