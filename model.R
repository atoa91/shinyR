observeEvent(input$run,{
  if(is.null(fmla))
    return(NULL)
  else{
    target<-input$target
    
  if(max(train[target])>1 || min(train[target])<0)
    train[target] = (train[target] - min(train[target]))/(max(train[target]) - min(train[target]))
    model <<- glm(fmla, data = train, family=binomial(link="logit"))
    
    print(model)
  }
})