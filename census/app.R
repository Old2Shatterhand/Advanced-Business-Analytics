#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(maps)
library(mapproj)

source("census/helpers.R")

counties <- readRDS("census/counties.rds")

ui <- fluidPage(
    titlePanel("censusVis"),
    
    sidebarLayout(
        sidebarPanel(
            helpText("Create demographic maps withinformation from the 2010 US Census."),
                selectInput("var",
                    label = "Choose a variable to display",
                    choices = c("Percent White","Percent Black","Percent Hispanic","Percent Asian"),
                    selected = "Percent White"),
                sliderInput("range",
                    label = "Range of interest:", 
                    min = 0, 
                    max = 100, 
                    value = c(0,100))
), mainPanel = plotOutput("map"))
)

# Define server logic 
server <- function(input, output) {
    output$map <- renderPlot({
        data <- switch(input$var,
            "Percent White" = counties$white,
            "Percent Black" = counties$black,
            "Percent Hispanic" = counties$hispanic,
            "Percent Asian" = counties$asian
        )
        color <- switch(input$var,
                    "Percent White" = "darkgreen",
                    "Percent Black" = "black",
                    "Percent Hispanic" = "darkorange",
                    "Percent Asian" = "darkvoilet"
        )
        title <- switch(input$var,
                        "Percent White" = "% White",
                        "Percent Black" = "% Black",
                        "Percent Hispanic" = "% Hispanic",
                        "Percent Asian" = "% Asian"
        )
        percent_map(var = data, color = color, legend.title = title, 
                    min = input$range$min, max = input$range$max)
    })
        
}

# Run the application 
shinyApp(ui = ui, server = server)
