# Ahora declaramos la function server
server <- shinyServer(function(input, output) {
  
  output$distPlotLactul <- renderPlot({
    #Create the data
    DatesMerge<-input$DatesMerge
    
    # draw the histogram with the specified number of bins
    ggplot(TotsLactul[month(x) == month(DatesMerge)],mapping=aes(x=x))+
      geom_histogram(bins=100)+
      labs(title=paste("Num")) +
      xlab("Time") +
      ylab("NumP") +
      theme(axis.text.x=element_text(angle=-90)) +
      theme(legend.position="top")+
      theme(axis.text=element_text(size=6))
    
    
  })
  
  
})