# Final Project - Crime and Incarceration in the U.S. over 16 Years

## Data

The data was found on Kaggle, and the dataset was called "Crime and Incarceration in the United States".The data was originally collected from the Bureau of Justice Statistics. Every year they run a program called National Prisoners Statistics Program (NPS) to collect this data.The FBI Uniform Crime Reporting Program (UCR) also publishes data to help with this dataset. The row, Federal, and the column, rape revised, were taken out due to the missing values. The programs R, Shiny, Git, and GitHub were used to create this final project. 

## Application
There are 5 tabs: 
1. Crimes by States
2. Incarceration by States
3. State vs. State
4. Property Crimes vs. Violent Crimes
5. Population

This application explores the crime relationship between states over multiple years. By exploring this relationship, we can see what causes higher or lower rates of crime by comparing across state lines.For example,  is population a factor, or is it something more in the state’s control?

*Disclaimer:  Some point locations and size of a section of chart do not change when the year is switched due to the numbers being so large. The exact number is not the same, but it is close. 

## Crimes by States
Under this tab, there are two sub tabs:
1. Violent Crimes 
2. Property Crimes

This tab is used to compare crimes over states. It also gets us looking at other possible variables to see why some decreased and others increased in crime. Each sub tab shows the crime total of each state over the span of 16 years. The violent crime is color coded as blue while the property crime is color coded as red.  This color code is consistent throughout the whole application. In order to see the crime over the years in each state,  change the jurisdiction by using the drop-down box. Each point will be labeled with the value. 

## Incarceration by States
This tab shows us the number of prisoners incarcerated over the span of 16 years in each state. The number of prisoners is color coded as green, which is consistent throughout the entire application.Each point will be labeled with the value. In order to a different state,  change the jurisdiction by using the drop-down box. 

## Statve vs. State
This tab has seven sub tabs:
1. Murder
2. Rape
3. Robbery
4. Aggravated Assault
5. Burglary
6. Larceny
7. Vehicle Theft  
 
Each sub tab will show a pie chart comparing the states to each other based on each crime. Alabama is automatically selected, but it can be unselected. You can click on as many states as you want. Two must always be selected in order to compare. Each state is color coordinated, and a legend will always appear and update based on what you click.Besides picking which states you want to compare, you can also choose which year. Use drop-box labeled year that is under the list of states. 

*Disclaimer:There are no 2016 values for rape.

## Property Crimes vs. State Crimes
This compares violent crimes versus property crimes across multiple states and years. Once again, you can choose as many states as you want to compare. 
Alabama can be unselected. Each state is color coded, and there is a legend. The year can be selected by using the drop-down box under the list of states. 

## Population
This tab as three sub tabs: 
1. Population vs. Property Crimes
2. Population vs. Violent Crimes
3. Population vs. Prisoners

Points after a certain amount is labeled by jurisdiction:
1. Property Crimes greater than 450,000
2. Violent Crimes greater than 75,000
3. Number of Prisoners greater than 50,000

Each variable is color coded the same as before. The year can be changed by using the drop-down box labeled year. This tab shows the relationship between population and the three variables separately. 







