
#install.packages("shiny")

server <- function(input,output, session) {
}

ui <- basicPage(
  h1("Using textInput and checkboxInput"),
  textInput("mystring", "write here"), 
  checkboxInput("mycheckbox", "Factor Y")
)

shinyApp(ui = ui, server = server)

