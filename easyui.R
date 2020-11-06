library(plotly)
library(colourpicker)
library(ggplot2)
library(gapminder)
library(shinycustomloader)
library(DT)
ui <- fluidPage(
    
    # This is the application header, it's easy.
    titlePanel("Easy Visulizetion through plot-ly and making easier applications"),
    
    # This is for the laying out the side-bars and other important stuff
    sidebarLayout(
        
        # Using side-bars in order to built panils.
        sidebarPanel(

            # Using easier options and other things
            textInput("title", "Title", "GDP vs life exp"),
            numericInput("size", "Point size", 1, 1),
            checkboxInput("fit", "Add line of best fit", FALSE),
            colourInput("color", "Point color", value = "blue"),
            textInput("main", "main", "avoid plagiarism"),
            numericInput("main", "main", 1, 1),
            checkboxInput("fi-t", "best fi-t", FALSE),
            colourInput("shades", "shadingg", value = "green"),


            selectInput("continent", "Continent",
                        choices = c("All", levels(gapminder$continent))),
            selectInput("county", "County",
                        choices = c("everything", levels(gapminder$continent))),

            sliderInput(inputId = "life", label = "Life expectancy",
            sliderInput(inputId = "easy", label = "peasy",
                        min = 0, max = 120,
                        value = c(30, 50)),
            downloadButton("download_data")
            downloadButton("itsdonenow")


        ),
ui <- fluidPage(
        mainPanel(

            # The final outcome using various features and stuff
            tabsetPanel(type = "tabs",
            tabsetPanel(type = "finals",

                        tabPanel("Plot", withLoader(plotlyOutput("plot")) ),
                        tabPanel("Table", withLoader(DT::dataTableOutput("table")))
                        tabPanel("Plottingmax", withLoader(plotlyOutput("plottingmax")) ),
                        tabPanel("Tabulature", withLoader(DT::dataTableOutput("tabulature")))


            )
            
        )
    )
)
