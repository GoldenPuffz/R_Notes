### CHAPTER 02 METHODS #########################################################

# Note about ggplot2: the package ggplot2 is amazing for creating graphs.  
# We don't have time to cover that in this course, so we'll stick with simple 
# methods in base R.

### 2.1 - Graphs for Qualitative / Categorical Data ############################

# Use table() to find categorical frequencies: 

# Example: 10 people voted on the best day to have a weekly meeting: 

days <- c("MON", "TUE", "MON", "WED", "WED", "FRI", "THUR", "MON", "MON", "TUE")

# Use length() to find the sample size:
length(days)

# Find the frequency per category: 
table(days)

# Find the relative frequency per category: 
table(days)/length(days)

##########################################

# Aircraft example:

aircraft <- c("twin", "turboprop", "jet", "helicopter", "jet", "single", "jet", 
              "single", "single", "twin", "helicopter", "jet", "single", "single", 
              "twin", "turboprop", "turboprop", "twin", "single", "single", 
              "twin", "turboprop", "twin", "twin", "twin", "single", "single",
              "turboprop", "single", "twin")

length(aircraft) # n = 30 

table(aircraft) # frequencies 

table(aircraft)/length(aircraft) # relative frequencies 

round(table(aircraft)/length(aircraft), digits = 4) # round values to 4 places

# How to make a bar graph:

barplot(table(aircraft)) 

barplot(table(aircraft), 
        main = "Counts of Aircraft by Type (n=30)", 
        xlab = "Type of Craft", 
        ylab = "Frequency of Landings")

# How to make a Pareto bar graph: 

barplot(sort(table(aircraft), 
        decreasing = TRUE),
        main = "Counts of Aircraft by Type (n=30)", 
        xlab = "Type of Craft",
        ylab = "Frequency of Landings")

# How to make a relative frequency bar graph: 

barplot(table(aircraft)/length(aircraft),
        main = "Proportion of Aircraft by Type (n=30)", 
        xlab = "Type of Craft",
        ylab = "Relative Frequency of Landings")

# How to make a horizontal bar chart: DON'T FORGET TO SWITCH AXES LABELS! 

barplot(table(aircraft), 
        horiz = TRUE,
        main = "Counts of Aircraft by Type (n=30)", 
        xlab =  "Frequency of Landings",
        ylab = "Type of Craft")

##########################################

# Importing data from ALEKS: 

#1. In the ALEKS problem, click "send data to Excel." 
#2. Open and save the file with a logical name, like "ch2hw_prob5.csv".  
#3. Make sure you save it as a .csv file! 
#4. For Mac users, you might have to convert the file from "Numbers" to "Excel". 
#5. Open R Studio and click "Import Dataset"; Choose "from text (readr)". 
#6. Browse for the file you just saved.
#7. Before importing, look at the PREVIEW to make sure it looks right. 
#8. Import your file and now you can use it in R.  

### 2.2 - Frequency Distributions and Histograms ###############################

# Particulate Emissions

p <- c(1.5, 1.48, 1.4, 3.12, 0.25, 0.87, 1.06, 1.37, 2.37, 0.53, 1.12, 1.11, 
       1.81, 2.12, 3.36, 1.25, 2.15, 1.14, 2.68, 3.47, 3.46, 0.86, 1.63, 1.17, 
       2.74, 1.11, 1.81, 3.67, 3.34, 1.88, 1.12, 1.47, 0.55, 3.79, 5.94, 0.88,
       1.24, 2.67, 1.28, 4.24, 1.29, 1.63, 2.63, 2.1, 3.52, 0.94, 2.14, 3.03, 
       6.55, 3.59, 0.64, 6.64, 1.23, 1.18, 3.1, 1.31, 4.04, 1.04, 3.06, 3.33, 
       2.49, 2.48, 1.63, 0.48, 4.58)

sort(p) # Put values in ascending order; find counts per class. 

range(p)

length(p) # n = 65

# Square brackets are used for sub-setting: data[row, column]. 

# Class 1: 0.00 - 0.99 = 9 values 
length(p[p >= 0 & p <= 0.99]) # counts the number of items >= 0 and <= 0.99 

# Repeat for each class: 
length(p[p >= 1 & p <= 1.99])
length(p[p >= 2 & p <= 2.99])
length(p[p >= 3 & p <= 3.99])
length(p[p >= 4 & p <= 4.99])
length(p[p >= 5 & p <= 5.99])
length(p[p >= 6 & p <= 6.99])

# relative frequencies: 
round(length(p[p >= 0 & p <= 0.99])/length(p), digits = 4) 
round(length(p[p >= 1 & p <= 1.99])/length(p), digits = 4)
round(length(p[p >= 2 & p <= 2.99])/length(p), digits = 4)
round(length(p[p >= 3 & p <= 3.99])/length(p), digits = 4)
round(length(p[p >= 4 & p <= 4.99])/length(p), digits = 4)
round(length(p[p >= 5 & p <= 5.99])/length(p), digits = 4)
round(length(p[p >= 6 & p <= 6.99])/length(p), digits = 4)

# How to make a histogram:

hist(p, 
     main = "Histogram of Particulate Emissions (n=65)",
     xlab = "Emission Readings", 
     ylab = "Counts", 
     breaks = c(0, 1, 2, 3, 4, 5, 6, 7)) 

# https://www.rdocumentation.org/packages/graphics/versions/3.6.2/topics/hist


##################################

### How to use data sets that are built into R Studio ##########################

data(mtcars)

# This data set is called "mtcars" and by using the data() function, we can load
# it into our working environment. 

View(mtcars)

# View() lets us see the data set. 

# Remember to use the $ symbol to specify one variable from a data set. 

hist(mtcars$mpg, 
     main = "Histogram of Miles per Gallon",
     xlab = "MPG")

hist(mtcars$hp, 
     main = "Histogram of Horsepower",
     xlab = "HP")

