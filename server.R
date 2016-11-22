
shinyServer(function(input, output, session) {
  #read csv
  source('csvReadTable.R',local =T)
  #select sample ratio
  source('sampleNum.R',local=T)
  #show variables
  source("modeling.R",local=T)
  #make model
  source("model.R", local = T)
  #predict
  source("predict.R", local=T)

})