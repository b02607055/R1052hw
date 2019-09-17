##ui.R 網頁前端

#sidebarLayout — 將頁面切成兩塊，包含主內容與 sidebar
#sidebarPanel — 在 sidebar 內使用的面版
#mainPanel — 主要呈現資料的面版
#navlistPanel — 導覽面板
#tabPanel — 頁籤面板
#or use Slide or Radio Button

library(shiny)
shinyUI(fluidPage(
  titlePanel("大家好"),
  sidebarLayout(
    sidebarPanel(
      radioButtons("radio", label = "Choices", choices = list("Choice 1" = 1, "Choice 2" = 2)),
      sliderInput("slider1", label = "Slider", min = 0, max = 100, value = 50)
    ),
    mainPanel("distPlot")
  )
))
