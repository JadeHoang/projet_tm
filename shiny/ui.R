library(shiny)
library(networkD3)

shinyUI(fluidPage(
  # Application title
  titlePanel("Dune Network"),

  sidebarLayout(
    sidebarPanel(
      sliderInput("docs",
                  "Up to chapters:",
                  min = 1,
                  max = 46,
                  value = 6)),

    mainPanel(
      # simpleNetworkOutput("networkPlot",width = 600, height = 400),
      forceNetworkOutput("networkPlotgroup", width = 600, height = 400),
      plotOutput("timelinePlot", width = 600, height = 400)
    )
  )
))
