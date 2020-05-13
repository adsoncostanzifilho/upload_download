# Server
server <- function(input, output,session){

  observe({
    # copy and paste file
    file.copy(from = input$file_upload$datapath, to = paste0('files/',input$file_upload$name))
    
    # updating the select input
    updateSelectInput(
      session = session,
      inputId = 'download_file',
      choices = list.files('files/')
      )
  })

  # download selected file
  output$file_to_download <- downloadHandler(
    filenam = function()
    {
      paste0(input$download_file)
    },
    content = function(arquivo)
    {
      file.copy(from = paste0('files/',input$download_file), to =  arquivo)
    })
  
  
  
}