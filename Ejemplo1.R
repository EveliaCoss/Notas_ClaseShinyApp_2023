library(shiny) # Llamamos la librería Shiny
# Ahora definimos la interfaz de usuario

ui <- fluidPage(
  textInput("caption", "Caption", "Data Summary"),
  verbatimTextOutput("value")
)

# Ahora declaramos la function server
server <- function(input, output, session) {
}

# Esto es la parte final, integramos la UI y la function server con shinyApp
shinyApp(ui, server)