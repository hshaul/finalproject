#ui

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

#server

crime <- read_csv("crime.csv")
crime <- as.data.frame(crime)

shinyServer(
  function(input,output) {
    test1 <- reactive({
      filtered <- crime %>%
        filter(jurisdiction == input$JurisdictionFinder)
    })
    output$test <- renderPlot({
      ggplot(data = test1(), aes(x = year, y = violent_crime_total)) +
        geom_line() +
        geom_point(color = "red", size = 3) +
        geom_text(aes(label = violent_crime_total), hjust = 0, vjust=1) +
        ylab("Violent Crimes") +
        xlab("Years") +
        ggtitle("Violent Crimes Vs. Years Per State") +
        theme(axis.text = element_text(size = 16),
              axis.title = element_text(size = 20),
              plot.title = element_text(size = 25, face = "bold"),
              legend.title = element_text(size = 20),
              legend.text = element_text(size = 16),
              panel.border = element_rect(color = "black", fill = NA, size = 1.5))
    })
    test2 <- reactive({
      filtered <- crime %>%
        filter(jurisdiction == input$JurisdictionFinder2)
    })
    output$test2 <- renderPlot({
      ggplot(data = test2(), aes(x = year, y = property_crime_total)) +
        geom_line() +
        geom_point(color = "blue", size = 3) +
        geom_text(aes(label = property_crime_total), hjust = 0, vjust=1) +
        ylab("Property Crimes") +
        xlab("Years") +
        ggtitle("Property Crimes Vs. Years Per State") +
        theme(axis.text = element_text(size = 16),
              axis.title = element_text(size = 20),
              plot.title = element_text(size = 22, face = "bold"),
              legend.title = element_text(size = 20),
              legend.text = element_text(size = 16),
              panel.border = element_rect(color = "black", fill = NA, size = 1.5))
    })
    test3 <- reactive({
      filtered <- crime %>%
        filter(jurisdiction == input$JurisdictionFinder3)
    })
    output$test3 <- renderPlot({
      ggplot(data = test3(), aes(x = year, y = prisoner_count)) +
        geom_line() +
        geom_point(color = "green", size = 3) +
        geom_text(aes(label = prisoner_count), hjust = 0, vjust=1) +
        ylab("Number of Prisoners") +
        xlab("Years") +
        ggtitle("Number of Prisoners Vs. Years Per State") +
        theme(axis.text = element_text(size = 16),
              axis.title = element_text(size = 20),
              plot.title = element_text(size = 22, face = "bold"),
              legend.title = element_text(size = 20),
              legend.text = element_text(size = 16),
              panel.border = element_rect(color = "black", fill = NA, size = 1.5))
      
    })
    test4 <- reactive({
      filtered <- crime %>%
        filter(jurisdiction %in% input$JurisdictionFinder4) %>%
        filter(year == input$YearFinder)
    })
    output$test4 <- renderPlot({
      ggplot(data = test4(), aes(x = "", y = murder_manslaughter, fill = jurisdiction)) +
        geom_bar(stat = "identity", width = 1) +
        coord_polar("y", start=0) +
        theme_void()
    })
    test5 <- reactive({
      filtered <- crime %>%
        filter(jurisdiction %in% input$JurisdictionFinder5) %>%
        filter(year == input$YearFinder2)
    })
    output$test5 <- renderPlot({
      ggplot(data = test5(), aes(x = "", y = rape_legacy, fill = jurisdiction)) +
        geom_bar(stat = "identity", width = 1) +
        coord_polar("y", start=0) +
        theme_void()
    })
    test6 <- reactive({
      filtered <- crime %>%
        filter(jurisdiction %in% input$JurisdictionFinder6) %>%
        filter(year == input$YearFinder3)
    })
    output$test6 <- renderPlot({
      ggplot(data = test6(), aes(x = "", y = robbery, fill = jurisdiction)) +
        geom_bar(stat = "identity", width = 1) +
        coord_polar("y", start=0) +
        theme_void()
    })
    test7 <- reactive({
      filtered <- crime %>%
        filter(jurisdiction %in% input$JurisdictionFinder7) %>%
        filter(year == input$YearFinder4)
    })
    output$test7 <- renderPlot({
      ggplot(data = test7(), aes(x = "", y = agg_assault, fill = jurisdiction)) +
        geom_bar(stat = "identity", width = 1) +
        coord_polar("y", start=0) +
        theme_void()
    })   
    test8 <- reactive({
      filtered <- crime %>%
        filter(jurisdiction %in% input$JurisdictionFinder8) %>%
        filter(year == input$YearFinder5)
    })
    output$test8 <- renderPlot({
      ggplot(data = test8(), aes(x = "", y = burglary, fill = jurisdiction)) +
        geom_bar(stat = "identity", width = 1) +
        coord_polar("y", start=0) +
        theme_void()
    }) 
    test9 <- reactive({
      filtered <- crime %>%
        filter(jurisdiction %in% input$JurisdictionFinder9) %>%
        filter(year == input$YearFinder6)
    })
    output$test9 <- renderPlot({
      ggplot(data = test9(), aes(x = "", y = larceny, fill = jurisdiction)) +
        geom_bar(stat = "identity", width = 1) +
        coord_polar("y", start=0) +
        theme_void()
    }) 
    test10 <- reactive({
      filtered <- crime %>%
        filter(jurisdiction %in% input$JurisdictionFinder10) %>%
        filter(year == input$YearFinder7)
    })
    output$test10 <- renderPlot({
      ggplot(data = test10(), aes(x = "", y = vehicle_theft, fill = jurisdiction)) +
        geom_bar(stat = "identity", width = 1) +
        coord_polar("y", start=0) +
        theme_void()
    })
    test11 <- reactive({
      filtered <- crime %>%
        filter(jurisdiction %in% input$JurisdictionFinder11) %>%
        filter(year == input$YearFinder8)
    })
    output$test11 <- renderPlot({
      ggplot(data = test11(), aes(x = property_crime_total, y = violent_crime_total, color = jurisdiction)) +
        geom_point() +
        geom_line() +
        ylab("Violent Crimes") +
        xlab("Property Crimes") +
        ggtitle("Violent Crimes Vs. Propety Crimes") +
        theme(axis.text = element_text(size = 16),
              axis.title = element_text(size = 20),
              plot.title = element_text(size = 22, face = "bold"),
              legend.title = element_text(size = 20),
              legend.text = element_text(size = 16),
              panel.border = element_rect(color = "black", fill = NA, size = 1.5))
    })
    test12 <- reactive({
      filtered <- crime %>%
        filter(year == input$YearFinder9)
    })
    output$test12 <- renderPlot({
      ggplot(data = test12(), aes(x = property_crime_total, y = state_population)) +
        geom_point(col="blue") +
        geom_text(aes(label = ifelse(property_crime_total>450000, as.character(jurisdiction),'')), hjust = 0, vjust=1) +
        ylab(" State Population") +
        xlab("Property Crimes") +
        ggtitle("State Population vs. Property Crimes Per Year") +
        scale_x_continuous(labels = scales::comma) +
        scale_y_continuous(labels = scales::comma) +
        theme(axis.text = element_text(size = 16),
              axis.title = element_text(size = 20),
              plot.title = element_text(size = 18, face = "bold"),
              legend.title = element_text(size = 20),
              legend.text = element_text(size = 16),
              panel.border = element_rect(color = "black", fill = NA, size = 1.5))
    })
    test13 <- reactive({
      filtered <- crime %>%
        filter(year == input$YearFinder10)
    })
    output$test13 <- renderPlot({
      ggplot(data = test13(), aes(x = violent_crime_total, y = state_population)) +
        geom_point(col="red") +
        geom_text(aes(label = ifelse(violent_crime_total>75000, as.character(jurisdiction),'')), hjust = 0, vjust=1) +
        ylab(" State Population") +
        xlab("Violent Crimes") +
        ggtitle("State Population vs. Violent Crimes Per Year") +
        scale_x_continuous(labels = scales::comma) +
        scale_y_continuous(labels = scales::comma) +
        theme(axis.text = element_text(size = 16),
              axis.title = element_text(size = 20),
              plot.title = element_text(size = 18, face = "bold"),
              legend.title = element_text(size = 20),
              legend.text = element_text(size = 16),
              panel.border = element_rect(color = "black", fill = NA, size = 1.5))
    })
    test14 <- reactive({
      filtered <- crime %>%
        filter(year == input$YearFinder11)
    })
    output$test14 <- renderPlot({
      ggplot(data = test14(), aes(x = prisoner_count, y = state_population)) +
        geom_point(col="green") +
        geom_text(aes(label = ifelse(prisoner_count>50000, as.character(jurisdiction),'')), hjust = 0, vjust=1) +
        ylab(" State Population") +
        xlab("Number of Prisoners") +
        ggtitle("State Population vs. Number of Prisoners Per Year") +
        scale_x_continuous(labels = scales::comma) +
        scale_y_continuous(labels = scales::comma) +
        theme(axis.text = element_text(size = 16),
              axis.title = element_text(size = 20),
              plot.title = element_text(size = 15, face = "bold"),
              legend.title = element_text(size = 20),
              legend.text = element_text(size = 16),
              panel.border = element_rect(color = "black", fill = NA, size = 1.5))
    })
  }
)

