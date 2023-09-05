library(shiny) # Llamamos la librería Shiny
# Ahora definimos la interfaz de usuario
ui <- shinyUI(fluidPage(
  
  # Application title
  titlePanel("St Thomas' Physiology Data Console"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("DatesMerge",
                  "Dates:",
                  min = as.Date("2016-01-01","%Y-%m-%d"),
                  max = as.Date("2016-12-01","%Y-%m-%d"),
                  value=as.Date("2016-12-01"),
                  timeFormat="%Y-%m-%d")
    ),
    mainPanel(
      plotOutput("distPlotLactul"))
    
  )
))