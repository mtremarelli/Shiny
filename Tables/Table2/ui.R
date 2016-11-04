# Load the LitReviews1 spreadsheet
LitReviews1 <- read.csv("C:/Users/mtremar/Desktop/Internship/R/LitReviews1.csv")

fluidPage(
  titlePanel("Library"),
  
  # Create a new Row in the UI for selectInputs
  fluidRow(
    column(4,
           selectInput("Author",
                       "Author:",
                       c("All",
                         unique(as.character(LitReviews1$Author))))
    ),
    column(4,
           selectInput("Journal",
                       "Journal:",
                       c("All",
                         unique(as.character(LitReviews1$Journal))))
    ),
    column(4,
           selectInput("Study.type",
                       "Study.type:",
                       c("All",
                         unique(as.character(LitReviews1$Study.type))))
    )
  ),
  # Create a new row for the table.
  fluidRow(
    DT::dataTableOutput("table")
  )
)