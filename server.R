server <- function(input, output) {
  output$pplot <- renderPlot({
    Case2_A_App %>% 
      ggplot(aes_string(x = input$List2,fill = "Attrition")) +
      geom_bar(position = "fill") +
      scale_y_continuous(labels = scales::percent) +
      ggtitle(paste("Bar Plot of", input$List2, "by Attrition")) +
      xlab(input$List2) +
      ylab(input$List1)
  })
}