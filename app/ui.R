# UI
library(shiny)

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
      
      # Select the data to donwload ----
      selectInput(
        inputId = 'download_file',
        label = 'Select a file to download',
        choices = ""),
      
      # Donwload Button ----
      downloadButton(
        outputId = 'file_to_download',
        label = 'Download File')
      
    )
  )
  
)