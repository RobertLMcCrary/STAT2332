##### CHAPTER 4 METHODS - CORRELATION & REGRESSION ############################# 

# Housing data: 

size <- c(2521, 2555, 2735, 2846, 3028, 3049, 3198, 3198)
price <- c(400, 426, 428, 435, 469, 475, 488, 455)

### Scatterplots = plot(x,y)

plot(size, price) # let's add more details... 

plot(size, price, 
     main = "Scatterplot of House Price by Size (n=8)",
     xlab = "Size (square feet)", 
     ylab = "Price ($1,000)",
     pch = 19, # shape 
     col = "blue", # point color 
     cex = 2, # shape size 
     lwd = 3) # line width 

### Example from an existing data frame: 

data(iris)

plot(iris$Petal.Width, iris$Petal.Length, 
      main = "Scatterplot of Petal Length by Petal Width in Irises (n=150)", 
      xlab = "Width (cm)", 
      ylab = "Length (cm)",
      pch = 9, 
      col = "purple", 
      cex = 2, 
      lwd = 3)

############################################

# Manipulating scales 

# Plot 1 (as above)

p1 <- plot(iris$Petal.Width, iris$Petal.Length, 
        main = "Scatterplot of Petal Length by Petal Width in Irises (n=150)", 
        xlab = "Width (cm)", 
        ylab = "Length (cm)",
        pch = 9, 
        col = "purple", 
        cex = 2, 
        lwd = 3)

# Plot 2 (altered)

p2 <- plot(iris$Petal.Width, iris$Petal.Length, 
           main = "Scatterplot of Petal Length by Petal Width in Irises (n=150)", 
           xlab = "Width (cm)", 
           ylab = "Length (cm)",
           pch = 9, 
           col = "purple", 
           cex = 2, 
           lwd = 3,
           ylim = c(0,14))

### Correlation coefficient (r) = cor(x,y)

cor(size, price) # r = 0.901 
# Strong, positive correlation between house size and house price. 

cor(price, size)

cor(iris$Petal.Width, iris$Petal.Length) # r = 0.963 
# Strong, positive correlation between petal width and length for irises. 

##### 4.2 - Linear Regression ##################################################

plot(size, price, 
     main = "Scatterplot of House Price by Size (n=8)",
     xlab = "Size (square feet)", 
     ylab = "Price ($1,000)",
     pch = 19, # shape 
     col = "blue", # point color 
     cex = 2, # shape size 
     lwd = 3) # line width 

# How to create a linear regression model <- lm(y ~ x) 
# Add the line of best fit: abline(model)

model <- lm(price ~ size)

abline(model)

# The point of averages:
mean(size)
mean(price)

# Compute the coefficients of the line: 
model$coefficients

# Write the equation of the line: 
yhat = 160.19391458 + 0.09919795*x

# Use the model to make predictions: example x = 2750
x = 2750
yhat = 160.19391458 + 0.09919795*x
yhat

# When x = 2750, yhat = 432.9883

x = 2750
yhat = 160.19391458 + 0.09919795*x
yhat

# answer = $432,988.30 

(450 - 160.19391458)/0.09919795

200*0.09919795
19.83959*1000

############################################

# r^2 = coefficient of determination 

(cor(size,price))^2

# r^2 = 0.8110655 

############################################

# Crickets example: 

temp <- c(88.6, 71.6, 93.3, 84.3, 80.6, 75.2, 69.7, 82.0, 69.4, 83.3, 79.6, 
          82.6, 80.6, 83.5, 76.3)

chirps <- c(20.0, 16.0, 19.8, 18.4, 17.1, 15.5, 14.7, 17.1, 15.4, 16.2, 15.0, 
            17.2, 16.0, 17.0, 14.4)

##### 4.3 - Linear Regression ##################################################

# Extrapolation for Crickets: 

range(temp)

# We should only predict noise based on temperatures between 69.4 
# and 93.3 degrees Fahrenheit. 

# Extrapolation for Houses: 

# Find the range of x-values: 

range(size) 
# OR
min(size)
max(size)

# We will only compute y-hat based on x [2521, 3198]. 

# This model is good for predicting price based on houses between 
# 2,521 and 3,198 square feet. 

############################################

# Residuals for housing data: 

# Residual for the first observation:
# (2521, 400)

yhat = 160.19391458 + 0.09919795*x
yhat = 160.19391458 + 0.09919795*2521

400 - 410.27194653

# The residual for the first observation in the data set is 
# -10.27195 thousand dollars or -$10,271.95.  

data.frame(size, price)

yhat = 160.19391458 + 0.09919795*size 

res = price - yhat 

data.frame(size, price, res)

sum(res) # interesting thing to notice... 

############################################

# Outliers and influential points 

# Housing data (ORIGINAL):

size <- c(2521, 2555, 2735, 2846, 3028, 3049, 3198, 3198)
price <- c(400, 426, 428, 435, 469, 475, 488, 455)

plot(size, price, 
     main = "Scatterplot of House Price by Size (n=8)",
     xlab = "Size (square feet)", 
     ylab = "Price ($1,000)",
     pch = 19, 
     col = "blue", 
     cex = 2, 
     lwd = 3)

cor(size, price)
m <- lm(price ~ size)
abline(m)

# How much do outliers matter? (Same housing data with added extreme values): 

# outlier in y 
size2 <- c(2521, 2555, 2735, 2846, 3028, 3049, 3198, 3198, 2799)
price2 <- c(400, 426, 428, 435, 469, 475, 488, 455, 904) 

# outlier in x 
size3 <- c(2521, 2555, 2735, 2846, 3028, 3049, 3198, 3198, 8823) 
price3 <- c(400, 426, 428, 435, 469, 475, 488, 455, 450)

# extreme value in both x and y
size4 <- c(2521, 2555, 2735, 2846, 3028, 3049, 3198, 3198, 9000) 
price4 <- c(400, 426, 428, 435, 469, 475, 488, 455, 700)

############################################

# More practice with Star Wars data 

install.packages("dplyr")
library(dplyr)
data("starwars")
View(starwars)

# Let's just look at height vs. mass:
sw <- na.omit(starwars[ , 1:3])
View(sw)

############################################


