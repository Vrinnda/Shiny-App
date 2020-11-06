library(plotly)
library(colourpicker)
library(ggplot2)
library(gapminder)
library(shinycustomloader)
library(DT)



server <- function(input, output) {
    filtered_data <- reactive({
        data <- gapminder
server <- function(input, output) {
    )



    output$plot <- renderPlotly({

        ggplotly({
            data <- filtered_data()
            
            p <- ggplot(data, aes(gdpPercap, lifeExp)) +
                geom_point(size = input$size, col = input$color) +
                scale_x_log10() +
                ggtitle(input$title) + 
                
                
                if (input$fit) {
                    p <- p + geom_smooth(method = "lm")
                }
            p
        })
    })
}
