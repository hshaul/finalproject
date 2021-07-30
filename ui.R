library(dplyr)
library(ggplot2)
library(shiny)
library(tidyr)
library(shinythemes)
library(readr)
crime <- read.csv("/Users/Hannah/Desktop/crime.csv")


ui <- fluidPage(
  shinyUI(
    navbarPage("Crime and Incarceration in the United States", theme = shinytheme("sandstone"),
    navbarMenu("Crimes by States", icon = icon("map-marked-alt"),
    tabPanel("Violent Crimes", fluid = TRUE,
    pageWithSidebar(
      headerPanel("States"),
      sidebarPanel(
        selectInput(inputId = "JurisdictionFinder",
                           label = "Jurisdiction:",
                           choices = unique(crime$jurisdiction),
                    selected = "Alabama")
      ),
      mainPanel(
        plotOutput("test")
      )
    )
  ),
      tabPanel("Property Crimes", fluid = TRUE,
           pageWithSidebar(
             headerPanel("States"),
             sidebarPanel(
               selectInput(inputId = "JurisdictionFinder2",
                           label = "Jurisdiction:",
                           choices = unique(crime$jurisdiction),
                           selected = "Alabama")
             ),
             mainPanel(
               plotOutput("test2")
             )
           )
  )
),
           tabPanel("Incarceration by States", icon = icon("balance-scale"),
                    titlePanel("Incarceration by States"),
                    pageWithSidebar(
                      headerPanel("States"),
                      sidebarPanel(
                        selectInput(inputId = "JurisdictionFinder3",
                                    label = "Jurisdiction:",
                                    choices = unique(crime$jurisdiction),
                                    selected = "Alabama")
                      ),
                      mainPanel(
                        plotOutput("test3")
                      )
                    )
           ),
navbarMenu("State vs. State", icon = icon("chart-pie"),
           tabPanel("Murder", fluid = TRUE,
                    pageWithSidebar(
                      headerPanel("States"),
                      sidebarPanel(
                        checkboxGroupInput(inputId = "JurisdictionFinder4",
                                    label = "Jurisdictions:",
                                    choices = unique(crime$jurisdiction),
                                    selected = "ALABAMA"),
                        selectInput(inputId = "YearFinder",
                                    label = "Year:",
                                    choices = unique(crime$year),
                                    selected = "2001")
                      ),
                      mainPanel(
                        plotOutput("test4")
                      )
                    )
           ),
           tabPanel("Rape", fluid = TRUE,
                    pageWithSidebar(
                      headerPanel("States"),
                      sidebarPanel(
                        checkboxGroupInput(inputId = "JurisdictionFinder5",
                                           label = "Jurisdictions:",
                                           choices = unique(crime$jurisdiction),
                                           selected = "ALABAMA"),
                        selectInput(inputId = "YearFinder2",
                                    label = "Year:",
                                    choices = unique(crime$year),
                                    selected = "2001")
                      ),
                      mainPanel(
                        plotOutput("test5")
                      )
                    )
           ),
           tabPanel("Robbery", fluid = TRUE,
                    pageWithSidebar(
                      headerPanel("States"),
                      sidebarPanel(
                        checkboxGroupInput(inputId = "JurisdictionFinder6",
                                           label = "Jurisdictions:",
                                           choices = unique(crime$jurisdiction),
                                           selected = "ALABAMA"),
                        selectInput(inputId = "YearFinder3",
                                    label = "Year:",
                                    choices = unique(crime$year),
                                    selected = "2001")
                      ),
                      mainPanel(
                        plotOutput("test6")
                      )
                    )
           ),
           tabPanel("Aggravated Assault", fluid = TRUE,
                    pageWithSidebar(
                      headerPanel("States"),
                      sidebarPanel(
                        checkboxGroupInput(inputId = "JurisdictionFinder7",
                                           label = "Jurisdictions:",
                                           choices = unique(crime$jurisdiction),
                                           selected = "ALABAMA"),
                        selectInput(inputId = "YearFinder4",
                                    label = "Year:",
                                    choices = unique(crime$year),
                                    selected = "2001")
                      ),
                      mainPanel(
                        plotOutput("test7")
                      )
                    )
           ),
           tabPanel("Burglary", fluid = TRUE,
                    pageWithSidebar(
                      headerPanel("States"),
                      sidebarPanel(
                        checkboxGroupInput(inputId = "JurisdictionFinder8",
                                           label = "Jurisdictions:",
                                           choices = unique(crime$jurisdiction),
                                           selected = "ALABAMA"),
                        selectInput(inputId = "YearFinder5",
                                    label = "Year:",
                                    choices = unique(crime$year),
                                    selected = "2001")
                      ),
                      mainPanel(
                        plotOutput("test8")
                      )
                    )
           ),
           tabPanel("Larceny", fluid = TRUE,
                    pageWithSidebar(
                      headerPanel("States"),
                      sidebarPanel(
                        checkboxGroupInput(inputId = "JurisdictionFinder9",
                                           label = "Jurisdictions:",
                                           choices = unique(crime$jurisdiction),
                                           selected = "ALABAMA"),
                        selectInput(inputId = "YearFinder6",
                                    label = "Year:",
                                    choices = unique(crime$year),
                                    selected = "2001")
                      ),
                      mainPanel(
                        plotOutput("test9")
                      )
                    )
           ),
           tabPanel("Vehicle Theft", fluid = TRUE,
                    pageWithSidebar(
                      headerPanel("States"),
                      sidebarPanel(
                        checkboxGroupInput(inputId = "JurisdictionFinder10",
                                           label = "Jurisdictions:",
                                           choices = unique(crime$jurisdiction),
                                           selected = "ALABAMA"),
                        selectInput(inputId = "YearFinder7",
                                    label = "Year:",
                                    choices = unique(crime$year),
                                    selected = "2001")
                      ),
                      mainPanel(
                        plotOutput("test10")
                      )
                    )
           )
),
           tabPanel("Property Crimes vs. Violent Crimes", fluid = TRUE, icon = icon("house-user"),
                    pageWithSidebar(
                      headerPanel("States"),
                      sidebarPanel(
                        checkboxGroupInput(inputId = "JurisdictionFinder11",
                                           label = "Jurisdictions:",
                                           choices = unique(crime$jurisdiction)),
                        selectInput(inputId = "YearFinder8",
                                    label = "Year:",
                                    choices = unique(crime$year),
                                    selected = "2001")
                      ),
                      mainPanel(
                        plotOutput("test11")
                      )
                    )
           ),
navbarMenu("Population", icon = icon("globe-americas"),
tabPanel("Population vs. Propety Crimes", fluid = TRUE,
         pageWithSidebar(
           headerPanel("Years"),
           sidebarPanel(
         selectInput(inputId = "YearFinder9",
                     label = "Year:",
                     choices = unique(crime$year),
                     selected = "2001")
             ),
           mainPanel(
             plotOutput("test12")
           )
         )
),
tabPanel("Population vs. Violent Crimes", fluid = TRUE,
         pageWithSidebar(
           headerPanel("Years"),
           sidebarPanel(
             selectInput(inputId = "YearFinder10",
                         label = "Year:",
                         choices = unique(crime$year),
                         selected = "2001")
           ),
           mainPanel(
             plotOutput("test13")
           )
         )
),
tabPanel("Population vs. Prisoners", fluid = TRUE,
         pageWithSidebar(
           headerPanel("Years"),
           sidebarPanel(
             selectInput(inputId = "YearFinder11",
                         label = "Year:",
                         choices = unique(crime$year),
                         selected = "2001")
           ),
           mainPanel(
             plotOutput("test14")
           )
         )
)
)
)
)
)