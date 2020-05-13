# Server
server <- function(input, output,session){

  # function to create the link
  createLink <- function(val) {
    sprintf('<a href="files/%s" target="_blank" class="btn btn-primary">Download</a>',val)
  }
  
  
  observe({
    # copy and paste file
    file.copy(from = input$file_upload$datapath, to = paste0('www/files/',input$file_upload$name))
    
    # Create table
    output$download_table <- renderDT(
      datatable(
        data = data.frame(
          file_name = list.files('www/files/'),
          donwload = createLink(list.files('www/files/'))),
        escape = FALSE)
      )
  })
  
}