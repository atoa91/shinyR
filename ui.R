shinyUI(fluidPage(
  #read csv file with 'csv' id
  fileInput(inputId = 'csv', 'Choose CSV file',
            accept=c('csv', 'comma-separated-values','.csv')),

  dataTableOutput("summary"),
  
  numericInput("sampleN","input for % train, test",value =30,min=0,max=100),
  
  textOutput("sample"),
  
  uiOutput("targetSelect"),
  
  uiOutput("valSelect"),
  
  textOutput("fmla"),
  
  actionButton(inputId="run", label="run model"),
  
  actionButton(inputId="go", label="draw ROC plot"),
  
  
  plotOutput("rocPlot", width = "100%", height ="400px", click=NULL)
  
  
))
