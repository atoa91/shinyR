dataframe <<- reactive({
  if (is.null(input$csv))
    return(NULL)
  data<-read.csv(input$csv$datapath)
  #print(data)
  return(data)
})

output$summary = renderDataTable(NULL)#dataframe())


