### CHAPTER 3 METHODS - NUMERICAL SUMMARIES (DESCRIPTIVE STATISTICS) 

### 3.1 - Measures of Center ######################

# Use mean() to find both the population mean (mu) 
# and the sample mean (xbar).

data(mtcars)
View(mtcars)

hp <- mtcars$hp # horsepower 

mean(hp) # mean = 146.6875 hp 

###################################################

# Use median() to find the median of a variable. 
# Again, the function works the same whether the data
# is considered a population or a sample. 

median(hp) # median = 123 hp 

hp # Shows hp in original data set order. 
sort(hp) # Shows hp in increasing order.
sort(hp, decreasing = TRUE)

# Analyze the shape, mean, and median.
hist(hp,
     main = "Distribution of Horsepower")
# Which statistic is larger?

###################################################

# Mean vs. Median

Group1 <- c(25000, 31000, 34000, 44000, 56000)  

mean(Group1) 

median(Group1) 

Group2 <- c(25000, 31000, 34000, 44000, 800000)  

mean(Group2)

median(Group2)

###################################################

# Run this code to create a function that finds the mode: 

mode <- function(x){
  u <- unique(x)
  tab <- tabulate(match(x,u)) 
  if((max(tab)>1) & length(unique(tab))!=1){
    print(u[tab==max(tab)&tab>1])
  }
  else{
    print("There is no mode.")
  }
}

mode(hp) # 3 modes = 110, 175, and 180

###################################################

### 3.2 - Measures of Spread ######################

range(hp)

# Use max() - min() to find the range. 

max(hp) - min(hp) # 283

# NOTE: There is a function called range(), 
# but it will only print for you the maximum 
# and minimum values, not the difference between them. 

b1 <- c(1, 5, 7, 7, 7, 7, 7, 7, 7, 7, 20)
max(b1) - min(b1) 

b2 <- c(1, 3, 5, 9, 13, 15, 16, 17, 19, 20)
max(b2) - min(b2)

###################################################

# Population variance: 
# Run this code to create a function that finds 
# the population variance (sigma^2): 

pop.var <- function(x) {sum((x - mean(x))^2)/length(x)}

pop.var(hp) # 4,553.965 hp^2

# Sample variance (s^2): var()

var(hp) # 4,700.867 hp^2

# Compare these two vectors again:

b1 <- c(1, 5, 7, 7, 7, 7, 7, 7, 7, 7, 20)
var(b1) 

b2 <- c(1, 3, 5, 9, 13, 15, 16, 17, 19, 20)
var(b2)

###################################################

# Population standard deviation (sigma):

pop.sd <- function(x) {sqrt(sum((x - mean(x))^2)/length(x))}

pop.sd(hp) # 67.48307

# Sample standard deviation (s): 

sd(hp) # 68.56287

sd(b1)
sqrt(var(b1))

var(b2)
(sd(b2))^2

###################################################

# Calculating variance and standard deviation "the long way." 

x <- c(2.7, 8.18, -3.04, 0.012,	10.99,	-5.21)  

length(x) # 6 data values

mean_x <- mean(x)

x - mean_x # deviations 

sum(x - mean_x) # sum of deviations = 0 (oops)

(x - mean_x)^2 # deviations squared 

sum((x - mean_x)^2) # sum of deviations squared

200.3964/5 # sample variance

sqrt(40.07928) # sample standard deviation 

# Redo with functions: 

var(x)

sd(x)

###################################################

# The Empirical Rule

# Yoshi example

mu = 112
sigma = 4
units = "pounds"

# To fill out the x-axis: 
print(paste0(mu-3*sigma, "   ",
             mu-2*sigma, "   ",
             mu-1*sigma, "   ",
             mu, "   ",
             mu+1*sigma, "   ",
             mu+2*sigma, "   ",
             mu+3*sigma))

mu - 2*sigma 
# 104 is 2 standard deviations BELOW the mean. 

mu + 3*sigma 
# 124 is 3 standard deviations ABOVE the mean. 

print(paste0
      ("Approximately 68% of the data values lie between ", 
             mu - 1*sigma, " and ", mu + 1*sigma, " ", units, ".")) 

print(paste0
      ("Approximately 95% of the data values lie between ", 
             mu - 2*sigma, " and ", mu + 2*sigma, " ", units, "."))

print(paste0
      ("Approximately 99.7% of the data values lie between ", 
             mu - 3*sigma, " and ", mu + 3*sigma, " ", units, "."))

###################################################

# Netherworld example

mu = 42.3
sigma = 6.08
units = "minutes"

print(paste0
      ("Approximately 68% of the data values lie between ", 
        mu - 1*sigma, " and ", mu + 1*sigma, " ", units, ".")) 

print(paste0
      ("Approximately 95% of the data values lie between ", 
        mu - 2*sigma, " and ", mu + 2*sigma, " ", units, "."))

print(paste0
      ("Approximately 99.7% of the data values lie between ", 
        mu - 3*sigma, " and ", mu + 3*sigma, " ", units, "."))

# To fill out the x-axis: 
print(paste0(mu-3*sigma, "   ",
             mu-2*sigma, "   ",
             mu-1*sigma, "   ",
             mu, "   ",
             mu+1*sigma, "   ",
             mu+2*sigma, "   ",
             mu+3*sigma))

###################################################

# Chebyshev's Inequality 

# Aircraft bolts example:

mu = 125.01
sigma = 1.26
units = "millimeters" 

print(paste0(
  "At least 75% of the data values lie between ",
  mu - 2*sigma, " and ", mu + 2*sigma, " ", units, "."))

print(paste0(
  "At least 88.9% of the data values lie between ",
  mu - 3*sigma, " and ", mu + 3*sigma, " ", units, "."))

###################################################

# License exam example:

mu = 75.11
sigma = 6.7
units = "points" 
  
print(paste0(
  "At least 75% of the data values lie between ",
  mu - 2*sigma, " and ", mu + 2*sigma, " ", units, "."))

print(paste0(
  "At least 88.9% of the data values lie between ",
  mu - 3*sigma, " and ", mu + 3*sigma, " ", units, "."))

###################################################

### 3.3 - Measures of Position ####################

# z-scores

z = (x - mu)/sigma

x = z*sigma + mu

#------------------------------------------------------------

# Supplemental, not mandatory: How to create a normal plot:

population_mean <- 0
population_sd <- 1
lower_bound <- population_mean - population_sd
upper_bound <- population_mean + population_sd
x <- seq(-4, 4, length = 1000) * population_sd + population_mean
y <- dnorm(x, population_mean, population_sd)
p1 <- plot(x,y, type = "l", lwd = 2, axes = FALSE, xlab = "", ylab = "")
sd_axis_bounds = 5
axis_bounds <- seq(-sd_axis_bounds * population_sd + population_mean,
                   sd_axis_bounds * population_sd + population_mean,
                   by = population_sd)
axis(side = 1, at = axis_bounds, pos = 0)

#------------------------------------------------------------

# height example (men):
mu = 69.4
sigma = 3.1

# height example (women):
mu = 63.8
sigma = 2.8

x = 
z = (x - mu)/sigma
print(z)

z = 
x = z*sigma + mu
print(x)

# Find z-scores for all data values: 

data <- rnorm(500, 22.5, 7.8) # inventing data 
print(data)
hist(data)

zscores <- (data - mean(data))/sd(data)
print(zscores)
hist(zscores)

table1 <- data.frame(data, zscores)
View(table1)

###################################################

data(mtcars)
hp<-mtcars$hp

# Quartiles 

quantile(hp) # 5-number summary

# R output: 52--96.5--123--180--335

summary(hp) # 5-number summary + mean [DON'T ROUND THE MEAN]

quantile(hp, 0.25) # Q1
quantile(hp, 0.50) # Q2 aka median 
quantile(hp, 0.75) # Q3 

###################################################

# Percentiles 

quantile(hp, 0.44) # 111.92 is at the 44th percentile. 

# The data value at the 33rd percentile is 109.23.
quantile(hp, 0.33) 

# To find the percentile of a given data value:

x = 65
  
ceiling(100*(length(hp[hp<x]) + 0.5)/length(hp)) 
# 65 is at the 8th percentile 

x = 100

ceiling(100*(length(hp[hp<x]) + 0.5)/length(hp)) 
# 100 is at the 30th percentile 

###################################################

# 5-Number Summary = min--Q1--med--Q3--max 

quantile(hp) # 5-number summary 

summary(hp) # 5-number summary + mean 

# 52--96.5--123--180--335

###################################################

# Interquartile range 

# R output: 

IQR(hp) # 83.5

180 - 96.5

###################################################

# Outliers 

# R output: 

# lower boundary (LB) = Q1 - 1.5*IQR
# upper boundary (UB) = Q3 + 1.5*IQR

LB = quantile(hp, 0.25) - 1.5*IQR(hp) # -28.8
UB = quantile(hp, 0.75) + 1.5*IQR(hp) # 305 

print(hp[hp < LB]) # none 
print(hp[hp > UB]) # 335

###################################################

# Box plots 

boxplot(hp)

boxplot(hp, 
        horizontal = T, 
        main = "Boxplot of Horsepower (n=32)",
        col = "red")

# How to add the mean: (bonus)
points(mean(hp), 1:1, pch = 20, cex = 1.5)

###################################################

# Comparative Box plots: boxplot(variable ~ subcategory)

data(iris)
View(iris)

boxplot(iris$Petal.Length ~ iris$Species, 
        horizontal = T,
        main = "Comparative Boxplots: Petal Length by Iris Species",
        xlab = "Length (cm)", 
        ylab = "Species",
        col = c("pink", "lavender", "purple"))

# Add the means:
means <- tapply(iris$Petal.Length, iris$Species, mean) 
points(means, 1:3, pch = 20, cex = 1.5)

###################################################