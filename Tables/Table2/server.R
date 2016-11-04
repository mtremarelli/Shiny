# Load the LitReviews1 spreadsheet
LitReviews1 <- read.csv("C:/Users/mtremar/Desktop/Internship/R/LitReviews1.csv")

function(input, output) {
  
  # Filter data based on selections
  output$table <- DT::renderDataTable(DT::datatable({
    data <- LitReviews1
    if (input$Author != "All") {
      data <- data[data$Author == input$Author,]
    }
    if (input$Journal != "All") {
      data <- data[data$Journal == input$Journal,]
    }
    if (input$Study.type != "All") {
      data <- data[data$Study.type == input$Study.type,]
    }
    data
  }))
  
}
