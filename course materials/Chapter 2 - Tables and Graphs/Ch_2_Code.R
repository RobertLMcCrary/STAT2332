### CHAPTER 02 METHODS ##############################

### 2.1 - Graphs for Qualitative/Categorical Data ###

# data() and View() will allow you to use data sets that 
# are already built into R Studio (like mtcars).

data(mtcars)
View(mtcars)

# Use ? to know more about a data set or a function in R. 
?mtcars 
# In the Help window, you can see a data dictionary. 

dim(mtcars) # prints the dimensions 
# (32 rows/observations and 11 columns/variables)

# Use nrow() to find the sample size (number of rows)

nrow(mtcars) # 32 observations 

# To reference one variable in a data set: dataset$variable 

print(mtcars$cyl)

length(mtcars) # length() counts the columns in a data frame  
length(mtcars$cyl) # length() counts the items in a vector 

# Frequency table 

# Use table() to find categorical frequencies

t1 <- table(mtcars$cyl) # The number of cylinders is categorical 
View(t1) # example: 11 cars are 4-cylinder 

# Relative frequency table 

# Use table()/length() to find relative frequencies

t2 <- table(mtcars$cyl)/length(mtcars$cyl)
View(t2)  

# Use 100*table()/length() to find relative frequencies (percentages)

t3 <- 100*table(mtcars$cyl)/length(mtcars$cyl)
View(t3) # example: 21.875% of cars are 6-cylinder

#####################################################

# How to make a bar plot: 
# t <- table(variable)
# barplot(t)

t1 <- table(mtcars$cyl)
barplot(t1) # How can we make this graph better? 

### Alternate Method ###
barplot(table(mtcars$cyl))

barplot(t1,
        main = "Frequency of Cars by Number of Cylinders (n=32)",
        xlab = "Number of Cylinders",
        ylab = "Counts",
        col = c("lightblue","lavender","lightgreen"))
abline(h=0)

# https://r-graph-gallery.com/209-the-options-of-barplot.html 

# How to make a relative frequency bar plot (decimals): 

t2 <- table(mtcars$cyl)/length(mtcars$cyl)

barplot(t2,
        main = "Relative Frequency of Cars by Number of Cylinders (n=32)", 
        xlab = "Number of Cylinders",
        ylab = "Proportion",
        col = c("lightblue","lavender","lightgreen"),
        ylim = c(0,0.5))
abline(h=0)

# Percentages:

t3 <- 100*table(mtcars$cyl)/length(mtcars$cyl)

barplot(t3,
        main = "Relative Frequency of Cars by Number of Cylinders (n=32)", 
        xlab = "Number of Cylinders",
        ylab = "Percentage",
        col = c("lightblue","lavender","lightgreen"),
        ylim = c(0,60))
abline(h=0)

# How to make a Pareto chart: 

pt <- sort(table(mtcars$cyl), decreasing = TRUE)

barplot(pt,
        main = "Frequency of Cars by Number of Cylinders (n=32)", 
        xlab = "Number of Cylinders",
        ylab = "Counts",
        col = c("lightblue","lavender","lightgreen"))
abline(h=0)

# How to make a horizontal bar plot: DON'T FORGET TO SWITCH AXES LABELS! 

barplot(t1,
        horiz = TRUE,
        main = "Frequency of Cars by Number of Cylinders (n=32)",
        ylab = "Number of Cylinders",
        xlab = "Counts",
        col = c("lightblue","lavender","lightgreen"))
abline(v=0)

# How to make a pie chart: Output changes depending on the monitor. 

pie(t3,
    main = "Percentage of Cars by Cylinders (n=32)",
    col = c("lightblue","lavender","lightgreen"),
    labels = c("34.4%", "21.9%", "43.8%"))
    
legend("bottomright", 
           c("4","6","8"), 
           cex = 0.8,
           fill = c("lightblue","lavender","lightgreen"))
    
#####################################################

# Importing data from ALEKS (R Studio software): 

#1. In the ALEKS problem, click "send data to Excel." 
#2. Open and save the file with a logical name, like "ch2hw_prob5.csv".  
#3. Make sure you save it as a .csv file! 
#4. For Mac users, you might have to convert the file from "Numbers" to "Excel". 
#5. Open R Studio and click "Import Dataset"; Choose "from text (readr)". 
#6. Browse for the file you just saved.
#7. Before importing, look at the PREVIEW to make sure it looks right. 
#8. Import your file and now you can use it in R.  

#####################################################

# Importing data from ALEKS (R Studio Posit Cloud): 

#1. In the ALEKS problem, click "send data to Excel." 
#2. Open and save the file with a logical name, like "ch2hw_prob5.csv".  
#3. Make sure you save it as a .csv file! 
#4. In the bottom right pane, click the yellow up arrow to upload a file. 
#   Click "choose file" and find your file. 
#5. In the upper right pane, click "Import Dataset"; Choose "from text (readr)". 
#6. Browse for the file you just saved.
#7. Before importing, look at the PREVIEW to make sure it looks right. 
#8. Import your file and now you can use it in R.  

#####################################################

### 2.2 - Frequency Distributions and Histograms ####

# Particulate Emissions

p <- c(1.5, 1.48, 1.4, 3.12, 0.25, 0.87, 1.06, 1.37, 2.37, 
       0.53, 1.12, 1.11, 1.81, 2.12, 3.36, 1.25, 2.15, 1.14, 
       2.68, 3.47, 3.46, 0.86, 1.63, 1.17, 2.74, 1.11, 1.81, 
       3.67, 3.34, 1.88, 1.12, 1.47, 0.55, 3.79, 5.94, 0.88,
       1.24, 2.67, 1.28, 4.24, 1.29, 1.63, 2.63, 2.1, 3.52, 
       0.94, 2.14, 3.03, 6.55, 3.59, 0.64, 6.64, 1.23, 1.18, 
       3.1, 1.31, 4.04, 1.04, 3.06, 3.33, 2.49, 2.48, 1.63, 
       0.48, 4.58)

# Square brackets are used for sub-setting: vector[location].

p[3] # print the value in the 3rd position 

# Class 1: 0.00 - 0.99 = 9 values 
length(p[p >= 0 & p <= 0.99]) # counts the number of items >= 0 and <= 0.99 

# Repeat for each class: 
length(p[p >= 1 & p <= 1.99])
length(p[p >= 2 & p <= 2.99])
length(p[p >= 3 & p <= 3.99])
length(p[p >= 4 & p <= 4.99])
length(p[p >= 5 & p <= 5.99])
length(p[p >= 6 & p <= 6.99])

# Use this method for relative frequencies:
length(p[p >= 6 & p <= 6.99])/length(p)
100*length(p[p >= 6 & p <= 6.99])/length(p)

# How to make a histogram:

p <- c(1.5, 1.48, 1.4, 3.12, 0.25, 0.87, 1.06, 1.37, 2.37, 
       0.53, 1.12, 1.11, 1.81, 2.12, 3.36, 1.25, 2.15, 1.14, 
       2.68, 3.47, 3.46, 0.86, 1.63, 1.17, 2.74, 1.11, 1.81, 
       3.67, 3.34, 1.88, 1.12, 1.47, 0.55, 3.79, 5.94, 0.88,
       1.24, 2.67, 1.28, 4.24, 1.29, 1.63, 2.63, 2.1, 3.52, 
       0.94, 2.14, 3.03, 6.55, 3.59, 0.64, 6.64, 1.23, 1.18, 
       3.1, 1.31, 4.04, 1.04, 3.06, 3.33, 2.49, 2.48, 1.63, 
       0.48, 4.58)

hist(p, 
     main = "Histogram of Particulate Emissions (n=65)",
     xlab = "Emission Readings", 
     ylab = "Counts", 
     col = "yellow") 

# If you want to change the number of classes:

hist(p, 
     main = "Histogram of Particulate Emissions (n=65)",
     xlab = "Emission Readings", 
     ylab = "Counts", 
     breaks = c(0, 2, 4, 6, 8), # breaks = lower class limits
     col = "orange")  

# OR

hist(p, 
     main = "Histogram of Particulate Emissions (n=65)",
     xlab = "Emission Readings", 
     ylab = "Counts", 
     breaks = 30, # breaks = the number of classes/bars
     col = "orange") 

# histogram from a data set:  

hist(mtcars$wt,
     main = "Distribution of Weight (n=32)",
     xlab = "Weight (1,000 lbs)",
     col = "orangered",
     xlim = c(1,6),
     ylim = c(0,10))

#####################################################
