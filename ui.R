library(shiny)
library(tidyverse)

filePath <- reactive("Kenya_Roy_CaseStudy2DataforApp.csv")
Case2_A_App <- read_csv("Kenya_Roy_CaseStudy2DataforApp.csv") #read in data
dataset = Case2_A_App

# Define UI
ui <- fluidPage(
  
  # Application title
  titlePanel("Employee Attrition"),
  
  # Sidebar layout with input and output definitions ----
  sidebarLayout(
    
    # Sidebar panel for inputs ----
    sidebarPanel(
      selectInput(
        inputId = "List1",
        label = "Attrition",
        choices = list(
          'Attrition')
      ),
      selectInput(
        inputId = "List2",
        label = "by Variable",
        choices = list(
          'Age',
          'Attrition',
          'JobInvolvement',
          'JobLevel',
          'JobRole',
          'MaritalStatus',
          'MonthlyIncome',
          'OverTime',
          'TotalWorkingYears'))
    ),
    
    # Place for Plot (Main Panel)
    mainPanel(
      plotOutput("pplot")
    )
  ))