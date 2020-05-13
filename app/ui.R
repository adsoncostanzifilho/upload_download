# UI
require(shiny)
require(DT)

ui <- fluidPage(
  # App title ----
  titlePanel("Upload and Donwload Files"),
  
  sidebarLayout(
    
    sidebarPanel(
      
      h1('Upload'),
      
      tags$hr(),
      
      # Input file ----
      fileInput(
        "file_upload", 
        "Choose a file",
        multiple = FALSE),
      
    ),
    
    # Main Panel  ----
    mainPanel(
      
      h1('Download'),
      
      tags$hr(),
      
      # Table Output ----
      DTOutput('download_table')
      
    )
  )
  
)