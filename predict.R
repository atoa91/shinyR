library(ROCR)
observeEvent(input$go,{
  output$rocPlot <- renderPlot({
  if(is.null(model))
    return(NULL)
  
  train$pred <- predict(model, newdata= train, type="response")
  test$pred <- predict(model, newdata = test, type="response")
  #test$pred<- as.factor(ifelse(test$pred>=0.5,1,0))
  target <- input$target
  
  test[target]=(test[target] - min(test[target]))/(max(test[target]) - min(test[target]))
  test[target]<- as.factor(ifelse(test[target]>=0.5,1,0))
  
  print (head(test[target],5))
  
  p <- test$pred
  pr <- prediction(p, test[input$target])
  prf <- performance(pr, measure = "tpr", x.measure="fpr")
  
  
  auc <- performance(pr, measure = "auc")
  auc <- auc@y.values[[1]]
  
  print(auc)
  return(plot(prf))
})
})