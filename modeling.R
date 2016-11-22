output$targetSelect <- renderUI({
  if(is.null(input$csv))
    return(NULL)
  
  colnames <- names(dataframe())
  
  selectInput("target","choose target"
              , choices = colnames
              , selected = colnames)
})

output$valSelect <- renderUI({
  if(is.null(input$csv))
    return(NULL)
  
  col <- names(dataframe())
  
  colnames <- col[col != input$target]
  
  checkboxGroupInput("val","Choose values",
                     choices = colnames,
                     selected = colnames)

})

output$fmla <- reactive({
  if(is.null(input$val))
    return(NULL)
  fmla<<-paste(input$target
        ,paste(input$val, collapse = "+")
        , sep="~")
  return(fmla)

})


