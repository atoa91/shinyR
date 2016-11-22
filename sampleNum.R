output$sample <- renderPrint({
  if (is.null(input$csv))
    return(NULL)
  n <- nrow(dataframe())
  m <- round(n*(input$sampleN)/100)
  random <-sample(seq(n), size = round(m), replace = FALSE)
  df <- dataframe()
  train <<- df[-random,]
  test <<- df[random,]
    return(m)
})