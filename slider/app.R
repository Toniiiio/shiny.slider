library(shiny)

ui <- fluidPage(
  # tags$script(src = "jquery-1.6.1.min.js"),
  # tags$script(src = "jquery-ui-1.8.13.custom.min.js"),
  # tags$script(src = "jquery.beforeafter-1.4.min.js"),
  # tags$script("
  #             $(document).on('shiny:connected', function(event) {
  #               $('#container-polar').beforeAfter({
  #                   introDelay: 2000,
  #                   imagePath: 'img/',
  #                   introDuration: 500,
  #                   showFullLinks: false
  #               })
  #             });
  # "),
  #
  mainPanel(
    img(src = "a.jpg"),
    # tags$div(id = "container-polar",
    #          tags$div(
    #            img(alt = "before", src = "img/Polar-Bear-SliderTest1.jpg", width="800", height="533")
    #          ),
    #          tags$div(
    #            img(alt =  "after", src = "img/Polar-Bear-SliderTest2.jpg", width="800", height="533")
    #          )
    # ),
    plotOutput("slider")
  )
)

server <- function(input, output, session) {
  observe({
    print(list.files())
  })
  output$slider <- renderPlot(plot(1))
}

shinyApp(ui, server)
